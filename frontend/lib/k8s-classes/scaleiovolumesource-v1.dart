import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'scaleiovolumesource_v1.g.dart';


///ScaleIOVolumeSource represents a persistent ScaleIO volume
@JsonSerializable()
class ScaleiovolumesourceV1 {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs".
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///gateway is the host address of the ScaleIO API Gateway.
    @JsonKey(name: "gateway")
    String? gateway;
    
    ///protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
    @JsonKey(name: "protectionDomain")
    String? protectionDomain;
    
    ///readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef references to the secret for ScaleIO user and other sensitive information. If
    ///this is not provided, Login operation will fail.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference secretRef;
    
    ///sslEnabled Flag enable/disable SSL communication with Gateway, default false
    @JsonKey(name: "sslEnabled")
    bool? sslEnabled;
    
    ///storageMode indicates whether the storage for a volume should be ThickProvisioned or
    ///ThinProvisioned. Default is ThinProvisioned.
    @JsonKey(name: "storageMode")
    String? storageMode;
    
    ///storagePool is the ScaleIO Storage Pool associated with the protection domain.
    @JsonKey(name: "storagePool")
    String? storagePool;
    
    ///system is the name of the storage system as configured in ScaleIO.
    @JsonKey(name: "system")
    String? system;
    
    ///volumeName is the name of a volume already created in the ScaleIO system that is
    ///associated with this volume source.
    @JsonKey(name: "volumeName")
    String? volumeName;

    ScaleiovolumesourceV1({
        this.fsType,
        required this.gateway,
        this.protectionDomain,
        this.readOnly,
        required this.secretRef,
        this.sslEnabled,
        this.storageMode,
        this.storagePool,
        required this.system,
        this.volumeName,
    });

    factory ScaleiovolumesourceV1.fromJson(Map<String, dynamic> json) => _$ScaleiovolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$ScaleiovolumesourceV1ToJson(this);
}


///secretRef references to the secret for ScaleIO user and other sensitive information. If
///this is not provided, Login operation will fail.
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
