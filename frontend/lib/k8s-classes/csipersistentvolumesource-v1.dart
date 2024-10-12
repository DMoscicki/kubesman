import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'csipersistentvolumesource_v1.g.dart';


///Represents storage that is managed by an external CSI volume driver (Beta feature)
@JsonSerializable()
class CsipersistentvolumesourceV1 {
    
    ///controllerExpandSecretRef is a reference to the secret object containing sensitive
    ///information to pass to the CSI driver to complete the CSI ControllerExpandVolume call.
    ///This field is optional, and may be empty if no secret is required. If the secret object
    ///contains more than one secret, all secrets are passed.
    @JsonKey(name: "controllerExpandSecretRef")
    IoK8SApiCoreV1SecretReference? controllerExpandSecretRef;
    
    ///controllerPublishSecretRef is a reference to the secret object containing sensitive
    ///information to pass to the CSI driver to complete the CSI ControllerPublishVolume and
    ///ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is
    ///required. If the secret object contains more than one secret, all secrets are passed.
    @JsonKey(name: "controllerPublishSecretRef")
    IoK8SApiCoreV1SecretReference? controllerPublishSecretRef;
    
    ///driver is the name of the driver to use for this volume. Required.
    @JsonKey(name: "driver")
    String? driver;
    
    ///fsType to mount. Must be a filesystem type supported by the host operating system. Ex.
    ///"ext4", "xfs", "ntfs".
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///nodeExpandSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is
    ///optional, may be omitted if no secret is required. If the secret object contains more
    ///than one secret, all secrets are passed.
    @JsonKey(name: "nodeExpandSecretRef")
    IoK8SApiCoreV1SecretReference? nodeExpandSecretRef;
    
    ///nodePublishSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
    ///calls. This field is optional, and may be empty if no secret is required. If the secret
    ///object contains more than one secret, all secrets are passed.
    @JsonKey(name: "nodePublishSecretRef")
    IoK8SApiCoreV1SecretReference? nodePublishSecretRef;
    
    ///nodeStageSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and
    ///NodeUnstageVolume calls. This field is optional, and may be empty if no secret is
    ///required. If the secret object contains more than one secret, all secrets are passed.
    @JsonKey(name: "nodeStageSecretRef")
    IoK8SApiCoreV1SecretReference? nodeStageSecretRef;
    
    ///readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeAttributes of the volume to publish.
    @JsonKey(name: "volumeAttributes")
    Map<String, String?>? volumeAttributes;
    
    ///volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume
    ///to refer to the volume on all subsequent calls. Required.
    @JsonKey(name: "volumeHandle")
    String? volumeHandle;

    CsipersistentvolumesourceV1({
        this.controllerExpandSecretRef,
        this.controllerPublishSecretRef,
        required this.driver,
        this.fsType,
        this.nodeExpandSecretRef,
        this.nodePublishSecretRef,
        this.nodeStageSecretRef,
        this.readOnly,
        this.volumeAttributes,
        required this.volumeHandle,
    });

    factory CsipersistentvolumesourceV1.fromJson(Map<String, dynamic> json) => _$CsipersistentvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$CsipersistentvolumesourceV1ToJson(this);
}


///controllerExpandSecretRef is a reference to the secret object containing sensitive
///information to pass to the CSI driver to complete the CSI ControllerExpandVolume call.
///This field is optional, and may be empty if no secret is required. If the secret object
///contains more than one secret, all secrets are passed.
///
///SecretReference represents a Secret Reference. It has enough information to retrieve
///secret in any namespace
///
///controllerPublishSecretRef is a reference to the secret object containing sensitive
///information to pass to the CSI driver to complete the CSI ControllerPublishVolume and
///ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is
///required. If the secret object contains more than one secret, all secrets are passed.
///
///nodeExpandSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is
///optional, may be omitted if no secret is required. If the secret object contains more
///than one secret, all secrets are passed.
///
///nodePublishSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
///calls. This field is optional, and may be empty if no secret is required. If the secret
///object contains more than one secret, all secrets are passed.
///
///nodeStageSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and
///NodeUnstageVolume calls. This field is optional, and may be empty if no secret is
///required. If the secret object contains more than one secret, all secrets are passed.
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
