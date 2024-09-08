PROTO_DIR = cluster-types/protos

dev-serve:
	DEV=true cargo run dev

serve-build:
	cargo run dev

front-wasm:
	cd frontend && flutter build web --wasm --release

clean-proto:
	rm -rf frontend/lib/protos/*.dart && rm -rf blog/src/protos/*.ts

gen-proto: $(PROTO_DIR)/*
	for file in $^ ; do \
			protoc --dart_out=frontend/lib/protos --proto_path=cluster-types/protos $${file} ; \
	done
