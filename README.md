## It's not ready yet

### Build Dependencies

- [fd](https://github.com/sharkdp/fd)
- [jq](https://stedolan.github.io/jq/)
- [just](https://github.com/casey/just)
- [sd](https://github.com/chmln/sd)
- [protoc_plugin](https://pub.dev/packages/protoc_plugin)
- [rust](https://www.rust-lang.org/)

## Build Process
The code generation process consists of 2 steps;

1. `generate-dart-classes` - download k8s schemas and convert to dart classes with JsonSerialize;
2. `dart-json-serialize` - generate json serialize;
