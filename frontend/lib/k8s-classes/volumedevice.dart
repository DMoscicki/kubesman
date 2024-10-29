import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumedevice.g.dart';


///volumeDevice describes a mapping of a raw block device within a container.
@JsonSerializable()
class Volumedevice {
    
    ///devicePath is the path inside of the container that the device will be mapped to.
    @JsonKey(name: "devicePath")
    String? devicePath;
    
    ///name must match the name of a persistentVolumeClaim in the pod
    @JsonKey(name: "name")
    String? name;

    Volumedevice({
        required this.devicePath,
        required this.name,
    });

    factory Volumedevice.fromJson(Map<String, dynamic> json) => _$VolumedeviceFromJson(json);

    Map<String, dynamic> toJson() => _$VolumedeviceToJson(this);
}
