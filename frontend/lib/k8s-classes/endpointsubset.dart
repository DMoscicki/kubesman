import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpointsubset.g.dart';


///EndpointSubset is a group of addresses with a common set of ports. The expanded set of
///endpoints is the Cartesian product of Addresses x Ports. For example, given:
///
///{
///Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
///Ports:     [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
///}
///
///The resulting set of endpoints can be viewed as:
///
///a: [ 10.10.1.1:8675, 10.10.2.2:8675 ],
///b: [ 10.10.1.1:309, 10.10.2.2:309 ]
@JsonSerializable()
class Endpointsubset {
    
    ///IP addresses which offer the related ports that are marked as ready. These endpoints
    ///should be considered safe for load balancers and clients to utilize.
    @JsonKey(name: "addresses")
    List<IoK8SApiCoreV1EndpointAddress>? addresses;
    
    ///IP addresses which offer the related ports but are not currently marked as ready because
    ///they have not yet finished starting, have recently failed a readiness check, or have
    ///recently failed a liveness check.
    @JsonKey(name: "notReadyAddresses")
    List<IoK8SApiCoreV1EndpointAddress>? notReadyAddresses;
    
    ///Port numbers available on the related IP addresses.
    @JsonKey(name: "ports")
    List<IoK8SApiCoreV1EndpointPort>? ports;

    Endpointsubset({
        this.addresses,
        this.notReadyAddresses,
        this.ports,
    });

    factory Endpointsubset.fromJson(Map<String, dynamic> json) => _$EndpointsubsetFromJson(json);

    Map<String, dynamic> toJson() => _$EndpointsubsetToJson(this);
}


///EndpointAddress is a tuple that describes single IP address.
@JsonSerializable()
class IoK8SApiCoreV1EndpointAddress {
    
    ///The Hostname of this endpoint
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///The IP of this endpoint. May not be loopback (127.0.0.0/8 or ::1), link-local
    ///(169.254.0.0/16 or fe80::/10), or link-local multicast (224.0.0.0/24 or ff02::/16).
    @JsonKey(name: "ip")
    String ip;
    
    ///Optional: Node hosting this endpoint. This can be used to determine endpoints local to a
    ///node.
    @JsonKey(name: "nodeName")
    String? nodeName;
    
    ///Reference to object providing the endpoint.
    @JsonKey(name: "targetRef")
    IoK8SApiCoreV1ObjectReference? targetRef;

    IoK8SApiCoreV1EndpointAddress({
        this.hostname,
        required this.ip,
        this.nodeName,
        this.targetRef,
    });

    factory IoK8SApiCoreV1EndpointAddress.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EndpointAddressFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EndpointAddressToJson(this);
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


///EndpointPort is a tuple that describes a single port.
@JsonSerializable()
class IoK8SApiCoreV1EndpointPort {
    
    ///The application protocol for this port. This is used as a hint for implementations to
    ///offer richer behavior for protocols that they understand. This field follows standard
    ///Kubernetes label syntax. Valid values are either:
    ///
    ///* Un-prefixed protocol names - reserved for IANA standard service names (as per RFC-6335
    ///and https://www.iana.org/assignments/service-names).
    ///
    ///* Kubernetes-defined prefixed names:
    ///* 'kubernetes.io/h2c' - HTTP/2 prior knowledge over cleartext as described in
    ///https://www.rfc-editor.org/rfc/rfc9113.html#name-starting-http-2-with-prior-
    ///* 'kubernetes.io/ws'  - WebSocket over cleartext as described in
    ///https://www.rfc-editor.org/rfc/rfc6455
    ///* 'kubernetes.io/wss' - WebSocket over TLS as described in
    ///https://www.rfc-editor.org/rfc/rfc6455
    ///
    ///* Other protocols should use implementation-defined prefixed names such as
    ///mycompany.com/my-custom-protocol.
    @JsonKey(name: "appProtocol")
    String? appProtocol;
    
    ///The name of this port.  This must match the 'name' field in the corresponding
    ///ServicePort. Must be a DNS_LABEL. Optional only if one port is defined.
    @JsonKey(name: "name")
    String? name;
    
    ///The port number of the endpoint.
    @JsonKey(name: "port")
    int port;
    
    ///The IP protocol for this port. Must be UDP, TCP, or SCTP. Default is TCP.
    @JsonKey(name: "protocol")
    String? protocol;

    IoK8SApiCoreV1EndpointPort({
        this.appProtocol,
        this.name,
        required this.port,
        this.protocol,
    });

    factory IoK8SApiCoreV1EndpointPort.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EndpointPortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EndpointPortToJson(this);
}
