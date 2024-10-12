import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'iscsivolumesource.g.dart';


///Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI
///volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class Iscsivolumesource {
    
    ///chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
    @JsonKey(name: "chapAuthDiscovery")
    bool? chapAuthDiscovery;
    
    ///chapAuthSession defines whether support iSCSI Session CHAP authentication
    @JsonKey(name: "chapAuthSession")
    bool? chapAuthSession;
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#iscsi
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with
    ///iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be
    ///created for the connection.
    @JsonKey(name: "initiatorName")
    String? initiatorName;
    
    ///iqn is the target iSCSI Qualified Name.
    @JsonKey(name: "iqn")
    String? iqn;
    
    ///iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default'
    ///(tcp).
    @JsonKey(name: "iscsiInterface")
    String? iscsiInterface;
    
    ///lun represents iSCSI Target Lun number.
    @JsonKey(name: "lun")
    int? lun;
    
    ///portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if
    ///the port is other than default (typically TCP ports 860 and 3260).
    @JsonKey(name: "portals")
    List<String?>? portals;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is the CHAP Secret for iSCSI target and initiator authentication
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the
    ///port is other than default (typically TCP ports 860 and 3260).
    @JsonKey(name: "targetPortal")
    String? targetPortal;

    Iscsivolumesource({
        this.chapAuthDiscovery,
        this.chapAuthSession,
        this.fsType,
        this.initiatorName,
        required this.iqn,
        this.iscsiInterface,
        required this.lun,
        this.portals,
        this.readOnly,
        this.secretRef,
        required this.targetPortal,
    });

    factory Iscsivolumesource.fromJson(Map<String, dynamic> json) => _$IscsivolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$IscsivolumesourceToJson(this);
}


///secretRef is the CHAP Secret for iSCSI target and initiator authentication
///
///LocalObjectReference contains enough information to let you locate the referenced object
///inside the same namespace.
@JsonSerializable()
class IoK8SApiCoreV1LocalObjectReference {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;

    IoK8SApiCoreV1LocalObjectReference({
        this.name,
    });

    factory IoK8SApiCoreV1LocalObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LocalObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LocalObjectReferenceToJson(this);
}
