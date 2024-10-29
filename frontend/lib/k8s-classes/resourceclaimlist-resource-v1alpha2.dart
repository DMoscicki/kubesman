import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaimlist_resource_v1_alpha2.g.dart';


///ResourceClaimList is a collection of claims.
@JsonSerializable()
class ResourceclaimlistResourceV1Alpha2 {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
    ///Items is the list of resource claims.
    @JsonKey(name: "items")
    List<IoK8SApiResourceV1Alpha2ResourceClaim>? items;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    ResourceclaimlistResourceV1Alpha2Kind? kind;
    
    ///Standard list metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ListMeta? metadata;

    ResourceclaimlistResourceV1Alpha2({
        this.apiVersion,
        required this.items,
        this.kind,
        this.metadata,
    });

    factory ResourceclaimlistResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$ResourceclaimlistResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimlistResourceV1Alpha2ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("resource.k8s.io/v1alpha2")
    RESOURCE_K8_S_IO_V1_ALPHA2
}

final apiVersionValues = EnumValues({
    "resource.k8s.io/v1alpha2": ApiVersion.RESOURCE_K8_S_IO_V1_ALPHA2
});


///ResourceClaim describes which resources are needed by a resource consumer. Its status
///tracks whether the resource has been allocated and what the resulting attributes are.
///
///This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceClaim {
    
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
    
    ///Standard object metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///Spec describes the desired attributes of a resource that then needs to be allocated. It
    ///can only be set once when creating the ResourceClaim.
    @JsonKey(name: "spec")
    IoK8SApiResourceV1Alpha2ResourceClaimSpec spec;
    
    ///Status describes whether the resource is available and with which attributes.
    @JsonKey(name: "status")
    IoK8SApiResourceV1Alpha2ResourceClaimStatus? status;

    IoK8SApiResourceV1Alpha2ResourceClaim({
        this.apiVersion,
        this.kind,
        this.metadata,
        required this.spec,
        this.status,
    });

    factory IoK8SApiResourceV1Alpha2ResourceClaim.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceClaimFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceClaimToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ItemKind {
    @JsonValue("ResourceClaim")
    RESOURCE_CLAIM
}

final itemKindValues = EnumValues({
    "ResourceClaim": ItemKind.RESOURCE_CLAIM
});


///Standard object metadata
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


///Spec describes the desired attributes of a resource that then needs to be allocated. It
///can only be set once when creating the ResourceClaim.
///
///ResourceClaimSpec defines how a resource is to be allocated.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceClaimSpec {
    
    ///Allocation can start immediately or when a Pod wants to use the resource.
    ///"WaitForFirstConsumer" is the default.
    @JsonKey(name: "allocationMode")
    String? allocationMode;
    
    ///ParametersRef references a separate object with arbitrary parameters that will be used by
    ///the driver when allocating a resource for the claim.
    ///
    ///The object must be in the same namespace as the ResourceClaim.
    @JsonKey(name: "parametersRef")
    IoK8SApiResourceV1Alpha2ResourceClaimParametersReference? parametersRef;
    
    ///ResourceClassName references the driver and additional parameters via the name of a
    ///ResourceClass that was created as part of the driver deployment.
    @JsonKey(name: "resourceClassName")
    String resourceClassName;

    IoK8SApiResourceV1Alpha2ResourceClaimSpec({
        this.allocationMode,
        this.parametersRef,
        required this.resourceClassName,
    });

    factory IoK8SApiResourceV1Alpha2ResourceClaimSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceClaimSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceClaimSpecToJson(this);
}


///ParametersRef references a separate object with arbitrary parameters that will be used by
///the driver when allocating a resource for the claim.
///
///The object must be in the same namespace as the ResourceClaim.
///
///ResourceClaimParametersReference contains enough information to let you locate the
///parameters for a ResourceClaim. The object must be in the same namespace as the
///ResourceClaim.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceClaimParametersReference {
    
    ///APIGroup is the group for the resource being referenced. It is empty for the core API.
    ///This matches the group in the APIVersion that is used when creating the resources.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced. This is the same value as in the parameter
    ///object's metadata, for example "ConfigMap".
    @JsonKey(name: "kind")
    String kind;
    
    ///Name is the name of resource being referenced.
    @JsonKey(name: "name")
    String name;

    IoK8SApiResourceV1Alpha2ResourceClaimParametersReference({
        this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory IoK8SApiResourceV1Alpha2ResourceClaimParametersReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceToJson(this);
}


///Status describes whether the resource is available and with which attributes.
///
///ResourceClaimStatus tracks whether the resource has been allocated and what the resulting
///attributes are.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceClaimStatus {
    
    ///Allocation is set by the resource driver once a resource or set of resources has been
    ///allocated successfully. If this is not specified, the resources have not been allocated
    ///yet.
    @JsonKey(name: "allocation")
    IoK8SApiResourceV1Alpha2AllocationResult? allocation;
    
    ///DeallocationRequested indicates that a ResourceClaim is to be deallocated.
    ///
    ///The driver then must deallocate this claim and reset the field together with clearing the
    ///Allocation field.
    ///
    ///While DeallocationRequested is set, no new consumers may be added to ReservedFor.
    @JsonKey(name: "deallocationRequested")
    bool? deallocationRequested;
    
    ///DriverName is a copy of the driver name from the ResourceClass at the time when
    ///allocation started.
    @JsonKey(name: "driverName")
    String? driverName;
    
    ///ReservedFor indicates which entities are currently allowed to use the claim. A Pod which
    ///references a ResourceClaim which is not reserved for that Pod will not be started.
    ///
    ///There can be at most 32 such reservations. This may get increased in the future, but not
    ///reduced.
    @JsonKey(name: "reservedFor")
    List<IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference>? reservedFor;

    IoK8SApiResourceV1Alpha2ResourceClaimStatus({
        this.allocation,
        this.deallocationRequested,
        this.driverName,
        this.reservedFor,
    });

    factory IoK8SApiResourceV1Alpha2ResourceClaimStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceClaimStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceClaimStatusToJson(this);
}


///Allocation is set by the resource driver once a resource or set of resources has been
///allocated successfully. If this is not specified, the resources have not been allocated
///yet.
///
///AllocationResult contains attributes of an allocated resource.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2AllocationResult {
    
    ///This field will get set by the resource driver after it has allocated the resource to
    ///inform the scheduler where it can schedule Pods using the ResourceClaim.
    ///
    ///Setting this field is optional. If null, the resource is available everywhere.
    @JsonKey(name: "availableOnNodes")
    IoK8SApiCoreV1NodeSelector? availableOnNodes;
    
    ///ResourceHandles contain the state associated with an allocation that should be maintained
    ///throughout the lifetime of a claim. Each ResourceHandle contains data that should be
    ///passed to a specific kubelet plugin once it lands on a node. This data is returned by the
    ///driver after a successful allocation and is opaque to Kubernetes. Driver documentation
    ///may explain to users how to interpret this data if needed.
    ///
    ///Setting this field is optional. It has a maximum size of 32 entries. If null (or empty),
    ///it is assumed this allocation will be processed by a single kubelet plugin with no
    ///ResourceHandle data attached. The name of the kubelet plugin invoked will match the
    ///DriverName set in the ResourceClaimStatus this AllocationResult is embedded in.
    @JsonKey(name: "resourceHandles")
    List<IoK8SApiResourceV1Alpha2ResourceHandle>? resourceHandles;
    
    ///Shareable determines whether the resource supports more than one consumer at a time.
    @JsonKey(name: "shareable")
    bool? shareable;

    IoK8SApiResourceV1Alpha2AllocationResult({
        this.availableOnNodes,
        this.resourceHandles,
        this.shareable,
    });

    factory IoK8SApiResourceV1Alpha2AllocationResult.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2AllocationResultFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2AllocationResultToJson(this);
}


///This field will get set by the resource driver after it has allocated the resource to
///inform the scheduler where it can schedule Pods using the ResourceClaim.
///
///Setting this field is optional. If null, the resource is available everywhere.
///
///A node selector represents the union of the results of one or more label queries over a
///set of nodes; that is, it represents the OR of the selectors represented by the node
///selector terms.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelector {
    
    ///Required. A list of node selector terms. The terms are ORed.
    @JsonKey(name: "nodeSelectorTerms")
    List<IoK8SApiCoreV1NodeSelectorTerm> nodeSelectorTerms;

    IoK8SApiCoreV1NodeSelector({
        required this.nodeSelectorTerms,
    });

    factory IoK8SApiCoreV1NodeSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorToJson(this);
}


///A null or empty node selector term matches no objects. The requirements of them are
///ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelectorTerm {
    
    ///A list of node selector requirements by node's labels.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApiCoreV1NodeSelectorRequirement>? matchExpressions;
    
    ///A list of node selector requirements by node's fields.
    @JsonKey(name: "matchFields")
    List<IoK8SApiCoreV1NodeSelectorRequirement>? matchFields;

    IoK8SApiCoreV1NodeSelectorTerm({
        this.matchExpressions,
        this.matchFields,
    });

    factory IoK8SApiCoreV1NodeSelectorTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorTermToJson(this);
}


///A node selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelectorRequirement {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///Represents a key's relationship to a set of values. Valid operators are In, NotIn,
    ///Exists, DoesNotExist. Gt, and Lt.
    @JsonKey(name: "operator")
    String ioK8SApiCoreV1NodeSelectorRequirementOperator;
    
    ///An array of string values. If the operator is In or NotIn, the values array must be
    ///non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If
    ///the operator is Gt or Lt, the values array must have a single element, which will be
    ///interpreted as an integer. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApiCoreV1NodeSelectorRequirement({
        required this.key,
        required this.ioK8SApiCoreV1NodeSelectorRequirementOperator,
        this.values,
    });

    factory IoK8SApiCoreV1NodeSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorRequirementToJson(this);
}


///ResourceHandle holds opaque resource data for processing by a specific kubelet plugin.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceHandle {
    
    ///Data contains the opaque data associated with this ResourceHandle. It is set by the
    ///controller component of the resource driver whose name matches the DriverName set in the
    ///ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and
    ///is intended for processing by the kubelet plugin whose name matches the DriverName set in
    ///this ResourceHandle.
    ///
    ///The maximum size of this field is 16KiB. This may get increased in the future, but not
    ///reduced.
    @JsonKey(name: "data")
    String? data;
    
    ///DriverName specifies the name of the resource driver whose kubelet plugin should be
    ///invoked to process this ResourceHandle's data once it lands on a node. This may differ
    ///from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
    @JsonKey(name: "driverName")
    String? driverName;
    
    ///If StructuredData is set, then it needs to be used instead of Data.
    @JsonKey(name: "structuredData")
    IoK8SApiResourceV1Alpha2StructuredResourceHandle? structuredData;

    IoK8SApiResourceV1Alpha2ResourceHandle({
        this.data,
        this.driverName,
        this.structuredData,
    });

    factory IoK8SApiResourceV1Alpha2ResourceHandle.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceHandleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceHandleToJson(this);
}


///If StructuredData is set, then it needs to be used instead of Data.
///
///StructuredResourceHandle is the in-tree representation of the allocation result.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2StructuredResourceHandle {
    
    ///NodeName is the name of the node providing the necessary resources if the resources are
    ///local to a node.
    @JsonKey(name: "nodeName")
    String? nodeName;
    
    ///Results lists all allocated driver resources.
    @JsonKey(name: "results")
    List<IoK8SApiResourceV1Alpha2DriverAllocationResult> results;
    
    ///VendorClaimParameters are the per-claim configuration parameters from the resource claim
    ///parameters at the time that the claim was allocated.
    @JsonKey(name: "vendorClaimParameters")
    Map<String, dynamic>? vendorClaimParameters;
    
    ///VendorClassParameters are the per-claim configuration parameters from the resource class
    ///at the time that the claim was allocated.
    @JsonKey(name: "vendorClassParameters")
    Map<String, dynamic>? vendorClassParameters;

    IoK8SApiResourceV1Alpha2StructuredResourceHandle({
        this.nodeName,
        required this.results,
        this.vendorClaimParameters,
        this.vendorClassParameters,
    });

    factory IoK8SApiResourceV1Alpha2StructuredResourceHandle.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2StructuredResourceHandleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2StructuredResourceHandleToJson(this);
}


///DriverAllocationResult contains vendor parameters and the allocation result for one
///request.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2DriverAllocationResult {
    
    ///NamedResources describes the allocation result when using the named resources model.
    @JsonKey(name: "namedResources")
    IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult? namedResources;
    
    ///VendorRequestParameters are the per-request configuration parameters from the time that
    ///the claim was allocated.
    @JsonKey(name: "vendorRequestParameters")
    Map<String, dynamic>? vendorRequestParameters;

    IoK8SApiResourceV1Alpha2DriverAllocationResult({
        this.namedResources,
        this.vendorRequestParameters,
    });

    factory IoK8SApiResourceV1Alpha2DriverAllocationResult.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2DriverAllocationResultFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2DriverAllocationResultToJson(this);
}


///NamedResources describes the allocation result when using the named resources model.
///
///NamedResourcesAllocationResult is used in AllocationResultModel.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult {
    
    ///Name is the name of the selected resource instance.
    @JsonKey(name: "name")
    String name;

    IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult({
        required this.name,
    });

    factory IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2NamedResourcesAllocationResultFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2NamedResourcesAllocationResultToJson(this);
}


///ResourceClaimConsumerReference contains enough information to let you locate the consumer
///of a ResourceClaim. The user must be a resource in the same namespace as the
///ResourceClaim.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference {
    
    ///APIGroup is the group for the resource being referenced. It is empty for the core API.
    ///This matches the group in the APIVersion that is used when creating the resources.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Name is the name of resource being referenced.
    @JsonKey(name: "name")
    String name;
    
    ///Resource is the type of resource being referenced, for example "pods".
    @JsonKey(name: "resource")
    String resource;
    
    ///UID identifies exactly one incarnation of the resource.
    @JsonKey(name: "uid")
    String uid;

    IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference({
        this.apiGroup,
        required this.name,
        required this.resource,
        required this.uid,
    });

    factory IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceClaimConsumerReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceClaimConsumerReferenceToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ResourceclaimlistResourceV1Alpha2Kind {
    @JsonValue("ResourceClaimList")
    RESOURCE_CLAIM_LIST
}

final resourceclaimlistResourceV1Alpha2KindValues = EnumValues({
    "ResourceClaimList": ResourceclaimlistResourceV1Alpha2Kind.RESOURCE_CLAIM_LIST
});


///Standard list metadata
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
