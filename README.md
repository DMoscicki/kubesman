## It's not ready yet

### Build Dependencies

- [fd](https://github.com/sharkdp/fd)
- [jq](https://stedolan.github.io/jq/)
- [just](https://github.com/casey/just)
- [sd](https://github.com/chmln/sd)
- [protoc_plugin](https://pub.dev/packages/protoc_plugin)

## Build Process
The code generation process consists of 3 steps;

1. `just protos` - download and patch protobufs
2. `just protos-gen-dart PATH_TO_OUTPUT` - generate and put files to folder

`PATH_TO_OUTPUT` can be yours Flutter project

### Example
`just protos-gen-dart lib/folder_name` where `folder_name` is sub-folder of yours `lib` folder