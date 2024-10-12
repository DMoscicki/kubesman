import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'portworxvolumesource_v1.g.dart';


///PortworxVolumeSource represents a Portworx volume resource.
@JsonSerializable()
class PortworxvolumesourceV1 {
    
    ///fSType represents the filesystem type to mount Must be a filesystem type supported by the
    ///host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeID uniquely identifies a Portworx volume
    @JsonKey(name: "volumeID")
    String? volumeId;

    PortworxvolumesourceV1({
        this.fsType,
        this.readOnly,
        required this.volumeId,
    });

    factory PortworxvolumesourceV1.fromJson(Map<String, dynamic> json) => _$PortworxvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$PortworxvolumesourceV1ToJson(this);
}
