import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'ingresslist_networking_v1.g.dart';


///IngressList is a collection of Ingress.
@JsonSerializable()
class IngresslistNetworkingV1 {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
    ///items is the list of Ingress.
    @JsonKey(name: "items")
    List<IoK8SApiNetworkingV1Ingress>? items;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    IngresslistNetworkingV1Kind? kind;
    
    ///Standard object's metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ListMeta? metadata;

    IngresslistNetworkingV1({
        this.apiVersion,
        required this.items,
        this.kind,
        this.metadata,
    });

    factory IngresslistNetworkingV1.fromJson(Map<String, dynamic> json) => _$IngresslistNetworkingV1FromJson(json);

    Map<String, dynamic> toJson() => _$IngresslistNetworkingV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("networking.k8s.io/v1")
    NETWORKING_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "networking.k8s.io/v1": ApiVersion.NETWORKING_K8_S_IO_V1
});


///Ingress is a collection of rules that allow inbound connections to reach the endpoints
///defined by a backend. An Ingress can be configured to give services externally-reachable
///urls, load balance traffic, terminate SSL, offer name based virtual hosting etc.
@JsonSerializable()
class IoK8SApiNetworkingV1Ingress {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    ItemKind? kind;
    
    ///Standard object's metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///spec is the desired state of the Ingress. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "spec")
    IoK8SApiNetworkingV1IngressSpec? spec;
    
    ///status is the current state of the Ingress. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "status")
    IoK8SApiNetworkingV1IngressStatus? status;

    IoK8SApiNetworkingV1Ingress({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
        this.status,
    });

    factory IoK8SApiNetworkingV1Ingress.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ItemKind {
    @JsonValue("Ingress")
    INGRESS
}

final itemKindValues = EnumValues({
    "Ingress": ItemKind.INGRESS
});


///Standard object's metadata. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ObjectMeta is metadata that all persisted resources must have, which includes all objects
///users must create.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ObjectMeta {
    
    ///Annotations is an unstructured key value map stored with a resource that may be set by
    ///external tools to store and retrieve arbitrary metadata. They are not queryable and
    ///should be preserved when modifying objects. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations
    @JsonKey(name: "annotations")
    Map<String, String>? annotations;
    
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
    List<String>? finalizers;
    
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
    Map<String, String>? labels;
    
    ///ManagedFields maps workflow-id and version to the set of fields that are managed by that
    ///workflow. This is mostly for internal housekeeping, and users typically shouldn't need to
    ///set or understand this field. A workflow can be the user's name, a controller's name, or
    ///the name of a specific apply path like "ci-cd". The set of fields is always in the
    ///version that the workflow used when modifying the object.
    @JsonKey(name: "managedFields")
    List<IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry>? managedFields;
    
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
    List<IoK8SApimachineryPkgApisMetaV1OwnerReference>? ownerReferences;
    
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

    IoK8SApimachineryPkgApisMetaV1ObjectMeta({
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

    factory IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ObjectMetaFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ObjectMetaToJson(this);
}


///ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource
///that the fieldset applies to.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry {
    
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

    IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry({
        this.apiVersion,
        this.fieldsType,
        this.fieldsV1,
        this.manager,
        this.operation,
        this.subresource,
        this.time,
    });

    factory IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryToJson(this);
}


///OwnerReference contains enough information to let you identify an owning object. An
///owning object must be in the same namespace as the dependent, or be cluster-scoped, so
///there is no namespace field.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1OwnerReference {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String apiVersion;
    
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
    String kind;
    
    ///Name of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
    @JsonKey(name: "name")
    String name;
    
    ///UID of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String uid;

    IoK8SApimachineryPkgApisMetaV1OwnerReference({
        required this.apiVersion,
        this.blockOwnerDeletion,
        this.controller,
        required this.kind,
        required this.name,
        required this.uid,
    });

    factory IoK8SApimachineryPkgApisMetaV1OwnerReference.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceToJson(this);
}


///spec is the desired state of the Ingress. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///IngressSpec describes the Ingress the user wishes to exist.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressSpec {
    
    ///defaultBackend is the backend that should handle requests that don't match any rule. If
    ///Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set,
    ///the handling of requests that do not match any of the rules will be up to the Ingress
    ///controller.
    @JsonKey(name: "defaultBackend")
    IoK8SApiNetworkingV1IngressBackend? defaultBackend;
    
    ///ingressClassName is the name of an IngressClass cluster resource. Ingress controller
    ///implementations use this field to know whether they should be serving this Ingress
    ///resource, by a transitive connection (controller -> IngressClass -> Ingress resource).
    ///Although the `kubernetes.io/ingress.class` annotation (simple constant name) was never
    ///formally defined, it was widely supported by Ingress controllers to create a direct
    ///binding between Ingress controller and Ingress resources. Newly created Ingress resources
    ///should prefer using the field. However, even though the annotation is officially
    ///deprecated, for backwards compatibility reasons, ingress controllers should still honor
    ///that annotation if present.
    @JsonKey(name: "ingressClassName")
    String? ingressClassName;
    
    ///rules is a list of host rules used to configure the Ingress. If unspecified, or no rule
    ///matches, all traffic is sent to the default backend.
    @JsonKey(name: "rules")
    List<IoK8SApiNetworkingV1IngressRule>? rules;
    
    ///tls represents the TLS configuration. Currently the Ingress only supports a single TLS
    ///port, 443. If multiple members of this list specify different hosts, they will be
    ///multiplexed on the same port according to the hostname specified through the SNI TLS
    ///extension, if the ingress controller fulfilling the ingress supports SNI.
    @JsonKey(name: "tls")
    List<IoK8SApiNetworkingV1IngressTls>? tls;

    IoK8SApiNetworkingV1IngressSpec({
        this.defaultBackend,
        this.ingressClassName,
        this.rules,
        this.tls,
    });

    factory IoK8SApiNetworkingV1IngressSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressSpecToJson(this);
}


///defaultBackend is the backend that should handle requests that don't match any rule. If
///Rules are not specified, DefaultBackend must be specified. If DefaultBackend is not set,
///the handling of requests that do not match any of the rules will be up to the Ingress
///controller.
///
///IngressBackend describes all endpoints for a given service and port.
///
///backend defines the referenced service endpoint to which the traffic will be forwarded to.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressBackend {
    
    ///resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress
    ///object. If resource is specified, a service.Name and service.Port must not be specified.
    ///This is a mutually exclusive setting with "Service".
    @JsonKey(name: "resource")
    IoK8SApiCoreV1TypedLocalObjectReference? resource;
    
    ///service references a service as a backend. This is a mutually exclusive setting with
    ///"Resource".
    @JsonKey(name: "service")
    IoK8SApiNetworkingV1IngressServiceBackend? service;

    IoK8SApiNetworkingV1IngressBackend({
        this.resource,
        this.service,
    });

    factory IoK8SApiNetworkingV1IngressBackend.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressBackendFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressBackendToJson(this);
}


///resource is an ObjectRef to another Kubernetes resource in the namespace of the Ingress
///object. If resource is specified, a service.Name and service.Port must not be specified.
///This is a mutually exclusive setting with "Service".
///
///TypedLocalObjectReference contains enough information to let you locate the typed
///referenced object inside the same namespace.
@JsonSerializable()
class IoK8SApiCoreV1TypedLocalObjectReference {
    
    ///APIGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1TypedLocalObjectReference({
        this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory IoK8SApiCoreV1TypedLocalObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(this);
}


///service references a service as a backend. This is a mutually exclusive setting with
///"Resource".
///
///IngressServiceBackend references a Kubernetes Service as a Backend.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressServiceBackend {
    
    ///name is the referenced service. The service must exist in the same namespace as the
    ///Ingress object.
    @JsonKey(name: "name")
    String name;
    
    ///port of the referenced service. A port name or port number is required for a
    ///IngressServiceBackend.
    @JsonKey(name: "port")
    IoK8SApiNetworkingV1ServiceBackendPort? port;

    IoK8SApiNetworkingV1IngressServiceBackend({
        required this.name,
        this.port,
    });

    factory IoK8SApiNetworkingV1IngressServiceBackend.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressServiceBackendFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressServiceBackendToJson(this);
}


///port of the referenced service. A port name or port number is required for a
///IngressServiceBackend.
///
///ServiceBackendPort is the service port being referenced.
@JsonSerializable()
class IoK8SApiNetworkingV1ServiceBackendPort {
    
    ///name is the name of the port on the Service. This is a mutually exclusive setting with
    ///"Number".
    @JsonKey(name: "name")
    String? name;
    
    ///number is the numerical port number (e.g. 80) on the Service. This is a mutually
    ///exclusive setting with "Name".
    @JsonKey(name: "number")
    int? number;

    IoK8SApiNetworkingV1ServiceBackendPort({
        this.name,
        this.number,
    });

    factory IoK8SApiNetworkingV1ServiceBackendPort.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1ServiceBackendPortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1ServiceBackendPortToJson(this);
}


///IngressRule represents the rules mapping the paths under a specified host to the related
///backend services. Incoming requests are first evaluated for a host match, then routed to
///the backend associated with the matching IngressRuleValue.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressRule {
    
    ///host is the fully qualified domain name of a network host, as defined by RFC 3986. Note
    ///the following deviations from the "host" part of the URI as defined in RFC 3986: 1. IPs
    ///are not allowed. Currently an IngressRuleValue can only apply to
    ///the IP in the Spec of the parent Ingress.
    ///2. The `:` delimiter is not respected because ports are not allowed.
    ///Currently the port of an Ingress is implicitly :80 for http and
    ///:443 for https.
    ///Both these may change in the future. Incoming requests are matched against the host
    ///before the IngressRuleValue. If the host is unspecified, the Ingress routes all traffic
    ///based on the specified IngressRuleValue.
    ///
    ///host can be "precise" which is a domain name without the terminating dot of a network
    ///host (e.g. "foo.bar.com") or "wildcard", which is a domain name prefixed with a single
    ///wildcard label (e.g. "*.foo.com"). The wildcard character '*' must appear by itself as
    ///the first DNS label and matches only a single label. You cannot have a wildcard label by
    ///itself (e.g. Host == "*"). Requests will be matched against the Host field in the
    ///following way: 1. If host is precise, the request matches this rule if the http host
    ///header is equal to Host. 2. If host is a wildcard, then the request matches this rule if
    ///the http host header is to equal to the suffix (removing the first label) of the wildcard
    ///rule.
    @JsonKey(name: "host")
    String? host;
    @JsonKey(name: "http")
    IoK8SApiNetworkingV1HttpIngressRuleValue? http;

    IoK8SApiNetworkingV1IngressRule({
        this.host,
        this.http,
    });

    factory IoK8SApiNetworkingV1IngressRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressRuleToJson(this);
}


///HTTPIngressRuleValue is a list of http selectors pointing to backends. In the example:
///http://<host>/<path>?<searchpart> -> backend where where parts of the url correspond to
///RFC 3986, this resource will be used to match against everything after the last '/' and
///before the first '?' or '#'.
@JsonSerializable()
class IoK8SApiNetworkingV1HttpIngressRuleValue {
    
    ///paths is a collection of paths that map requests to backends.
    @JsonKey(name: "paths")
    List<IoK8SApiNetworkingV1HttpIngressPath> paths;

    IoK8SApiNetworkingV1HttpIngressRuleValue({
        required this.paths,
    });

    factory IoK8SApiNetworkingV1HttpIngressRuleValue.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1HttpIngressRuleValueFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1HttpIngressRuleValueToJson(this);
}


///HTTPIngressPath associates a path with a backend. Incoming urls matching the path are
///forwarded to the backend.
@JsonSerializable()
class IoK8SApiNetworkingV1HttpIngressPath {
    
    ///backend defines the referenced service endpoint to which the traffic will be forwarded to.
    @JsonKey(name: "backend")
    IoK8SApiNetworkingV1IngressBackend backend;
    
    ///path is matched against the path of an incoming request. Currently it can contain
    ///characters disallowed from the conventional "path" part of a URL as defined by RFC 3986.
    ///Paths must begin with a '/' and must be present when using PathType with value "Exact" or
    ///"Prefix".
    @JsonKey(name: "path")
    String? path;
    
    ///pathType determines the interpretation of the path matching. PathType can be one of the
    ///following values: * Exact: Matches the URL path exactly. * Prefix: Matches based on a URL
    ///path prefix split by '/'. Matching is
    ///done on a path element by element basis. A path element refers is the
    ///list of labels in the path split by the '/' separator. A request is a
    ///match for path p if every p is an element-wise prefix of p of the
    ///request path. Note that if the last element of the path is a substring
    ///of the last element in request path, it is not a match (e.g. /foo/bar
    ///matches /foo/bar/baz, but does not match /foo/barbaz).
    ///* ImplementationSpecific: Interpretation of the Path matching is up to
    ///the IngressClass. Implementations can treat this as a separate PathType
    ///or treat it identically to Prefix or Exact path types.
    ///Implementations are required to support all path types.
    @JsonKey(name: "pathType")
    String pathType;

    IoK8SApiNetworkingV1HttpIngressPath({
        required this.backend,
        this.path,
        required this.pathType,
    });

    factory IoK8SApiNetworkingV1HttpIngressPath.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1HttpIngressPathFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1HttpIngressPathToJson(this);
}


///IngressTLS describes the transport layer security associated with an ingress.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressTls {
    
    ///hosts is a list of hosts included in the TLS certificate. The values in this list must
    ///match the name/s used in the tlsSecret. Defaults to the wildcard host setting for the
    ///loadbalancer controller fulfilling this Ingress, if left unspecified.
    @JsonKey(name: "hosts")
    List<String>? hosts;
    
    ///secretName is the name of the secret used to terminate TLS traffic on port 443. Field is
    ///left optional to allow TLS routing based on SNI hostname alone. If the SNI host in a
    ///listener conflicts with the "Host" header field used by an IngressRule, the SNI host is
    ///used for termination and value of the "Host" header is used for routing.
    @JsonKey(name: "secretName")
    String? secretName;

    IoK8SApiNetworkingV1IngressTls({
        this.hosts,
        this.secretName,
    });

    factory IoK8SApiNetworkingV1IngressTls.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressTlsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressTlsToJson(this);
}


///status is the current state of the Ingress. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///IngressStatus describe the current state of the Ingress.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressStatus {
    
    ///loadBalancer contains the current status of the load-balancer.
    @JsonKey(name: "loadBalancer")
    IoK8SApiNetworkingV1IngressLoadBalancerStatus? loadBalancer;

    IoK8SApiNetworkingV1IngressStatus({
        this.loadBalancer,
    });

    factory IoK8SApiNetworkingV1IngressStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressStatusToJson(this);
}


///loadBalancer contains the current status of the load-balancer.
///
///IngressLoadBalancerStatus represents the status of a load-balancer.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressLoadBalancerStatus {
    
    ///ingress is a list containing ingress points for the load-balancer.
    @JsonKey(name: "ingress")
    List<IoK8SApiNetworkingV1IngressLoadBalancerIngress>? ingress;

    IoK8SApiNetworkingV1IngressLoadBalancerStatus({
        this.ingress,
    });

    factory IoK8SApiNetworkingV1IngressLoadBalancerStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressLoadBalancerStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressLoadBalancerStatusToJson(this);
}


///IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
@JsonSerializable()
class IoK8SApiNetworkingV1IngressLoadBalancerIngress {
    
    ///hostname is set for load-balancer ingress points that are DNS based.
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///ip is set for load-balancer ingress points that are IP based.
    @JsonKey(name: "ip")
    String? ip;
    
    ///ports provides information about the ports exposed by this LoadBalancer.
    @JsonKey(name: "ports")
    List<IoK8SApiNetworkingV1IngressPortStatus>? ports;

    IoK8SApiNetworkingV1IngressLoadBalancerIngress({
        this.hostname,
        this.ip,
        this.ports,
    });

    factory IoK8SApiNetworkingV1IngressLoadBalancerIngress.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressLoadBalancerIngressFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressLoadBalancerIngressToJson(this);
}


///IngressPortStatus represents the error condition of a service port
@JsonSerializable()
class IoK8SApiNetworkingV1IngressPortStatus {
    
    ///error is to record the problem with the service port The format of the error shall comply
    ///with the following rules: - built-in error values shall be specified in this file and
    ///those shall use
    ///CamelCase names
    ///- cloud provider specific error values must have names that comply with the
    ///format foo.example.com/CamelCase.
    @JsonKey(name: "error")
    String? error;
    
    ///port is the port number of the ingress port.
    @JsonKey(name: "port")
    int port;
    
    ///protocol is the protocol of the ingress port. The supported values are: "TCP", "UDP",
    ///"SCTP"
    @JsonKey(name: "protocol")
    String protocol;

    IoK8SApiNetworkingV1IngressPortStatus({
        this.error,
        required this.port,
        required this.protocol,
    });

    factory IoK8SApiNetworkingV1IngressPortStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiNetworkingV1IngressPortStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiNetworkingV1IngressPortStatusToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum IngresslistNetworkingV1Kind {
    @JsonValue("IngressList")
    INGRESS_LIST
}

final ingresslistNetworkingV1KindValues = EnumValues({
    "IngressList": IngresslistNetworkingV1Kind.INGRESS_LIST
});


///Standard object's metadata. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ListMeta describes metadata that synthetic resources must have, including lists and
///various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ListMeta {
    
    ///continue may be set if the user set a limit on the number of items returned, and
    ///indicates that the server has more data available. The value is opaque and may be used to
    ///issue another request to the endpoint that served this list to retrieve the next set of
    ///available objects. Continuing a consistent list may not be possible if the server
    ///configuration has changed or more than a few minutes have passed. The resourceVersion
    ///field returned when using this continue value will be identical to the value in the first
    ///response, unless you have received this token from an error message.
    @JsonKey(name: "continue")
    String? ioK8SApimachineryPkgApisMetaV1ListMetaContinue;
    
    ///remainingItemCount is the number of subsequent items in the list which are not included
    ///in this list response. If the list request contained label or field selectors, then the
    ///number of remaining items is unknown and the field will be left unset and omitted during
    ///serialization. If the list is complete (either because it is not chunking or because this
    ///is the last chunk), then there are no more remaining items and this field will be left
    ///unset and omitted during serialization. Servers older than v1.15 do not set this field.
    ///The intended use of the remainingItemCount is *estimating* the size of a collection.
    ///Clients should not rely on the remainingItemCount to be set or to be exact.
    @JsonKey(name: "remainingItemCount")
    int? remainingItemCount;
    
    ///String that identifies the server's internal version of this object that can be used by
    ///clients to determine when objects have changed. Value must be treated as opaque by
    ///clients and passed unmodified back to the server. Populated by the system. Read-only.
    ///More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Deprecated: selfLink is a legacy read-only field that is no longer populated by the
    ///system.
    @JsonKey(name: "selfLink")
    String? selfLink;

    IoK8SApimachineryPkgApisMetaV1ListMeta({
        this.ioK8SApimachineryPkgApisMetaV1ListMetaContinue,
        this.remainingItemCount,
        this.resourceVersion,
        this.selfLink,
    });

    factory IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ListMetaFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ListMetaToJson(this);
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
