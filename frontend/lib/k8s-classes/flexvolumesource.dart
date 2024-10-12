import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flexvolumesource.g.dart';


///FlexVolume represents a generic volume resource that is provisioned/attached using an
///exec based plugin.
@JsonSerializable()
class Flexvolumesource {
    
    ///driver is the name of the driver to use for this volume.
    @JsonKey(name: "driver")
    String? driver;
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
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
    
    ///secretRef is Optional: secretRef is reference to the secret object containing sensitive
    ///information to pass to the plugin scripts. This may be empty if no secret object is
    ///specified. If the secret object contains more than one secret, all secrets are passed to
    ///the plugin scripts.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;

    Flexvolumesource({
        required this.driver,
        this.fsType,
        this.options,
        this.readOnly,
        this.secretRef,
    });

    factory Flexvolumesource.fromJson(Map<String, dynamic> json) => _$FlexvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$FlexvolumesourceToJson(this);
}


///secretRef is Optional: secretRef is reference to the secret object containing sensitive
///information to pass to the plugin scripts. This may be empty if no secret object is
///specified. If the secret object contains more than one secret, all secrets are passed to
///the plugin scripts.
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
