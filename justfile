#-------------------------Inspired by kube-rs/k8s-pb------------------------------

default:
  @just --list

# renovate: datasource=github-releases depName=kubernetes/kubernetes
KUBERNETES_VERSION := "1.30.1"

protos-dl:
    #!/usr/bin/env bash
    set -exuo pipefail
    mkdir -p k8s-pb
    cd k8s-pb
    rm -rf protos && mkdir protos && cd protos
    for x in api apimachinery apiextensions-apiserver kube-aggregator metrics; do
        mkdir -p ./$x
        curl -sSL https://github.com/kubernetes/$x/archive/refs/tags/kubernetes-{{KUBERNETES_VERSION}}.tar.gz | tar xzf - -C ./$x/ --strip-components=1
        fd -e proto -x sh -c "mkdir -p k8s.io/'{//}'; mv '{}' k8s.io/'{}'" ';' . ./$x
        rm -rf ./$x
    done

# Patch protos schemas to fix import paths
protos-patch:
    #!/usr/bin/env bash
    set -exuo pipefail
    cd k8s-pb
    fd -e proto -x sd 'k8s\.io\.(.+);' '$1;' {}
    fd -e proto -x sd 'import "k8s\.io/(.+)";' 'import "$1";' {}
    mv protos/k8s.io/* protos/
    rmdir protos/k8s.io/

# Generate protos path list for prost
protos-list:
    #!/usr/bin/env bash
    set -exuo pipefail
    cd k8s-pb
    sort --version
    fd -e proto | sort -fd > protos.list

# Generate Dart files 
# just protos-gen-dart PATH_TO_FOLDER
protos-gen-dart DART_OUT="frontend/lib/protos":
	#!/usr/bin/env bash
	set -exuo pipefail
	while read -r line; do
		protoc --dart_out={{DART_OUT}} --proto_path=k8s-pb/protos ${line#*/} ;
	done <k8s-pb/protos.list
	rm -rf k8s-pb

# Generate Rust files 
# just protos-rust PATH_TO_FOLDER
protos-rust RUST_OUT="src/protos":
	#!/usr/bin/env bash
	set -exuo pipefail
	while read -r line; do
		mkdir -p tmp_gen/${line%/*} ;
		protoc --plugin=$HOME/.cargo/bin/protoc-gen-rs --rs_out=tmp_gen/${line%/*}/ --rust_opt='inside_protobuf=true gen_mod_rs=false' -I=./k8s-pb/protos ./k8s-pb/protos/${line#*/} ;
	done <k8s-pb/protos.list

flatbuf-gen:
	#!/usr/bin/env bash
	set -exuo pipefail
	while read -r line; do
		# mkdir -p tmp_gen_fbs/${line%/*} ;
		flatc -I k8s-pb/protos -o fbs/${line%/*} --keep-proto-id --gen-all --proto k8s-pb/${line}  ;
	done <k8s-pb/protos.list

# When mod.rs will create in each folder, you need to fill this
flatbufgen-from-proto-rust:
    #!/usr/bin/env bash
    set -exuo pipefail
    fd -e proto -x sd 'map<string, bytes>' 'map<string, [ubyte]>'
    while read -r line; do
        flatc -I k8s-pb/protos -o k8s-fbs/src/${line%/*} --keep-proto-id --gen-all --rust-serialize --rust-module-root-file --proto k8s-pb/${line} --rust --dart;
        # flatc -I k8s-pb/protos -o frontend/lib/fbs/${line%/*} --keep-proto-id --gen-all --proto k8s-pb/${line} --dart --gen-object-api ;
    done <k8s-pb/protos.list
    mv k8s-fbs/src/protos/* k8s-fbs/src; rm -rf k8s-fbs/src/protos; fd -e fbs | sort -fd > k8s-fbs/fbs.list ;
    cd k8s-fbs/src;
    fd -t d -x touch {}/mod.rs; fd -e rs -x sd 'use core::mem;' 'use ::std::mem;' ;
    mv frontend/lib/fbs/protos/* frontend/lib/fbs; rm -rf frontend/lib/fbs/protos;

# Download and generate all protos dependent files
protos: protos-dl protos-patch protos-list protos-gen-dart

rename_files:
    #!/usr/bin/env bash
    set -exuo pipefail
    cd k8s-pb
    fd -e proto -x sd 'generated' 'mod'
    while read -r line; do
        mv ${line%/*}/generated.proto ${line%/*}/mod.proto;
    done <protos.list
    rm -rf protos.list

flatbufgen-from-proto-dart:
    #!/usr/bin/env bash
    set -exuo pipefail
    while read -r line; do
        flatc -I k8s-pb/protos -o frontend/lib/fbs/${line%/*} --keep-proto-id --gen-all --proto k8s-pb/${line} --dart --gen-object-api ;
    done <k8s-pb/protos.list
    mv frontend/lib/fbs/protos/* frontend/lib/fbs; rm -rf frontend/lib/fbs/protos;

move-dart-files:
    #!/usr/bin/env bash
    set -exuo pipefail
    mkdir -p frontend/lib/fbs
    cd k8s-fbs/src
    # fd -t d -x mkdir -p ../frontend/lib/fbs/{\.};
    fd -e dart -x mv -f {} ../../frontend/lib/fbs/;

flatbuffers: protos flatbufgen-from-proto-rust

generate-dart-classes:
    #!/usr/bin/env bash
    set -exuo pipefail
    # curl -L -O https://github.com/yannh/kubernetes-json-schema/archive/refs/heads/master.zip #you can comment this after download
    unzip master.zip "kubernetes-json-schema-master/v1.30.2/*" -d ./
    cd kubernetes-json-schema-master/v1.30.2
    fd -e json -x sd 'https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.30.2/' './'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.ListMeta' './listmeta-meta-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.ObjectMeta' './objectmeta-meta-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.NodeSpec' './nodespec-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.Time' './time-meta-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.NodeStatus' './nodestatus-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.NamespaceSpec' './namespacespec-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.NamespaceStatus' './namespacestatus-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.FieldsV1' './fieldsv1-meta-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.rbac.v1.PolicyRule' './policyrule-rbac-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.apps.v1.DaemonSetSpec' './daemonsetspec-apps-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.apps.v1.DaemonSetStatus' './daemonsetstatus-apps-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.apps.v1.StatefulSetSpec' './statefulsetspec-apps-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.apps.v1.StatefulSetStatus' './statefulsetstatus-apps-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.Node' './node-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.PreferredSchedulingTerm' './preferredschedulingterm-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.NodeSelector' './nodeselector-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.ManagedFieldsEntry' './managedfieldsentry-meta-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apimachinery.pkg.apis.meta.v1.OwnerReference' './ownerreference-meta-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.Namespace' './namespace-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.apps.v1.DeploymentSpec' './deploymentspec-apps-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.apps.v1.DeploymentStatus' './deploymentstatus-apps-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.Pod' './pod-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.api.core.v1.Taint' './taint-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps' './jsonschemaprops-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceConversion' './customresourceconversion-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionNames' './customresourcedefinitionnames-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionVersion' './customresourcedefinitionversion-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.WebhookConversion' './webhookconversion-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceColumnDefinition' './customresourcecolumndefinition-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionSpec' './customresourcedefinitionspec-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionStatus' './customresourcedefinitionstatus-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionCondition' './customresourcedefinitioncondition-apiextensions-v1.json'
    fd -e json -x sd './_definitions.json#/definitions/io.k8s.apiextensions-apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinition' './customresourcedefinition-apiextensions-v1.json'
    fd -e json -x sd '.jsonStatus' '.json'
    fd -e json -x sd '.jsonSpec' '.json'
    # fd -e json -x sd 'https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/v1.30.' ''
    fd -e json -x quicktype --no-ignore-json-refs -s schema {} --lang dart --use-json-annotation --null-safety --coders-in-class -o ../../frontend/lib/k8s-classes/{.}.dart

dev-serve:
	DEV=true cargo run dev

serve-builded:
	DEV=false cargo run dev

build-wasm:
	cd frontend && flutter build web --wasm --release

build-front:
	cd frontend && flutter build web --release