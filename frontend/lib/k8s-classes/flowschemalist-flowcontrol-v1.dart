import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flowschemalist_flowcontrol_v1.g.dart';


///FlowSchemaList is a list of FlowSchema objects.
@JsonSerializable()
class FlowschemalistFlowcontrolV1 {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    ApiVersion? apiVersion;
    
    ///`items` is a list of FlowSchemas.
    @JsonKey(name: "items")
    List<IoK8SApiFlowcontrolV1FlowSchema>? items;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    FlowschemalistFlowcontrolV1Kind? kind;
    
    ///`metadata` is the standard list metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    Metadata? metadata;

    FlowschemalistFlowcontrolV1({
        this.apiVersion,
        required this.items,
        this.kind,
        this.metadata,
    });

    factory FlowschemalistFlowcontrolV1.fromJson(Map<String, dynamic> json) => _$FlowschemalistFlowcontrolV1FromJson(json);

    Map<String, dynamic> toJson() => _$FlowschemalistFlowcontrolV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("flowcontrol.apiserver.k8s.io/v1")
    FLOWCONTROL_APISERVER_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "flowcontrol.apiserver.k8s.io/v1": ApiVersion.FLOWCONTROL_APISERVER_K8_S_IO_V1
});


///FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set
///of inbound API requests with similar attributes and is identified by a pair of strings:
///the name of the FlowSchema and a "flow distinguisher".
@JsonSerializable()
class IoK8SApiFlowcontrolV1FlowSchema {
    
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
    
    ///`metadata` is the standard object's metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///`spec` is the specification of the desired behavior of a FlowSchema. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "spec")
    IoK8SApiFlowcontrolV1FlowSchemaSpec? spec;
    
    ///`status` is the current status of a FlowSchema. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "status")
    IoK8SApiFlowcontrolV1FlowSchemaStatus? status;

    IoK8SApiFlowcontrolV1FlowSchema({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
        this.status,
    });

    factory IoK8SApiFlowcontrolV1FlowSchema.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1FlowSchemaFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1FlowSchemaToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ItemKind {
    @JsonValue("FlowSchema")
    FLOW_SCHEMA
}

final itemKindValues = EnumValues({
    "FlowSchema": ItemKind.FLOW_SCHEMA
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


///`spec` is the specification of the desired behavior of a FlowSchema. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///FlowSchemaSpec describes how the FlowSchema's specification looks like.
@JsonSerializable()
class IoK8SApiFlowcontrolV1FlowSchemaSpec {
    
    ///`distinguisherMethod` defines how to compute the flow distinguisher for requests that
    ///match this schema. `nil` specifies that the distinguisher is disabled and thus will
    ///always be the empty string.
    @JsonKey(name: "distinguisherMethod")
    IoK8SApiFlowcontrolV1FlowDistinguisherMethod? distinguisherMethod;
    
    ///`matchingPrecedence` is used to choose among the FlowSchemas that match a given request.
    ///The chosen FlowSchema is among those with the numerically lowest (which we take to be
    ///logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in
    ///[1,10000]. Note that if the precedence is not specified, it will be set to 1000 as
    ///default.
    @JsonKey(name: "matchingPrecedence")
    int? matchingPrecedence;
    
    ///`priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the
    ///cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked
    ///as invalid in its status. Required.
    @JsonKey(name: "priorityLevelConfiguration")
    IoK8SApiFlowcontrolV1PriorityLevelConfigurationReference priorityLevelConfiguration;
    
    ///`rules` describes which requests will match this flow schema. This FlowSchema matches a
    ///request if and only if at least one member of rules matches the request. if it is an
    ///empty slice, there will be no requests matching the FlowSchema.
    @JsonKey(name: "rules")
    List<IoK8SApiFlowcontrolV1PolicyRulesWithSubjects>? rules;

    IoK8SApiFlowcontrolV1FlowSchemaSpec({
        this.distinguisherMethod,
        this.matchingPrecedence,
        required this.priorityLevelConfiguration,
        this.rules,
    });

    factory IoK8SApiFlowcontrolV1FlowSchemaSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1FlowSchemaSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1FlowSchemaSpecToJson(this);
}


///`distinguisherMethod` defines how to compute the flow distinguisher for requests that
///match this schema. `nil` specifies that the distinguisher is disabled and thus will
///always be the empty string.
///
///FlowDistinguisherMethod specifies the method of a flow distinguisher.
@JsonSerializable()
class IoK8SApiFlowcontrolV1FlowDistinguisherMethod {
    
    ///`type` is the type of flow distinguisher method The supported types are "ByUser" and
    ///"ByNamespace". Required.
    @JsonKey(name: "type")
    String type;

    IoK8SApiFlowcontrolV1FlowDistinguisherMethod({
        required this.type,
    });

    factory IoK8SApiFlowcontrolV1FlowDistinguisherMethod.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1FlowDistinguisherMethodFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1FlowDistinguisherMethodToJson(this);
}


///`priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the
///cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked
///as invalid in its status. Required.
///
///PriorityLevelConfigurationReference contains information that points to the
///"request-priority" being used.
@JsonSerializable()
class IoK8SApiFlowcontrolV1PriorityLevelConfigurationReference {
    
    ///`name` is the name of the priority level configuration being referenced Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiFlowcontrolV1PriorityLevelConfigurationReference({
        required this.name,
    });

    factory IoK8SApiFlowcontrolV1PriorityLevelConfigurationReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1PriorityLevelConfigurationReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1PriorityLevelConfigurationReferenceToJson(this);
}


///PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The
///test considers the subject making the request, the verb being requested, and the resource
///to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a)
///at least one member of subjects matches the request and (b) at least one member of
///resourceRules or nonResourceRules matches the request.
@JsonSerializable()
class IoK8SApiFlowcontrolV1PolicyRulesWithSubjects {
    
    ///`nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests
    ///according to their verb and the target non-resource URL.
    @JsonKey(name: "nonResourceRules")
    List<IoK8SApiFlowcontrolV1NonResourcePolicyRule>? nonResourceRules;
    
    ///`resourceRules` is a slice of ResourcePolicyRules that identify matching requests
    ///according to their verb and the target resource. At least one of `resourceRules` and
    ///`nonResourceRules` has to be non-empty.
    @JsonKey(name: "resourceRules")
    List<IoK8SApiFlowcontrolV1ResourcePolicyRule>? resourceRules;
    
    ///subjects is the list of normal user, serviceaccount, or group that this rule cares about.
    ///There must be at least one member in this slice. A slice that includes both the
    ///system:authenticated and system:unauthenticated user groups matches every request.
    ///Required.
    @JsonKey(name: "subjects")
    List<IoK8SApiFlowcontrolV1Subject> subjects;

    IoK8SApiFlowcontrolV1PolicyRulesWithSubjects({
        this.nonResourceRules,
        this.resourceRules,
        required this.subjects,
    });

    factory IoK8SApiFlowcontrolV1PolicyRulesWithSubjects.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1PolicyRulesWithSubjectsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1PolicyRulesWithSubjectsToJson(this);
}


///NonResourcePolicyRule is a predicate that matches non-resource requests according to
///their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if
///and only if both (a) at least one member of verbs matches the request and (b) at least
///one member of nonResourceURLs matches the request.
@JsonSerializable()
class IoK8SApiFlowcontrolV1NonResourcePolicyRule {
    
    ///`nonResourceURLs` is a set of url prefixes that a user should have access to and may not
    ///be empty. For example:
    ///- "/healthz" is legal
    ///- "/hea*" is illegal
    ///- "/hea" is legal but matches nothing
    ///- "/hea/*" also matches nothing
    ///- "/healthz/*" matches all per-component health checks.
    ///"*" matches all non-resource urls. if it is present, it must be the only entry. Required.
    @JsonKey(name: "nonResourceURLs")
    List<String> nonResourceUrLs;
    
    ///`verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is
    ///present, it must be the only entry. Required.
    @JsonKey(name: "verbs")
    List<String> verbs;

    IoK8SApiFlowcontrolV1NonResourcePolicyRule({
        required this.nonResourceUrLs,
        required this.verbs,
    });

    factory IoK8SApiFlowcontrolV1NonResourcePolicyRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1NonResourcePolicyRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1NonResourcePolicyRuleToJson(this);
}


///ResourcePolicyRule is a predicate that matches some resource requests, testing the
///request's verb and the target resource. A ResourcePolicyRule matches a resource request
///if and only if: (a) at least one member of verbs matches the request, (b) at least one
///member of apiGroups matches the request, (c) at least one member of resources matches the
///request, and (d) either (d1) the request does not specify a namespace (i.e.,
///`Namespace==""`) and clusterScope is true or (d2) the request specifies a namespace and
///least one member of namespaces matches the request's namespace.
@JsonSerializable()
class IoK8SApiFlowcontrolV1ResourcePolicyRule {
    
    ///`apiGroups` is a list of matching API groups and may not be empty. "*" matches all API
    ///groups and, if present, must be the only entry. Required.
    @JsonKey(name: "apiGroups")
    List<String> apiGroups;
    
    ///`clusterScope` indicates whether to match requests that do not specify a namespace (which
    ///happens either because the resource is not namespaced or the request targets all
    ///namespaces). If this field is omitted or false then the `namespaces` field must contain a
    ///non-empty list.
    @JsonKey(name: "clusterScope")
    bool? clusterScope;
    
    ///`namespaces` is a list of target namespaces that restricts matches.  A request that
    ///specifies a target namespace matches only if either (a) this list contains that target
    ///namespace or (b) this list contains "*".  Note that "*" matches any specified namespace
    ///but does not match a request that _does not specify_ a namespace (see the `clusterScope`
    ///field for that). This list may be empty, but only if `clusterScope` is true.
    @JsonKey(name: "namespaces")
    List<String>? namespaces;
    
    ///`resources` is a list of matching resources (i.e., lowercase and plural) with, if
    ///desired, subresource.  For example, [ "services", "nodes/status" ].  This list may not be
    ///empty. "*" matches all resources and, if present, must be the only entry. Required.
    @JsonKey(name: "resources")
    List<String> resources;
    
    ///`verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if
    ///present, must be the only entry. Required.
    @JsonKey(name: "verbs")
    List<String> verbs;

    IoK8SApiFlowcontrolV1ResourcePolicyRule({
        required this.apiGroups,
        this.clusterScope,
        this.namespaces,
        required this.resources,
        required this.verbs,
    });

    factory IoK8SApiFlowcontrolV1ResourcePolicyRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1ResourcePolicyRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1ResourcePolicyRuleToJson(this);
}


///Subject matches the originator of a request, as identified by the request authentication
///system. There are three ways of matching an originator; by user, group, or service
///account.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Subject {
    
    ///`group` matches based on user group name.
    @JsonKey(name: "group")
    IoK8SApiFlowcontrolV1GroupSubject? group;
    
    ///`kind` indicates which one of the other fields is non-empty. Required
    @JsonKey(name: "kind")
    String kind;
    
    ///`serviceAccount` matches ServiceAccounts.
    @JsonKey(name: "serviceAccount")
    IoK8SApiFlowcontrolV1ServiceAccountSubject? serviceAccount;
    
    ///`user` matches based on username.
    @JsonKey(name: "user")
    IoK8SApiFlowcontrolV1UserSubject? user;

    IoK8SApiFlowcontrolV1Subject({
        this.group,
        required this.kind,
        this.serviceAccount,
        this.user,
    });

    factory IoK8SApiFlowcontrolV1Subject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1SubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1SubjectToJson(this);
}


///`group` matches based on user group name.
///
///GroupSubject holds detailed information for group-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1GroupSubject {
    
    ///name is the user group that matches, or "*" to match all user groups. See
    ///https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for
    ///some well-known group names. Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiFlowcontrolV1GroupSubject({
        required this.name,
    });

    factory IoK8SApiFlowcontrolV1GroupSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1GroupSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1GroupSubjectToJson(this);
}


///`serviceAccount` matches ServiceAccounts.
///
///ServiceAccountSubject holds detailed information for service-account-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1ServiceAccountSubject {
    
    ///`name` is the name of matching ServiceAccount objects, or "*" to match regardless of
    ///name. Required.
    @JsonKey(name: "name")
    String name;
    
    ///`namespace` is the namespace of matching ServiceAccount objects. Required.
    @JsonKey(name: "namespace")
    String namespace;

    IoK8SApiFlowcontrolV1ServiceAccountSubject({
        required this.name,
        required this.namespace,
    });

    factory IoK8SApiFlowcontrolV1ServiceAccountSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1ServiceAccountSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1ServiceAccountSubjectToJson(this);
}


///`user` matches based on username.
///
///UserSubject holds detailed information for user-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1UserSubject {
    
    ///`name` is the username that matches, or "*" to match all usernames. Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiFlowcontrolV1UserSubject({
        required this.name,
    });

    factory IoK8SApiFlowcontrolV1UserSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1UserSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1UserSubjectToJson(this);
}


///`status` is the current status of a FlowSchema. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///FlowSchemaStatus represents the current state of a FlowSchema.
@JsonSerializable()
class IoK8SApiFlowcontrolV1FlowSchemaStatus {
    
    ///`conditions` is a list of the current states of FlowSchema.
    @JsonKey(name: "conditions")
    List<IoK8SApiFlowcontrolV1FlowSchemaCondition>? conditions;

    IoK8SApiFlowcontrolV1FlowSchemaStatus({
        this.conditions,
    });

    factory IoK8SApiFlowcontrolV1FlowSchemaStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1FlowSchemaStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1FlowSchemaStatusToJson(this);
}


///FlowSchemaCondition describes conditions for a FlowSchema.
@JsonSerializable()
class IoK8SApiFlowcontrolV1FlowSchemaCondition {
    
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

    IoK8SApiFlowcontrolV1FlowSchemaCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        this.status,
        this.type,
    });

    factory IoK8SApiFlowcontrolV1FlowSchemaCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1FlowSchemaConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1FlowSchemaConditionToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum FlowschemalistFlowcontrolV1Kind {
    @JsonValue("FlowSchemaList")
    FLOW_SCHEMA_LIST
}

final flowschemalistFlowcontrolV1KindValues = EnumValues({
    "FlowSchemaList": FlowschemalistFlowcontrolV1Kind.FLOW_SCHEMA_LIST
});


///`metadata` is the standard list metadata. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ListMeta describes metadata that synthetic resources must have, including lists and
///various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
@JsonSerializable()
class Metadata {
    
    ///continue may be set if the user set a limit on the number of items returned, and
    ///indicates that the server has more data available. The value is opaque and may be used to
    ///issue another request to the endpoint that served this list to retrieve the next set of
    ///available objects. Continuing a consistent list may not be possible if the server
    ///configuration has changed or more than a few minutes have passed. The resourceVersion
    ///field returned when using this continue value will be identical to the value in the first
    ///response, unless you have received this token from an error message.
    @JsonKey(name: "continue")
    String? metadataContinue;
    
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

    Metadata({
        this.metadataContinue,
        this.remainingItemCount,
        this.resourceVersion,
        this.selfLink,
    });

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

    Map<String, dynamic> toJson() => _$MetadataToJson(this);
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
