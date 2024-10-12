import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpointaddress.g.dart';


///EndpointAddress is a tuple that describes single IP address.
@JsonSerializable()
class Endpointaddress {
    
    ///The Hostname of this endpoint
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local
    ///(169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
    @JsonKey(name: "ip")
    String? ip;
    
    ///Optional: Node hosting this endpoint. This can be used to determine endpoints local to a
    ///node.
    @JsonKey(name: "nodeName")
    String? nodeName;
    
    ///Reference to object providing the endpoint.
    @JsonKey(name: "targetRef")
    IoK8SApiCoreV1ObjectReference? targetRef;

    Endpointaddress({
        this.hostname,
        required this.ip,
        this.nodeName,
        this.targetRef,
    });

    factory Endpointaddress.fromJson(Map<String, dynamic> json) => _$EndpointaddressFromJson(json);

    Map<String, dynamic> toJson() => _$EndpointaddressToJson(this);
}


///Reference to object providing the endpoint.
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
