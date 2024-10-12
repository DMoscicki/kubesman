import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'downwardapiprojection_v1.g.dart';


///Represents downward API info for projecting into a projected volume. Note that this is
///identical to a downwardAPI volume source without the default mode.
@JsonSerializable()
class DownwardapiprojectionV1 {
    
    ///Items is a list of DownwardAPIVolume file
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1DownwardApiVolumeFile>? items;

    DownwardapiprojectionV1({
        this.items,
    });

    factory DownwardapiprojectionV1.fromJson(Map<String, dynamic> json) => _$DownwardapiprojectionV1FromJson(json);

    Map<String, dynamic> toJson() => _$DownwardapiprojectionV1ToJson(this);
}


///DownwardAPIVolumeFile represents information to create the file containing the pod field
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiVolumeFile {
    
    ///Required: Selects a field of the pod: only annotations, labels, name, namespace and uid
    ///are supported.
    @JsonKey(name: "fieldRef")
    IoK8SApiCoreV1ObjectFieldSelector? fieldRef;
    
    ///Optional: mode bits used to set permissions on this file, must be an octal value between
    ///0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal
    ///values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///Required: Path is  the relative path name of the file to be created. Must not be absolute
    ///or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must
    ///not start with '..'
    @JsonKey(name: "path")
    String path;
    
    ///Selects a resource of the container: only resources limits and requests (limits.cpu,
    ///limits.memory, requests.cpu and requests.memory) are currently supported.
    @JsonKey(name: "resourceFieldRef")
    IoK8SApiCoreV1ResourceFieldSelector? resourceFieldRef;

    IoK8SApiCoreV1DownwardApiVolumeFile({
        this.fieldRef,
        this.mode,
        required this.path,
        this.resourceFieldRef,
    });

    factory IoK8SApiCoreV1DownwardApiVolumeFile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiVolumeFileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiVolumeFileToJson(this);
}


///Required: Selects a field of the pod: only annotations, labels, name, namespace and uid
///are supported.
///
///ObjectFieldSelector selects an APIVersioned field of an object.
@JsonSerializable()
class IoK8SApiCoreV1ObjectFieldSelector {
    
    ///Version of the schema the FieldPath is written in terms of, defaults to "v1".
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Path of the field to select in the specified API version.
    @JsonKey(name: "fieldPath")
    String fieldPath;

    IoK8SApiCoreV1ObjectFieldSelector({
        this.apiVersion,
        required this.fieldPath,
    });

    factory IoK8SApiCoreV1ObjectFieldSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ObjectFieldSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ObjectFieldSelectorToJson(this);
}


///Selects a resource of the container: only resources limits and requests (limits.cpu,
///limits.memory, requests.cpu and requests.memory) are currently supported.
///
///ResourceFieldSelector represents container resources (cpu, memory) and their output format
@JsonSerializable()
class IoK8SApiCoreV1ResourceFieldSelector {
    
    ///Container name: required for volumes, optional for env vars
    @JsonKey(name: "containerName")
    String? containerName;
    
    ///Specifies the output format of the exposed resources, defaults to "1"
    @JsonKey(name: "divisor")
    dynamic divisor;
    
    ///Required: resource to select
    @JsonKey(name: "resource")
    String resource;

    IoK8SApiCoreV1ResourceFieldSelector({
        this.containerName,
        this.divisor,
        required this.resource,
    });

    factory IoK8SApiCoreV1ResourceFieldSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceFieldSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceFieldSelectorToJson(this);
}
