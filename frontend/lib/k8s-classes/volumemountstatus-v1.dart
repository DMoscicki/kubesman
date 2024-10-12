import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volumemountstatus_v1.g.dart';


///VolumeMountStatus shows status of volume mounts.
@JsonSerializable()
class VolumemountstatusV1 {
    
    ///MountPath corresponds to the original VolumeMount.
    @JsonKey(name: "mountPath")
    String? mountPath;
    
    ///Name corresponds to the name of the original VolumeMount.
    @JsonKey(name: "name")
    String? name;
    
    ///ReadOnly corresponds to the original VolumeMount.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///RecursiveReadOnly must be set to Disabled, Enabled, or unspecified (for non-readonly
    ///mounts). An IfPossible value in the original VolumeMount must be translated to Disabled
    ///or Enabled, depending on the mount result.
    @JsonKey(name: "recursiveReadOnly")
    String? recursiveReadOnly;

    VolumemountstatusV1({
        required this.mountPath,
        required this.name,
        this.readOnly,
        this.recursiveReadOnly,
    });

    factory VolumemountstatusV1.fromJson(Map<String, dynamic> json) => _$VolumemountstatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$VolumemountstatusV1ToJson(this);
}
