import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'storageospersistentvolumesource.g.dart';


///Represents a StorageOS persistent volume resource.
@JsonSerializable()
class Storageospersistentvolumesource {
    
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
    IoK8SApiCoreV1ObjectReference? secretRef;
    
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

    Storageospersistentvolumesource({
        this.fsType,
        this.readOnly,
        this.secretRef,
        this.volumeName,
        this.volumeNamespace,
    });

    factory Storageospersistentvolumesource.fromJson(Map<String, dynamic> json) => _$StorageospersistentvolumesourceFromJson(json);

    Map<String, dynamic> toJson() => _$StorageospersistentvolumesourceToJson(this);
}


///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
///not specified, default values will be attempted.
///
///ObjectReference contains enough information to let you inspect or modify the referred
///object.
@JsonSerializable()
class IoK8SApiCoreV1ObjectReference {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///If referring to a piece of an object instead of an entire object, this string should
    ///contain a valid JSON/Go field access statement, such as
    ///desiredState.manifest.containers[2]. For example, if the object reference is to a
    ///container within a pod, this would take on a value like: "spec.containers{name}" (where
    ///"name" refers to the name of the container that triggered the event) or if no container
    ///name is specified "spec.containers[2]" (container with index 2 in this pod). This syntax
    ///is chosen only to have some well-defined way of referencing a part of an object.
    @JsonKey(name: "fieldPath")
    String? fieldPath;
    
    ///Kind of the referent. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///Specific resourceVersion to which this reference is made, if any. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///UID of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#uids
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApiCoreV1ObjectReference({
        this.apiVersion,
        this.fieldPath,
        this.kind,
        this.name,
        this.namespace,
        this.resourceVersion,
        this.uid,
    });

    factory IoK8SApiCoreV1ObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ObjectReferenceToJson(this);
}
