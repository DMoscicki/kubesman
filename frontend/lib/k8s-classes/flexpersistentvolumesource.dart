import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flexpersistentvolumesource.g.dart';


///FlexPersistentVolumeSource represents a generic persistent volume resource that is
///provisioned/attached using an exec based plugin.
@JsonSerializable()
class Flexpersistentvolumesource {
    
    ///driver is the name of the driver to use for this volume.
    @JsonKey(name: "driver")
    String? driver;
    
    ///fsType is the Filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume
    ///script.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///options is Optional: this field holds extra command options if any.
    @JsonKey(name: "options")
    Map<String, String?>? options;
    
    ///readOnly is Optional: defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is Optional: SecretRef is reference to the secret object containing sensitive
    ///information to pass to the plugin scripts. This may be empty if no secret object is
    ///specified. If the secret object contains more than one secret, all secrets are passed to
    ///the plugin scripts.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference? secretRef;

    Flexpersistentvolumesource({
        required this.driver,
        this.fsType,
        this.options,
        this.readOnly,
        this.secretRef,
    });

    factory Flexpersistentvolumesource.fromJson(Map<String, dynamic> json) => _$FlexpersistentvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$FlexpersistentvolumesourceToJson(this);
}


///secretRef is Optional: SecretRef is reference to the secret object containing sensitive
///information to pass to the plugin scripts. This may be empty if no secret object is
///specified. If the secret object contains more than one secret, all secrets are passed to
///the plugin scripts.
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
