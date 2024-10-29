import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpoint_discovery_v1.g.dart';


///Endpoint represents a single logical "backend" implementing a service.
@JsonSerializable()
class EndpointDiscoveryV1 {
    
    ///addresses of this endpoint. The contents of this field are interpreted according to the
    ///corresponding EndpointSlice addressType field. Consumers must handle different types of
    ///addresses in the context of their own capabilities. This must contain at least one
    ///address but no more than 100. These are all assumed to be fungible and clients may choose
    ///to only use the first element. Refer to: https://issue.k8s.io/106267
    @JsonKey(name: "addresses")
    List<String?>? addresses;
    
    ///conditions contains information about the current status of the endpoint.
    @JsonKey(name: "conditions")
    IoK8SApiDiscoveryV1EndpointConditions? conditions;
    
    ///deprecatedTopology contains topology information part of the v1beta1 API. This field is
    ///deprecated, and will be removed when the v1beta1 API is removed (no sooner than
    ///kubernetes v1.24).  While this field can hold values, it is not writable through the v1
    ///API, and any attempts to write to it will be silently ignored. Topology information can
    ///be found in the zone and nodeName fields instead.
    @JsonKey(name: "deprecatedTopology")
    Map<String, String?>? deprecatedTopology;
    
    ///hints contains information associated with how an endpoint should be consumed.
    @JsonKey(name: "hints")
    IoK8SApiDiscoveryV1EndpointHints? hints;
    
    ///hostname of this endpoint. This field may be used by consumers of endpoints to
    ///distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use
    ///the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be
    ///lowercase and pass DNS Label (RFC 1123) validation.
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///nodeName represents the name of the Node hosting this endpoint. This can be used to
    ///determine endpoints local to a Node.
    @JsonKey(name: "nodeName")
    String? nodeName;
    
    ///targetRef is a reference to a Kubernetes object that represents this endpoint.
    @JsonKey(name: "targetRef")
    IoK8SApiCoreV1ObjectReference? targetRef;
    
    ///zone is the name of the Zone this endpoint exists in.
    @JsonKey(name: "zone")
    String? zone;

    EndpointDiscoveryV1({
        required this.addresses,
        this.conditions,
        this.deprecatedTopology,
        this.hints,
        this.hostname,
        this.nodeName,
        this.targetRef,
        this.zone,
    });

    factory EndpointDiscoveryV1.fromJson(Map<String, dynamic> json) => _$EndpointDiscoveryV1FromJson(json);

    Map<String, dynamic> toJson() => _$EndpointDiscoveryV1ToJson(this);
}


///conditions contains information about the current status of the endpoint.
///
///EndpointConditions represents the current condition of an endpoint.
@JsonSerializable()
class IoK8SApiDiscoveryV1EndpointConditions {
    
    ///ready indicates that this endpoint is prepared to receive traffic, according to whatever
    ///system is managing the endpoint. A nil value indicates an unknown state. In most cases
    ///consumers should interpret this unknown state as ready. For compatibility reasons, ready
    ///should never be "true" for terminating endpoints, except when the normal readiness
    ///behavior is being explicitly overridden, for example when the associated Service has set
    ///the publishNotReadyAddresses flag.
    @JsonKey(name: "ready")
    bool? ready;
    
    ///serving is identical to ready except that it is set regardless of the terminating state
    ///of endpoints. This condition should be set to true for a ready endpoint that is
    ///terminating. If nil, consumers should defer to the ready condition.
    @JsonKey(name: "serving")
    bool? serving;
    
    ///terminating indicates that this endpoint is terminating. A nil value indicates an unknown
    ///state. Consumers should interpret this unknown state to mean that the endpoint is not
    ///terminating.
    @JsonKey(name: "terminating")
    bool? terminating;

    IoK8SApiDiscoveryV1EndpointConditions({
        this.ready,
        this.serving,
        this.terminating,
    });

    factory IoK8SApiDiscoveryV1EndpointConditions.fromJson(Map<String, dynamic> json) => _$IoK8SApiDiscoveryV1EndpointConditionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiDiscoveryV1EndpointConditionsToJson(this);
}


///hints contains information associated with how an endpoint should be consumed.
///
///EndpointHints provides hints describing how an endpoint should be consumed.
@JsonSerializable()
class IoK8SApiDiscoveryV1EndpointHints {
    
    ///forZones indicates the zone(s) this endpoint should be consumed by to enable topology
    ///aware routing.
    @JsonKey(name: "forZones")
    List<IoK8SApiDiscoveryV1ForZone>? forZones;

    IoK8SApiDiscoveryV1EndpointHints({
        this.forZones,
    });

    factory IoK8SApiDiscoveryV1EndpointHints.fromJson(Map<String, dynamic> json) => _$IoK8SApiDiscoveryV1EndpointHintsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiDiscoveryV1EndpointHintsToJson(this);
}


///ForZone provides information about which zones should consume this endpoint.
@JsonSerializable()
class IoK8SApiDiscoveryV1ForZone {
    
    ///name represents the name of the zone.
    @JsonKey(name: "name")
    String name;

    IoK8SApiDiscoveryV1ForZone({
        required this.name,
    });

    factory IoK8SApiDiscoveryV1ForZone.fromJson(Map<String, dynamic> json) => _$IoK8SApiDiscoveryV1ForZoneFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiDiscoveryV1ForZoneToJson(this);
}


///targetRef is a reference to a Kubernetes object that represents this endpoint.
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
