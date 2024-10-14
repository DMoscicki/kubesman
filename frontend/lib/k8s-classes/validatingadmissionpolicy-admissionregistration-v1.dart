import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'validatingadmissionpolicy_admissionregistration_v1.g.dart';


///ValidatingAdmissionPolicy describes the definition of an admission validation policy that
///accepts or rejects an object without changing it.
@JsonSerializable()
class ValidatingadmissionpolicyAdmissionregistrationV1 {
    
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
    
    ///Standard object metadata; More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///Specification of the desired behavior of the ValidatingAdmissionPolicy.
    @JsonKey(name: "spec")
    IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicySpec? spec;
    
    ///The status of the ValidatingAdmissionPolicy, including warnings that are useful to
    ///determine if the policy behaves in the expected way. Populated by the system. Read-only.
    @JsonKey(name: "status")
    IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicyStatus? status;

    ValidatingadmissionpolicyAdmissionregistrationV1({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
        this.status,
    });

    factory ValidatingadmissionpolicyAdmissionregistrationV1.fromJson(Map<String, dynamic> json) => _$ValidatingadmissionpolicyAdmissionregistrationV1FromJson(json);

    Map<String, dynamic> toJson() => _$ValidatingadmissionpolicyAdmissionregistrationV1ToJson(this);
}


///APIVersion defines the versioned schema of this representation of an object. Servers
///should convert recognized schemas to the latest internal value, and may reject
///unrecognized values. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
enum ApiVersion {
    @JsonValue("admissionregistration.k8s.io/v1")
    ADMISSIONREGISTRATION_K8_S_IO_V1
}

final apiVersionValues = EnumValues({
    "admissionregistration.k8s.io/v1": ApiVersion.ADMISSIONREGISTRATION_K8_S_IO_V1
});


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("ValidatingAdmissionPolicy")
    VALIDATING_ADMISSION_POLICY
}

final kindValues = EnumValues({
    "ValidatingAdmissionPolicy": Kind.VALIDATING_ADMISSION_POLICY
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


///Specification of the desired behavior of the ValidatingAdmissionPolicy.
///
///ValidatingAdmissionPolicySpec is the specification of the desired behavior of the
///AdmissionPolicy.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicySpec {
    
    ///auditAnnotations contains CEL expressions which are used to produce audit annotations for
    ///the audit event of the API request. validations and auditAnnotations may not both be
    ///empty; a least one of validations or auditAnnotations is required.
    @JsonKey(name: "auditAnnotations")
    List<IoK8SApiAdmissionregistrationV1AuditAnnotation>? auditAnnotations;
    
    ///failurePolicy defines how to handle failures for the admission policy. Failures can occur
    ///from CEL expression parse errors, type check errors, runtime errors and invalid or
    ///mis-configured policy definitions or bindings.
    ///
    ///A policy is invalid if spec.paramKind refers to a non-existent Kind. A binding is invalid
    ///if spec.paramRef.name refers to a non-existent resource.
    ///
    ///failurePolicy does not define how validations that evaluate to false are handled.
    ///
    ///When failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions
    ///define how failures are enforced.
    ///
    ///Allowed values are Ignore or Fail. Defaults to Fail.
    @JsonKey(name: "failurePolicy")
    String? failurePolicy;
    
    ///MatchConditions is a list of conditions that must be met for a request to be validated.
    ///Match conditions filter requests that have already been matched by the rules,
    ///namespaceSelector, and objectSelector. An empty list of matchConditions matches all
    ///requests. There are a maximum of 64 match conditions allowed.
    ///
    ///If a parameter object is provided, it can be accessed via the `params` handle in the same
    ///manner as validation expressions.
    ///
    ///The exact matching logic is (in order):
    ///1. If ANY matchCondition evaluates to FALSE, the policy is skipped.
    ///2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.
    ///3. If any matchCondition evaluates to an error (but none are FALSE):
    ///- If failurePolicy=Fail, reject the request
    ///- If failurePolicy=Ignore, the policy is skipped
    @JsonKey(name: "matchConditions")
    List<IoK8SApiAdmissionregistrationV1MatchCondition>? matchConditions;
    
    ///MatchConstraints specifies what resources this policy is designed to validate. The
    ///AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order
    ///to prevent clusters from being put into an unstable state that cannot be recovered from
    ///via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and
    ///ValidatingAdmissionPolicyBinding. Required.
    @JsonKey(name: "matchConstraints")
    IoK8SApiAdmissionregistrationV1MatchResources? matchConstraints;
    
    ///ParamKind specifies the kind of resources used to parameterize this policy. If absent,
    ///there are no parameters for this policy and the param CEL variable will not be provided
    ///to validation expressions. If ParamKind refers to a non-existent kind, this policy
    ///definition is mis-configured and the FailurePolicy is applied. If paramKind is specified
    ///but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be
    ///null.
    @JsonKey(name: "paramKind")
    IoK8SApiAdmissionregistrationV1ParamKind? paramKind;
    
    ///Validations contain CEL expressions which is used to apply the validation. Validations
    ///and AuditAnnotations may not both be empty; a minimum of one Validations or
    ///AuditAnnotations is required.
    @JsonKey(name: "validations")
    List<IoK8SApiAdmissionregistrationV1Validation>? validations;
    
    ///Variables contain definitions of variables that can be used in composition of other
    ///expressions. Each variable is defined as a named CEL expression. The variables defined
    ///here will be available under `variables` in other expressions of the policy except
    ///MatchConditions because MatchConditions are evaluated before the rest of the policy.
    ///
    ///The expression of a variable can refer to other variables defined earlier in the list but
    ///not those after. Thus, Variables must be sorted by the order of first appearance and
    ///acyclic.
    @JsonKey(name: "variables")
    List<IoK8SApiAdmissionregistrationV1Variable>? variables;

    IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicySpec({
        this.auditAnnotations,
        this.failurePolicy,
        this.matchConditions,
        this.matchConstraints,
        this.paramKind,
        this.validations,
        this.variables,
    });

    factory IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicySpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicySpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicySpecToJson(this);
}


///AuditAnnotation describes how to produce an audit annotation for an API request.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1AuditAnnotation {
    
    ///key specifies the audit annotation key. The audit annotation keys of a
    ///ValidatingAdmissionPolicy must be unique. The key must be a qualified name
    ///([A-Za-z0-9][-A-Za-z0-9_.]*) no more than 63 bytes in length.
    ///
    ///The key is combined with the resource name of the ValidatingAdmissionPolicy to construct
    ///an audit annotation key: "{ValidatingAdmissionPolicy name}/{key}".
    ///
    ///If an admission webhook uses the same resource name as this ValidatingAdmissionPolicy and
    ///the same audit annotation key, the annotation key will be identical. In this case, the
    ///first annotation written with the key will be included in the audit event and all
    ///subsequent annotations with the same key will be discarded.
    ///
    ///Required.
    @JsonKey(name: "key")
    String key;
    
    ///valueExpression represents the expression which is evaluated by CEL to produce an audit
    ///annotation value. The expression must evaluate to either a string or null value. If the
    ///expression evaluates to a string, the audit annotation is included with the string value.
    ///If the expression evaluates to null or empty string the audit annotation will be omitted.
    ///The valueExpression may be no longer than 5kb in length. If the result of the
    ///valueExpression is more than 10kb in length, it will be truncated to 10kb.
    ///
    ///If multiple ValidatingAdmissionPolicyBinding resources match an API request, then the
    ///valueExpression will be evaluated for each binding. All unique values produced by the
    ///valueExpressions will be joined together in a comma-separated list.
    ///
    ///Required.
    @JsonKey(name: "valueExpression")
    String valueExpression;

    IoK8SApiAdmissionregistrationV1AuditAnnotation({
        required this.key,
        required this.valueExpression,
    });

    factory IoK8SApiAdmissionregistrationV1AuditAnnotation.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1AuditAnnotationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1AuditAnnotationToJson(this);
}


///MatchCondition represents a condition which must by fulfilled for a request to be sent to
///a webhook.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1MatchCondition {
    
    ///Expression represents the expression which will be evaluated by CEL. Must evaluate to
    ///bool. CEL expressions have access to the contents of the AdmissionRequest and Authorizer,
    ///organized into CEL variables:
    ///
    ///'object' - The object from the incoming request. The value is null for DELETE requests.
    ///'oldObject' - The existing object. The value is null for CREATE requests. 'request' -
    ///Attributes of the admission request(/pkg/apis/admission/types.go#AdmissionRequest).
    ///'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the
    ///principal (user or service account) of the request.
    ///See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
    ///'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer' and
    ///configured with the
    ///request resource.
    ///Documentation on CEL: https://kubernetes.io/docs/reference/using-api/cel/
    ///
    ///Required.
    @JsonKey(name: "expression")
    String expression;
    
    ///Name is an identifier for this match condition, used for strategic merging of
    ///MatchConditions, as well as providing an identifier for logging purposes. A good name
    ///should be descriptive of the associated expression. Name must be a qualified name
    ///consisting of alphanumeric characters, '-', '_' or '.', and must start and end with an
    ///alphanumeric character (e.g. 'MyName',  or 'my.name',  or '123-abc', regex used for
    ///validation is '([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]') with an optional DNS subdomain
    ///prefix and '/' (e.g. 'example.com/MyName')
    ///
    ///Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiAdmissionregistrationV1MatchCondition({
        required this.expression,
        required this.name,
    });

    factory IoK8SApiAdmissionregistrationV1MatchCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1MatchConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1MatchConditionToJson(this);
}


///MatchConstraints specifies what resources this policy is designed to validate. The
///AdmissionPolicy cares about a request if it matches _all_ Constraints. However, in order
///to prevent clusters from being put into an unstable state that cannot be recovered from
///via the API ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and
///ValidatingAdmissionPolicyBinding. Required.
///
///MatchResources decides whether to run the admission control policy on an object based on
///whether it meets the match criteria. The exclude rules take precedence over include rules
///(if a resource matches both, it is excluded)
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1MatchResources {
    
    ///ExcludeResourceRules describes what operations on what resources/subresources the
    ///ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over
    ///include rules (if a resource matches both, it is excluded)
    @JsonKey(name: "excludeResourceRules")
    List<IoK8SApiAdmissionregistrationV1NamedRuleWithOperations>? excludeResourceRules;
    
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
    List<IoK8SApiAdmissionregistrationV1NamedRuleWithOperations>? resourceRules;

    IoK8SApiAdmissionregistrationV1MatchResources({
        this.excludeResourceRules,
        this.matchPolicy,
        this.namespaceSelector,
        this.objectSelector,
        this.resourceRules,
    });

    factory IoK8SApiAdmissionregistrationV1MatchResources.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1MatchResourcesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1MatchResourcesToJson(this);
}


///NamedRuleWithOperations is a tuple of Operations and Resources with ResourceNames.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1NamedRuleWithOperations {
    
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

    IoK8SApiAdmissionregistrationV1NamedRuleWithOperations({
        this.apiGroups,
        this.apiVersions,
        this.operations,
        this.resourceNames,
        this.resources,
        this.scope,
    });

    factory IoK8SApiAdmissionregistrationV1NamedRuleWithOperations.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1NamedRuleWithOperationsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1NamedRuleWithOperationsToJson(this);
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


///ParamKind specifies the kind of resources used to parameterize this policy. If absent,
///there are no parameters for this policy and the param CEL variable will not be provided
///to validation expressions. If ParamKind refers to a non-existent kind, this policy
///definition is mis-configured and the FailurePolicy is applied. If paramKind is specified
///but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be
///null.
///
///ParamKind is a tuple of Group Kind and Version.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1ParamKind {
    
    ///APIVersion is the API group version the resources belong to. In format of
    ///"group/version". Required.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind is the API kind the resources belong to. Required.
    @JsonKey(name: "kind")
    String? kind;

    IoK8SApiAdmissionregistrationV1ParamKind({
        this.apiVersion,
        this.kind,
    });

    factory IoK8SApiAdmissionregistrationV1ParamKind.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ParamKindFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ParamKindToJson(this);
}


///Validation specifies the CEL expression which is used to apply the validation.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Validation {
    
    ///Expression represents the expression which will be evaluated by CEL. ref:
    ///https://github.com/google/cel-spec CEL expressions have access to the contents of the API
    ///request/response, organized into CEL variables as well as some other useful variables:
    ///
    ///- 'object' - The object from the incoming request. The value is null for DELETE requests.
    ///- 'oldObject' - The existing object. The value is null for CREATE requests. - 'request' -
    ///Attributes of the API request([ref](/pkg/apis/admission/types.go#AdmissionRequest)). -
    ///'params' - Parameter resource referred to by the policy binding being evaluated. Only
    ///populated if the policy has a ParamKind. - 'namespaceObject' - The namespace object that
    ///the incoming object belongs to. The value is null for cluster-scoped resources. -
    ///'variables' - Map of composited variables, from its name to its lazily evaluated value.
    ///For example, a variable named 'foo' can be accessed as 'variables.foo'.
    ///- 'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the
    ///principal (user or service account) of the request.
    ///See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
    ///- 'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer'
    ///and configured with the
    ///request resource.
    ///
    ///The `apiVersion`, `kind`, `metadata.name` and `metadata.generateName` are always
    ///accessible from the root of the object. No other metadata properties are accessible.
    ///
    ///Only property names of the form `[a-zA-Z_.-/][a-zA-Z0-9_.-/]*` are accessible. Accessible
    ///property names are escaped according to the following rules when accessed in the
    ///expression: - '__' escapes to '__underscores__' - '.' escapes to '__dot__' - '-' escapes
    ///to '__dash__' - '/' escapes to '__slash__' - Property names that exactly match a CEL
    ///RESERVED keyword escape to '__{keyword}__'. The keywords are:
    ///"true", "false", "null", "in", "as", "break", "const", "continue", "else", "for",
    ///"function", "if",
    ///"import", "let", "loop", "package", "namespace", "return".
    ///Examples:
    ///- Expression accessing a property named "namespace": {"Expression": "object.__namespace__
    ///> 0"}
    ///- Expression accessing a property named "x-prop": {"Expression": "object.x__dash__prop >
    ///0"}
    ///- Expression accessing a property named "redact__d": {"Expression":
    ///"object.redact__underscores__d > 0"}
    ///
    ///Equality on arrays with list type of 'set' or 'map' ignores element order, i.e. [1, 2] ==
    ///[2, 1]. Concatenation on arrays with x-kubernetes-list-type use the semantics of the list
    ///type:
    ///- 'set': `X + Y` performs a union where the array positions of all elements in `X` are
    ///preserved and
    ///non-intersecting elements in `Y` are appended, retaining their partial order.
    ///- 'map': `X + Y` performs a merge where the array positions of all keys in `X` are
    ///preserved but the values
    ///are overwritten by values in `Y` when the key sets of `X` and `Y` intersect. Elements in
    ///`Y` with
    ///non-intersecting keys are appended, retaining their partial order.
    ///Required.
    @JsonKey(name: "expression")
    String expression;
    
    ///Message represents the message displayed when validation fails. The message is required
    ///if the Expression contains line breaks. The message must not contain line breaks. If
    ///unset, the message is "failed rule: {Rule}". e.g. "must be a URL with the host matching
    ///spec.host" If the Expression contains line breaks. Message is required. The message must
    ///not contain line breaks. If unset, the message is "failed Expression: {Expression}".
    @JsonKey(name: "message")
    String? message;
    
    ///messageExpression declares a CEL expression that evaluates to the validation failure
    ///message that is returned when this rule fails. Since messageExpression is used as a
    ///failure message, it must evaluate to a string. If both message and messageExpression are
    ///present on a validation, then messageExpression will be used if validation fails. If
    ///messageExpression results in a runtime error, the runtime error is logged, and the
    ///validation failure message is produced as if the messageExpression field were unset. If
    ///messageExpression evaluates to an empty string, a string with only spaces, or a string
    ///that contains line breaks, then the validation failure message will also be produced as
    ///if the messageExpression field were unset, and the fact that messageExpression produced
    ///an empty string/string with only spaces/string with line breaks will be logged.
    ///messageExpression has access to all the same variables as the `expression` except for
    ///'authorizer' and 'authorizer.requestResource'. Example: "object.x must be less than max
    ///("+string(params.max)+")"
    @JsonKey(name: "messageExpression")
    String? messageExpression;
    
    ///Reason represents a machine-readable description of why this validation failed. If this
    ///is the first validation in the list to fail, this reason, as well as the corresponding
    ///HTTP response code, are used in the HTTP response to the client. The currently supported
    ///reasons are: "Unauthorized", "Forbidden", "Invalid", "RequestEntityTooLarge". If not set,
    ///StatusReasonInvalid is used in the response to the client.
    @JsonKey(name: "reason")
    String? reason;

    IoK8SApiAdmissionregistrationV1Validation({
        required this.expression,
        this.message,
        this.messageExpression,
        this.reason,
    });

    factory IoK8SApiAdmissionregistrationV1Validation.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ValidationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ValidationToJson(this);
}


///Variable is the definition of a variable that is used for composition. A variable is
///defined as a named expression.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1Variable {
    
    ///Expression is the expression that will be evaluated as the value of the variable. The CEL
    ///expression has access to the same identifiers as the CEL expressions in Validation.
    @JsonKey(name: "expression")
    String expression;
    
    ///Name is the name of the variable. The name must be a valid CEL identifier and unique
    ///among all variables. The variable can be accessed in other expressions through
    ///`variables` For example, if name is "foo", the variable will be available as
    ///`variables.foo`
    @JsonKey(name: "name")
    String name;

    IoK8SApiAdmissionregistrationV1Variable({
        required this.expression,
        required this.name,
    });

    factory IoK8SApiAdmissionregistrationV1Variable.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1VariableFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1VariableToJson(this);
}


///The status of the ValidatingAdmissionPolicy, including warnings that are useful to
///determine if the policy behaves in the expected way. Populated by the system. Read-only.
///
///ValidatingAdmissionPolicyStatus represents the status of an admission validation policy.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicyStatus {
    
    ///The conditions represent the latest available observations of a policy's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApimachineryPkgApisMetaV1Condition>? conditions;
    
    ///The generation observed by the controller.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///The results of type checking for each expression. Presence of this field indicates the
    ///completion of the type checking.
    @JsonKey(name: "typeChecking")
    IoK8SApiAdmissionregistrationV1TypeChecking? typeChecking;

    IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicyStatus({
        this.conditions,
        this.observedGeneration,
        this.typeChecking,
    });

    factory IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicyStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicyStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ValidatingAdmissionPolicyStatusToJson(this);
}


///Condition contains details for one aspect of the current state of this API Resource.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1Condition {
    
    ///lastTransitionTime is the last time the condition transitioned from one status to
    ///another. This should be when the underlying condition changed.  If that is not known,
    ///then using the time when the API field changed is acceptable.
    @JsonKey(name: "lastTransitionTime")
    DateTime lastTransitionTime;
    
    ///message is a human readable message indicating details about the transition. This may be
    ///an empty string.
    @JsonKey(name: "message")
    String message;
    
    ///observedGeneration represents the .metadata.generation that the condition was set based
    ///upon. For instance, if .metadata.generation is currently 12, but the
    ///.status.conditions[x].observedGeneration is 9, the condition is out of date with respect
    ///to the current state of the instance.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///reason contains a programmatic identifier indicating the reason for the condition's last
    ///transition. Producers of specific condition types may define expected values and meanings
    ///for this field, and whether the values are considered a guaranteed API. The value should
    ///be a CamelCase string. This field may not be empty.
    @JsonKey(name: "reason")
    String reason;
    
    ///status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///type of condition in CamelCase or in foo.example.com/CamelCase.
    @JsonKey(name: "type")
    String type;

    IoK8SApimachineryPkgApisMetaV1Condition({
        required this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApimachineryPkgApisMetaV1Condition.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(this);
}


///The results of type checking for each expression. Presence of this field indicates the
///completion of the type checking.
///
///TypeChecking contains results of type checking the expressions in the
///ValidatingAdmissionPolicy
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1TypeChecking {
    
    ///The type checking warnings for each expression.
    @JsonKey(name: "expressionWarnings")
    List<IoK8SApiAdmissionregistrationV1ExpressionWarning>? expressionWarnings;

    IoK8SApiAdmissionregistrationV1TypeChecking({
        this.expressionWarnings,
    });

    factory IoK8SApiAdmissionregistrationV1TypeChecking.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1TypeCheckingFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1TypeCheckingToJson(this);
}


///ExpressionWarning is a warning information that targets a specific expression.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1ExpressionWarning {
    
    ///The path to the field that refers the expression. For example, the reference to the
    ///expression of the first item of validations is "spec.validations[0].expression"
    @JsonKey(name: "fieldRef")
    String fieldRef;
    
    ///The content of type checking information in a human-readable form. Each line of the
    ///warning contains the type that the expression is checked against, followed by the type
    ///check error from the compiler.
    @JsonKey(name: "warning")
    String warning;

    IoK8SApiAdmissionregistrationV1ExpressionWarning({
        required this.fieldRef,
        required this.warning,
    });

    factory IoK8SApiAdmissionregistrationV1ExpressionWarning.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ExpressionWarningFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ExpressionWarningToJson(this);
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
