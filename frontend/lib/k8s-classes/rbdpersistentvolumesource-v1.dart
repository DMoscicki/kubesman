import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'rbdpersistentvolumesource_v1.g.dart';


///Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes
///support ownership management and SELinux relabeling.
@JsonSerializable()
class RbdpersistentvolumesourceV1 {
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#rbd
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///image is the rados image name. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "image")
    String? image;
    
    ///keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "keyring")
    String? keyring;
    
    ///monitors is a collection of Ceph monitors. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "monitors")
    List<String?>? monitors;
    
    ///pool is the rados pool name. Default is rbd. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "pool")
    String? pool;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More
    ///info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is name of the authentication secret for RBDUser. If provided overrides
    ///keyring. Default is nil. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretReference? secretRef;
    
    ///user is the rados user name. Default is admin. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    RbdpersistentvolumesourceV1({
        this.fsType,
        required this.image,
        this.keyring,
        required this.monitors,
        this.pool,
        this.readOnly,
        this.secretRef,
        this.user,
    });

    factory RbdpersistentvolumesourceV1.fromJson(Map<String, dynamic> json) => _$RbdpersistentvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$RbdpersistentvolumesourceV1ToJson(this);
}


///secretRef is name of the authentication secret for RBDUser. If provided overrides
///keyring. Default is nil. More info:
///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
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
