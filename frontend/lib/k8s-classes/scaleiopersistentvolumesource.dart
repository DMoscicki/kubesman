import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'scaleiopersistentvolumesource.g.dart';


///ScaleIOPersistentVolumeSource represents a persistent ScaleIO volume
@JsonSerializable()
class Scaleiopersistentvolumesource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs"
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///gateway is the host address of the ScaleIO API Gateway.
    @JsonKey(name: "gateway")
    String? gateway;
    
    ///protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
    @JsonKey(name: "protectionDomain")
    String? protectionDomain;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef references to the secret for ScaleIO user and other sensitive information. If
    ///this is not provided, Login operation will fail.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference secretRef;
    
    ///sslEnabled is the flag to enable/disable SSL communication with Gateway, default false
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

    Scaleiopersistentvolumesource({
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

    factory Scaleiopersistentvolumesource.fromJson(Map<String, dynamic> json) => _$ScaleiopersistentvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$ScaleiopersistentvolumesourceToJson(this);
}


///secretRef references to the secret for ScaleIO user and other sensitive information. If
///this is not provided, Login operation will fail.
///
///SecretReference represents a Secret Reference. It has enough information to retrieve
///secret in any namespace
@JsonSerializable()
class IoK8SApiCoreV1SecretReference {
    
    ///name is unique within a namespace to reference a secret resource.
    @JsonKey(name: "name")
    String? name;
    
    ///namespace defines the space within which the secret name must be unique.
    @JsonKey(name: "namespace")
    String? namespace;

    IoK8SApiCoreV1SecretReference({
        this.name,
        this.namespace,
    });

    factory IoK8SApiCoreV1SecretReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretReferenceToJson(this);
}
