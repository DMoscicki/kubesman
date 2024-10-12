import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hostpathvolumesource_v1.g.dart';


///Represents a host path mapped into a pod. Host path volumes do not support ownership
///management or SELinux relabeling.
@JsonSerializable()
class HostpathvolumesourceV1 {
    
    ///path of the directory on the host. If the path is a symlink, it will follow the link to
    ///the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "path")
    String? path;
    
    ///type for HostPath Volume Defaults to "" More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "type")
    String? type;

    HostpathvolumesourceV1({
        required this.path,
        this.type,
    });

    factory HostpathvolumesourceV1.fromJson(Map<String, dynamic> json) => _$HostpathvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$HostpathvolumesourceV1ToJson(this);
}
