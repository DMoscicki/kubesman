import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumedevice_v1.g.dart';


///volumeDevice describes a mapping of a raw block device within a container.
@JsonSerializable()
class VolumedeviceV1 {
    
    ///devicePath is the path inside of the container that the device will be mapped to.
    @JsonKey(name: "devicePath")
    String? devicePath;
    
    ///name must match the name of a persistentVolumeClaim in the pod
    @JsonKey(name: "name")
    String? name;

    VolumedeviceV1({
        required this.devicePath,
        required this.name,
    });

    factory VolumedeviceV1.fromJson(Map<String, dynamic> json) => _$VolumedeviceV1FromJson(json);

    Map<String, dynamic> toJson() => _$VolumedeviceV1ToJson(this);
}
