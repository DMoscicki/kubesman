import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'localvolumesource.g.dart';


///Local represents directly-attached storage with node affinity (Beta feature)
@JsonSerializable()
class Localvolumesource {
    
    ///fsType is the filesystem type to mount. It applies only when the Path is a block device.
    ///Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs",
    ///"ntfs". The default value is to auto-select a filesystem if unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///path of the full path to the volume on the node. It can be either a directory or block
    ///device (disk, partition, ...).
    @JsonKey(name: "path")
    String? path;

    Localvolumesource({
        this.fsType,
        required this.path,
    });

    factory Localvolumesource.fromJson(Map<String, dynamic> json) => _$LocalvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$LocalvolumesourceToJson(this);
}
