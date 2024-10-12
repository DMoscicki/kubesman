import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'endpointslice_discovery_v1.g.dart';


///EndpointSlice represents a subset of the endpoints that implement a service. For a given
///service there may be multiple EndpointSlice objects, selected by labels, which must be
///joined to produce the full set of endpoints.
@JsonSerializable()
class EndpointsliceDiscoveryV1 {
    
    ///addressType specifies the type of address carried by this EndpointSlice. All addresses in
    ///this slice must be the same type. This field is immutable after creation. The following
    ///address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6:
    ///Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
    @JsonKey(name: "addressType")
    String? addressType;
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
    ///endpoints is a list of unique endpoints in this slice. Each slice may include a maximum
    ///of 1000 endpoints.
    @JsonKey(name: "endpoints")
    List<IoK8SApiDiscoveryV1Endpoint>? endpoints;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    Kind? kind;
    
    ///Standard object's metadata.
    @JsonKey(name: "metadata")
    Metadata? metadata;
    
    ///ports specifies the list of network ports exposed by each endpoint in this slice. Each
    ///port must have a unique name. When ports is empty, it indicates that there are no defined
    ///ports. When a port is defined with a nil port value, it indicates "all ports". Each slice
    ///may include a maximum of 100 ports.
    @JsonKey(name: "ports")
    List<IoK8SApiDiscoveryV1EndpointPort>? ports;

    EndpointsliceDiscoveryV1({
        required this.addressType,
        this.apiVersion,
        required this.endpoints,
        this.kind,
        this.metadata,
        this.ports,
    });

    factory EndpointsliceDiscoveryV1.fromJson(Map<String, dynamic> json) => _$EndpointsliceDiscoveryV1FromJson(json);

    Map<String, dynamic> toJson() => _$EndpointsliceDiscoveryV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("discovery.k8s.io/v1")
    DISCOVERY_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "discovery.k8s.io/v1": ApiVersion.DISCOVERY_K8_S_IO_V1
});


///Endpoint represents a single logical "backend" implementing a service.
@JsonSerializable()
class IoK8SApiDiscoveryV1Endpoint {
    
    ///addresses of this endpoint. The contents of this field are interpreted according to the
    ///corresponding EndpointSlice addressType field. Consumers must handle different types of
    ///addresses in the context of their own capabilities. This must contain at least one
    ///address but no more than 100. These are all assumed to be fungible and clients may choose
    ///to only use the first element. Refer to: https://issue.k8s.io/106267
    @JsonKey(name: "addresses")
    List<String> addresses;
    
    ///conditions contains information about the current status of the endpoint.
    @JsonKey(name: "conditions")
    IoK8SApiDiscoveryV1EndpointConditions? conditions;
    
    ///deprecatedTopology contains topology information part of the v1beta1 API. This field is
    ///deprecated, and will be removed when the v1beta1 API is removed (no sooner than
    ///kubernetes v1.24).  While this field can hold values, it is not writable through the v1
    ///API, and any attempts to write to it will be silently ignored. Topology information can
    ///be found in the zone and nodeName fields instead.
    @JsonKey(name: "deprecatedTopology")
    Map<String, String>? deprecatedTopology;
    
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

    IoK8SApiDiscoveryV1Endpoint({
        required this.addresses,
        this.conditions,
        this.deprecatedTopology,
        this.hints,
        this.hostname,
        this.nodeName,
        this.targetRef,
        this.zone,
    });

    factory IoK8SApiDiscoveryV1Endpoint.fromJson(Map<String, dynamic> json) => _$IoK8SApiDiscoveryV1EndpointFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiDiscoveryV1EndpointToJson(this);
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


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("EndpointSlice")
    ENDPOINT_SLICE
}

final kindValues = EnumValues({
    "EndpointSlice": Kind.ENDPOINT_SLICE
});


///Standard object's metadata.
///
///ObjectMeta is metadata that all persisted resources must have, which includes all objects
///users must create.
@JsonSerializable()
class Metadata {
    
    ///Annotations is an unstructured key value map stored with a resource that may be set by
    ///external tools to store and retrieve arbitrary metadata. They are not queryable and
    ///should be preserved when modifying objects. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations
    @JsonKey(name: "annotations")
    Map<String, String?>? annotations;
    
    ///CreationTimestamp is a timestamp representing the server time when this object was
    ///created. It is not guaranteed to be set in happens-before order across separate
    ///operations. Clients may not set this value. It is represented in RFC3339 form and is in
    ///UTC.
    ///
    ///Populated by the system. Read-only. Null for lists. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "creationTimestamp")
    DateTime? creationTimestamp;
    
    ///Number of seconds allowed for this object to gracefully terminate before it will be
    ///removed from the system. Only set when deletionTimestamp is also set. May only be
    ///shortened. Read-only.
    @JsonKey(name: "deletionGracePeriodSeconds")
    int? deletionGracePeriodSeconds;
    
    ///DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This
    ///field is set by the server when a graceful deletion is requested by the user, and is not
    ///directly settable by a client. The resource is expected to be deleted (no longer visible
    ///from resource lists, and not reachable by name) after the time in this field, once the
    ///finalizers list is empty. As long as the finalizers list contains items, deletion is
    ///blocked. Once the deletionTimestamp is set, this value may not be unset or be set further
    ///into the future, although it may be shortened or the resource may be deleted prior to
    ///this time. For example, a user may request that a pod is deleted in 30 seconds. The
    ///Kubelet will react by sending a graceful termination signal to the containers in the pod.
    ///After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the
    ///container and after cleanup, remove the pod from the API. In the presence of network
    ///partitions, this object may still exist after this timestamp, until an administrator or
    ///automated process can determine the resource is fully terminated. If not set, graceful
    ///deletion of the object has not been requested.
    ///
    ///Populated by the system when a graceful deletion is requested. Read-only. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "deletionTimestamp")
    DateTime? deletionTimestamp;
    
    ///Must be empty before the object is deleted from the registry. Each entry is an identifier
    ///for the responsible component that will remove the entry from the list. If the
    ///deletionTimestamp of the object is non-nil, entries in this list can only be removed.
    ///Finalizers may be processed and removed in any order.  Order is NOT enforced because it
    ///introduces significant risk of stuck finalizers. finalizers is a shared field, any actor
    ///with permission can reorder it. If the finalizer list is processed in order, then this
    ///can lead to a situation in which the component responsible for the first finalizer in the
    ///list is waiting for a signal (field value, external system, or other) produced by a
    ///component responsible for a finalizer later in the list, resulting in a deadlock. Without
    ///enforced ordering finalizers are free to order amongst themselves and are not vulnerable
    ///to ordering changes in the list.
    @JsonKey(name: "finalizers")
    List<String?>? finalizers;
    
    ///GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF
    ///the Name field has not been provided. If this field is used, the name returned to the
    ///client will be different than the name passed. This value will also be combined with a
    ///unique suffix. The provided value has the same validation rules as the Name field, and
    ///may be truncated by the length of the suffix required to make the value unique on the
    ///server.
    ///
    ///If this field is specified and the generated name exists, the server will return a 409.
    ///
    ///Applied only if Name is not specified. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
    @JsonKey(name: "generateName")
    String? generateName;
    
    ///A sequence number representing a specific generation of the desired state. Populated by
    ///the system. Read-only.
    @JsonKey(name: "generation")
    int? generation;
    
    ///Map of string keys and values that can be used to organize and categorize (scope and
    ///select) objects. May match selectors of replication controllers and services. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/labels
    @JsonKey(name: "labels")
    Map<String, String?>? labels;
    
    ///ManagedFields maps workflow-id and version to the set of fields that are managed by that
    ///workflow. This is mostly for internal housekeeping, and users typically shouldn't need to
    ///set or understand this field. A workflow can be the user's name, a controller's name, or
    ///the name of a specific apply path like "ci-cd". The set of fields is always in the
    ///version that the workflow used when modifying the object.
    @JsonKey(name: "managedFields")
    List<ManagedfieldsentryMetaV1>? managedFields;
    
    ///Name must be unique within a namespace. Is required when creating resources, although
    ///some resources may allow a client to request the generation of an appropriate name
    ///automatically. Name is primarily intended for creation idempotence and configuration
    ///definition. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace defines the space within which each name must be unique. An empty namespace is
    ///equivalent to the "default" namespace, but "default" is the canonical representation. Not
    ///all objects are required to be scoped to a namespace - the value of this field for those
    ///objects will be empty.
    ///
    ///Must be a DNS_LABEL. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///List of objects depended by this object. If ALL objects in the list have been deleted,
    ///this object will be garbage collected. If this object is managed by a controller, then an
    ///entry in this list will point to this controller, with the controller field set to true.
    ///There cannot be more than one managing controller.
    @JsonKey(name: "ownerReferences")
    List<OwnerreferenceMetaV1>? ownerReferences;
    
    ///An opaque value that represents the internal version of this object that can be used by
    ///clients to determine when objects have changed. May be used for optimistic concurrency,
    ///change detection, and the watch operation on a resource or set of resources. Clients must
    ///treat these values as opaque and passed unmodified back to the server. They may only be
    ///valid for a particular resource or set of resources.
    ///
    ///Populated by the system. Read-only. Value must be treated as opaque by clients and . More
    ///info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Deprecated: selfLink is a legacy read-only field that is no longer populated by the
    ///system.
    @JsonKey(name: "selfLink")
    String? selfLink;
    
    ///UID is the unique in time and space value for this object. It is typically generated by
    ///the server on successful creation of a resource and is not allowed to change on PUT
    ///operations.
    ///
    ///Populated by the system. Read-only. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String? uid;

    Metadata({
        this.annotations,
        this.creationTimestamp,
        this.deletionGracePeriodSeconds,
        this.deletionTimestamp,
        this.finalizers,
        this.generateName,
        this.generation,
        this.labels,
        this.managedFields,
        this.name,
        this.namespace,
        this.ownerReferences,
        this.resourceVersion,
        this.selfLink,
        this.uid,
    });

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

    Map<String, dynamic> toJson() => _$MetadataToJson(this);
}


///ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource
///that the fieldset applies to.
@JsonSerializable()
class ManagedfieldsentryMetaV1 {
    
    ///APIVersion defines the version of this resource that this field set applies to. The
    ///format is "group/version" just like the top-level APIVersion field. It is necessary to
    ///track the version of a field set because it cannot be automatically converted.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///FieldsType is the discriminator for the different fields format and version. There is
    ///currently only one possible value: "FieldsV1"
    @JsonKey(name: "fieldsType")
    String? fieldsType;
    
    ///FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
    @JsonKey(name: "fieldsV1")
    Map<String, dynamic>? fieldsV1;
    
    ///Manager is an identifier of the workflow managing these fields.
    @JsonKey(name: "manager")
    String? manager;
    
    ///Operation is the type of operation which lead to this ManagedFieldsEntry being created.
    ///The only valid values for this field are 'Apply' and 'Update'.
    @JsonKey(name: "operation")
    String? operation;
    
    ///Subresource is the name of the subresource used to update that object, or empty string if
    ///the object was updated through the main resource. The value of this field is used to
    ///distinguish between managers, even if they share the same name. For example, a status
    ///update will be distinct from a regular update using the same manager name. Note that the
    ///APIVersion field is not related to the Subresource field and it always corresponds to the
    ///version of the main resource.
    @JsonKey(name: "subresource")
    String? subresource;
    
    ///Time is the timestamp of when the ManagedFields entry was added. The timestamp will also
    ///be updated if a field is added, the manager changes any of the owned fields value or
    ///removes a field. The timestamp does not update when a field is removed from the entry
    ///because another manager took it over.
    @JsonKey(name: "time")
    DateTime? time;

    ManagedfieldsentryMetaV1({
        this.apiVersion,
        this.fieldsType,
        this.fieldsV1,
        this.manager,
        this.operation,
        this.subresource,
        this.time,
    });

    factory ManagedfieldsentryMetaV1.fromJson(Map<String, dynamic> json) => _$ManagedfieldsentryMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$ManagedfieldsentryMetaV1ToJson(this);
}


///OwnerReference contains enough information to let you identify an owning object. An
///owning object must be in the same namespace as the dependent, or be cluster-scoped, so
///there is no namespace field.
@JsonSerializable()
class OwnerreferenceMetaV1 {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot
    ///be deleted from the key-value store until this reference is removed. See
    ///https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion
    ///for how the garbage collector interacts with this field and enforces the foreground
    ///deletion. Defaults to false. To set this field, a user needs "delete" permission of the
    ///owner, otherwise 422 (Unprocessable Entity) will be returned.
    @JsonKey(name: "blockOwnerDeletion")
    bool? blockOwnerDeletion;
    
    ///If true, this reference points to the managing controller.
    @JsonKey(name: "controller")
    bool? controller;
    
    ///Kind of the referent. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
    @JsonKey(name: "name")
    String? name;
    
    ///UID of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String? uid;

    OwnerreferenceMetaV1({
        required this.apiVersion,
        this.blockOwnerDeletion,
        this.controller,
        required this.kind,
        required this.name,
        required this.uid,
    });

    factory OwnerreferenceMetaV1.fromJson(Map<String, dynamic> json) => _$OwnerreferenceMetaV1FromJson(json);

    Map<String, dynamic> toJson() => _$OwnerreferenceMetaV1ToJson(this);
}


///EndpointPort represents a Port used by an EndpointSlice
@JsonSerializable()
class IoK8SApiDiscoveryV1EndpointPort {
    
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
    
    ///name represents the name of this port. All ports in an EndpointSlice must have a unique
    ///name. If the EndpointSlice is derived from a Kubernetes service, this corresponds to the
    ///Service.ports[].name. Name must either be an empty string or pass DNS_LABEL validation: *
    ///must be no more than 63 characters long. * must consist of lower case alphanumeric
    ///characters or '-'. * must start and end with an alphanumeric character. Default is empty
    ///string.
    @JsonKey(name: "name")
    String? name;
    
    ///port represents the port number of the endpoint. If this is not specified, ports are not
    ///restricted and must be interpreted in the context of the specific consumer.
    @JsonKey(name: "port")
    int? port;
    
    ///protocol represents the IP protocol for this port. Must be UDP, TCP, or SCTP. Default is
    ///TCP.
    @JsonKey(name: "protocol")
    String? protocol;

    IoK8SApiDiscoveryV1EndpointPort({
        this.appProtocol,
        this.name,
        this.port,
        this.protocol,
    });

    factory IoK8SApiDiscoveryV1EndpointPort.fromJson(Map<String, dynamic> json) => _$IoK8SApiDiscoveryV1EndpointPortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiDiscoveryV1EndpointPortToJson(this);
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
