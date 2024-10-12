import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'csivolumesource.g.dart';


///Represents a source location of a volume to mount, managed by an external CSI driver
@JsonSerializable()
class Csivolumesource {
    
    ///driver is the name of the CSI driver that handles this volume. Consult with your admin
    ///for the correct name as registered in the cluster.
    @JsonKey(name: "driver")
    String? driver;
    
    ///fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to
    ///the associated CSI driver which will determine the default filesystem to apply.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///nodePublishSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
    ///calls. This field is optional, and  may be empty if no secret is required. If the secret
    ///object contains more than one secret, all secret references are passed.
    @JsonKey(name: "nodePublishSecretRef")
    IoK8SApiCoreV1LocalObjectReference? nodePublishSecretRef;
    
    ///readOnly specifies a read-only configuration for the volume. Defaults to false
    ///(read/write).
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeAttributes stores driver-specific properties that are passed to the CSI driver.
    ///Consult your driver's documentation for supported values.
    @JsonKey(name: "volumeAttributes")
    Map<String, String?>? volumeAttributes;

    Csivolumesource({
        required this.driver,
        this.fsType,
        this.nodePublishSecretRef,
        this.readOnly,
        this.volumeAttributes,
    });

    factory Csivolumesource.fromJson(Map<String, dynamic> json) => _$CsivolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$CsivolumesourceToJson(this);
}


///nodePublishSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
///calls. This field is optional, and  may be empty if no secret is required. If the secret
///object contains more than one secret, all secret references are passed.
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
