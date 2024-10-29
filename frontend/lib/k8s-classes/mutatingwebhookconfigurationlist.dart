import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'mutatingwebhookconfigurationlist.g.dart';


///MutatingWebhookConfigurationList is a list of MutatingWebhookConfiguration.
@JsonSerializable()
class Mutatingwebhookconfigurationlist {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///List of MutatingWebhookConfiguration.
    @JsonKey(name: "items")
    List<IoK8SApiAdmissionregistrationV1MutatingWebhookConfiguration>? items;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    MutatingwebhookconfigurationlistKind? kind;
    
    ///Standard list metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ListMeta? metadata;

    Mutatingwebhookconfigurationlist({
        this.apiVersion,
        required this.items,
        this.kind,
        this.metadata,
    });

    factory Mutatingwebhookconfigurationlist.fromJson(Map<String, dynamic> json) => _$MutatingwebhookconfigurationlistFromJson(json);

    Map<String, dynamic> toJson() => _$MutatingwebhookconfigurationlistToJson(this);
}


///MutatingWebhookConfiguration describes the configuration of and admission webhook that
///accept or reject and may change the object.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1MutatingWebhookConfiguration {
    
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
    
    ///Standard object metadata; More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///Webhooks is a list of webhooks and the affected resources and operations.
    @JsonKey(name: "webhooks")
    List<IoK8SApiAdmissionregistrationV1MutatingWebhook>? webhooks;

    IoK8SApiAdmissionregistrationV1MutatingWebhookConfiguration({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.webhooks,
    });

    factory IoK8SApiAdmissionregistrationV1MutatingWebhookConfiguration.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1MutatingWebhookConfigurationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1MutatingWebhookConfigurationToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ItemKind {
    @JsonValue("MutatingWebhookConfiguration")
    MUTATING_WEBHOOK_CONFIGURATION
}

final itemKindValues = EnumValues({
    "MutatingWebhookConfiguration": ItemKind.MUTATING_WEBHOOK_CONFIGURATION
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


///MutatingWebhook describes an admission webhook and the resources and operations it
///applies to.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1MutatingWebhook {
    
    ///AdmissionReviewVersions is an ordered list of preferred `AdmissionReview` versions the
    ///Webhook expects. API server will try to use first version in the list which it supports.
    ///If none of the versions specified in this list supported by API server, validation will
    ///fail for this object. If a persisted webhook configuration specifies allowed versions and
    ///does not include any versions known to the API Server, calls to the webhook will fail and
    ///be subject to the failure policy.
    @JsonKey(name: "admissionReviewVersions")
    List<String> admissionReviewVersions;
    
    ///ClientConfig defines how to communicate with the hook. Required
    @JsonKey(name: "clientConfig")
    IoK8SApiAdmissionregistrationV1WebhookClientConfig clientConfig;
    
    ///FailurePolicy defines how unrecognized errors from the admission endpoint are handled -
    ///allowed values are Ignore or Fail. Defaults to Fail.
    @JsonKey(name: "failurePolicy")
    String? failurePolicy;
    
    ///MatchConditions is a list of conditions that must be met for a request to be sent to this
    ///webhook. Match conditions filter requests that have already been matched by the rules,
    ///namespaceSelector, and objectSelector. An empty list of matchConditions matches all
    ///requests. There are a maximum of 64 match conditions allowed.
    ///
    ///The exact matching logic is (in order):
    ///1. If ANY matchCondition evaluates to FALSE, the webhook is skipped.
    ///2. If ALL matchConditions evaluate to TRUE, the webhook is called.
    ///3. If any matchCondition evaluates to an error (but none are FALSE):
    ///- If failurePolicy=Fail, reject the request
    ///- If failurePolicy=Ignore, the error is ignored and the webhook is skipped
    @JsonKey(name: "matchConditions")
    List<IoK8SApiAdmissionregistrationV1MatchCondition>? matchConditions;
    
    ///matchPolicy defines how the "rules" list is used to match incoming requests. Allowed
    ///values are "Exact" or "Equivalent".
    ///
    ///- Exact: match a request only if it exactly matches a specified rule. For example, if
    ///deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but
    ///"rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources:
    ///["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to
    ///the webhook.
    ///
    ///- Equivalent: match a request if modifies a resource listed in rules, even via another
    ///API group or version. For example, if deployments can be modified via apps/v1,
    ///apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"],
    ///apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or
    ///extensions/v1beta1 would be converted to apps/v1 and sent to the webhook.
    ///
    ///Defaults to "Equivalent"
    @JsonKey(name: "matchPolicy")
    String? matchPolicy;
    
    ///The name of the admission webhook. Name should be fully qualified, e.g.,
    ///imagepolicy.kubernetes.io, where "imagepolicy" is the name of the webhook, and
    ///kubernetes.io is the name of the organization. Required.
    @JsonKey(name: "name")
    String name;
    
    ///NamespaceSelector decides whether to run the webhook on an object based on whether the
    ///namespace for that object matches the selector. If the object itself is a namespace, the
    ///matching is performed on object.metadata.labels. If the object is another cluster scoped
    ///resource, it never skips the webhook.
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
    ///If instead you want to only run the webhook on any objects whose namespace is associated
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
    
    ///ObjectSelector decides whether to run the webhook based on if the object has matching
    ///labels. objectSelector is evaluated against both the oldObject and newObject that would
    ///be sent to the webhook, and is considered to match if either object matches the selector.
    ///A null object (oldObject in the case of create, or newObject in the case of delete) or an
    ///object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is
    ///not considered to match. Use the object selector only if the webhook is opt-in, because
    ///end users may skip the admission webhook by setting the labels. Default to the empty
    ///LabelSelector, which matches everything.
    @JsonKey(name: "objectSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? objectSelector;
    
    ///reinvocationPolicy indicates whether this webhook should be called multiple times as part
    ///of a single admission evaluation. Allowed values are "Never" and "IfNeeded".
    ///
    ///Never: the webhook will not be called more than once in a single admission evaluation.
    ///
    ///IfNeeded: the webhook will be called at least one additional time as part of the
    ///admission evaluation if the object being admitted is modified by other admission plugins
    ///after the initial webhook call. Webhooks that specify this option *must* be idempotent,
    ///able to process objects they previously admitted. Note: * the number of additional
    ///invocations is not guaranteed to be exactly one. * if additional invocations result in
    ///further modifications to the object, webhooks are not guaranteed to be invoked again. *
    ///webhooks that use this option may be reordered to minimize the number of additional
    ///invocations. * to validate an object after all mutations are guaranteed complete, use a
    ///validating admission webhook instead.
    ///
    ///Defaults to "Never".
    @JsonKey(name: "reinvocationPolicy")
    String? reinvocationPolicy;
    
    ///Rules describes what operations on what resources/subresources the webhook cares about.
    ///The webhook cares about an operation if it matches _any_ Rule. However, in order to
    ///prevent ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks from putting the
    ///cluster in a state which cannot be recovered from without completely disabling the
    ///plugin, ValidatingAdmissionWebhooks and MutatingAdmissionWebhooks are never called on
    ///admission requests for ValidatingWebhookConfiguration and MutatingWebhookConfiguration
    ///objects.
    @JsonKey(name: "rules")
    List<IoK8SApiAdmissionregistrationV1RuleWithOperations>? rules;
    
    ///SideEffects states whether this webhook has side effects. Acceptable values are: None,
    ///NoneOnDryRun (webhooks created via v1beta1 may also specify Some or Unknown). Webhooks
    ///with side effects MUST implement a reconciliation system, since a request may be rejected
    ///by a future step in the admission chain and the side effects therefore need to be undone.
    ///Requests with the dryRun attribute will be auto-rejected if they match a webhook with
    ///sideEffects == Unknown or Some.
    @JsonKey(name: "sideEffects")
    String sideEffects;
    
    ///TimeoutSeconds specifies the timeout for this webhook. After the timeout passes, the
    ///webhook call will be ignored or the API call will fail based on the failure policy. The
    ///timeout value must be between 1 and 30 seconds. Default to 10 seconds.
    @JsonKey(name: "timeoutSeconds")
    int? timeoutSeconds;

    IoK8SApiAdmissionregistrationV1MutatingWebhook({
        required this.admissionReviewVersions,
        required this.clientConfig,
        this.failurePolicy,
        this.matchConditions,
        this.matchPolicy,
        required this.name,
        this.namespaceSelector,
        this.objectSelector,
        this.reinvocationPolicy,
        this.rules,
        required this.sideEffects,
        this.timeoutSeconds,
    });

    factory IoK8SApiAdmissionregistrationV1MutatingWebhook.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1MutatingWebhookFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1MutatingWebhookToJson(this);
}


///ClientConfig defines how to communicate with the hook. Required
///
///WebhookClientConfig contains the information to make a TLS connection with the webhook
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1WebhookClientConfig {
    
    ///`caBundle` is a PEM encoded CA bundle which will be used to validate the webhook's server
    ///certificate. If unspecified, system trust roots on the apiserver are used.
    @JsonKey(name: "caBundle")
    String? caBundle;
    
    ///`service` is a reference to the service for this webhook. Either `service` or `url` must
    ///be specified.
    ///
    ///If the webhook is running within the cluster, then you should use `service`.
    @JsonKey(name: "service")
    IoK8SApiAdmissionregistrationV1ServiceReference? service;
    
    ///`url` gives the location of the webhook, in standard URL form
    ///(`scheme://host:port/path`). Exactly one of `url` or `service` must be specified.
    ///
    ///The `host` should not refer to a service running in the cluster; use the `service` field
    ///instead. The host might be resolved via external DNS in some apiservers (e.g.,
    ///`kube-apiserver` cannot resolve in-cluster DNS as that would be a layering violation).
    ///`host` may also be an IP address.
    ///
    ///Please note that using `localhost` or `127.0.0.1` as a `host` is risky unless you take
    ///great care to run this webhook on all hosts which run an apiserver which might need to
    ///make calls to this webhook. Such installs are likely to be non-portable, i.e., not easy
    ///to turn up in a new cluster.
    ///
    ///The scheme must be "https"; the URL must begin with "https://".
    ///
    ///A path is optional, and if present may be any string permissible in a URL. You may use
    ///the path to pass an arbitrary string to the webhook, for example, a cluster identifier.
    ///
    ///Attempting to use a user or basic auth e.g. "user:password@" is not allowed. Fragments
    ///("#...") and query parameters ("?...") are not allowed, either.
    @JsonKey(name: "url")
    String? url;

    IoK8SApiAdmissionregistrationV1WebhookClientConfig({
        this.caBundle,
        this.service,
        this.url,
    });

    factory IoK8SApiAdmissionregistrationV1WebhookClientConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1WebhookClientConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1WebhookClientConfigToJson(this);
}


///`service` is a reference to the service for this webhook. Either `service` or `url` must
///be specified.
///
///If the webhook is running within the cluster, then you should use `service`.
///
///ServiceReference holds a reference to Service.legacy.k8s.io
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1ServiceReference {
    
    ///`name` is the name of the service. Required
    @JsonKey(name: "name")
    String name;
    
    ///`namespace` is the namespace of the service. Required
    @JsonKey(name: "namespace")
    String namespace;
    
    ///`path` is an optional URL path which will be sent in any request to this service.
    @JsonKey(name: "path")
    String? path;
    
    ///If specified, the port on the service that hosting webhook. Default to 443 for backward
    ///compatibility. `port` should be a valid port number (1-65535, inclusive).
    @JsonKey(name: "port")
    int? port;

    IoK8SApiAdmissionregistrationV1ServiceReference({
        required this.name,
        required this.namespace,
        this.path,
        this.port,
    });

    factory IoK8SApiAdmissionregistrationV1ServiceReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1ServiceReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1ServiceReferenceToJson(this);
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


///NamespaceSelector decides whether to run the webhook on an object based on whether the
///namespace for that object matches the selector. If the object itself is a namespace, the
///matching is performed on object.metadata.labels. If the object is another cluster scoped
///resource, it never skips the webhook.
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
///If instead you want to only run the webhook on any objects whose namespace is associated
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
///ObjectSelector decides whether to run the webhook based on if the object has matching
///labels. objectSelector is evaluated against both the oldObject and newObject that would
///be sent to the webhook, and is considered to match if either object matches the selector.
///A null object (oldObject in the case of create, or newObject in the case of delete) or an
///object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is
///not considered to match. Use the object selector only if the webhook is opt-in, because
///end users may skip the admission webhook by setting the labels. Default to the empty
///LabelSelector, which matches everything.
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


///RuleWithOperations is a tuple of Operations and Resources. It is recommended to make sure
///that all the tuple expansions are valid.
@JsonSerializable()
class IoK8SApiAdmissionregistrationV1RuleWithOperations {
    
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

    IoK8SApiAdmissionregistrationV1RuleWithOperations({
        this.apiGroups,
        this.apiVersions,
        this.operations,
        this.resources,
        this.scope,
    });

    factory IoK8SApiAdmissionregistrationV1RuleWithOperations.fromJson(Map<String, dynamic> json) => _$IoK8SApiAdmissionregistrationV1RuleWithOperationsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAdmissionregistrationV1RuleWithOperationsToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum MutatingwebhookconfigurationlistKind {
    @JsonValue("MutatingWebhookConfigurationList")
    MUTATING_WEBHOOK_CONFIGURATION_LIST
}

final mutatingwebhookconfigurationlistKindValues = EnumValues({
    "MutatingWebhookConfigurationList": MutatingwebhookconfigurationlistKind.MUTATING_WEBHOOK_CONFIGURATION_LIST
});


///Standard list metadata. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
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
