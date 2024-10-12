import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'apiservice_apiregistration_v1.g.dart';


///APIService represents a server for a particular GroupVersion. Name must be
///"version.group".
@JsonSerializable()
class ApiserviceApiregistrationV1 {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    Kind? kind;
    
    ///Standard object's metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    Metadata? metadata;
    
    ///Spec contains information for locating and communicating with a server
    @JsonKey(name: "spec")
    IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpec? spec;
    
    ///Status contains derived information about an API server
    @JsonKey(name: "status")
    IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatus? status;

    ApiserviceApiregistrationV1({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
        this.status,
    });

    factory ApiserviceApiregistrationV1.fromJson(Map<String, dynamic> json) => _$ApiserviceApiregistrationV1FromJson(json);

    Map<String, dynamic> toJson() => _$ApiserviceApiregistrationV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("apiregistration.k8s.io/v1")
    APIREGISTRATION_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "apiregistration.k8s.io/v1": ApiVersion.APIREGISTRATION_K8_S_IO_V1
});


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("APIService")
    API_SERVICE
}

final kindValues = EnumValues({
    "APIService": Kind.API_SERVICE
});


///Standard object's metadata. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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


///Spec contains information for locating and communicating with a server
///
///APIServiceSpec contains information for locating and communicating with a server. Only
///https is supported, though you are able to disable certificate verification.
@JsonSerializable()
class IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpec {
    
    ///CABundle is a PEM encoded CA bundle which will be used to validate an API server's
    ///serving certificate. If unspecified, system trust roots on the apiserver are used.
    @JsonKey(name: "caBundle")
    String? caBundle;
    
    ///Group is the API group name this server hosts
    @JsonKey(name: "group")
    String? group;
    
    ///GroupPriorityMinimum is the priority this group should have at least. Higher priority
    ///means that the group is preferred by clients over lower priority ones. Note that other
    ///versions of this group might specify even higher GroupPriorityMinimum values such that
    ///the whole group gets a higher priority. The primary sort is based on
    ///GroupPriorityMinimum, ordered highest number to lowest (20 before 10). The secondary sort
    ///is based on the alphabetical comparison of the name of the object.  (v1.bar before
    ///v1.foo) We'd recommend something like: *.k8s.io (except extensions) at 18000 and PaaSes
    ///(OpenShift, Deis) are recommended to be in the 2000s
    @JsonKey(name: "groupPriorityMinimum")
    int groupPriorityMinimum;
    
    ///InsecureSkipTLSVerify disables TLS certificate verification when communicating with this
    ///server. This is strongly discouraged.  You should use the CABundle instead.
    @JsonKey(name: "insecureSkipTLSVerify")
    bool? insecureSkipTlsVerify;
    
    ///Service is a reference to the service for this API server.  It must communicate on port
    ///443. If the Service is nil, that means the handling for the API groupversion is handled
    ///locally on this server. The call will simply delegate to the normal handler chain to be
    ///fulfilled.
    @JsonKey(name: "service")
    IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference? service;
    
    ///Version is the API version this server hosts.  For example, "v1"
    @JsonKey(name: "version")
    String? version;
    
    ///VersionPriority controls the ordering of this API version inside of its group.  Must be
    ///greater than zero. The primary sort is based on VersionPriority, ordered highest to
    ///lowest (20 before 10). Since it's inside of a group, the number can be small, probably in
    ///the 10s. In case of equal version priorities, the version string will be used to compute
    ///the order inside a group. If the version string is "kube-like", it will sort above non
    ///"kube-like" version strings, which are ordered lexicographically. "Kube-like" versions
    ///start with a "v", then are followed by a number (the major version), then optionally the
    ///string "alpha" or "beta" and another number (the minor version). These are sorted first
    ///by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and
    ///then by comparing major version, then minor version. An example sorted list of versions:
    ///v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
    @JsonKey(name: "versionPriority")
    int versionPriority;

    IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpec({
        this.caBundle,
        this.group,
        required this.groupPriorityMinimum,
        this.insecureSkipTlsVerify,
        this.service,
        this.version,
        required this.versionPriority,
    });

    factory IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpec.fromJson(Map<String, dynamic> json) => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpecToJson(this);
}


///Service is a reference to the service for this API server.  It must communicate on port
///443. If the Service is nil, that means the handling for the API groupversion is handled
///locally on this server. The call will simply delegate to the normal handler chain to be
///fulfilled.
///
///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference {
    
    ///Name is the name of the service
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace is the namespace of the service
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///If specified, the port on the service that hosting webhook. Default to 443 for backward
    ///compatibility. `port` should be a valid port number (1-65535, inclusive).
    @JsonKey(name: "port")
    int? port;

    IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference({
        this.name,
        this.namespace,
        this.port,
    });

    factory IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference.fromJson(Map<String, dynamic> json) => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReferenceToJson(this);
}


///Status contains derived information about an API server
///
///APIServiceStatus contains derived information about an API server
@JsonSerializable()
class IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatus {
    
    ///Current service state of apiService.
    @JsonKey(name: "conditions")
    List<IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition>? conditions;

    IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatus({
        this.conditions,
    });

    factory IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatus.fromJson(Map<String, dynamic> json) => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatusToJson(this);
}


///APIServiceCondition describes the state of an APIService at a particular point
@JsonSerializable()
class IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition {
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///Human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///Unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status is the status of the condition. Can be True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///Type is the type of the condition.
    @JsonKey(name: "type")
    String type;

    IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition.fromJson(Map<String, dynamic> json) => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceConditionToJson(this);
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
