import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'cephfspersistentvolumesource.g.dart';


///Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class Cephfspersistentvolumesource {
    
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
    IoK8SApiCoreV1SecretReference? secretRef;
    
    ///user is Optional: User is the rados user name, default is admin More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    Cephfspersistentvolumesource({
        required this.monitors,
        this.path,
        this.readOnly,
        this.secretFile,
        this.secretRef,
        this.user,
    });

    factory Cephfspersistentvolumesource.fromJson(Map<String, dynamic> json) => _$CephfspersistentvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$CephfspersistentvolumesourceToJson(this);
}


///secretRef is Optional: SecretRef is reference to the authentication secret for User,
///default is empty. More info:
///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
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
