## It's not ready yet

### Build Dependencies

- [fd](https://github.com/sharkdp/fd)
- [jq](https://stedolan.github.io/jq/)
- [just](https://github.com/casey/just)
- [sd](https://github.com/chmln/sd)
- [dart protoc_plugin](https://pub.dev/packages/protoc_plugin)
- [rust](https://www.rust-lang.org/)

## Build Process
The code generation process just in 1 step;
1. `just protos` - download k8s `.proto` and generate it to dart and rust files;

## It's not tested on Windows