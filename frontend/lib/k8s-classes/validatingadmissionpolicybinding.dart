import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'validatingadmissionpolicybinding.g.dart';


///ValidatingAdmissionPolicyBinding binds the ValidatingAdmissionPolicy with paramerized
///resources. ValidatingAdmissionPolicyBinding and parameter CRDs together define how
///cluster administrators configure policies for clusters.
///
///For a given admission request, each binding will cause its policy to be evaluated N
///times, where N is 1 for policies/bindings that don't use params, otherwise N is the
///number of parameters selected by the binding.
///
///The CEL expressions of a policy must have a computed CEL cost below the maximum CEL
///budget. Each evaluation of the policy is given an independent CEL cost budget.
///Adding/removing policies, bindings, or params can not affect whether a given (policy,
///binding, param) combination is within its own CEL budget.
@JsonSerializable()
class Validatingadmissionpolicybinding {
    
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
    Kind? kind;
    
    ///Standard object metadata; More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
    @JsonKey(name: "spec")
    IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpec? spec;

    Validatingadmissionpolicybinding({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
    });

    factory Validatingadmissionpolicybinding.fromJson(Map<String, dynamic> json) => _$ValidatingadmissionpolicybindingFromJson(json);

    Map<String, dynamic> toJson() => _$ValidatingadmissionpolicybindingToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("ValidatingAdmissionPolicyBinding")
    VALIDATING_ADMISSION_POLICY_BINDING
}

final kindValues = EnumValues({
    "ValidatingAdmissionPolicyBinding": Kind.VALIDATING_ADMISSION_POLICY_BINDING
});


///Standard object metadata; More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
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


///Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
///
///ValidatingAdmissionPolicyBindingSpec is the specification of the
///ValidatingAdmissionPolicyBinding.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpec {
    
    ///MatchResources declares what resources match this binding and will be validated by it.
    ///Note that this is intersected with the policy's matchConstraints, so only requests that
    ///are matched by the policy can be selected by this. If this is unset, all resources
    ///matched by the policy are validated by this binding When resourceRules is unset, it does
    ///not constrain resource matching. If a resource is matched by the other fields of this
    ///object, it will be validated. Note that this is differs from ValidatingAdmissionPolicy
    ///matchConstraints, where resourceRules are required.
    @JsonKey(name: "matchResources")
    IoK8SApiAdmissionregistrationV1Beta1MatchResources? matchResources;
    
    ///paramRef specifies the parameter resource used to configure the admission control policy.
    ///It should point to a resource of the type specified in ParamKind of the bound
    ///ValidatingAdmissionPolicy. If the policy specifies a ParamKind and the resource referred
    ///to by ParamRef does not exist, this binding is considered mis-configured and the
    ///FailurePolicy of the ValidatingAdmissionPolicy applied. If the policy does not specify a
    ///ParamKind then this field is ignored, and the rules are evaluated without a param.
    @JsonKey(name: "paramRef")
    IoK8SApiAdmissionregistrationV1Beta1ParamRef? paramRef;
    
    ///PolicyName references a ValidatingAdmissionPolicy name which the
    ///ValidatingAdmissionPolicyBinding binds to. If the referenced resource does not exist,
    ///this binding is considered invalid and will be ignored Required.
    @JsonKey(name: "policyName")
    String? policyName;
    
    ///validationActions declares how Validations of the referenced ValidatingAdmissionPolicy
    ///are enforced. If a validation evaluates to false it is always enforced according to these
    ///actions.
    ///
    ///Failures defined by the ValidatingAdmissionPolicy's FailurePolicy are enforced according
    ///to these actions only if the FailurePolicy is set to Fail, otherwise the failures are
    ///ignored. This includes compilation errors, runtime errors and misconfigurations of the
    ///policy.
    ///
    ///validationActions is declared as a set of action values. Order does not matter.
    ///validationActions may not contain duplicates of the same action.
    ///
    ///The supported actions values are:
    ///
    ///"Deny" specifies that a validation failure results in a denied request.
    ///
    ///"Warn" specifies that a validation failure is reported to the request client in HTTP
    ///Warning headers, with a warning code of 299. Warnings can be sent both for allowed or
    ///denied admission responses.
    ///
    ///"Audit" specifies that a validation failure is included in the published audit event for
    ///the request. The audit event will contain a
    ///`validation.policy.admission.k8s.io/validation_failure` audit annotation with a value
    ///containing the details of the validation failures, formatted as a JSON list of objects,
    ///each with the following fields: - message: The validation failure message string -
    ///policy: The resource name of the ValidatingAdmissionPolicy - binding: The resource name
    ///of the ValidatingAdmissionPolicyBinding - expressionIndex: The index of the failed
    ///validations in the ValidatingAdmissionPolicy - validationActions: The enforcement actions
    ///enacted for the validation failure Example audit annotation:
    ///`"validation.policy.admission.k8s.io/validation_failure": "[{"message": "Invalid value",
    ///{"policy": "policy.example.com", {"binding": "policybinding.example.com",
    ///{"expressionIndex": "1", {"validationActions": ["Audit"]}]"`
    ///
    ///Clients should expect to handle additional values by ignoring any values not recognized.
    ///
    ///"Deny" and "Warn" may not be used together since this combination needlessly duplicates
    ///the validation failure both in the API response body and the HTTP warning headers.
    ///
    ///Required.
    @JsonKey(name: "validationActions")
    List<String>? validationActions;

    IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpec({
        this.matchResources,
        this.paramRef,
        this.policyName,
        this.validationActions,
    });

    factory IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpecToJson(this);
}


///MatchResources declares what resources match this binding and will be validated by it.
///Note that this is intersected with the policy's matchConstraints, so only requests that
///are matched by the policy can be selected by this. If this is unset, all resources
///matched by the policy are validated by this binding When resourceRules is unset, it does
///not constrain resource matching. If a resource is matched by the other fields of this
///object, it will be validated. Note that this is differs from ValidatingAdmissionPolicy
///matchConstraints, where resourceRules are required.
///
///MatchResources decides whether to run the admission control policy on an object based on
///whether it meets the match criteria. The exclude rules take precedence over include rules
///(if a resource matches both, it is excluded)
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Beta1MatchResources {
    
    ///ExcludeResourceRules describes what operations on what resources/subresources the
    ///ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over
    ///include rules (if a resource matches both, it is excluded)
    @JsonKey(name: "excludeResourceRules")
    List<IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations>? excludeResourceRules;
    
    ///matchPolicy defines how the "MatchResources" list is used to match incoming requests.
    ///Allowed values are "Exact" or "Equivalent".
    ///
    ///- Exact: match a request only if it exactly matches a specified rule. For example, if
    ///deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but
    ///"rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources:
    ///["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to
    ///the ValidatingAdmissionPolicy.
    ///
    ///- Equivalent: match a request if modifies a resource listed in rules, even via another
    ///API group or version. For example, if deployments can be modified via apps/v1,
    ///apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"],
    ///apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or
    ///extensions/v1beta1 would be converted to apps/v1 and sent to the
    ///ValidatingAdmissionPolicy.
    ///
    ///Defaults to "Equivalent"
    @JsonKey(name: "matchPolicy")
    String? matchPolicy;
    
    ///NamespaceSelector decides whether to run the admission control policy on an object based
    ///on whether the namespace for that object matches the selector. If the object itself is a
    ///namespace, the matching is performed on object.metadata.labels. If the object is another
    ///cluster scoped resource, it never skips the policy.
    ///
    ///For example, to run the webhook on any objects whose namespace is not associated with
    ///"runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
    ///"matchExpressions": [
    ///{
    ///"key": "runlevel",
    ///"operator": "NotIn",
    ///"values": [
    ///"0",
    ///"1"
    ///]
    ///}
    ///]
    ///}
    ///
    ///If instead you want to only run the policy on any objects whose namespace is associated
    ///with the "environment" of "prod" or "staging"; you will set the selector as follows:
    ///"namespaceSelector": {
    ///"matchExpressions": [
    ///{
    ///"key": "environment",
    ///"operator": "In",
    ///"values": [
    ///"prod",
    ///"staging"
    ///]
    ///}
    ///]
    ///}
    ///
    ///See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more
    ///examples of label selectors.
    ///
    ///Default to the empty LabelSelector, which matches everything.
    @JsonKey(name: "namespaceSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? namespaceSelector;
    
    ///ObjectSelector decides whether to run the validation based on if the object has matching
    ///labels. objectSelector is evaluated against both the oldObject and newObject that would
    ///be sent to the cel validation, and is considered to match if either object matches the
    ///selector. A null object (oldObject in the case of create, or newObject in the case of
    ///delete) or an object that cannot have labels (like a DeploymentRollback or a
    ///PodProxyOptions object) is not considered to match. Use the object selector only if the
    ///webhook is opt-in, because end users may skip the admission webhook by setting the
    ///labels. Default to the empty LabelSelector, which matches everything.
    @JsonKey(name: "objectSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? objectSelector;
    
    ///ResourceRules describes what operations on what resources/subresources the
    ///ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches
    ///_any_ Rule.
    @JsonKey(name: "resourceRules")
    List<IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations>? resourceRules;

    IoK8SApiAdmissionregistrationV1Beta1MatchResources({
        this.excludeResourceRules,
        this.matchPolicy,
        this.namespaceSelector,
        this.objectSelector,
        this.resourceRules,
    });

    factory IoK8SApiAdmissionregistrationV1Beta1MatchResources.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1Beta1MatchResourcesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1Beta1MatchResourcesToJson(this);
}


///NamedRuleWithOperations is a tuple of Operations and Resources with ResourceNames.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations {
    
    ///APIGroups is the API groups the resources belong to. '*' is all groups. If '*' is
    ///present, the length of the slice must be one. Required.
    @JsonKey(name: "apiGroups")
    List<String>? apiGroups;
    
    ///APIVersions is the API versions the resources belong to. '*' is all versions. If '*' is
    ///present, the length of the slice must be one. Required.
    @JsonKey(name: "apiVersions")
    List<String>? apiVersions;
    
    ///Operations is the operations the admission hook cares about - CREATE, UPDATE, DELETE,
    ///CONNECT or * for all of those operations and any future admission operations that are
    ///added. If '*' is present, the length of the slice must be one. Required.
    @JsonKey(name: "operations")
    List<String>? operations;
    
    ///ResourceNames is an optional white list of names that the rule applies to.  An empty set
    ///means that everything is allowed.
    @JsonKey(name: "resourceNames")
    List<String>? resourceNames;
    
    ///Resources is a list of resources this rule applies to.
    ///
    ///For example: 'pods' means pods. 'pods/log' means the log subresource of pods. '*' means
    ///all resources, but not subresources. 'pods/*' means all subresources of pods. '*/scale'
    ///means all scale subresources. '*/*' means all resources and their subresources.
    ///
    ///If wildcard is present, the validation rule will ensure resources do not overlap with
    ///each other.
    ///
    ///Depending on the enclosing object, subresources might not be allowed. Required.
    @JsonKey(name: "resources")
    List<String>? resources;
    
    ///scope specifies the scope of this rule. Valid values are "Cluster", "Namespaced", and "*"
    ///"Cluster" means that only cluster-scoped resources will match this rule. Namespace API
    ///objects are cluster-scoped. "Namespaced" means that only namespaced resources will match
    ///this rule. "*" means that there are no scope restrictions. Subresources match the scope
    ///of their parent resource. Default is "*".
    @JsonKey(name: "scope")
    String? scope;

    IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations({
        this.apiGroups,
        this.apiVersions,
        this.operations,
        this.resourceNames,
        this.resources,
        this.scope,
    });

    factory IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperationsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperationsToJson(this);
}


///NamespaceSelector decides whether to run the admission control policy on an object based
///on whether the namespace for that object matches the selector. If the object itself is a
///namespace, the matching is performed on object.metadata.labels. If the object is another
///cluster scoped resource, it never skips the policy.
///
///For example, to run the webhook on any objects whose namespace is not associated with
///"runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
///"matchExpressions": [
///{
///"key": "runlevel",
///"operator": "NotIn",
///"values": [
///"0",
///"1"
///]
///}
///]
///}
///
///If instead you want to only run the policy on any objects whose namespace is associated
///with the "environment" of "prod" or "staging"; you will set the selector as follows:
///"namespaceSelector": {
///"matchExpressions": [
///{
///"key": "environment",
///"operator": "In",
///"values": [
///"prod",
///"staging"
///]
///}
///]
///}
///
///See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more
///examples of label selectors.
///
///Default to the empty LabelSelector, which matches everything.
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
///
///ObjectSelector decides whether to run the validation based on if the object has matching
///labels. objectSelector is evaluated against both the oldObject and newObject that would
///be sent to the cel validation, and is considered to match if either object matches the
///selector. A null object (oldObject in the case of create, or newObject in the case of
///delete) or an object that cannot have labels (like a DeploymentRollback or a
///PodProxyOptions object) is not considered to match. Use the object selector only if the
///webhook is opt-in, because end users may skip the admission webhook by setting the
///labels. Default to the empty LabelSelector, which matches everything.
///
///selector can be used to match multiple param objects based on their labels. Supply
///selector: {} to match all resources of the ParamKind.
///
///If multiple params are found, they are all evaluated with the policy expressions and the
///results are ANDed together.
///
///One of `name` or `selector` must be set, but `name` and `selector` are mutually exclusive
///properties. If one is set, the other must be unset.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1LabelSelector {
    
    ///matchExpressions is a list of label selector requirements. The requirements are ANDed.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement>? matchExpressions;
    
    ///matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is
    ///equivalent to an element of matchExpressions, whose key field is "key", the operator is
    ///"In", and the values array contains only "value". The requirements are ANDed.
    @JsonKey(name: "matchLabels")
    Map<String, String>? matchLabels;

    IoK8SApimachineryPkgApisMetaV1LabelSelector({
        this.matchExpressions,
        this.matchLabels,
    });

    factory IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(this);
}


///A label selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement {
    
    ///key is the label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///operator represents a key's relationship to a set of values. Valid operators are In,
    ///NotIn, Exists and DoesNotExist.
    @JsonKey(name: "operator")
    String ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator;
    
    ///values is an array of string values. If the operator is In or NotIn, the values array
    ///must be non-empty. If the operator is Exists or DoesNotExist, the values array must be
    ///empty. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement({
        required this.key,
        required this.ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
        this.values,
    });

    factory IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(this);
}


///paramRef specifies the parameter resource used to configure the admission control policy.
///It should point to a resource of the type specified in ParamKind of the bound
///ValidatingAdmissionPolicy. If the policy specifies a ParamKind and the resource referred
///to by ParamRef does not exist, this binding is considered mis-configured and the
///FailurePolicy of the ValidatingAdmissionPolicy applied. If the policy does not specify a
///ParamKind then this field is ignored, and the rules are evaluated without a param.
///
///ParamRef describes how to locate the params to be used as input to expressions of rules
///applied by a policy binding.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Beta1ParamRef {
    
    ///name is the name of the resource being referenced.
    ///
    ///One of `name` or `selector` must be set, but `name` and `selector` are mutually exclusive
    ///properties. If one is set, the other must be unset.
    ///
    ///A single parameter used for all admission requests can be configured by setting the
    ///`name` field, leaving `selector` blank, and setting namespace if `paramKind` is
    ///namespace-scoped.
    @JsonKey(name: "name")
    String? name;
    
    ///namespace is the namespace of the referenced resource. Allows limiting the search for
    ///params to a specific namespace. Applies to both `name` and `selector` fields.
    ///
    ///A per-namespace parameter may be used by specifying a namespace-scoped `paramKind` in the
    ///policy and leaving this field empty.
    ///
    ///- If `paramKind` is cluster-scoped, this field MUST be unset. Setting this field results
    ///in a configuration error.
    ///
    ///- If `paramKind` is namespace-scoped, the namespace of the object being evaluated for
    ///admission will be used when this field is left unset. Take care that if this is left
    ///empty the binding must not match any cluster-scoped resources, which will result in an
    ///error.
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///`parameterNotFoundAction` controls the behavior of the binding when the resource exists,
    ///and name or selector is valid, but there are no parameters matched by the binding. If the
    ///value is set to `Allow`, then no matched parameters will be treated as successful
    ///validation by the binding. If set to `Deny`, then no matched parameters will be subject
    ///to the `failurePolicy` of the policy.
    ///
    ///Allowed values are `Allow` or `Deny`
    ///
    ///Required
    @JsonKey(name: "parameterNotFoundAction")
    String? parameterNotFoundAction;
    
    ///selector can be used to match multiple param objects based on their labels. Supply
    ///selector: {} to match all resources of the ParamKind.
    ///
    ///If multiple params are found, they are all evaluated with the policy expressions and the
    ///results are ANDed together.
    ///
    ///One of `name` or `selector` must be set, but `name` and `selector` are mutually exclusive
    ///properties. If one is set, the other must be unset.
    @JsonKey(name: "selector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? selector;

    IoK8SApiAdmissionregistrationV1Beta1ParamRef({
        this.name,
        this.namespace,
        this.parameterNotFoundAction,
        this.selector,
    });

    factory IoK8SApiAdmissionregistrationV1Beta1ParamRef.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1Beta1ParamRefFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1Beta1ParamRefToJson(this);
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
