import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'cindervolumesource_v1.g.dart';


///Represents a cinder volume resource in Openstack. A Cinder volume must exist before
///mounting to a container. The volume must also be in the same region as the kubelet.
///Cinder volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class CindervolumesourceV1 {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is optional: points to a secret object containing parameters used to connect to
    ///OpenStack.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///volumeID used to identify the volume in cinder. More info:
    ///https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "volumeID")
    String? volumeId;

    CindervolumesourceV1({
        this.fsType,
        this.readOnly,
        this.secretRef,
        required this.volumeId,
    });

    factory CindervolumesourceV1.fromJson(Map<String, dynamic> json) => _$CindervolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$CindervolumesourceV1ToJson(this);
}


///secretRef is optional: points to a secret object containing parameters used to connect to
///OpenStack.
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
