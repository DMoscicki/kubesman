import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'gcepersistentdiskvolumesource_v1.g.dart';


///Represents a Persistent Disk resource in Google Compute Engine.
///
///A GCE PD must exist before mounting to a container. The disk must also be in the same GCE
///project and zone as the kubelet. A GCE PD can only be mounted as read/write once or
///read-only many times. GCE PDs support ownership management and SELinux relabeling.
@JsonSerializable()
class GcepersistentdiskvolumesourceV1 {
    
    ///fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///partition is the partition in the volume that you want to mount. If omitted, the default
    ///is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as
    ///"1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property
    ///empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "partition")
    int? partition;
    
    ///pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "pdName")
    String? pdName;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "readOnly")
    bool? readOnly;

    GcepersistentdiskvolumesourceV1({
        this.fsType,
        this.partition,
        required this.pdName,
        this.readOnly,
    });

    factory GcepersistentdiskvolumesourceV1.fromJson(Map<String, dynamic> json) => _$GcepersistentdiskvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$GcepersistentdiskvolumesourceV1ToJson(this);
}
