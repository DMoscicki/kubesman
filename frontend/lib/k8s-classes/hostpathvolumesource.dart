import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hostpathvolumesource.g.dart';


///Represents a host path mapped into a pod. Host path volumes do not support ownership
///management or SELinux relabeling.
@JsonSerializable()
class Hostpathvolumesource {
    
    ///path of the directory on the host. If the path is a symlink, it will follow the link to
    ///the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "path")
    String? path;
    
    ///type for HostPath Volume Defaults to "" More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "type")
    String? type;

    Hostpathvolumesource({
        required this.path,
        this.type,
    });

    factory Hostpathvolumesource.fromJson(Map<String, dynamic> json) => _$HostpathvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$HostpathvolumesourceToJson(this);
}
