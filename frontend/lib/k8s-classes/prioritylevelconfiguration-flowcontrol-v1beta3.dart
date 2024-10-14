import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'prioritylevelconfiguration_flowcontrol_v1_beta3.g.dart';


///PriorityLevelConfiguration represents the configuration of a priority level.
@JsonSerializable()
class PrioritylevelconfigurationFlowcontrolV1Beta3 {
    
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
    
    ///`metadata` is the standard object's metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///`spec` is the specification of the desired behavior of a "request-priority". More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "spec")
    IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpec? spec;
    
    ///`status` is the current status of a "request-priority". More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "status")
    IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatus? status;

    PrioritylevelconfigurationFlowcontrolV1Beta3({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
        this.status,
    });

    factory PrioritylevelconfigurationFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$PrioritylevelconfigurationFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$PrioritylevelconfigurationFlowcontrolV1Beta3ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("flowcontrol.apiserver.k8s.io/v1beta3")
    FLOWCONTROL_APISERVER_K8_S_IO_V1_BETA3
}

final apiVersionValues = EnumValues({
    "flowcontrol.apiserver.k8s.io/v1beta3": ApiVersion.FLOWCONTROL_APISERVER_K8_S_IO_V1_BETA3
});


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("PriorityLevelConfiguration")
    PRIORITY_LEVEL_CONFIGURATION
}

final kindValues = EnumValues({
    "PriorityLevelConfiguration": Kind.PRIORITY_LEVEL_CONFIGURATION
});


///`metadata` is the standard object's metadata. More info:
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


///`spec` is the specification of the desired behavior of a "request-priority". More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///PriorityLevelConfigurationSpec specifies the configuration of a priority level.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpec {
    
    ///`exempt` specifies how requests are handled for an exempt priority level. This field MUST
    ///be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`.
    ///If empty and `type` is `"Exempt"` then the default values for
    ///`ExemptPriorityLevelConfiguration` apply.
    @JsonKey(name: "exempt")
    IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration? exempt;
    
    ///`limited` specifies how requests are handled for a Limited priority level. This field
    ///must be non-empty if and only if `type` is `"Limited"`.
    @JsonKey(name: "limited")
    IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration? limited;
    
    ///`type` indicates whether this priority level is subject to limitation on request
    ///execution.  A value of `"Exempt"` means that requests of this priority level are not
    ///subject to a limit (and thus are never queued) and do not detract from the capacity made
    ///available to other priority levels.  A value of `"Limited"` means that (a) requests of
    ///this priority level _are_ subject to limits and (b) some of the server's limited capacity
    ///is made available exclusively to this priority level. Required.
    @JsonKey(name: "type")
    String type;

    IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpec({
        this.exempt,
        this.limited,
        required this.type,
    });

    factory IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpecToJson(this);
}


///`exempt` specifies how requests are handled for an exempt priority level. This field MUST
///be empty if `type` is `"Limited"`. This field MAY be non-empty if `type` is `"Exempt"`.
///If empty and `type` is `"Exempt"` then the default values for
///`ExemptPriorityLevelConfiguration` apply.
///
///ExemptPriorityLevelConfiguration describes the configurable aspects of the handling of
///exempt requests. In the mandatory exempt configuration object the values in the fields
///here can be modified by authorized users, unlike the rest of the `spec`.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration {
    
    ///`lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed
    ///by other priority levels.  This value of this field must be between 0 and 100, inclusive,
    ///and it defaults to 0. The number of seats that other levels can borrow from this level,
    ///known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
    ///
    ///LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
    @JsonKey(name: "lendablePercent")
    int? lendablePercent;
    
    ///`nominalConcurrencyShares` (NCS) contributes to the computation of the
    ///NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats
    ///nominally reserved for this priority level. This DOES NOT limit the dispatching from this
    ///priority level but affects the other priority levels through the borrowing mechanism. The
    ///server's concurrency limit (ServerCL) is divided among all the priority levels in
    ///proportion to their NCS values:
    ///
    ///NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[priority level k]
    ///NCS(k)
    ///
    ///Bigger numbers mean a larger nominal concurrency limit, at the expense of every other
    ///priority level. This field has a default value of zero.
    @JsonKey(name: "nominalConcurrencyShares")
    int? nominalConcurrencyShares;

    IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration({
        this.lendablePercent,
        this.nominalConcurrencyShares,
    });

    factory IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfigurationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfigurationToJson(this);
}


///`limited` specifies how requests are handled for a Limited priority level. This field
///must be non-empty if and only if `type` is `"Limited"`.
///
///LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to
///limits. It addresses two issues:
///- How are requests for this priority level limited?
///- What should be done with requests that exceed the limit?
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration {
    
    ///`borrowingLimitPercent`, if present, configures a limit on how many seats this priority
    ///level can borrow from other priority levels. The limit is known as this level's
    ///BorrowingConcurrencyLimit (BorrowingCL) and is a limit on the total number of seats that
    ///this level may borrow at any one time. This field holds the ratio of that limit to the
    ///level's nominal concurrency limit. When this field is non-nil, it must hold a
    ///non-negative integer and the limit is calculated as follows.
    ///
    ///BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )
    ///
    ///The value of this field can be more than 100, implying that this priority level can
    ///borrow a number of seats that is greater than its own nominal concurrency limit
    ///(NominalCL). When this field is left `nil`, the limit is effectively infinite.
    @JsonKey(name: "borrowingLimitPercent")
    int? borrowingLimitPercent;
    
    ///`lendablePercent` prescribes the fraction of the level's NominalCL that can be borrowed
    ///by other priority levels. The value of this field must be between 0 and 100, inclusive,
    ///and it defaults to 0. The number of seats that other levels can borrow from this level,
    ///known as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
    ///
    ///LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
    @JsonKey(name: "lendablePercent")
    int? lendablePercent;
    
    ///`limitResponse` indicates what to do with requests that can not be executed right now
    @JsonKey(name: "limitResponse")
    IoK8SApiFlowcontrolV1Beta3LimitResponse? limitResponse;
    
    ///`nominalConcurrencyShares` (NCS) contributes to the computation of the
    ///NominalConcurrencyLimit (NominalCL) of this level. This is the number of execution seats
    ///available at this priority level. This is used both for requests dispatched from this
    ///priority level as well as requests dispatched from other priority levels borrowing seats
    ///from this level. The server's concurrency limit (ServerCL) is divided among the Limited
    ///priority levels in proportion to their NCS values:
    ///
    ///NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs ) sum_ncs = sum[priority level k]
    ///NCS(k)
    ///
    ///Bigger numbers mean a larger nominal concurrency limit, at the expense of every other
    ///priority level. This field has a default value of 30.
    @JsonKey(name: "nominalConcurrencyShares")
    int? nominalConcurrencyShares;

    IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration({
        this.borrowingLimitPercent,
        this.lendablePercent,
        this.limitResponse,
        this.nominalConcurrencyShares,
    });

    factory IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfigurationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfigurationToJson(this);
}


///`limitResponse` indicates what to do with requests that can not be executed right now
///
///LimitResponse defines how to handle requests that can not be executed right now.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3LimitResponse {
    
    ///`queuing` holds the configuration parameters for queuing. This field may be non-empty
    ///only if `type` is `"Queue"`.
    @JsonKey(name: "queuing")
    IoK8SApiFlowcontrolV1Beta3QueuingConfiguration? queuing;
    
    ///`type` is "Queue" or "Reject". "Queue" means that requests that can not be executed upon
    ///arrival are held in a queue until they can be executed or a queuing limit is reached.
    ///"Reject" means that requests that can not be executed upon arrival are rejected. Required.
    @JsonKey(name: "type")
    String type;

    IoK8SApiFlowcontrolV1Beta3LimitResponse({
        this.queuing,
        required this.type,
    });

    factory IoK8SApiFlowcontrolV1Beta3LimitResponse.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3LimitResponseFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3LimitResponseToJson(this);
}


///`queuing` holds the configuration parameters for queuing. This field may be non-empty
///only if `type` is `"Queue"`.
///
///QueuingConfiguration holds the configuration parameters for queuing
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3QueuingConfiguration {
    
    ///`handSize` is a small positive number that configures the shuffle sharding of requests
    ///into queues.  When enqueuing a request at this priority level the request's flow
    ///identifier (a string pair) is hashed and the hash value is used to shuffle the list of
    ///queues and deal a hand of the size specified here.  The request is put into one of the
    ///shortest queues in that hand. `handSize` must be no larger than `queues`, and should be
    ///significantly smaller (so that a few heavy flows do not saturate most of the queues).
    ///See the user-facing documentation for more extensive guidance on setting this field.
    ///This field has a default value of 8.
    @JsonKey(name: "handSize")
    int? handSize;
    
    ///`queueLengthLimit` is the maximum number of requests allowed to be waiting in a given
    ///queue of this priority level at a time; excess requests are rejected.  This value must be
    ///positive.  If not specified, it will be defaulted to 50.
    @JsonKey(name: "queueLengthLimit")
    int? queueLengthLimit;
    
    ///`queues` is the number of queues for this priority level. The queues exist independently
    ///at each apiserver. The value must be positive.  Setting it to 1 effectively precludes
    ///shufflesharding and thus makes the distinguisher method of associated flow schemas
    ///irrelevant.  This field has a default value of 64.
    @JsonKey(name: "queues")
    int? queues;

    IoK8SApiFlowcontrolV1Beta3QueuingConfiguration({
        this.handSize,
        this.queueLengthLimit,
        this.queues,
    });

    factory IoK8SApiFlowcontrolV1Beta3QueuingConfiguration.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3QueuingConfigurationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3QueuingConfigurationToJson(this);
}


///`status` is the current status of a "request-priority". More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///PriorityLevelConfigurationStatus represents the current state of a "request-priority".
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatus {
    
    ///`conditions` is the current state of "request-priority".
    @JsonKey(name: "conditions")
    List<IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition>? conditions;

    IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatus({
        this.conditions,
    });

    factory IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatusToJson(this);
}


///PriorityLevelConfigurationCondition defines the condition of priority level.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition {
    
    ///`lastTransitionTime` is the last time the condition transitioned from one status to
    ///another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///`message` is a human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///`reason` is a unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///`status` is the status of the condition. Can be True, False, Unknown. Required.
    @JsonKey(name: "status")
    String? status;
    
    ///`type` is the type of the condition. Required.
    @JsonKey(name: "type")
    String? type;

    IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        this.status,
        this.type,
    });

    factory IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationConditionToJson(this);
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
