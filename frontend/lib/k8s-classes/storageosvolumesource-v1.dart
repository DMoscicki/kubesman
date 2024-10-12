import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'storageosvolumesource_v1.g.dart';


///Represents a StorageOS persistent volume resource.
@JsonSerializable()
class StorageosvolumesourceV1 {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
    ///not specified, default values will be attempted.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///volumeName is the human-readable name of the StorageOS volume.  Volume names are only
    ///unique within a namespace.
    @JsonKey(name: "volumeName")
    String? volumeName;
    
    ///volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is
    ///specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping
    ///to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to
    ///override the default behaviour. Set to "default" if you are not using namespaces within
    ///StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    @JsonKey(name: "volumeNamespace")
    String? volumeNamespace;

    StorageosvolumesourceV1({
        this.fsType,
        this.readOnly,
        this.secretRef,
        this.volumeName,
        this.volumeNamespace,
    });

    factory StorageosvolumesourceV1.fromJson(Map<String, dynamic> json) => _$StorageosvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$StorageosvolumesourceV1ToJson(this);
}


///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
///not specified, default values will be attempted.
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
