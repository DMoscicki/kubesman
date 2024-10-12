import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'attachedvolume_v1.g.dart';


///AttachedVolume describes a volume attached to a node
@JsonSerializable()
class AttachedvolumeV1 {
    
    ///DevicePath represents the device path where the volume should be available
    @JsonKey(name: "devicePath")
    String? devicePath;
    
    ///Name of the attached volume
    @JsonKey(name: "name")
    String? name;

    AttachedvolumeV1({
        required this.devicePath,
        required this.name,
    });

    factory AttachedvolumeV1.fromJson(Map<String, dynamic> json) => _$AttachedvolumeV1FromJson(json);

    Map<String, dynamic> toJson() => _$AttachedvolumeV1ToJson(this);
}
