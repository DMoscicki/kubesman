import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'attachedvolume.g.dart';


///AttachedVolume describes a volume attached to a node
@JsonSerializable()
class Attachedvolume {
    
    ///DevicePath represents the device path where the volume should be available
    @JsonKey(name: "devicePath")
    String? devicePath;
    
    ///Name of the attached volume
    @JsonKey(name: "name")
    String? name;

    Attachedvolume({
        required this.devicePath,
        required this.name,
    });

    factory Attachedvolume.fromJson(Map<String, dynamic> json) => _$AttachedvolumeFromJson(json);

    Map<String, dynamic> toJson() => _$AttachedvolumeToJson(this);
}
