import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'configmapprojection_v1.g.dart';


///Adapts a ConfigMap into a projected volume.
///
///The contents of the target ConfigMap's Data field will be presented in a projected volume
///as files using the keys in the Data field as the file names, unless the items element is
///populated with specific mappings of keys to paths. Note that this is identical to a
///configmap volume source without the default mode.
@JsonSerializable()
class ConfigmapprojectionV1 {
    
    ///items if unspecified, each key-value pair in the Data field of the referenced ConfigMap
    ///will be projected into the volume as a file whose name is the key and content is the
    ///value. If specified, the listed keys will be projected into the specified paths, and
    ///unlisted keys will not be present. If a key is specified which is not present in the
    ///ConfigMap, the volume setup will error unless it is marked optional. Paths must be
    ///relative and may not contain the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional specify whether the ConfigMap or its keys must be defined
    @JsonKey(name: "optional")
    bool? optional;

    ConfigmapprojectionV1({
        this.items,
        this.name,
        this.optional,
    });

    factory ConfigmapprojectionV1.fromJson(Map<String, dynamic> json) => _$ConfigmapprojectionV1FromJson(json);

    Map<String, dynamic> toJson() => _$ConfigmapprojectionV1ToJson(this);
}


///Maps a string key to a path within a volume.
@JsonSerializable()
class IoK8SApiCoreV1KeyToPath {
    
    ///key is the key to project.
    @JsonKey(name: "key")
    String key;
    
    ///mode is Optional: mode bits used to set permissions on this file. Must be an octal value
    ///between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and
    ///decimal values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///path is the relative path of the file to map the key to. May not be an absolute path. May
    ///not contain the path element '..'. May not start with the string '..'.
    @JsonKey(name: "path")
    String path;

    IoK8SApiCoreV1KeyToPath({
        required this.key,
        this.mode,
        required this.path,
    });

    factory IoK8SApiCoreV1KeyToPath.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1KeyToPathFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1KeyToPathToJson(this);
}
