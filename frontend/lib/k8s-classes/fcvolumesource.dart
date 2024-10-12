import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'fcvolumesource.g.dart';


///Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as
///read/write once. Fibre Channel volumes support ownership management and SELinux
///relabeling.
@JsonSerializable()
class Fcvolumesource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///lun is Optional: FC target lun number
    @JsonKey(name: "lun")
    int? lun;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///targetWWNs is Optional: FC target worldwide names (WWNs)
    @JsonKey(name: "targetWWNs")
    List<String?>? targetWwNs;
    
    ///wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of
    ///targetWWNs and lun must be set, but not both simultaneously.
    @JsonKey(name: "wwids")
    List<String?>? wwids;

    Fcvolumesource({
        this.fsType,
        this.lun,
        this.readOnly,
        this.targetWwNs,
        this.wwids,
    });

    factory Fcvolumesource.fromJson(Map<String, dynamic> json) => _$FcvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$FcvolumesourceToJson(this);
}
