#-------------------------Inspired by kube-rs/k8s-pb------------------------------

# renovate: datasource=github-releases depName=kubernetes/kubernetes
KUBERNETES_VERSION := "1.30.1"

protos-dl:
    #!/usr/bin/env bash
    set -exuo pipefail
    cd k8s-pb-dart
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
    cd k8s-pb-dart
    fd -e proto -x sd 'k8s\.io\.(.+);' '$1;' {}
    fd -e proto -x sd 'import "k8s\.io/(.+)";' 'import "$1";' {}
    mv protos/k8s.io/* protos/
    rmdir protos/k8s.io/

# Generate protos path list for prost
protos-list:
    #!/usr/bin/env bash
    set -exuo pipefail
    cd k8s-pb-dart
    sort --version
    fd -e proto | sort -fd > protos.list

# Download and generate all protos dependent files
protos: protos-dl protos-patch protos-list

# Generate Dart files 
# just protos-gen-dart PATH_TO_FOLDER
protos-gen-dart DART_OUT:
	#!/usr/bin/env bash
	set -exuo pipefail
	while read -r line; do
		protoc --dart_out={{DART_OUT}} --proto_path=k8s-pb-dart/protos ${line#*/} ;
	done <k8s-pb-dart/protos.list
	rm -rf k8s-pb-dart/*

default:
  @just --list

dev-serve:
	DEV=true cargo run dev

serve-builded:
	DEV=false cargo run dev

build-wasm:
	cd frontend && flutter build web --wasm --release

build-front:
	cd frontend && flutter build web --release