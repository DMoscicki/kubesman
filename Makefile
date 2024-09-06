dev-serve:
	DEV=true cargo run dev

serve-build:
	cargo run dev

front-wasm:
	cd frontend && flutter build web --wasm --release