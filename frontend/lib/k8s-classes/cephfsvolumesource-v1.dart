import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'cephfsvolumesource_v1.g.dart';


///Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class CephfsvolumesourceV1 {
    
    ///monitors is Required: Monitors is a collection of Ceph monitors More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "monitors")
    List<String?>? monitors;
    
    ///path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    @JsonKey(name: "path")
    String? path;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts. More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretFile is Optional: SecretFile is the path to key ring for User, default is
    ////etc/ceph/user.secret More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "secretFile")
    String? secretFile;
    
    ///secretRef is Optional: SecretRef is reference to the authentication secret for User,
    ///default is empty. More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///user is optional: User is the rados user name, default is admin More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    CephfsvolumesourceV1({
        required this.monitors,
        this.path,
        this.readOnly,
        this.secretFile,
        this.secretRef,
        this.user,
    });

    factory CephfsvolumesourceV1.fromJson(Map<String, dynamic> json) => _$CephfsvolumesourceV1FromJson(json);

    Map<String, dynamic> toJson() => _$CephfsvolumesourceV1ToJson(this);
}


///secretRef is Optional: SecretRef is reference to the authentication secret for User,
///default is empty. More info:
///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
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
