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
	rm -rf frontend/lib/protos/*
	while read -r line; do
		protoc --dart_out={{DART_OUT}} --proto_path=k8s-pb/protos k8s-pb/protos/${line#*/} ;
	done <k8s-pb/protos.list
	rm -rf k8s-pb;

move-dart-files:
	#!/usr/bin/env bash
	set -exuo pipefail
	mkdir -p frontend/lib/fbs
	cd k8s-fbs/src
	fd -e dart -x mv -f {} ../../frontend/lib/fbs/;

# Download and generate all protos dependent files
protos: protos-dl protos-patch protos-list protos-gen-dart
	
dev-serve:
	DEV=true cargo run dev

# NOT WORKING WITH MIDDLEWARE
serve-builded:
	DEV=false cargo run dev

# NOT WORKING AT THE MOMENT CAUSE CASDOOR HAS IMPORT `dart:html` package
build-wasm:
	cd frontend && flutter build web --wasm --release

build-front:
	cd frontend && flutter build web --release

frontend_dev:
	cd frontend; flutter run -d web-server --web-port 9000

# Working only with dev, dont use it on production
dev_casdoor:
	docker run -p 8000:8000 -d casbin/casdoor-all-in-one:latest >> ./container_id.txt

re_run_container:
	podman restart "$(cat container_id.txt)"

frontend-web:
	cp -rf dev.env ./frontend
	cd frontend; flutter run -d chrome --web-port 9000