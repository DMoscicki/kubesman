import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'jobtemplatespec_batch_v1.g.dart';


///JobTemplateSpec describes the data a Job should have when created from a template
@JsonSerializable()
class JobtemplatespecBatchV1 {
    
    ///Standard object's metadata of the jobs created from this template. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    Metadata? metadata;
    
    ///Specification of the desired behavior of the job. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "spec")
    IoK8SApiBatchV1JobSpec? spec;

    JobtemplatespecBatchV1({
        this.metadata,
        this.spec,
    });

    factory JobtemplatespecBatchV1.fromJson(Map<String, dynamic> json) => _$JobtemplatespecBatchV1FromJson(json);

    Map<String, dynamic> toJson() => _$JobtemplatespecBatchV1ToJson(this);
}


///Standard object's metadata of the jobs created from this template. More info:
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


///Specification of the desired behavior of the job. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///JobSpec describes how the job execution will look like.
@JsonSerializable()
class IoK8SApiBatchV1JobSpec {
    
    ///Specifies the duration in seconds relative to the startTime that the job may be
    ///continuously active before the system tries to terminate it; value must be positive
    ///integer. If a Job is suspended (at creation or through an update), this timer will
    ///effectively be stopped and reset when the Job is resumed again.
    @JsonKey(name: "activeDeadlineSeconds")
    int? activeDeadlineSeconds;
    
    ///Specifies the number of retries before marking this job failed. Defaults to 6
    @JsonKey(name: "backoffLimit")
    int? backoffLimit;
    
    ///Specifies the limit for the number of retries within an index before marking this index
    ///as failed. When enabled the number of failures per index is kept in the pod's
    ///batch.kubernetes.io/job-index-failure-count annotation. It can only be set when Job's
    ///completionMode=Indexed, and the Pod's restart policy is Never. The field is immutable.
    ///This field is beta-level. It can be used when the `JobBackoffLimitPerIndex` feature gate
    ///is enabled (enabled by default).
    @JsonKey(name: "backoffLimitPerIndex")
    int? backoffLimitPerIndex;
    
    ///completionMode specifies how Pod completions are tracked. It can be `NonIndexed`
    ///(default) or `Indexed`.
    ///
    ///`NonIndexed` means that the Job is considered complete when there have been
    ///.spec.completions successfully completed Pods. Each Pod completion is homologous to each
    ///other.
    ///
    ///`Indexed` means that the Pods of a Job get an associated completion index from 0 to
    ///(.spec.completions - 1), available in the annotation
    ///batch.kubernetes.io/job-completion-index. The Job is considered complete when there is
    ///one successfully completed Pod for each index. When value is `Indexed`, .spec.completions
    ///must be specified and `.spec.parallelism` must be less than or equal to 10^5. In
    ///addition, The Pod name takes the form `$(job-name)-$(index)-$(random-string)`, the Pod
    ///hostname takes the form `$(job-name)-$(index)`.
    ///
    ///More completion modes can be added in the future. If the Job controller observes a mode
    ///that it doesn't recognize, which is possible during upgrades due to version skew, the
    ///controller skips updates for the Job.
    @JsonKey(name: "completionMode")
    String? completionMode;
    
    ///Specifies the desired number of successfully finished pods the job should be run with.
    ///Setting to null means that the success of any pod signals the success of all pods, and
    ///allows parallelism to have any positive value.  Setting to 1 means that parallelism is
    ///limited to 1 and the success of that pod signals the success of the job. More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
    @JsonKey(name: "completions")
    int? completions;
    
    ///ManagedBy field indicates the controller that manages a Job. The k8s Job controller
    ///reconciles jobs which don't have this field at all or the field value is the reserved
    ///string `kubernetes.io/job-controller`, but skips reconciling Jobs with a custom value for
    ///this field. The value must be a valid domain-prefixed path (e.g. acme.io/foo) - all
    ///characters before the first "/" must be a valid subdomain as defined by RFC 1123. All
    ///characters trailing the first "/" must be valid HTTP Path characters as defined by RFC
    ///3986. The value cannot exceed 64 characters.
    ///
    ///This field is alpha-level. The job controller accepts setting the field when the feature
    ///gate JobManagedBy is enabled (disabled by default).
    @JsonKey(name: "managedBy")
    String? managedBy;
    
    ///manualSelector controls generation of pod labels and pod selectors. Leave
    ///`manualSelector` unset unless you are certain what you are doing. When false or unset,
    ///the system pick labels unique to this job and appends those labels to the pod template.
    ///When true, the user is responsible for picking unique labels and specifying the
    ///selector.  Failure to pick a unique label may cause this and other jobs to not function
    ///correctly.  However, You may see `manualSelector=true` in jobs that were created with the
    ///old `extensions/v1beta1` API. More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/#specifying-your-own-pod-selector
    @JsonKey(name: "manualSelector")
    bool? manualSelector;
    
    ///Specifies the maximal number of failed indexes before marking the Job as failed, when
    ///backoffLimitPerIndex is set. Once the number of failed indexes exceeds this number the
    ///entire Job is marked as Failed and its execution is terminated. When left as null the job
    ///continues execution of all of its indexes and is marked with the `Complete` Job
    ///condition. It can only be specified when backoffLimitPerIndex is set. It can be null or
    ///up to completions. It is required and must be less than or equal to 10^4 when is
    ///completions greater than 10^5. This field is beta-level. It can be used when the
    ///`JobBackoffLimitPerIndex` feature gate is enabled (enabled by default).
    @JsonKey(name: "maxFailedIndexes")
    int? maxFailedIndexes;
    
    ///Specifies the maximum desired number of pods the job should run at any given time. The
    ///actual number of pods running in steady state will be less than this number when
    ///((.spec.completions - .status.successful) < .spec.parallelism), i.e. when the work left
    ///to do is less than max parallelism. More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
    @JsonKey(name: "parallelism")
    int? parallelism;
    
    ///Specifies the policy of handling failed pods. In particular, it allows to specify the set
    ///of actions and conditions which need to be satisfied to take the associated action. If
    ///empty, the default behaviour applies - the counter of failed pods, represented by the
    ///jobs's .status.failed field, is incremented and it is checked against the backoffLimit.
    ///This field cannot be used in combination with restartPolicy=OnFailure.
    ///
    ///This field is beta-level. It can be used when the `JobPodFailurePolicy` feature gate is
    ///enabled (enabled by default).
    @JsonKey(name: "podFailurePolicy")
    IoK8SApiBatchV1PodFailurePolicy? podFailurePolicy;
    
    ///podReplacementPolicy specifies when to create replacement Pods. Possible values are: -
    ///TerminatingOrFailed means that we recreate pods
    ///when they are terminating (has a metadata.deletionTimestamp) or failed.
    ///- Failed means to wait until a previously created Pod is fully terminated (has phase
    ///Failed or Succeeded) before creating a replacement Pod.
    ///
    ///When using podFailurePolicy, Failed is the the only allowed value. TerminatingOrFailed
    ///and Failed are allowed values when podFailurePolicy is not in use. This is an beta field.
    ///To use this, enable the JobPodReplacementPolicy feature toggle. This is on by default.
    @JsonKey(name: "podReplacementPolicy")
    String? podReplacementPolicy;
    
    ///A label query over pods that should match the pod count. Normally, the system sets this
    ///field for you. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
    @JsonKey(name: "selector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? selector;
    
    ///successPolicy specifies the policy when the Job can be declared as succeeded. If empty,
    ///the default behavior applies - the Job is declared as succeeded only when the number of
    ///succeeded pods equals to the completions. When the field is specified, it must be
    ///immutable and works only for the Indexed Jobs. Once the Job meets the SuccessPolicy, the
    ///lingering pods are terminated.
    ///
    ///This field  is alpha-level. To use this field, you must enable the `JobSuccessPolicy`
    ///feature gate (disabled by default).
    @JsonKey(name: "successPolicy")
    IoK8SApiBatchV1SuccessPolicy? successPolicy;
    
    ///suspend specifies whether the Job controller should create Pods or not. If a Job is
    ///created with suspend set to true, no Pods are created by the Job controller. If a Job is
    ///suspended after creation (i.e. the flag goes from false to true), the Job controller will
    ///delete all active Pods associated with this Job. Users must design their workload to
    ///gracefully handle this. Suspending a Job will reset the StartTime field of the Job,
    ///effectively resetting the ActiveDeadlineSeconds timer too. Defaults to false.
    @JsonKey(name: "suspend")
    bool? suspend;
    
    ///Describes the pod that will be created when executing a job. The only allowed
    ///template.spec.restartPolicy values are "Never" or "OnFailure". More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
    @JsonKey(name: "template")
    IoK8SApiCoreV1PodTemplateSpec template;
    
    ///ttlSecondsAfterFinished limits the lifetime of a Job that has finished execution (either
    ///Complete or Failed). If this field is set, ttlSecondsAfterFinished after the Job
    ///finishes, it is eligible to be automatically deleted. When the Job is being deleted, its
    ///lifecycle guarantees (e.g. finalizers) will be honored. If this field is unset, the Job
    ///won't be automatically deleted. If this field is set to zero, the Job becomes eligible to
    ///be deleted immediately after it finishes.
    @JsonKey(name: "ttlSecondsAfterFinished")
    int? ttlSecondsAfterFinished;

    IoK8SApiBatchV1JobSpec({
        this.activeDeadlineSeconds,
        this.backoffLimit,
        this.backoffLimitPerIndex,
        this.completionMode,
        this.completions,
        this.managedBy,
        this.manualSelector,
        this.maxFailedIndexes,
        this.parallelism,
        this.podFailurePolicy,
        this.podReplacementPolicy,
        this.selector,
        this.successPolicy,
        this.suspend,
        required this.template,
        this.ttlSecondsAfterFinished,
    });

    factory IoK8SApiBatchV1JobSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1JobSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1JobSpecToJson(this);
}


///Specifies the policy of handling failed pods. In particular, it allows to specify the set
///of actions and conditions which need to be satisfied to take the associated action. If
///empty, the default behaviour applies - the counter of failed pods, represented by the
///jobs's .status.failed field, is incremented and it is checked against the backoffLimit.
///This field cannot be used in combination with restartPolicy=OnFailure.
///
///This field is beta-level. It can be used when the `JobPodFailurePolicy` feature gate is
///enabled (enabled by default).
///
///PodFailurePolicy describes how failed pods influence the backoffLimit.
@JsonSerializable()
class IoK8SApiBatchV1PodFailurePolicy {
    
    ///A list of pod failure policy rules. The rules are evaluated in order. Once a rule matches
    ///a Pod failure, the remaining of the rules are ignored. When no rule matches the Pod
    ///failure, the default handling applies - the counter of pod failures is incremented and it
    ///is checked against the backoffLimit. At most 20 elements are allowed.
    @JsonKey(name: "rules")
    List<IoK8SApiBatchV1PodFailurePolicyRule> rules;

    IoK8SApiBatchV1PodFailurePolicy({
        required this.rules,
    });

    factory IoK8SApiBatchV1PodFailurePolicy.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1PodFailurePolicyFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1PodFailurePolicyToJson(this);
}


///PodFailurePolicyRule describes how a pod failure is handled when the requirements are
///met. One of onExitCodes and onPodConditions, but not both, can be used in each rule.
@JsonSerializable()
class IoK8SApiBatchV1PodFailurePolicyRule {
    
    ///Specifies the action taken on a pod failure when the requirements are satisfied. Possible
    ///values are:
    ///
    ///- FailJob: indicates that the pod's job is marked as Failed and all
    ///running pods are terminated.
    ///- FailIndex: indicates that the pod's index is marked as Failed and will
    ///not be restarted.
    ///This value is beta-level. It can be used when the
    ///`JobBackoffLimitPerIndex` feature gate is enabled (enabled by default).
    ///- Ignore: indicates that the counter towards the .backoffLimit is not
    ///incremented and a replacement pod is created.
    ///- Count: indicates that the pod is handled in the default way - the
    ///counter towards the .backoffLimit is incremented.
    ///Additional values are considered to be added in the future. Clients should react to an
    ///unknown action by skipping the rule.
    @JsonKey(name: "action")
    String action;
    
    ///Represents the requirement on the container exit codes.
    @JsonKey(name: "onExitCodes")
    IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement? onExitCodes;
    
    ///Represents the requirement on the pod conditions. The requirement is represented as a
    ///list of pod condition patterns. The requirement is satisfied if at least one pattern
    ///matches an actual pod condition. At most 20 elements are allowed.
    @JsonKey(name: "onPodConditions")
    List<IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern>? onPodConditions;

    IoK8SApiBatchV1PodFailurePolicyRule({
        required this.action,
        this.onExitCodes,
        this.onPodConditions,
    });

    factory IoK8SApiBatchV1PodFailurePolicyRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1PodFailurePolicyRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1PodFailurePolicyRuleToJson(this);
}


///Represents the requirement on the container exit codes.
///
///PodFailurePolicyOnExitCodesRequirement describes the requirement for handling a failed
///pod based on its container exit codes. In particular, it lookups the
///.state.terminated.exitCode for each app container and init container status, represented
///by the .status.containerStatuses and .status.initContainerStatuses fields in the Pod
///status, respectively. Containers completed with success (exit code 0) are excluded from
///the requirement check.
@JsonSerializable()
class IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement {
    
    ///Restricts the check for exit codes to the container with the specified name. When null,
    ///the rule applies to all containers. When specified, it should match one the container or
    ///initContainer names in the pod template.
    @JsonKey(name: "containerName")
    String? containerName;
    
    ///Represents the relationship between the container exit code(s) and the specified values.
    ///Containers completed with success (exit code 0) are excluded from the requirement check.
    ///Possible values are:
    ///
    ///- In: the requirement is satisfied if at least one container exit code
    ///(might be multiple if there are multiple containers not restricted
    ///by the 'containerName' field) is in the set of specified values.
    ///- NotIn: the requirement is satisfied if at least one container exit code
    ///(might be multiple if there are multiple containers not restricted
    ///by the 'containerName' field) is not in the set of specified values.
    ///Additional values are considered to be added in the future. Clients should react to an
    ///unknown operator by assuming the requirement is not satisfied.
    @JsonKey(name: "operator")
    String ioK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementOperator;
    
    ///Specifies the set of values. Each returned container exit code (might be multiple in case
    ///of multiple containers) is checked against this set of values with respect to the
    ///operator. The list of values must be ordered and must not contain duplicates. Value '0'
    ///cannot be used for the In operator. At least one element is required. At most 255
    ///elements are allowed.
    @JsonKey(name: "values")
    List<int> values;

    IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement({
        this.containerName,
        required this.ioK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementOperator,
        required this.values,
    });

    factory IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementToJson(this);
}


///PodFailurePolicyOnPodConditionsPattern describes a pattern for matching an actual pod
///condition type.
@JsonSerializable()
class IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern {
    
    ///Specifies the required Pod condition status. To match a pod condition it is required that
    ///the specified status equals the pod condition status. Defaults to True.
    @JsonKey(name: "status")
    String status;
    
    ///Specifies the required Pod condition type. To match a pod condition it is required that
    ///specified type equals the pod condition type.
    @JsonKey(name: "type")
    String type;

    IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern({
        required this.status,
        required this.type,
    });

    factory IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPatternFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPatternToJson(this);
}


///A label query over pods that should match the pod count. Normally, the system sets this
///field for you. More info:
///https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
///
///A label query over a set of resources, in this case pods. If it's null, this
///PodAffinityTerm matches with no Pods.
///
///A label query over the set of namespaces that the term applies to. The term is applied to
///the union of the namespaces selected by this field and the ones listed in the namespaces
///field. null selector and null or empty namespaces list means "this pod's namespace". An
///empty selector ({}) matches all namespaces.
///
///LabelSelector is used to find matching pods. Pods that match this label selector are
///counted to determine the number of pods in their corresponding topology domain.
///
///selector is a label query over volumes to consider for binding.
///
///Select all ClusterTrustBundles that match this label selector.  Only has effect if
///signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match
///nothing".  If set but empty, interpreted as "match everything".
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


///successPolicy specifies the policy when the Job can be declared as succeeded. If empty,
///the default behavior applies - the Job is declared as succeeded only when the number of
///succeeded pods equals to the completions. When the field is specified, it must be
///immutable and works only for the Indexed Jobs. Once the Job meets the SuccessPolicy, the
///lingering pods are terminated.
///
///This field  is alpha-level. To use this field, you must enable the `JobSuccessPolicy`
///feature gate (disabled by default).
///
///SuccessPolicy describes when a Job can be declared as succeeded based on the success of
///some indexes.
@JsonSerializable()
class IoK8SApiBatchV1SuccessPolicy {
    
    ///rules represents the list of alternative rules for the declaring the Jobs as successful
    ///before `.status.succeeded >= .spec.completions`. Once any of the rules are met, the
    ///"SucceededCriteriaMet" condition is added, and the lingering pods are removed. The
    ///terminal state for such a Job has the "Complete" condition. Additionally, these rules are
    ///evaluated in order; Once the Job meets one of the rules, other rules are ignored. At most
    ///20 elements are allowed.
    @JsonKey(name: "rules")
    List<IoK8SApiBatchV1SuccessPolicyRule> rules;

    IoK8SApiBatchV1SuccessPolicy({
        required this.rules,
    });

    factory IoK8SApiBatchV1SuccessPolicy.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1SuccessPolicyFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1SuccessPolicyToJson(this);
}


///SuccessPolicyRule describes rule for declaring a Job as succeeded. Each rule must have at
///least one of the "succeededIndexes" or "succeededCount" specified.
@JsonSerializable()
class IoK8SApiBatchV1SuccessPolicyRule {
    
    ///succeededCount specifies the minimal required size of the actual set of the succeeded
    ///indexes for the Job. When succeededCount is used along with succeededIndexes, the check
    ///is constrained only to the set of indexes specified by succeededIndexes. For example,
    ///given that succeededIndexes is "1-4", succeededCount is "3", and completed indexes are
    ///"1", "3", and "5", the Job isn't declared as succeeded because only "1" and "3" indexes
    ///are considered in that rules. When this field is null, this doesn't default to any value
    ///and is never evaluated at any time. When specified it needs to be a positive integer.
    @JsonKey(name: "succeededCount")
    int? succeededCount;
    
    ///succeededIndexes specifies the set of indexes which need to be contained in the actual
    ///set of the succeeded indexes for the Job. The list of indexes must be within 0 to
    ///".spec.completions-1" and must not contain duplicates. At least one element is required.
    ///The indexes are represented as intervals separated by commas. The intervals can be a
    ///decimal integer or a pair of decimal integers separated by a hyphen. The number are
    ///listed in represented by the first and last element of the series, separated by a hyphen.
    ///For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as
    ///"1,3-5,7". When this field is null, this field doesn't default to any value and is never
    ///evaluated at any time.
    @JsonKey(name: "succeededIndexes")
    String? succeededIndexes;

    IoK8SApiBatchV1SuccessPolicyRule({
        this.succeededCount,
        this.succeededIndexes,
    });

    factory IoK8SApiBatchV1SuccessPolicyRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1SuccessPolicyRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1SuccessPolicyRuleToJson(this);
}


///Describes the pod that will be created when executing a job. The only allowed
///template.spec.restartPolicy values are "Never" or "OnFailure". More info:
///https://kubernetes.io/docs/concepts/workloads/controllers/jobs-run-to-completion/
///
///PodTemplateSpec describes the data a pod should have when created from a template
@JsonSerializable()
class IoK8SApiCoreV1PodTemplateSpec {
    
    ///Standard object's metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///Specification of the desired behavior of the pod. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "spec")
    IoK8SApiCoreV1PodSpec? spec;

    IoK8SApiCoreV1PodTemplateSpec({
        this.metadata,
        this.spec,
    });

    factory IoK8SApiCoreV1PodTemplateSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodTemplateSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodTemplateSpecToJson(this);
}


///Standard object's metadata. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
///
///ObjectMeta is metadata that all persisted resources must have, which includes all objects
///users must create.
///
///May contain labels and annotations that will be copied into the PVC when creating it. No
///other fields are allowed and will be rejected during validation.
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


///Specification of the desired behavior of the pod. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
///
///PodSpec is a description of a pod.
@JsonSerializable()
class IoK8SApiCoreV1PodSpec {
    
    ///Optional duration in seconds the pod may be active on the node relative to StartTime
    ///before the system will actively try to mark it failed and kill associated containers.
    ///Value must be a positive integer.
    @JsonKey(name: "activeDeadlineSeconds")
    int? activeDeadlineSeconds;
    
    ///If specified, the pod's scheduling constraints
    @JsonKey(name: "affinity")
    IoK8SApiCoreV1Affinity? affinity;
    
    ///AutomountServiceAccountToken indicates whether a service account token should be
    ///automatically mounted.
    @JsonKey(name: "automountServiceAccountToken")
    bool? automountServiceAccountToken;
    
    ///List of containers belonging to the pod. Containers cannot currently be added or removed.
    ///There must be at least one container in a Pod. Cannot be updated.
    @JsonKey(name: "containers")
    List<IoK8SApiCoreV1Container> containers;
    
    ///Specifies the DNS parameters of a pod. Parameters specified here will be merged to the
    ///generated DNS configuration based on DNSPolicy.
    @JsonKey(name: "dnsConfig")
    IoK8SApiCoreV1PodDnsConfig? dnsConfig;
    
    ///Set DNS policy for the pod. Defaults to "ClusterFirst". Valid values are
    ///'ClusterFirstWithHostNet', 'ClusterFirst', 'Default' or 'None'. DNS parameters given in
    ///DNSConfig will be merged with the policy selected with DNSPolicy. To have DNS options set
    ///along with hostNetwork, you have to specify DNS policy explicitly to
    ///'ClusterFirstWithHostNet'.
    @JsonKey(name: "dnsPolicy")
    String? dnsPolicy;
    
    ///EnableServiceLinks indicates whether information about services should be injected into
    ///pod's environment variables, matching the syntax of Docker links. Optional: Defaults to
    ///true.
    @JsonKey(name: "enableServiceLinks")
    bool? enableServiceLinks;
    
    ///List of ephemeral containers run in this pod. Ephemeral containers may be run in an
    ///existing pod to perform user-initiated actions such as debugging. This list cannot be
    ///specified when creating a pod, and it cannot be modified by updating the pod spec. In
    ///order to add an ephemeral container to an existing pod, use the pod's ephemeralcontainers
    ///subresource.
    @JsonKey(name: "ephemeralContainers")
    List<IoK8SApiCoreV1EphemeralContainer>? ephemeralContainers;
    
    ///HostAliases is an optional list of hosts and IPs that will be injected into the pod's
    ///hosts file if specified.
    @JsonKey(name: "hostAliases")
    List<IoK8SApiCoreV1HostAlias>? hostAliases;
    
    ///Use the host's ipc namespace. Optional: Default to false.
    @JsonKey(name: "hostIPC")
    bool? hostIpc;
    
    ///Specifies the hostname of the Pod If not specified, the pod's hostname will be set to a
    ///system-defined value.
    @JsonKey(name: "hostname")
    String? hostname;
    
    ///Host networking requested for this pod. Use the host's network namespace. If this option
    ///is set, the ports that will be used must be specified. Default to false.
    @JsonKey(name: "hostNetwork")
    bool? hostNetwork;
    
    ///Use the host's pid namespace. Optional: Default to false.
    @JsonKey(name: "hostPID")
    bool? hostPid;
    
    ///Use the host's user namespace. Optional: Default to true. If set to true or not present,
    ///the pod will be run in the host user namespace, useful for when the pod needs a feature
    ///only available to the host user namespace, such as loading a kernel module with
    ///CAP_SYS_MODULE. When set to false, a new userns is created for the pod. Setting false is
    ///useful for mitigating container breakout vulnerabilities even allowing users to run their
    ///containers as root without actually having root privileges on the host. This field is
    ///alpha-level and is only honored by servers that enable the UserNamespacesSupport feature.
    @JsonKey(name: "hostUsers")
    bool? hostUsers;
    
    ///ImagePullSecrets is an optional list of references to secrets in the same namespace to
    ///use for pulling any of the images used by this PodSpec. If specified, these secrets will
    ///be passed to individual puller implementations for them to use. More info:
    ///https://kubernetes.io/docs/concepts/containers/images#specifying-imagepullsecrets-on-a-pod
    @JsonKey(name: "imagePullSecrets")
    List<IoK8SApiCoreV1LocalObjectReference>? imagePullSecrets;
    
    ///List of initialization containers belonging to the pod. Init containers are executed in
    ///order prior to containers being started. If any init container fails, the pod is
    ///considered to have failed and is handled according to its restartPolicy. The name for an
    ///init container or normal container must be unique among all containers. Init containers
    ///may not have Lifecycle actions, Readiness probes, Liveness probes, or Startup probes. The
    ///resourceRequirements of an init container are taken into account during scheduling by
    ///finding the highest request/limit for each resource type, and then using the max of of
    ///that value or the sum of the normal containers. Limits are applied to init containers in
    ///a similar fashion. Init containers cannot currently be added or removed. Cannot be
    ///updated. More info: https://kubernetes.io/docs/concepts/workloads/pods/init-containers/
    @JsonKey(name: "initContainers")
    List<IoK8SApiCoreV1Container>? initContainers;
    
    ///NodeName is a request to schedule this pod onto a specific node. If it is non-empty, the
    ///scheduler simply schedules this pod onto that node, assuming that it fits resource
    ///requirements.
    @JsonKey(name: "nodeName")
    String? nodeName;
    
    ///NodeSelector is a selector which must be true for the pod to fit on a node. Selector
    ///which must match a node's labels for the pod to be scheduled on that node. More info:
    ///https://kubernetes.io/docs/concepts/configuration/assign-pod-node/
    @JsonKey(name: "nodeSelector")
    Map<String, String>? nodeSelector;
    
    ///Specifies the OS of the containers in the pod. Some pod and container fields are
    ///restricted if this is set.
    ///
    ///If the OS field is set to linux, the following fields must be unset:
    ///-securityContext.windowsOptions
    ///
    ///If the OS field is set to windows, following fields must be unset: - spec.hostPID -
    ///spec.hostIPC - spec.hostUsers - spec.securityContext.appArmorProfile -
    ///spec.securityContext.seLinuxOptions - spec.securityContext.seccompProfile -
    ///spec.securityContext.fsGroup - spec.securityContext.fsGroupChangePolicy -
    ///spec.securityContext.sysctls - spec.shareProcessNamespace -
    ///spec.securityContext.runAsUser - spec.securityContext.runAsGroup -
    ///spec.securityContext.supplementalGroups -
    ///spec.containers[*].securityContext.appArmorProfile -
    ///spec.containers[*].securityContext.seLinuxOptions -
    ///spec.containers[*].securityContext.seccompProfile -
    ///spec.containers[*].securityContext.capabilities -
    ///spec.containers[*].securityContext.readOnlyRootFilesystem -
    ///spec.containers[*].securityContext.privileged -
    ///spec.containers[*].securityContext.allowPrivilegeEscalation -
    ///spec.containers[*].securityContext.procMount -
    ///spec.containers[*].securityContext.runAsUser -
    ///spec.containers[*].securityContext.runAsGroup
    @JsonKey(name: "os")
    IoK8SApiCoreV1PodOs? os;
    
    ///Overhead represents the resource overhead associated with running a pod for a given
    ///RuntimeClass. This field will be autopopulated at admission time by the RuntimeClass
    ///admission controller. If the RuntimeClass admission controller is enabled, overhead must
    ///not be set in Pod create requests. The RuntimeClass admission controller will reject Pod
    ///create requests which have the overhead already set. If RuntimeClass is configured and
    ///selected in the PodSpec, Overhead will be set to the value defined in the corresponding
    ///RuntimeClass, otherwise it will remain unset and treated as zero. More info:
    ///https://git.k8s.io/enhancements/keps/sig-node/688-pod-overhead/README.md
    @JsonKey(name: "overhead")
    Map<String, dynamic>? overhead;
    
    ///PreemptionPolicy is the Policy for preempting pods with lower priority. One of Never,
    ///PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
    @JsonKey(name: "preemptionPolicy")
    String? preemptionPolicy;
    
    ///The priority value. Various system components use this field to find the priority of the
    ///pod. When Priority Admission Controller is enabled, it prevents users from setting this
    ///field. The admission controller populates this field from PriorityClassName. The higher
    ///the value, the higher the priority.
    @JsonKey(name: "priority")
    int? priority;
    
    ///If specified, indicates the pod's priority. "system-node-critical" and
    ///"system-cluster-critical" are two special keywords which indicate the highest priorities
    ///with the former being the highest priority. Any other name must be defined by creating a
    ///PriorityClass object with that name. If not specified, the pod priority will be default
    ///or zero if there is no default.
    @JsonKey(name: "priorityClassName")
    String? priorityClassName;
    
    ///If specified, all readiness gates will be evaluated for pod readiness. A pod is ready
    ///when all its containers are ready AND all conditions specified in the readiness gates
    ///have status equal to "True" More info:
    ///https://git.k8s.io/enhancements/keps/sig-network/580-pod-readiness-gates
    @JsonKey(name: "readinessGates")
    List<IoK8SApiCoreV1PodReadinessGate>? readinessGates;
    
    ///ResourceClaims defines which ResourceClaims must be allocated and reserved before the Pod
    ///is allowed to start. The resources will be made available to those containers which
    ///consume them by name.
    ///
    ///This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
    ///
    ///This field is immutable.
    @JsonKey(name: "resourceClaims")
    List<IoK8SApiCoreV1PodResourceClaim>? resourceClaims;
    
    ///Restart policy for all containers within the pod. One of Always, OnFailure, Never. In
    ///some contexts, only a subset of those values may be permitted. Default to Always. More
    ///info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle/#restart-policy
    @JsonKey(name: "restartPolicy")
    String? restartPolicy;
    
    ///RuntimeClassName refers to a RuntimeClass object in the node.k8s.io group, which should
    ///be used to run this pod.  If no RuntimeClass resource matches the named class, the pod
    ///will not be run. If unset or empty, the "legacy" RuntimeClass will be used, which is an
    ///implicit class with an empty definition that uses the default runtime handler. More info:
    ///https://git.k8s.io/enhancements/keps/sig-node/585-runtime-class
    @JsonKey(name: "runtimeClassName")
    String? runtimeClassName;
    
    ///If specified, the pod will be dispatched by specified scheduler. If not specified, the
    ///pod will be dispatched by default scheduler.
    @JsonKey(name: "schedulerName")
    String? schedulerName;
    
    ///SchedulingGates is an opaque list of values that if specified will block scheduling the
    ///pod. If schedulingGates is not empty, the pod will stay in the SchedulingGated state and
    ///the scheduler will not attempt to schedule the pod.
    ///
    ///SchedulingGates can only be set at pod creation time, and be removed only afterwards.
    @JsonKey(name: "schedulingGates")
    List<IoK8SApiCoreV1PodSchedulingGate>? schedulingGates;
    
    ///SecurityContext holds pod-level security attributes and common container settings.
    ///Optional: Defaults to empty.  See type description for default values of each field.
    @JsonKey(name: "securityContext")
    IoK8SApiCoreV1PodSecurityContext? securityContext;
    
    ///DeprecatedServiceAccount is a deprecated alias for ServiceAccountName. Deprecated: Use
    ///serviceAccountName instead.
    @JsonKey(name: "serviceAccount")
    String? serviceAccount;
    
    ///ServiceAccountName is the name of the ServiceAccount to use to run this pod. More info:
    ///https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
    @JsonKey(name: "serviceAccountName")
    String? serviceAccountName;
    
    ///If true the pod's hostname will be configured as the pod's FQDN, rather than the leaf
    ///name (the default). In Linux containers, this means setting the FQDN in the hostname
    ///field of the kernel (the nodename field of struct utsname). In Windows containers, this
    ///means setting the registry value of hostname for the registry key
    ///HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters to FQDN. If a pod
    ///does not have FQDN, this has no effect. Default to false.
    @JsonKey(name: "setHostnameAsFQDN")
    bool? setHostnameAsFqdn;
    
    ///Share a single process namespace between all of the containers in a pod. When this is set
    ///containers will be able to view and signal processes from other containers in the same
    ///pod, and the first process in each container will not be assigned PID 1. HostPID and
    ///ShareProcessNamespace cannot both be set. Optional: Default to false.
    @JsonKey(name: "shareProcessNamespace")
    bool? shareProcessNamespace;
    
    ///If specified, the fully qualified Pod hostname will be "<hostname>.<subdomain>.<pod
    ///namespace>.svc.<cluster domain>". If not specified, the pod will not have a domainname at
    ///all.
    @JsonKey(name: "subdomain")
    String? subdomain;
    
    ///Optional duration in seconds the pod needs to terminate gracefully. May be decreased in
    ///delete request. Value must be non-negative integer. The value zero indicates stop
    ///immediately via the kill signal (no opportunity to shut down). If this value is nil, the
    ///default grace period will be used instead. The grace period is the duration in seconds
    ///after the processes running in the pod are sent a termination signal and the time when
    ///the processes are forcibly halted with a kill signal. Set this value longer than the
    ///expected cleanup time for your process. Defaults to 30 seconds.
    @JsonKey(name: "terminationGracePeriodSeconds")
    int? terminationGracePeriodSeconds;
    
    ///If specified, the pod's tolerations.
    @JsonKey(name: "tolerations")
    List<IoK8SApiCoreV1Toleration>? tolerations;
    
    ///TopologySpreadConstraints describes how a group of pods ought to spread across topology
    ///domains. Scheduler will schedule pods in a way which abides by the constraints. All
    ///topologySpreadConstraints are ANDed.
    @JsonKey(name: "topologySpreadConstraints")
    List<IoK8SApiCoreV1TopologySpreadConstraint>? topologySpreadConstraints;
    
    ///List of volumes that can be mounted by containers belonging to the pod. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes
    @JsonKey(name: "volumes")
    List<IoK8SApiCoreV1Volume>? volumes;

    IoK8SApiCoreV1PodSpec({
        this.activeDeadlineSeconds,
        this.affinity,
        this.automountServiceAccountToken,
        required this.containers,
        this.dnsConfig,
        this.dnsPolicy,
        this.enableServiceLinks,
        this.ephemeralContainers,
        this.hostAliases,
        this.hostIpc,
        this.hostname,
        this.hostNetwork,
        this.hostPid,
        this.hostUsers,
        this.imagePullSecrets,
        this.initContainers,
        this.nodeName,
        this.nodeSelector,
        this.os,
        this.overhead,
        this.preemptionPolicy,
        this.priority,
        this.priorityClassName,
        this.readinessGates,
        this.resourceClaims,
        this.restartPolicy,
        this.runtimeClassName,
        this.schedulerName,
        this.schedulingGates,
        this.securityContext,
        this.serviceAccount,
        this.serviceAccountName,
        this.setHostnameAsFqdn,
        this.shareProcessNamespace,
        this.subdomain,
        this.terminationGracePeriodSeconds,
        this.tolerations,
        this.topologySpreadConstraints,
        this.volumes,
    });

    factory IoK8SApiCoreV1PodSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodSpecToJson(this);
}


///If specified, the pod's scheduling constraints
///
///Affinity is a group of affinity scheduling rules.
@JsonSerializable()
class IoK8SApiCoreV1Affinity {
    
    ///Describes node affinity scheduling rules for the pod.
    @JsonKey(name: "nodeAffinity")
    IoK8SApiCoreV1NodeAffinity? nodeAffinity;
    
    ///Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone,
    ///etc. as some other pod(s)).
    @JsonKey(name: "podAffinity")
    IoK8SApiCoreV1PodAffinity? podAffinity;
    
    ///Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same
    ///node, zone, etc. as some other pod(s)).
    @JsonKey(name: "podAntiAffinity")
    IoK8SApiCoreV1PodAntiAffinity? podAntiAffinity;

    IoK8SApiCoreV1Affinity({
        this.nodeAffinity,
        this.podAffinity,
        this.podAntiAffinity,
    });

    factory IoK8SApiCoreV1Affinity.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AffinityFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AffinityToJson(this);
}


///Describes node affinity scheduling rules for the pod.
///
///Node affinity is a group of node affinity scheduling rules.
@JsonSerializable()
class IoK8SApiCoreV1NodeAffinity {
    
    ///The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions
    ///specified by this field, but it may choose a node that violates one or more of the
    ///expressions. The node that is most preferred is the one with the greatest sum of weights,
    ///i.e. for each node that meets all of the scheduling requirements (resource request,
    ///requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through
    ///the elements of this field and adding "weight" to the sum if the node matches the
    ///corresponding matchExpressions; the node(s) with the highest sum are the most preferred.
    @JsonKey(name: "preferredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1PreferredSchedulingTerm>? preferredDuringSchedulingIgnoredDuringExecution;
    
    ///If the affinity requirements specified by this field are not met at scheduling time, the
    ///pod will not be scheduled onto the node. If the affinity requirements specified by this
    ///field cease to be met at some point during pod execution (e.g. due to an update), the
    ///system may or may not try to eventually evict the pod from its node.
    @JsonKey(name: "requiredDuringSchedulingIgnoredDuringExecution")
    IoK8SApiCoreV1NodeSelector? requiredDuringSchedulingIgnoredDuringExecution;

    IoK8SApiCoreV1NodeAffinity({
        this.preferredDuringSchedulingIgnoredDuringExecution,
        this.requiredDuringSchedulingIgnoredDuringExecution,
    });

    factory IoK8SApiCoreV1NodeAffinity.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeAffinityFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeAffinityToJson(this);
}


///An empty preferred scheduling term matches all objects with implicit weight 0 (i.e. it's
///a no-op). A null preferred scheduling term matches no objects (i.e. is also a no-op).
@JsonSerializable()
class IoK8SApiCoreV1PreferredSchedulingTerm {
    
    ///A node selector term, associated with the corresponding weight.
    @JsonKey(name: "preference")
    IoK8SApiCoreV1NodeSelectorTerm preference;
    
    ///Weight associated with matching the corresponding nodeSelectorTerm, in the range 1-100.
    @JsonKey(name: "weight")
    int weight;

    IoK8SApiCoreV1PreferredSchedulingTerm({
        required this.preference,
        required this.weight,
    });

    factory IoK8SApiCoreV1PreferredSchedulingTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PreferredSchedulingTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PreferredSchedulingTermToJson(this);
}


///A node selector term, associated with the corresponding weight.
///
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


///If the affinity requirements specified by this field are not met at scheduling time, the
///pod will not be scheduled onto the node. If the affinity requirements specified by this
///field cease to be met at some point during pod execution (e.g. due to an update), the
///system may or may not try to eventually evict the pod from its node.
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


///Describes pod affinity scheduling rules (e.g. co-locate this pod in the same node, zone,
///etc. as some other pod(s)).
///
///Pod affinity is a group of inter pod affinity scheduling rules.
@JsonSerializable()
class IoK8SApiCoreV1PodAffinity {
    
    ///The scheduler will prefer to schedule pods to nodes that satisfy the affinity expressions
    ///specified by this field, but it may choose a node that violates one or more of the
    ///expressions. The node that is most preferred is the one with the greatest sum of weights,
    ///i.e. for each node that meets all of the scheduling requirements (resource request,
    ///requiredDuringScheduling affinity expressions, etc.), compute a sum by iterating through
    ///the elements of this field and adding "weight" to the sum if the node has pods which
    ///matches the corresponding podAffinityTerm; the node(s) with the highest sum are the most
    ///preferred.
    @JsonKey(name: "preferredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1WeightedPodAffinityTerm>? preferredDuringSchedulingIgnoredDuringExecution;
    
    ///If the affinity requirements specified by this field are not met at scheduling time, the
    ///pod will not be scheduled onto the node. If the affinity requirements specified by this
    ///field cease to be met at some point during pod execution (e.g. due to a pod label
    ///update), the system may or may not try to eventually evict the pod from its node. When
    ///there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are
    ///intersected, i.e. all terms must be satisfied.
    @JsonKey(name: "requiredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1PodAffinityTerm>? requiredDuringSchedulingIgnoredDuringExecution;

    IoK8SApiCoreV1PodAffinity({
        this.preferredDuringSchedulingIgnoredDuringExecution,
        this.requiredDuringSchedulingIgnoredDuringExecution,
    });

    factory IoK8SApiCoreV1PodAffinity.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodAffinityFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodAffinityToJson(this);
}


///The weights of all of the matched WeightedPodAffinityTerm fields are added per-node to
///find the most preferred node(s)
@JsonSerializable()
class IoK8SApiCoreV1WeightedPodAffinityTerm {
    
    ///Required. A pod affinity term, associated with the corresponding weight.
    @JsonKey(name: "podAffinityTerm")
    IoK8SApiCoreV1PodAffinityTerm podAffinityTerm;
    
    ///weight associated with matching the corresponding podAffinityTerm, in the range 1-100.
    @JsonKey(name: "weight")
    int weight;

    IoK8SApiCoreV1WeightedPodAffinityTerm({
        required this.podAffinityTerm,
        required this.weight,
    });

    factory IoK8SApiCoreV1WeightedPodAffinityTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1WeightedPodAffinityTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1WeightedPodAffinityTermToJson(this);
}


///Required. A pod affinity term, associated with the corresponding weight.
///
///Defines a set of pods (namely those matching the labelSelector relative to the given
///namespace(s)) that this pod should be co-located (affinity) or not co-located
///(anti-affinity) with, where co-located is defined as running on a node whose value of the
///label with key <topologyKey> matches that of any node on which a pod of the set of pods
///is running
@JsonSerializable()
class IoK8SApiCoreV1PodAffinityTerm {
    
    ///A label query over a set of resources, in this case pods. If it's null, this
    ///PodAffinityTerm matches with no Pods.
    @JsonKey(name: "labelSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? labelSelector;
    
    ///MatchLabelKeys is a set of pod label keys to select which pods will be taken into
    ///consideration. The keys are used to lookup values from the incoming pod labels, those
    ///key-value labels are merged with `labelSelector` as `key in (value)` to select the group
    ///of existing pods which pods will be taken into consideration for the incoming pod's pod
    ///(anti) affinity. Keys that don't exist in the incoming pod labels will be ignored. The
    ///default value is empty. The same key is forbidden to exist in both matchLabelKeys and
    ///labelSelector. Also, matchLabelKeys cannot be set when labelSelector isn't set. This is
    ///an alpha field and requires enabling MatchLabelKeysInPodAffinity feature gate.
    @JsonKey(name: "matchLabelKeys")
    List<String>? matchLabelKeys;
    
    ///MismatchLabelKeys is a set of pod label keys to select which pods will be taken into
    ///consideration. The keys are used to lookup values from the incoming pod labels, those
    ///key-value labels are merged with `labelSelector` as `key notin (value)` to select the
    ///group of existing pods which pods will be taken into consideration for the incoming pod's
    ///pod (anti) affinity. Keys that don't exist in the incoming pod labels will be ignored.
    ///The default value is empty. The same key is forbidden to exist in both mismatchLabelKeys
    ///and labelSelector. Also, mismatchLabelKeys cannot be set when labelSelector isn't set.
    ///This is an alpha field and requires enabling MatchLabelKeysInPodAffinity feature gate.
    @JsonKey(name: "mismatchLabelKeys")
    List<String>? mismatchLabelKeys;
    
    ///namespaces specifies a static list of namespace names that the term applies to. The term
    ///is applied to the union of the namespaces listed in this field and the ones selected by
    ///namespaceSelector. null or empty namespaces list and null namespaceSelector means "this
    ///pod's namespace".
    @JsonKey(name: "namespaces")
    List<String>? namespaces;
    
    ///A label query over the set of namespaces that the term applies to. The term is applied to
    ///the union of the namespaces selected by this field and the ones listed in the namespaces
    ///field. null selector and null or empty namespaces list means "this pod's namespace". An
    ///empty selector ({}) matches all namespaces.
    @JsonKey(name: "namespaceSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? namespaceSelector;
    
    ///This pod should be co-located (affinity) or not co-located (anti-affinity) with the pods
    ///matching the labelSelector in the specified namespaces, where co-located is defined as
    ///running on a node whose value of the label with key topologyKey matches that of any node
    ///on which any of the selected pods is running. Empty topologyKey is not allowed.
    @JsonKey(name: "topologyKey")
    String topologyKey;

    IoK8SApiCoreV1PodAffinityTerm({
        this.labelSelector,
        this.matchLabelKeys,
        this.mismatchLabelKeys,
        this.namespaces,
        this.namespaceSelector,
        required this.topologyKey,
    });

    factory IoK8SApiCoreV1PodAffinityTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodAffinityTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodAffinityTermToJson(this);
}


///Describes pod anti-affinity scheduling rules (e.g. avoid putting this pod in the same
///node, zone, etc. as some other pod(s)).
///
///Pod anti affinity is a group of inter pod anti affinity scheduling rules.
@JsonSerializable()
class IoK8SApiCoreV1PodAntiAffinity {
    
    ///The scheduler will prefer to schedule pods to nodes that satisfy the anti-affinity
    ///expressions specified by this field, but it may choose a node that violates one or more
    ///of the expressions. The node that is most preferred is the one with the greatest sum of
    ///weights, i.e. for each node that meets all of the scheduling requirements (resource
    ///request, requiredDuringScheduling anti-affinity expressions, etc.), compute a sum by
    ///iterating through the elements of this field and adding "weight" to the sum if the node
    ///has pods which matches the corresponding podAffinityTerm; the node(s) with the highest
    ///sum are the most preferred.
    @JsonKey(name: "preferredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1WeightedPodAffinityTerm>? preferredDuringSchedulingIgnoredDuringExecution;
    
    ///If the anti-affinity requirements specified by this field are not met at scheduling time,
    ///the pod will not be scheduled onto the node. If the anti-affinity requirements specified
    ///by this field cease to be met at some point during pod execution (e.g. due to a pod label
    ///update), the system may or may not try to eventually evict the pod from its node. When
    ///there are multiple elements, the lists of nodes corresponding to each podAffinityTerm are
    ///intersected, i.e. all terms must be satisfied.
    @JsonKey(name: "requiredDuringSchedulingIgnoredDuringExecution")
    List<IoK8SApiCoreV1PodAffinityTerm>? requiredDuringSchedulingIgnoredDuringExecution;

    IoK8SApiCoreV1PodAntiAffinity({
        this.preferredDuringSchedulingIgnoredDuringExecution,
        this.requiredDuringSchedulingIgnoredDuringExecution,
    });

    factory IoK8SApiCoreV1PodAntiAffinity.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodAntiAffinityFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodAntiAffinityToJson(this);
}


///A single application container that you want to run within a pod.
@JsonSerializable()
class IoK8SApiCoreV1Container {
    
    ///Arguments to the entrypoint. The container image's CMD is used if this is not provided.
    ///Variable references $(VAR_NAME) are expanded using the container's environment. If a
    ///variable cannot be resolved, the reference in the input string will be unchanged. Double
    ///$$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e.
    ///"$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will
    ///never be expanded, regardless of whether the variable exists or not. Cannot be updated.
    ///More info:
    ///https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    @JsonKey(name: "args")
    List<String>? args;
    
    ///Entrypoint array. Not executed within a shell. The container image's ENTRYPOINT is used
    ///if this is not provided. Variable references $(VAR_NAME) are expanded using the
    ///container's environment. If a variable cannot be resolved, the reference in the input
    ///string will be unchanged. Double $$ are reduced to a single $, which allows for escaping
    ///the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal
    ///"$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the
    ///variable exists or not. Cannot be updated. More info:
    ///https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    @JsonKey(name: "command")
    List<String>? command;
    
    ///List of environment variables to set in the container. Cannot be updated.
    @JsonKey(name: "env")
    List<IoK8SApiCoreV1EnvVar>? env;
    
    ///List of sources to populate environment variables in the container. The keys defined
    ///within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event
    ///when the container is starting. When a key exists in multiple sources, the value
    ///associated with the last source will take precedence. Values defined by an Env with a
    ///duplicate key will take precedence. Cannot be updated.
    @JsonKey(name: "envFrom")
    List<IoK8SApiCoreV1EnvFromSource>? envFrom;
    
    ///Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
    ///This field is optional to allow higher level config management to default or override
    ///container images in workload controllers like Deployments and StatefulSets.
    @JsonKey(name: "image")
    String? image;
    
    ///Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag
    ///is specified, or IfNotPresent otherwise. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/containers/images#updating-images
    @JsonKey(name: "imagePullPolicy")
    String? imagePullPolicy;
    
    ///Actions that the management system should take in response to container lifecycle events.
    ///Cannot be updated.
    @JsonKey(name: "lifecycle")
    IoK8SApiCoreV1Lifecycle? lifecycle;
    
    ///Periodic probe of container liveness. Container will be restarted if the probe fails.
    ///Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "livenessProbe")
    IoK8SApiCoreV1Probe? livenessProbe;
    
    ///Name of the container specified as a DNS_LABEL. Each container in a pod must have a
    ///unique name (DNS_LABEL). Cannot be updated.
    @JsonKey(name: "name")
    String name;
    
    ///List of ports to expose from the container. Not specifying a port here DOES NOT prevent
    ///that port from being exposed. Any port which is listening on the default "0.0.0.0"
    ///address inside a container will be accessible from the network. Modifying this array with
    ///strategic merge patch may corrupt the data. For more information See
    ///https://github.com/kubernetes/kubernetes/issues/108255. Cannot be updated.
    @JsonKey(name: "ports")
    List<IoK8SApiCoreV1ContainerPort>? ports;
    
    ///Periodic probe of container service readiness. Container will be removed from service
    ///endpoints if the probe fails. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "readinessProbe")
    IoK8SApiCoreV1Probe? readinessProbe;
    
    ///Resources resize policy for the container.
    @JsonKey(name: "resizePolicy")
    List<IoK8SApiCoreV1ContainerResizePolicy>? resizePolicy;
    
    ///Compute Resources required by this container. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "resources")
    IoK8SApiCoreV1ResourceRequirements? resources;
    
    ///RestartPolicy defines the restart behavior of individual containers in a pod. This field
    ///may only be set for init containers, and the only allowed value is "Always". For non-init
    ///containers or when this field is not specified, the restart behavior is defined by the
    ///Pod's restart policy and the container type. Setting the RestartPolicy as "Always" for
    ///the init container will have the following effect: this init container will be
    ///continually restarted on exit until all regular containers have terminated. Once all
    ///regular containers have completed, all init containers with restartPolicy "Always" will
    ///be shut down. This lifecycle differs from normal init containers and is often referred to
    ///as a "sidecar" container. Although this init container still starts in the init container
    ///sequence, it does not wait for the container to complete before proceeding to the next
    ///init container. Instead, the next init container starts immediately after this init
    ///container is started, or after any startupProbe has successfully completed.
    @JsonKey(name: "restartPolicy")
    String? restartPolicy;
    
    ///SecurityContext defines the security options the container should be run with. If set,
    ///the fields of SecurityContext override the equivalent fields of PodSecurityContext. More
    ///info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
    @JsonKey(name: "securityContext")
    IoK8SApiCoreV1SecurityContext? securityContext;
    
    ///StartupProbe indicates that the Pod has successfully initialized. If specified, no other
    ///probes are executed until this completes successfully. If this probe fails, the Pod will
    ///be restarted, just as if the livenessProbe failed. This can be used to provide different
    ///probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to
    ///load data or warm a cache, than during steady-state operation. This cannot be updated.
    ///More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "startupProbe")
    IoK8SApiCoreV1Probe? startupProbe;
    
    ///Whether this container should allocate a buffer for stdin in the container runtime. If
    ///this is not set, reads from stdin in the container will always result in EOF. Default is
    ///false.
    @JsonKey(name: "stdin")
    bool? stdin;
    
    ///Whether the container runtime should close the stdin channel after it has been opened by
    ///a single attach. When stdin is true the stdin stream will remain open across multiple
    ///attach sessions. If stdinOnce is set to true, stdin is opened on container start, is
    ///empty until the first client attaches to stdin, and then remains open and accepts data
    ///until the client disconnects, at which time stdin is closed and remains closed until the
    ///container is restarted. If this flag is false, a container processes that reads from
    ///stdin will never receive an EOF. Default is false
    @JsonKey(name: "stdinOnce")
    bool? stdinOnce;
    
    ///Optional: Path at which the file to which the container's termination message will be
    ///written is mounted into the container's filesystem. Message written is intended to be
    ///brief final status, such as an assertion failure message. Will be truncated by the node
    ///if greater than 4096 bytes. The total message length across all containers will be
    ///limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
    @JsonKey(name: "terminationMessagePath")
    String? terminationMessagePath;
    
    ///Indicate how the termination message should be populated. File will use the contents of
    ///terminationMessagePath to populate the container status message on both success and
    ///failure. FallbackToLogsOnError will use the last chunk of container log output if the
    ///termination message file is empty and the container exited with an error. The log output
    ///is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be
    ///updated.
    @JsonKey(name: "terminationMessagePolicy")
    String? terminationMessagePolicy;
    
    ///Whether this container should allocate a TTY for itself, also requires 'stdin' to be
    ///true. Default is false.
    @JsonKey(name: "tty")
    bool? tty;
    
    ///volumeDevices is the list of block devices to be used by the container.
    @JsonKey(name: "volumeDevices")
    List<IoK8SApiCoreV1VolumeDevice>? volumeDevices;
    
    ///Pod volumes to mount into the container's filesystem. Cannot be updated.
    @JsonKey(name: "volumeMounts")
    List<IoK8SApiCoreV1VolumeMount>? volumeMounts;
    
    ///Container's working directory. If not specified, the container runtime's default will be
    ///used, which might be configured in the container image. Cannot be updated.
    @JsonKey(name: "workingDir")
    String? workingDir;

    IoK8SApiCoreV1Container({
        this.args,
        this.command,
        this.env,
        this.envFrom,
        this.image,
        this.imagePullPolicy,
        this.lifecycle,
        this.livenessProbe,
        required this.name,
        this.ports,
        this.readinessProbe,
        this.resizePolicy,
        this.resources,
        this.restartPolicy,
        this.securityContext,
        this.startupProbe,
        this.stdin,
        this.stdinOnce,
        this.terminationMessagePath,
        this.terminationMessagePolicy,
        this.tty,
        this.volumeDevices,
        this.volumeMounts,
        this.workingDir,
    });

    factory IoK8SApiCoreV1Container.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerToJson(this);
}


///EnvVar represents an environment variable present in a Container.
@JsonSerializable()
class IoK8SApiCoreV1EnvVar {
    
    ///Name of the environment variable. Must be a C_IDENTIFIER.
    @JsonKey(name: "name")
    String name;
    
    ///Variable references $(VAR_NAME) are expanded using the previously defined environment
    ///variables in the container and any service environment variables. If a variable cannot be
    ///resolved, the reference in the input string will be unchanged. Double $$ are reduced to a
    ///single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will
    ///produce the string literal "$(VAR_NAME)". Escaped references will never be expanded,
    ///regardless of whether the variable exists or not. Defaults to "".
    @JsonKey(name: "value")
    String? value;
    
    ///Source for the environment variable's value. Cannot be used if value is not empty.
    @JsonKey(name: "valueFrom")
    IoK8SApiCoreV1EnvVarSource? valueFrom;

    IoK8SApiCoreV1EnvVar({
        required this.name,
        this.value,
        this.valueFrom,
    });

    factory IoK8SApiCoreV1EnvVar.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EnvVarFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EnvVarToJson(this);
}


///Source for the environment variable's value. Cannot be used if value is not empty.
///
///EnvVarSource represents a source for the value of an EnvVar.
@JsonSerializable()
class IoK8SApiCoreV1EnvVarSource {
    
    ///Selects a key of a ConfigMap.
    @JsonKey(name: "configMapKeyRef")
    IoK8SApiCoreV1ConfigMapKeySelector? configMapKeyRef;
    
    ///Selects a field of the pod: supports metadata.name, metadata.namespace,
    ///`metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName,
    ///spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
    @JsonKey(name: "fieldRef")
    IoK8SApiCoreV1ObjectFieldSelector? fieldRef;
    
    ///Selects a resource of the container: only resources limits and requests (limits.cpu,
    ///limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and
    ///requests.ephemeral-storage) are currently supported.
    @JsonKey(name: "resourceFieldRef")
    IoK8SApiCoreV1ResourceFieldSelector? resourceFieldRef;
    
    ///Selects a key of a secret in the pod's namespace
    @JsonKey(name: "secretKeyRef")
    IoK8SApiCoreV1SecretKeySelector? secretKeyRef;

    IoK8SApiCoreV1EnvVarSource({
        this.configMapKeyRef,
        this.fieldRef,
        this.resourceFieldRef,
        this.secretKeyRef,
    });

    factory IoK8SApiCoreV1EnvVarSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EnvVarSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EnvVarSourceToJson(this);
}


///Selects a key of a ConfigMap.
///
///Selects a key from a ConfigMap.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapKeySelector {
    
    ///The key to select.
    @JsonKey(name: "key")
    String key;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the ConfigMap or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapKeySelector({
        required this.key,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapKeySelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapKeySelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapKeySelectorToJson(this);
}


///Selects a field of the pod: supports metadata.name, metadata.namespace,
///`metadata.labels['<KEY>']`, `metadata.annotations['<KEY>']`, spec.nodeName,
///spec.serviceAccountName, status.hostIP, status.podIP, status.podIPs.
///
///ObjectFieldSelector selects an APIVersioned field of an object.
///
///Required: Selects a field of the pod: only annotations, labels, name, namespace and uid
///are supported.
@JsonSerializable()
class IoK8SApiCoreV1ObjectFieldSelector {
    
    ///Version of the schema the FieldPath is written in terms of, defaults to "v1".
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Path of the field to select in the specified API version.
    @JsonKey(name: "fieldPath")
    String fieldPath;

    IoK8SApiCoreV1ObjectFieldSelector({
        this.apiVersion,
        required this.fieldPath,
    });

    factory IoK8SApiCoreV1ObjectFieldSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ObjectFieldSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ObjectFieldSelectorToJson(this);
}


///Selects a resource of the container: only resources limits and requests (limits.cpu,
///limits.memory, limits.ephemeral-storage, requests.cpu, requests.memory and
///requests.ephemeral-storage) are currently supported.
///
///ResourceFieldSelector represents container resources (cpu, memory) and their output
///format
///
///Selects a resource of the container: only resources limits and requests (limits.cpu,
///limits.memory, requests.cpu and requests.memory) are currently supported.
@JsonSerializable()
class IoK8SApiCoreV1ResourceFieldSelector {
    
    ///Container name: required for volumes, optional for env vars
    @JsonKey(name: "containerName")
    String? containerName;
    
    ///Specifies the output format of the exposed resources, defaults to "1"
    @JsonKey(name: "divisor")
    dynamic divisor;
    
    ///Required: resource to select
    @JsonKey(name: "resource")
    String resource;

    IoK8SApiCoreV1ResourceFieldSelector({
        this.containerName,
        this.divisor,
        required this.resource,
    });

    factory IoK8SApiCoreV1ResourceFieldSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceFieldSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceFieldSelectorToJson(this);
}


///Selects a key of a secret in the pod's namespace
///
///SecretKeySelector selects a key of a Secret.
@JsonSerializable()
class IoK8SApiCoreV1SecretKeySelector {
    
    ///The key of the secret to select from.  Must be a valid secret key.
    @JsonKey(name: "key")
    String key;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the Secret or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1SecretKeySelector({
        required this.key,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1SecretKeySelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretKeySelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretKeySelectorToJson(this);
}


///EnvFromSource represents the source of a set of ConfigMaps
@JsonSerializable()
class IoK8SApiCoreV1EnvFromSource {
    
    ///The ConfigMap to select from
    @JsonKey(name: "configMapRef")
    IoK8SApiCoreV1ConfigMapEnvSource? configMapRef;
    
    ///An optional identifier to prepend to each key in the ConfigMap. Must be a C_IDENTIFIER.
    @JsonKey(name: "prefix")
    String? prefix;
    
    ///The Secret to select from
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1SecretEnvSource? secretRef;

    IoK8SApiCoreV1EnvFromSource({
        this.configMapRef,
        this.prefix,
        this.secretRef,
    });

    factory IoK8SApiCoreV1EnvFromSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EnvFromSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EnvFromSourceToJson(this);
}


///The ConfigMap to select from
///
///ConfigMapEnvSource selects a ConfigMap to populate the environment variables with.
///
///The contents of the target ConfigMap's Data field will represent the key-value pairs as
///environment variables.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapEnvSource {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the ConfigMap must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapEnvSource({
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapEnvSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapEnvSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapEnvSourceToJson(this);
}


///The Secret to select from
///
///SecretEnvSource selects a Secret to populate the environment variables with.
///
///The contents of the target Secret's Data field will represent the key-value pairs as
///environment variables.
@JsonSerializable()
class IoK8SApiCoreV1SecretEnvSource {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///Specify whether the Secret must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1SecretEnvSource({
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1SecretEnvSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretEnvSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretEnvSourceToJson(this);
}


///Actions that the management system should take in response to container lifecycle events.
///Cannot be updated.
///
///Lifecycle describes actions that the management system should take in response to
///container lifecycle events. For the PostStart and PreStop lifecycle handlers, management
///of the container blocks until the action is complete, unless the container process fails,
///in which case the handler is aborted.
///
///Lifecycle is not allowed for ephemeral containers.
@JsonSerializable()
class IoK8SApiCoreV1Lifecycle {
    
    ///PostStart is called immediately after a container is created. If the handler fails, the
    ///container is terminated and restarted according to its restart policy. Other management
    ///of the container blocks until the hook completes. More info:
    ///https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
    @JsonKey(name: "postStart")
    IoK8SApiCoreV1LifecycleHandler? postStart;
    
    ///PreStop is called immediately before a container is terminated due to an API request or
    ///management event such as liveness/startup probe failure, preemption, resource contention,
    ///etc. The handler is not called if the container crashes or exits. The Pod's termination
    ///grace period countdown begins before the PreStop hook is executed. Regardless of the
    ///outcome of the handler, the container will eventually terminate within the Pod's
    ///termination grace period (unless delayed by finalizers). Other management of the
    ///container blocks until the hook completes or until the termination grace period is
    ///reached. More info:
    ///https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
    @JsonKey(name: "preStop")
    IoK8SApiCoreV1LifecycleHandler? preStop;

    IoK8SApiCoreV1Lifecycle({
        this.postStart,
        this.preStop,
    });

    factory IoK8SApiCoreV1Lifecycle.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LifecycleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LifecycleToJson(this);
}


///PostStart is called immediately after a container is created. If the handler fails, the
///container is terminated and restarted according to its restart policy. Other management
///of the container blocks until the hook completes. More info:
///https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
///
///LifecycleHandler defines a specific action that should be taken in a lifecycle hook. One
///and only one of the fields, except TCPSocket must be specified.
///
///PreStop is called immediately before a container is terminated due to an API request or
///management event such as liveness/startup probe failure, preemption, resource contention,
///etc. The handler is not called if the container crashes or exits. The Pod's termination
///grace period countdown begins before the PreStop hook is executed. Regardless of the
///outcome of the handler, the container will eventually terminate within the Pod's
///termination grace period (unless delayed by finalizers). Other management of the
///container blocks until the hook completes or until the termination grace period is
///reached. More info:
///https://kubernetes.io/docs/concepts/containers/container-lifecycle-hooks/#container-hooks
@JsonSerializable()
class IoK8SApiCoreV1LifecycleHandler {
    
    ///Exec specifies the action to take.
    @JsonKey(name: "exec")
    IoK8SApiCoreV1ExecAction? exec;
    
    ///HTTPGet specifies the http request to perform.
    @JsonKey(name: "httpGet")
    IoK8SApiCoreV1HttpGetAction? httpGet;
    
    ///Sleep represents the duration that the container should sleep before being terminated.
    @JsonKey(name: "sleep")
    IoK8SApiCoreV1SleepAction? sleep;
    
    ///Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward
    ///compatibility. There are no validation of this field and lifecycle hooks will fail in
    ///runtime when tcp handler is specified.
    @JsonKey(name: "tcpSocket")
    IoK8SApiCoreV1TcpSocketAction? tcpSocket;

    IoK8SApiCoreV1LifecycleHandler({
        this.exec,
        this.httpGet,
        this.sleep,
        this.tcpSocket,
    });

    factory IoK8SApiCoreV1LifecycleHandler.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LifecycleHandlerFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LifecycleHandlerToJson(this);
}


///Exec specifies the action to take.
///
///ExecAction describes a "run in container" action.
@JsonSerializable()
class IoK8SApiCoreV1ExecAction {
    
    ///Command is the command line to execute inside the container, the working directory for
    ///the command  is root ('/') in the container's filesystem. The command is simply exec'd,
    ///it is not run inside a shell, so traditional shell instructions ('|', etc) won't work. To
    ///use a shell, you need to explicitly call out to that shell. Exit status of 0 is treated
    ///as live/healthy and non-zero is unhealthy.
    @JsonKey(name: "command")
    List<String>? command;

    IoK8SApiCoreV1ExecAction({
        this.command,
    });

    factory IoK8SApiCoreV1ExecAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ExecActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ExecActionToJson(this);
}


///HTTPGet specifies the http request to perform.
///
///HTTPGetAction describes an action based on HTTP Get requests.
@JsonSerializable()
class IoK8SApiCoreV1HttpGetAction {
    
    ///Host name to connect to, defaults to the pod IP. You probably want to set "Host" in
    ///httpHeaders instead.
    @JsonKey(name: "host")
    String? host;
    
    ///Custom headers to set in the request. HTTP allows repeated headers.
    @JsonKey(name: "httpHeaders")
    List<IoK8SApiCoreV1HttpHeader>? httpHeaders;
    
    ///Path to access on the HTTP server.
    @JsonKey(name: "path")
    String? path;
    
    ///Name or number of the port to access on the container. Number must be in the range 1 to
    ///65535. Name must be an IANA_SVC_NAME.
    @JsonKey(name: "port")
    dynamic port;
    
    ///Scheme to use for connecting to the host. Defaults to HTTP.
    @JsonKey(name: "scheme")
    String? scheme;

    IoK8SApiCoreV1HttpGetAction({
        this.host,
        this.httpHeaders,
        this.path,
        required this.port,
        this.scheme,
    });

    factory IoK8SApiCoreV1HttpGetAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HttpGetActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HttpGetActionToJson(this);
}


///HTTPHeader describes a custom header to be used in HTTP probes
@JsonSerializable()
class IoK8SApiCoreV1HttpHeader {
    
    ///The header field name. This will be canonicalized upon output, so case-variant names will
    ///be understood as the same header.
    @JsonKey(name: "name")
    String name;
    
    ///The header field value
    @JsonKey(name: "value")
    String value;

    IoK8SApiCoreV1HttpHeader({
        required this.name,
        required this.value,
    });

    factory IoK8SApiCoreV1HttpHeader.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HttpHeaderFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HttpHeaderToJson(this);
}


///Sleep represents the duration that the container should sleep before being terminated.
///
///SleepAction describes a "sleep" action.
@JsonSerializable()
class IoK8SApiCoreV1SleepAction {
    
    ///Seconds is the number of seconds to sleep.
    @JsonKey(name: "seconds")
    int seconds;

    IoK8SApiCoreV1SleepAction({
        required this.seconds,
    });

    factory IoK8SApiCoreV1SleepAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SleepActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SleepActionToJson(this);
}


///Deprecated. TCPSocket is NOT supported as a LifecycleHandler and kept for the backward
///compatibility. There are no validation of this field and lifecycle hooks will fail in
///runtime when tcp handler is specified.
///
///TCPSocketAction describes an action based on opening a socket
///
///TCPSocket specifies an action involving a TCP port.
@JsonSerializable()
class IoK8SApiCoreV1TcpSocketAction {
    
    ///Optional: Host name to connect to, defaults to the pod IP.
    @JsonKey(name: "host")
    String? host;
    
    ///Number or name of the port to access on the container. Number must be in the range 1 to
    ///65535. Name must be an IANA_SVC_NAME.
    @JsonKey(name: "port")
    dynamic port;

    IoK8SApiCoreV1TcpSocketAction({
        this.host,
        required this.port,
    });

    factory IoK8SApiCoreV1TcpSocketAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TcpSocketActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TcpSocketActionToJson(this);
}


///Periodic probe of container liveness. Container will be restarted if the probe fails.
///Cannot be updated. More info:
///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
///
///Probe describes a health check to be performed against a container to determine whether
///it is alive or ready to receive traffic.
///
///Periodic probe of container service readiness. Container will be removed from service
///endpoints if the probe fails. Cannot be updated. More info:
///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
///
///StartupProbe indicates that the Pod has successfully initialized. If specified, no other
///probes are executed until this completes successfully. If this probe fails, the Pod will
///be restarted, just as if the livenessProbe failed. This can be used to provide different
///probe parameters at the beginning of a Pod's lifecycle, when it might take a long time to
///load data or warm a cache, than during steady-state operation. This cannot be updated.
///More info:
///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
///
///Probes are not allowed for ephemeral containers.
@JsonSerializable()
class IoK8SApiCoreV1Probe {
    
    ///Exec specifies the action to take.
    @JsonKey(name: "exec")
    IoK8SApiCoreV1ExecAction? exec;
    
    ///Minimum consecutive failures for the probe to be considered failed after having
    ///succeeded. Defaults to 3. Minimum value is 1.
    @JsonKey(name: "failureThreshold")
    int? failureThreshold;
    
    ///GRPC specifies an action involving a GRPC port.
    @JsonKey(name: "grpc")
    IoK8SApiCoreV1GrpcAction? grpc;
    
    ///HTTPGet specifies the http request to perform.
    @JsonKey(name: "httpGet")
    IoK8SApiCoreV1HttpGetAction? httpGet;
    
    ///Number of seconds after the container has started before liveness probes are initiated.
    ///More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "initialDelaySeconds")
    int? initialDelaySeconds;
    
    ///How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1.
    @JsonKey(name: "periodSeconds")
    int? periodSeconds;
    
    ///Minimum consecutive successes for the probe to be considered successful after having
    ///failed. Defaults to 1. Must be 1 for liveness and startup. Minimum value is 1.
    @JsonKey(name: "successThreshold")
    int? successThreshold;
    
    ///TCPSocket specifies an action involving a TCP port.
    @JsonKey(name: "tcpSocket")
    IoK8SApiCoreV1TcpSocketAction? tcpSocket;
    
    ///Optional duration in seconds the pod needs to terminate gracefully upon probe failure.
    ///The grace period is the duration in seconds after the processes running in the pod are
    ///sent a termination signal and the time when the processes are forcibly halted with a kill
    ///signal. Set this value longer than the expected cleanup time for your process. If this
    ///value is nil, the pod's terminationGracePeriodSeconds will be used. Otherwise, this value
    ///overrides the value provided by the pod spec. Value must be non-negative integer. The
    ///value zero indicates stop immediately via the kill signal (no opportunity to shut down).
    ///This is a beta field and requires enabling ProbeTerminationGracePeriod feature gate.
    ///Minimum value is 1. spec.terminationGracePeriodSeconds is used if unset.
    @JsonKey(name: "terminationGracePeriodSeconds")
    int? terminationGracePeriodSeconds;
    
    ///Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is
    ///1. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
    @JsonKey(name: "timeoutSeconds")
    int? timeoutSeconds;

    IoK8SApiCoreV1Probe({
        this.exec,
        this.failureThreshold,
        this.grpc,
        this.httpGet,
        this.initialDelaySeconds,
        this.periodSeconds,
        this.successThreshold,
        this.tcpSocket,
        this.terminationGracePeriodSeconds,
        this.timeoutSeconds,
    });

    factory IoK8SApiCoreV1Probe.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ProbeFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ProbeToJson(this);
}


///GRPC specifies an action involving a GRPC port.
@JsonSerializable()
class IoK8SApiCoreV1GrpcAction {
    
    ///Port number of the gRPC service. Number must be in the range 1 to 65535.
    @JsonKey(name: "port")
    int port;
    
    ///Service is the name of the service to place in the gRPC HealthCheckRequest (see
    ///https://github.com/grpc/grpc/blob/master/doc/health-checking.md).
    ///
    ///If this is not specified, the default behavior is defined by gRPC.
    @JsonKey(name: "service")
    String? service;

    IoK8SApiCoreV1GrpcAction({
        required this.port,
        this.service,
    });

    factory IoK8SApiCoreV1GrpcAction.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GrpcActionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GrpcActionToJson(this);
}


///ContainerPort represents a network port in a single container.
@JsonSerializable()
class IoK8SApiCoreV1ContainerPort {
    
    ///Number of port to expose on the pod's IP address. This must be a valid port number, 0 < x
    ///< 65536.
    @JsonKey(name: "containerPort")
    int containerPort;
    
    ///What host IP to bind the external port to.
    @JsonKey(name: "hostIP")
    String? hostIp;
    
    ///Number of port to expose on the host. If specified, this must be a valid port number, 0 <
    ///x < 65536. If HostNetwork is specified, this must match ContainerPort. Most containers do
    ///not need this.
    @JsonKey(name: "hostPort")
    int? hostPort;
    
    ///If specified, this must be an IANA_SVC_NAME and unique within the pod. Each named port in
    ///a pod must have a unique name. Name for the port that can be referred to by services.
    @JsonKey(name: "name")
    String? name;
    
    ///Protocol for port. Must be UDP, TCP, or SCTP. Defaults to "TCP".
    @JsonKey(name: "protocol")
    String? protocol;

    IoK8SApiCoreV1ContainerPort({
        required this.containerPort,
        this.hostIp,
        this.hostPort,
        this.name,
        this.protocol,
    });

    factory IoK8SApiCoreV1ContainerPort.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerPortFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerPortToJson(this);
}


///ContainerResizePolicy represents resource resize policy for the container.
@JsonSerializable()
class IoK8SApiCoreV1ContainerResizePolicy {
    
    ///Name of the resource to which this resource resize policy applies. Supported values: cpu,
    ///memory.
    @JsonKey(name: "resourceName")
    String resourceName;
    
    ///Restart policy to apply when specified resource is resized. If not specified, it defaults
    ///to NotRequired.
    @JsonKey(name: "restartPolicy")
    String restartPolicy;

    IoK8SApiCoreV1ContainerResizePolicy({
        required this.resourceName,
        required this.restartPolicy,
    });

    factory IoK8SApiCoreV1ContainerResizePolicy.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ContainerResizePolicyFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ContainerResizePolicyToJson(this);
}


///Compute Resources required by this container. Cannot be updated. More info:
///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
///
///ResourceRequirements describes the compute resource requirements.
///
///Resources are not allowed for ephemeral containers. Ephemeral containers use spare
///resources already allocated to the pod.
@JsonSerializable()
class IoK8SApiCoreV1ResourceRequirements {
    
    ///Claims lists the names of resources, defined in spec.resourceClaims, that are used by
    ///this container.
    ///
    ///This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
    ///
    ///This field is immutable. It can only be set for containers.
    @JsonKey(name: "claims")
    List<IoK8SApiCoreV1ResourceClaim>? claims;
    
    ///Limits describes the maximum amount of compute resources allowed. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "limits")
    Map<String, dynamic>? limits;
    
    ///Requests describes the minimum amount of compute resources required. If Requests is
    ///omitted for a container, it defaults to Limits if that is explicitly specified, otherwise
    ///to an implementation-defined value. Requests cannot exceed Limits. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "requests")
    Map<String, dynamic>? requests;

    IoK8SApiCoreV1ResourceRequirements({
        this.claims,
        this.limits,
        this.requests,
    });

    factory IoK8SApiCoreV1ResourceRequirements.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceRequirementsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceRequirementsToJson(this);
}


///ResourceClaim references one entry in PodSpec.ResourceClaims.
@JsonSerializable()
class IoK8SApiCoreV1ResourceClaim {
    
    ///Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this
    ///field is used. It makes that resource available inside a container.
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1ResourceClaim({
        required this.name,
    });

    factory IoK8SApiCoreV1ResourceClaim.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceClaimFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceClaimToJson(this);
}


///SecurityContext defines the security options the container should be run with. If set,
///the fields of SecurityContext override the equivalent fields of PodSecurityContext. More
///info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/
///
///SecurityContext holds security configuration that will be applied to a container. Some
///fields are present in both SecurityContext and PodSecurityContext.  When both are set,
///the values in SecurityContext take precedence.
///
///Optional: SecurityContext defines the security options the ephemeral container should be
///run with. If set, the fields of SecurityContext override the equivalent fields of
///PodSecurityContext.
@JsonSerializable()
class IoK8SApiCoreV1SecurityContext {
    
    ///AllowPrivilegeEscalation controls whether a process can gain more privileges than its
    ///parent process. This bool directly controls if the no_new_privs flag will be set on the
    ///container process. AllowPrivilegeEscalation is true always when the container is: 1) run
    ///as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name
    ///is windows.
    @JsonKey(name: "allowPrivilegeEscalation")
    bool? allowPrivilegeEscalation;
    
    ///appArmorProfile is the AppArmor options to use by this container. If set, this profile
    ///overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name
    ///is windows.
    @JsonKey(name: "appArmorProfile")
    IoK8SApiCoreV1AppArmorProfile? appArmorProfile;
    
    ///The capabilities to add/drop when running containers. Defaults to the default set of
    ///capabilities granted by the container runtime. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "capabilities")
    IoK8SApiCoreV1Capabilities? capabilities;
    
    ///Run container in privileged mode. Processes in privileged containers are essentially
    ///equivalent to root on the host. Defaults to false. Note that this field cannot be set
    ///when spec.os.name is windows.
    @JsonKey(name: "privileged")
    bool? privileged;
    
    ///procMount denotes the type of proc mount to use for the containers. The default is
    ///DefaultProcMount which uses the container runtime defaults for readonly paths and masked
    ///paths. This requires the ProcMountType feature flag to be enabled. Note that this field
    ///cannot be set when spec.os.name is windows.
    @JsonKey(name: "procMount")
    String? procMount;
    
    ///Whether this container has a read-only root filesystem. Default is false. Note that this
    ///field cannot be set when spec.os.name is windows.
    @JsonKey(name: "readOnlyRootFilesystem")
    bool? readOnlyRootFilesystem;
    
    ///The GID to run the entrypoint of the container process. Uses runtime default if unset.
    ///May also be set in PodSecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
    ///this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "runAsGroup")
    int? runAsGroup;
    
    ///Indicates that the container must run as a non-root user. If true, the Kubelet will
    ///validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to
    ///start the container if it does. If unset or false, no such validation will be performed.
    ///May also be set in PodSecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence.
    @JsonKey(name: "runAsNonRoot")
    bool? runAsNonRoot;
    
    ///The UID to run the entrypoint of the container process. Defaults to user specified in
    ///image metadata if unspecified. May also be set in PodSecurityContext.  If set in both
    ///SecurityContext and PodSecurityContext, the value specified in SecurityContext takes
    ///precedence. Note that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "runAsUser")
    int? runAsUser;
    
    ///The seccomp options to use by this container. If seccomp options are provided at both the
    ///pod & container level, the container options override the pod options. Note that this
    ///field cannot be set when spec.os.name is windows.
    @JsonKey(name: "seccompProfile")
    IoK8SApiCoreV1SeccompProfile? seccompProfile;
    
    ///The SELinux context to be applied to the container. If unspecified, the container runtime
    ///will allocate a random SELinux context for each container.  May also be set in
    ///PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
    ///specified in SecurityContext takes precedence. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "seLinuxOptions")
    IoK8SApiCoreV1SeLinuxOptions? seLinuxOptions;
    
    ///The Windows specific settings applied to all containers. If unspecified, the options from
    ///the PodSecurityContext will be used. If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
    ///this field cannot be set when spec.os.name is linux.
    @JsonKey(name: "windowsOptions")
    IoK8SApiCoreV1WindowsSecurityContextOptions? windowsOptions;

    IoK8SApiCoreV1SecurityContext({
        this.allowPrivilegeEscalation,
        this.appArmorProfile,
        this.capabilities,
        this.privileged,
        this.procMount,
        this.readOnlyRootFilesystem,
        this.runAsGroup,
        this.runAsNonRoot,
        this.runAsUser,
        this.seccompProfile,
        this.seLinuxOptions,
        this.windowsOptions,
    });

    factory IoK8SApiCoreV1SecurityContext.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecurityContextFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecurityContextToJson(this);
}


///appArmorProfile is the AppArmor options to use by this container. If set, this profile
///overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name
///is windows.
///
///AppArmorProfile defines a pod or container's AppArmor settings.
///
///appArmorProfile is the AppArmor options to use by the containers in this pod. Note that
///this field cannot be set when spec.os.name is windows.
@JsonSerializable()
class IoK8SApiCoreV1AppArmorProfile {
    
    ///localhostProfile indicates a profile loaded on the node that should be used. The profile
    ///must be preconfigured on the node to work. Must match the loaded name of the profile.
    ///Must be set if and only if type is "Localhost".
    @JsonKey(name: "localhostProfile")
    String? localhostProfile;
    
    ///type indicates which kind of AppArmor profile will be applied. Valid options are:
    ///Localhost - a profile pre-loaded on the node.
    ///RuntimeDefault - the container runtime's default profile.
    ///Unconfined - no AppArmor enforcement.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1AppArmorProfile({
        this.localhostProfile,
        required this.type,
    });

    factory IoK8SApiCoreV1AppArmorProfile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AppArmorProfileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AppArmorProfileToJson(this);
}


///The capabilities to add/drop when running containers. Defaults to the default set of
///capabilities granted by the container runtime. Note that this field cannot be set when
///spec.os.name is windows.
///
///Adds and removes POSIX capabilities from running containers.
@JsonSerializable()
class IoK8SApiCoreV1Capabilities {
    
    ///Added capabilities
    @JsonKey(name: "add")
    List<String>? add;
    
    ///Removed capabilities
    @JsonKey(name: "drop")
    List<String>? drop;

    IoK8SApiCoreV1Capabilities({
        this.add,
        this.drop,
    });

    factory IoK8SApiCoreV1Capabilities.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CapabilitiesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CapabilitiesToJson(this);
}


///The SELinux context to be applied to the container. If unspecified, the container runtime
///will allocate a random SELinux context for each container.  May also be set in
///PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
///specified in SecurityContext takes precedence. Note that this field cannot be set when
///spec.os.name is windows.
///
///SELinuxOptions are the labels to be applied to the container
///
///The SELinux context to be applied to all containers. If unspecified, the container
///runtime will allocate a random SELinux context for each container.  May also be set in
///SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
///specified in SecurityContext takes precedence for that container. Note that this field
///cannot be set when spec.os.name is windows.
@JsonSerializable()
class IoK8SApiCoreV1SeLinuxOptions {
    
    ///Level is SELinux level label that applies to the container.
    @JsonKey(name: "level")
    String? level;
    
    ///Role is a SELinux role label that applies to the container.
    @JsonKey(name: "role")
    String? role;
    
    ///Type is a SELinux type label that applies to the container.
    @JsonKey(name: "type")
    String? type;
    
    ///User is a SELinux user label that applies to the container.
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1SeLinuxOptions({
        this.level,
        this.role,
        this.type,
        this.user,
    });

    factory IoK8SApiCoreV1SeLinuxOptions.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SeLinuxOptionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SeLinuxOptionsToJson(this);
}


///The seccomp options to use by this container. If seccomp options are provided at both the
///pod & container level, the container options override the pod options. Note that this
///field cannot be set when spec.os.name is windows.
///
///SeccompProfile defines a pod/container's seccomp profile settings. Only one profile
///source may be set.
///
///The seccomp options to use by the containers in this pod. Note that this field cannot be
///set when spec.os.name is windows.
@JsonSerializable()
class IoK8SApiCoreV1SeccompProfile {
    
    ///localhostProfile indicates a profile defined in a file on the node should be used. The
    ///profile must be preconfigured on the node to work. Must be a descending path, relative to
    ///the kubelet's configured seccomp profile location. Must be set if type is "Localhost".
    ///Must NOT be set for any other type.
    @JsonKey(name: "localhostProfile")
    String? localhostProfile;
    
    ///type indicates which kind of seccomp profile will be applied. Valid options are:
    ///
    ///Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the
    ///container runtime default profile should be used. Unconfined - no profile should be
    ///applied.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1SeccompProfile({
        this.localhostProfile,
        required this.type,
    });

    factory IoK8SApiCoreV1SeccompProfile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SeccompProfileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SeccompProfileToJson(this);
}


///The Windows specific settings applied to all containers. If unspecified, the options from
///the PodSecurityContext will be used. If set in both SecurityContext and
///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
///this field cannot be set when spec.os.name is linux.
///
///WindowsSecurityContextOptions contain Windows-specific options and credentials.
///
///The Windows specific settings applied to all containers. If unspecified, the options
///within a container's SecurityContext will be used. If set in both SecurityContext and
///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
///this field cannot be set when spec.os.name is linux.
@JsonSerializable()
class IoK8SApiCoreV1WindowsSecurityContextOptions {
    
    ///GMSACredentialSpec is where the GMSA admission webhook
    ///(https://github.com/kubernetes-sigs/windows-gmsa) inlines the contents of the GMSA
    ///credential spec named by the GMSACredentialSpecName field.
    @JsonKey(name: "gmsaCredentialSpec")
    String? gmsaCredentialSpec;
    
    ///GMSACredentialSpecName is the name of the GMSA credential spec to use.
    @JsonKey(name: "gmsaCredentialSpecName")
    String? gmsaCredentialSpecName;
    
    ///HostProcess determines if a container should be run as a 'Host Process' container. All of
    ///a Pod's containers must have the same effective HostProcess value (it is not allowed to
    ///have a mix of HostProcess containers and non-HostProcess containers). In addition, if
    ///HostProcess is true then HostNetwork must also be set to true.
    @JsonKey(name: "hostProcess")
    bool? hostProcess;
    
    ///The UserName in Windows to run the entrypoint of the container process. Defaults to the
    ///user specified in image metadata if unspecified. May also be set in PodSecurityContext.
    ///If set in both SecurityContext and PodSecurityContext, the value specified in
    ///SecurityContext takes precedence.
    @JsonKey(name: "runAsUserName")
    String? runAsUserName;

    IoK8SApiCoreV1WindowsSecurityContextOptions({
        this.gmsaCredentialSpec,
        this.gmsaCredentialSpecName,
        this.hostProcess,
        this.runAsUserName,
    });

    factory IoK8SApiCoreV1WindowsSecurityContextOptions.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1WindowsSecurityContextOptionsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1WindowsSecurityContextOptionsToJson(this);
}


///volumeDevice describes a mapping of a raw block device within a container.
@JsonSerializable()
class IoK8SApiCoreV1VolumeDevice {
    
    ///devicePath is the path inside of the container that the device will be mapped to.
    @JsonKey(name: "devicePath")
    String devicePath;
    
    ///name must match the name of a persistentVolumeClaim in the pod
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1VolumeDevice({
        required this.devicePath,
        required this.name,
    });

    factory IoK8SApiCoreV1VolumeDevice.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeDeviceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeDeviceToJson(this);
}


///VolumeMount describes a mounting of a Volume within a container.
@JsonSerializable()
class IoK8SApiCoreV1VolumeMount {
    
    ///Path within the container at which the volume should be mounted.  Must not contain ':'.
    @JsonKey(name: "mountPath")
    String mountPath;
    
    ///mountPropagation determines how mounts are propagated from the host to container and the
    ///other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
    ///When RecursiveReadOnly is set to IfPossible or to Enabled, MountPropagation must be None
    ///or unspecified (which defaults to None).
    @JsonKey(name: "mountPropagation")
    String? mountPropagation;
    
    ///This must match the Name of a Volume.
    @JsonKey(name: "name")
    String name;
    
    ///Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///RecursiveReadOnly specifies whether read-only mounts should be handled recursively.
    ///
    ///If ReadOnly is false, this field has no meaning and must be unspecified.
    ///
    ///If ReadOnly is true, and this field is set to Disabled, the mount is not made recursively
    ///read-only.  If this field is set to IfPossible, the mount is made recursively read-only,
    ///if it is supported by the container runtime.  If this field is set to Enabled, the mount
    ///is made recursively read-only if it is supported by the container runtime, otherwise the
    ///pod will not be started and an error will be generated to indicate the reason.
    ///
    ///If this field is set to IfPossible or Enabled, MountPropagation must be set to None (or
    ///be unspecified, which defaults to None).
    ///
    ///If this field is not specified, it is treated as an equivalent of Disabled.
    @JsonKey(name: "recursiveReadOnly")
    String? recursiveReadOnly;
    
    ///Path within the volume from which the container's volume should be mounted. Defaults to
    ///"" (volume's root).
    @JsonKey(name: "subPath")
    String? subPath;
    
    ///Expanded path within the volume from which the container's volume should be mounted.
    ///Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded
    ///using the container's environment. Defaults to "" (volume's root). SubPathExpr and
    ///SubPath are mutually exclusive.
    @JsonKey(name: "subPathExpr")
    String? subPathExpr;

    IoK8SApiCoreV1VolumeMount({
        required this.mountPath,
        this.mountPropagation,
        required this.name,
        this.readOnly,
        this.recursiveReadOnly,
        this.subPath,
        this.subPathExpr,
    });

    factory IoK8SApiCoreV1VolumeMount.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeMountFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeMountToJson(this);
}


///Specifies the DNS parameters of a pod. Parameters specified here will be merged to the
///generated DNS configuration based on DNSPolicy.
///
///PodDNSConfig defines the DNS parameters of a pod in addition to those generated from
///DNSPolicy.
@JsonSerializable()
class IoK8SApiCoreV1PodDnsConfig {
    
    ///A list of DNS name server IP addresses. This will be appended to the base nameservers
    ///generated from DNSPolicy. Duplicated nameservers will be removed.
    @JsonKey(name: "nameservers")
    List<String>? nameservers;
    
    ///A list of DNS resolver options. This will be merged with the base options generated from
    ///DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will
    ///override those that appear in the base DNSPolicy.
    @JsonKey(name: "options")
    List<IoK8SApiCoreV1PodDnsConfigOption>? options;
    
    ///A list of DNS search domains for host-name lookup. This will be appended to the base
    ///search paths generated from DNSPolicy. Duplicated search paths will be removed.
    @JsonKey(name: "searches")
    List<String>? searches;

    IoK8SApiCoreV1PodDnsConfig({
        this.nameservers,
        this.options,
        this.searches,
    });

    factory IoK8SApiCoreV1PodDnsConfig.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodDnsConfigFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodDnsConfigToJson(this);
}


///PodDNSConfigOption defines DNS resolver options of a pod.
@JsonSerializable()
class IoK8SApiCoreV1PodDnsConfigOption {
    
    ///Required.
    @JsonKey(name: "name")
    String? name;
    @JsonKey(name: "value")
    String? value;

    IoK8SApiCoreV1PodDnsConfigOption({
        this.name,
        this.value,
    });

    factory IoK8SApiCoreV1PodDnsConfigOption.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodDnsConfigOptionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodDnsConfigOptionToJson(this);
}


///An EphemeralContainer is a temporary container that you may add to an existing Pod for
///user-initiated activities such as debugging. Ephemeral containers have no resource or
///scheduling guarantees, and they will not be restarted when they exit or when a Pod is
///removed or restarted. The kubelet may evict a Pod if an ephemeral container causes the
///Pod to exceed its resource allocation.
///
///To add an ephemeral container, use the ephemeralcontainers subresource of an existing
///Pod. Ephemeral containers may not be removed or restarted.
@JsonSerializable()
class IoK8SApiCoreV1EphemeralContainer {
    
    ///Arguments to the entrypoint. The image's CMD is used if this is not provided. Variable
    ///references $(VAR_NAME) are expanded using the container's environment. If a variable
    ///cannot be resolved, the reference in the input string will be unchanged. Double $$ are
    ///reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e.
    ///"$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will
    ///never be expanded, regardless of whether the variable exists or not. Cannot be updated.
    ///More info:
    ///https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    @JsonKey(name: "args")
    List<String>? args;
    
    ///Entrypoint array. Not executed within a shell. The image's ENTRYPOINT is used if this is
    ///not provided. Variable references $(VAR_NAME) are expanded using the container's
    ///environment. If a variable cannot be resolved, the reference in the input string will be
    ///unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME)
    ///syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped
    ///references will never be expanded, regardless of whether the variable exists or not.
    ///Cannot be updated. More info:
    ///https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
    @JsonKey(name: "command")
    List<String>? command;
    
    ///List of environment variables to set in the container. Cannot be updated.
    @JsonKey(name: "env")
    List<IoK8SApiCoreV1EnvVar>? env;
    
    ///List of sources to populate environment variables in the container. The keys defined
    ///within a source must be a C_IDENTIFIER. All invalid keys will be reported as an event
    ///when the container is starting. When a key exists in multiple sources, the value
    ///associated with the last source will take precedence. Values defined by an Env with a
    ///duplicate key will take precedence. Cannot be updated.
    @JsonKey(name: "envFrom")
    List<IoK8SApiCoreV1EnvFromSource>? envFrom;
    
    ///Container image name. More info: https://kubernetes.io/docs/concepts/containers/images
    @JsonKey(name: "image")
    String? image;
    
    ///Image pull policy. One of Always, Never, IfNotPresent. Defaults to Always if :latest tag
    ///is specified, or IfNotPresent otherwise. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/containers/images#updating-images
    @JsonKey(name: "imagePullPolicy")
    String? imagePullPolicy;
    
    ///Lifecycle is not allowed for ephemeral containers.
    @JsonKey(name: "lifecycle")
    IoK8SApiCoreV1Lifecycle? lifecycle;
    
    ///Probes are not allowed for ephemeral containers.
    @JsonKey(name: "livenessProbe")
    IoK8SApiCoreV1Probe? livenessProbe;
    
    ///Name of the ephemeral container specified as a DNS_LABEL. This name must be unique among
    ///all containers, init containers and ephemeral containers.
    @JsonKey(name: "name")
    String name;
    
    ///Ports are not allowed for ephemeral containers.
    @JsonKey(name: "ports")
    List<IoK8SApiCoreV1ContainerPort>? ports;
    
    ///Probes are not allowed for ephemeral containers.
    @JsonKey(name: "readinessProbe")
    IoK8SApiCoreV1Probe? readinessProbe;
    
    ///Resources resize policy for the container.
    @JsonKey(name: "resizePolicy")
    List<IoK8SApiCoreV1ContainerResizePolicy>? resizePolicy;
    
    ///Resources are not allowed for ephemeral containers. Ephemeral containers use spare
    ///resources already allocated to the pod.
    @JsonKey(name: "resources")
    IoK8SApiCoreV1ResourceRequirements? resources;
    
    ///Restart policy for the container to manage the restart behavior of each container within
    ///a pod. This may only be set for init containers. You cannot set this field on ephemeral
    ///containers.
    @JsonKey(name: "restartPolicy")
    String? restartPolicy;
    
    ///Optional: SecurityContext defines the security options the ephemeral container should be
    ///run with. If set, the fields of SecurityContext override the equivalent fields of
    ///PodSecurityContext.
    @JsonKey(name: "securityContext")
    IoK8SApiCoreV1SecurityContext? securityContext;
    
    ///Probes are not allowed for ephemeral containers.
    @JsonKey(name: "startupProbe")
    IoK8SApiCoreV1Probe? startupProbe;
    
    ///Whether this container should allocate a buffer for stdin in the container runtime. If
    ///this is not set, reads from stdin in the container will always result in EOF. Default is
    ///false.
    @JsonKey(name: "stdin")
    bool? stdin;
    
    ///Whether the container runtime should close the stdin channel after it has been opened by
    ///a single attach. When stdin is true the stdin stream will remain open across multiple
    ///attach sessions. If stdinOnce is set to true, stdin is opened on container start, is
    ///empty until the first client attaches to stdin, and then remains open and accepts data
    ///until the client disconnects, at which time stdin is closed and remains closed until the
    ///container is restarted. If this flag is false, a container processes that reads from
    ///stdin will never receive an EOF. Default is false
    @JsonKey(name: "stdinOnce")
    bool? stdinOnce;
    
    ///If set, the name of the container from PodSpec that this ephemeral container targets. The
    ///ephemeral container will be run in the namespaces (IPC, PID, etc) of this container. If
    ///not set then the ephemeral container uses the namespaces configured in the Pod spec.
    ///
    ///The container runtime must implement support for this feature. If the runtime does not
    ///support namespace targeting then the result of setting this field is undefined.
    @JsonKey(name: "targetContainerName")
    String? targetContainerName;
    
    ///Optional: Path at which the file to which the container's termination message will be
    ///written is mounted into the container's filesystem. Message written is intended to be
    ///brief final status, such as an assertion failure message. Will be truncated by the node
    ///if greater than 4096 bytes. The total message length across all containers will be
    ///limited to 12kb. Defaults to /dev/termination-log. Cannot be updated.
    @JsonKey(name: "terminationMessagePath")
    String? terminationMessagePath;
    
    ///Indicate how the termination message should be populated. File will use the contents of
    ///terminationMessagePath to populate the container status message on both success and
    ///failure. FallbackToLogsOnError will use the last chunk of container log output if the
    ///termination message file is empty and the container exited with an error. The log output
    ///is limited to 2048 bytes or 80 lines, whichever is smaller. Defaults to File. Cannot be
    ///updated.
    @JsonKey(name: "terminationMessagePolicy")
    String? terminationMessagePolicy;
    
    ///Whether this container should allocate a TTY for itself, also requires 'stdin' to be
    ///true. Default is false.
    @JsonKey(name: "tty")
    bool? tty;
    
    ///volumeDevices is the list of block devices to be used by the container.
    @JsonKey(name: "volumeDevices")
    List<IoK8SApiCoreV1VolumeDevice>? volumeDevices;
    
    ///Pod volumes to mount into the container's filesystem. Subpath mounts are not allowed for
    ///ephemeral containers. Cannot be updated.
    @JsonKey(name: "volumeMounts")
    List<IoK8SApiCoreV1VolumeMount>? volumeMounts;
    
    ///Container's working directory. If not specified, the container runtime's default will be
    ///used, which might be configured in the container image. Cannot be updated.
    @JsonKey(name: "workingDir")
    String? workingDir;

    IoK8SApiCoreV1EphemeralContainer({
        this.args,
        this.command,
        this.env,
        this.envFrom,
        this.image,
        this.imagePullPolicy,
        this.lifecycle,
        this.livenessProbe,
        required this.name,
        this.ports,
        this.readinessProbe,
        this.resizePolicy,
        this.resources,
        this.restartPolicy,
        this.securityContext,
        this.startupProbe,
        this.stdin,
        this.stdinOnce,
        this.targetContainerName,
        this.terminationMessagePath,
        this.terminationMessagePolicy,
        this.tty,
        this.volumeDevices,
        this.volumeMounts,
        this.workingDir,
    });

    factory IoK8SApiCoreV1EphemeralContainer.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EphemeralContainerFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EphemeralContainerToJson(this);
}


///HostAlias holds the mapping between IP and hostnames that will be injected as an entry in
///the pod's hosts file.
@JsonSerializable()
class IoK8SApiCoreV1HostAlias {
    
    ///Hostnames for the above IP address.
    @JsonKey(name: "hostnames")
    List<String>? hostnames;
    
    ///IP address of the host file entry.
    @JsonKey(name: "ip")
    String ip;

    IoK8SApiCoreV1HostAlias({
        this.hostnames,
        required this.ip,
    });

    factory IoK8SApiCoreV1HostAlias.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HostAliasFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HostAliasToJson(this);
}


///LocalObjectReference contains enough information to let you locate the referenced object
///inside the same namespace.
///
///secretRef is Optional: SecretRef is reference to the authentication secret for User,
///default is empty. More info:
///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
///
///secretRef is optional: points to a secret object containing parameters used to connect to
///OpenStack.
///
///nodePublishSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
///calls. This field is optional, and  may be empty if no secret is required. If the secret
///object contains more than one secret, all secret references are passed.
///
///secretRef is Optional: secretRef is reference to the secret object containing sensitive
///information to pass to the plugin scripts. This may be empty if no secret object is
///specified. If the secret object contains more than one secret, all secrets are passed to
///the plugin scripts.
///
///secretRef is the CHAP Secret for iSCSI target and initiator authentication
///
///secretRef is name of the authentication secret for RBDUser. If provided overrides
///keyring. Default is nil. More info:
///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
///
///secretRef references to the secret for ScaleIO user and other sensitive information. If
///this is not provided, Login operation will fail.
///
///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
///not specified, default values will be attempted.
@JsonSerializable()
class IoK8SApiCoreV1LocalObjectReference {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;

    IoK8SApiCoreV1LocalObjectReference({
        this.name,
    });

    factory IoK8SApiCoreV1LocalObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LocalObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LocalObjectReferenceToJson(this);
}


///Specifies the OS of the containers in the pod. Some pod and container fields are
///restricted if this is set.
///
///If the OS field is set to linux, the following fields must be unset:
///-securityContext.windowsOptions
///
///If the OS field is set to windows, following fields must be unset: - spec.hostPID -
///spec.hostIPC - spec.hostUsers - spec.securityContext.appArmorProfile -
///spec.securityContext.seLinuxOptions - spec.securityContext.seccompProfile -
///spec.securityContext.fsGroup - spec.securityContext.fsGroupChangePolicy -
///spec.securityContext.sysctls - spec.shareProcessNamespace -
///spec.securityContext.runAsUser - spec.securityContext.runAsGroup -
///spec.securityContext.supplementalGroups -
///spec.containers[*].securityContext.appArmorProfile -
///spec.containers[*].securityContext.seLinuxOptions -
///spec.containers[*].securityContext.seccompProfile -
///spec.containers[*].securityContext.capabilities -
///spec.containers[*].securityContext.readOnlyRootFilesystem -
///spec.containers[*].securityContext.privileged -
///spec.containers[*].securityContext.allowPrivilegeEscalation -
///spec.containers[*].securityContext.procMount -
///spec.containers[*].securityContext.runAsUser -
///spec.containers[*].securityContext.runAsGroup
///
///PodOS defines the OS parameters of a pod.
@JsonSerializable()
class IoK8SApiCoreV1PodOs {
    
    ///Name is the name of the operating system. The currently supported values are linux and
    ///windows. Additional value may be defined in future and can be one of:
    ///https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration
    ///Clients should expect to handle additional values and treat unrecognized values in this
    ///field as os: null
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1PodOs({
        required this.name,
    });

    factory IoK8SApiCoreV1PodOs.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodOsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodOsToJson(this);
}


///PodReadinessGate contains the reference to a pod condition
@JsonSerializable()
class IoK8SApiCoreV1PodReadinessGate {
    
    ///ConditionType refers to a condition in the pod's condition list with matching type.
    @JsonKey(name: "conditionType")
    String conditionType;

    IoK8SApiCoreV1PodReadinessGate({
        required this.conditionType,
    });

    factory IoK8SApiCoreV1PodReadinessGate.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodReadinessGateFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodReadinessGateToJson(this);
}


///PodResourceClaim references exactly one ResourceClaim through a ClaimSource. It adds a
///name to it that uniquely identifies the ResourceClaim inside the Pod. Containers that
///need access to the ResourceClaim reference it with this name.
@JsonSerializable()
class IoK8SApiCoreV1PodResourceClaim {
    
    ///Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
    @JsonKey(name: "name")
    String name;
    
    ///Source describes where to find the ResourceClaim.
    @JsonKey(name: "source")
    IoK8SApiCoreV1ClaimSource? source;

    IoK8SApiCoreV1PodResourceClaim({
        required this.name,
        this.source,
    });

    factory IoK8SApiCoreV1PodResourceClaim.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodResourceClaimFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodResourceClaimToJson(this);
}


///Source describes where to find the ResourceClaim.
///
///ClaimSource describes a reference to a ResourceClaim.
///
///Exactly one of these fields should be set.  Consumers of this type must treat an empty
///object as if it has an unknown value.
@JsonSerializable()
class IoK8SApiCoreV1ClaimSource {
    
    ///ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
    @JsonKey(name: "resourceClaimName")
    String? resourceClaimName;
    
    ///ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same
    ///namespace as this pod.
    ///
    ///The template will be used to create a new ResourceClaim, which will be bound to this pod.
    ///When this pod is deleted, the ResourceClaim will also be deleted. The pod name and
    ///resource name, along with a generated component, will be used to form a unique name for
    ///the ResourceClaim, which will be recorded in pod.status.resourceClaimStatuses.
    ///
    ///This field is immutable and no changes will be made to the corresponding ResourceClaim by
    ///the control plane after creating the ResourceClaim.
    @JsonKey(name: "resourceClaimTemplateName")
    String? resourceClaimTemplateName;

    IoK8SApiCoreV1ClaimSource({
        this.resourceClaimName,
        this.resourceClaimTemplateName,
    });

    factory IoK8SApiCoreV1ClaimSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ClaimSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ClaimSourceToJson(this);
}


///PodSchedulingGate is associated to a Pod to guard its scheduling.
@JsonSerializable()
class IoK8SApiCoreV1PodSchedulingGate {
    
    ///Name of the scheduling gate. Each scheduling gate must have a unique name field.
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1PodSchedulingGate({
        required this.name,
    });

    factory IoK8SApiCoreV1PodSchedulingGate.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodSchedulingGateFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodSchedulingGateToJson(this);
}


///SecurityContext holds pod-level security attributes and common container settings.
///Optional: Defaults to empty.  See type description for default values of each field.
///
///PodSecurityContext holds pod-level security attributes and common container settings.
///Some fields are also present in container.securityContext.  Field values of
///container.securityContext take precedence over field values of PodSecurityContext.
@JsonSerializable()
class IoK8SApiCoreV1PodSecurityContext {
    
    ///appArmorProfile is the AppArmor options to use by the containers in this pod. Note that
    ///this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "appArmorProfile")
    IoK8SApiCoreV1AppArmorProfile? appArmorProfile;
    
    ///A special supplemental group that applies to all containers in a pod. Some volume types
    ///allow the Kubelet to change the ownership of that volume to be owned by the pod:
    ///
    ///1. The owning GID will be the FSGroup 2. The setgid bit is set (new files created in the
    ///volume will be owned by FSGroup) 3. The permission bits are OR'd with rw-rw----
    ///
    ///If unset, the Kubelet will not modify the ownership and permissions of any volume. Note
    ///that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "fsGroup")
    int? fsGroup;
    
    ///fsGroupChangePolicy defines behavior of changing ownership and permission of the volume
    ///before being exposed inside Pod. This field will only apply to volume types which support
    ///fsGroup based ownership(and permissions). It will have no effect on ephemeral volume
    ///types such as: secret, configmaps and emptydir. Valid values are "OnRootMismatch" and
    ///"Always". If not specified, "Always" is used. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "fsGroupChangePolicy")
    String? fsGroupChangePolicy;
    
    ///The GID to run the entrypoint of the container process. Uses runtime default if unset.
    ///May also be set in SecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence for that
    ///container. Note that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "runAsGroup")
    int? runAsGroup;
    
    ///Indicates that the container must run as a non-root user. If true, the Kubelet will
    ///validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to
    ///start the container if it does. If unset or false, no such validation will be performed.
    ///May also be set in SecurityContext.  If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence.
    @JsonKey(name: "runAsNonRoot")
    bool? runAsNonRoot;
    
    ///The UID to run the entrypoint of the container process. Defaults to user specified in
    ///image metadata if unspecified. May also be set in SecurityContext.  If set in both
    ///SecurityContext and PodSecurityContext, the value specified in SecurityContext takes
    ///precedence for that container. Note that this field cannot be set when spec.os.name is
    ///windows.
    @JsonKey(name: "runAsUser")
    int? runAsUser;
    
    ///The seccomp options to use by the containers in this pod. Note that this field cannot be
    ///set when spec.os.name is windows.
    @JsonKey(name: "seccompProfile")
    IoK8SApiCoreV1SeccompProfile? seccompProfile;
    
    ///The SELinux context to be applied to all containers. If unspecified, the container
    ///runtime will allocate a random SELinux context for each container.  May also be set in
    ///SecurityContext.  If set in both SecurityContext and PodSecurityContext, the value
    ///specified in SecurityContext takes precedence for that container. Note that this field
    ///cannot be set when spec.os.name is windows.
    @JsonKey(name: "seLinuxOptions")
    IoK8SApiCoreV1SeLinuxOptions? seLinuxOptions;
    
    ///A list of groups applied to the first process run in each container, in addition to the
    ///container's primary GID, the fsGroup (if specified), and group memberships defined in the
    ///container image for the uid of the container process. If unspecified, no additional
    ///groups are added to any container. Note that group memberships defined in the container
    ///image for the uid of the container process are still effective, even if they are not
    ///included in this list. Note that this field cannot be set when spec.os.name is windows.
    @JsonKey(name: "supplementalGroups")
    List<int>? supplementalGroups;
    
    ///Sysctls hold a list of namespaced sysctls used for the pod. Pods with unsupported sysctls
    ///(by the container runtime) might fail to launch. Note that this field cannot be set when
    ///spec.os.name is windows.
    @JsonKey(name: "sysctls")
    List<IoK8SApiCoreV1Sysctl>? sysctls;
    
    ///The Windows specific settings applied to all containers. If unspecified, the options
    ///within a container's SecurityContext will be used. If set in both SecurityContext and
    ///PodSecurityContext, the value specified in SecurityContext takes precedence. Note that
    ///this field cannot be set when spec.os.name is linux.
    @JsonKey(name: "windowsOptions")
    IoK8SApiCoreV1WindowsSecurityContextOptions? windowsOptions;

    IoK8SApiCoreV1PodSecurityContext({
        this.appArmorProfile,
        this.fsGroup,
        this.fsGroupChangePolicy,
        this.runAsGroup,
        this.runAsNonRoot,
        this.runAsUser,
        this.seccompProfile,
        this.seLinuxOptions,
        this.supplementalGroups,
        this.sysctls,
        this.windowsOptions,
    });

    factory IoK8SApiCoreV1PodSecurityContext.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PodSecurityContextFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PodSecurityContextToJson(this);
}


///Sysctl defines a kernel parameter to be set
@JsonSerializable()
class IoK8SApiCoreV1Sysctl {
    
    ///Name of a property to set
    @JsonKey(name: "name")
    String name;
    
    ///Value of a property to set
    @JsonKey(name: "value")
    String value;

    IoK8SApiCoreV1Sysctl({
        required this.name,
        required this.value,
    });

    factory IoK8SApiCoreV1Sysctl.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SysctlFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SysctlToJson(this);
}


///The pod this Toleration is attached to tolerates any taint that matches the triple
///<key,value,effect> using the matching operator <operator>.
@JsonSerializable()
class IoK8SApiCoreV1Toleration {
    
    ///Effect indicates the taint effect to match. Empty means match all taint effects. When
    ///specified, allowed values are NoSchedule, PreferNoSchedule and NoExecute.
    @JsonKey(name: "effect")
    String? effect;
    
    ///Key is the taint key that the toleration applies to. Empty means match all taint keys. If
    ///the key is empty, operator must be Exists; this combination means to match all values and
    ///all keys.
    @JsonKey(name: "key")
    String? key;
    
    ///Operator represents a key's relationship to the value. Valid operators are Exists and
    ///Equal. Defaults to Equal. Exists is equivalent to wildcard for value, so that a pod can
    ///tolerate all taints of a particular category.
    @JsonKey(name: "operator")
    String? ioK8SApiCoreV1TolerationOperator;
    
    ///TolerationSeconds represents the period of time the toleration (which must be of effect
    ///NoExecute, otherwise this field is ignored) tolerates the taint. By default, it is not
    ///set, which means tolerate the taint forever (do not evict). Zero and negative values will
    ///be treated as 0 (evict immediately) by the system.
    @JsonKey(name: "tolerationSeconds")
    int? tolerationSeconds;
    
    ///Value is the taint value the toleration matches to. If the operator is Exists, the value
    ///should be empty, otherwise just a regular string.
    @JsonKey(name: "value")
    String? value;

    IoK8SApiCoreV1Toleration({
        this.effect,
        this.key,
        this.ioK8SApiCoreV1TolerationOperator,
        this.tolerationSeconds,
        this.value,
    });

    factory IoK8SApiCoreV1Toleration.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TolerationFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TolerationToJson(this);
}


///TopologySpreadConstraint specifies how to spread matching pods among the given topology.
@JsonSerializable()
class IoK8SApiCoreV1TopologySpreadConstraint {
    
    ///LabelSelector is used to find matching pods. Pods that match this label selector are
    ///counted to determine the number of pods in their corresponding topology domain.
    @JsonKey(name: "labelSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? labelSelector;
    
    ///MatchLabelKeys is a set of pod label keys to select the pods over which spreading will be
    ///calculated. The keys are used to lookup values from the incoming pod labels, those
    ///key-value labels are ANDed with labelSelector to select the group of existing pods over
    ///which spreading will be calculated for the incoming pod. The same key is forbidden to
    ///exist in both MatchLabelKeys and LabelSelector. MatchLabelKeys cannot be set when
    ///LabelSelector isn't set. Keys that don't exist in the incoming pod labels will be
    ///ignored. A null or empty list means only match against labelSelector.
    ///
    ///This is a beta field and requires the MatchLabelKeysInPodTopologySpread feature gate to
    ///be enabled (enabled by default).
    @JsonKey(name: "matchLabelKeys")
    List<String>? matchLabelKeys;
    
    ///MaxSkew describes the degree to which pods may be unevenly distributed. When
    ///`whenUnsatisfiable=DoNotSchedule`, it is the maximum permitted difference between the
    ///number of matching pods in the target topology and the global minimum. The global minimum
    ///is the minimum number of matching pods in an eligible domain or zero if the number of
    ///eligible domains is less than MinDomains. For example, in a 3-zone cluster, MaxSkew is
    ///set to 1, and pods with the same labelSelector spread as 2/2/1: In this case, the global
    ///minimum is 1. | zone1 | zone2 | zone3 | |  P P  |  P P  |   P   | - if MaxSkew is 1,
    ///incoming pod can only be scheduled to zone3 to become 2/2/2; scheduling it onto
    ///zone1(zone2) would make the ActualSkew(3-1) on zone1(zone2) violate MaxSkew(1). - if
    ///MaxSkew is 2, incoming pod can be scheduled onto any zone. When
    ///`whenUnsatisfiable=ScheduleAnyway`, it is used to give higher precedence to topologies
    ///that satisfy it. It's a required field. Default value is 1 and 0 is not allowed.
    @JsonKey(name: "maxSkew")
    int maxSkew;
    
    ///MinDomains indicates a minimum number of eligible domains. When the number of eligible
    ///domains with matching topology keys is less than minDomains, Pod Topology Spread treats
    ///"global minimum" as 0, and then the calculation of Skew is performed. And when the number
    ///of eligible domains with matching topology keys equals or greater than minDomains, this
    ///value has no effect on scheduling. As a result, when the number of eligible domains is
    ///less than minDomains, scheduler won't schedule more than maxSkew Pods to those domains.
    ///If value is nil, the constraint behaves as if MinDomains is equal to 1. Valid values are
    ///integers greater than 0. When value is not nil, WhenUnsatisfiable must be DoNotSchedule.
    ///
    ///For example, in a 3-zone cluster, MaxSkew is set to 2, MinDomains is set to 5 and pods
    ///with the same labelSelector spread as 2/2/2: | zone1 | zone2 | zone3 | |  P P  |  P P  |
    ///P P  | The number of domains is less than 5(MinDomains), so "global minimum" is treated
    ///as 0. In this situation, new pod with the same labelSelector cannot be scheduled, because
    ///computed skew will be 3(3 - 0) if new Pod is scheduled to any of the three zones, it will
    ///violate MaxSkew.
    @JsonKey(name: "minDomains")
    int? minDomains;
    
    ///NodeAffinityPolicy indicates how we will treat Pod's nodeAffinity/nodeSelector when
    ///calculating pod topology spread skew. Options are: - Honor: only nodes matching
    ///nodeAffinity/nodeSelector are included in the calculations. - Ignore:
    ///nodeAffinity/nodeSelector are ignored. All nodes are included in the calculations.
    ///
    ///If this value is nil, the behavior is equivalent to the Honor policy. This is a
    ///beta-level feature default enabled by the NodeInclusionPolicyInPodTopologySpread feature
    ///flag.
    @JsonKey(name: "nodeAffinityPolicy")
    String? nodeAffinityPolicy;
    
    ///NodeTaintsPolicy indicates how we will treat node taints when calculating pod topology
    ///spread skew. Options are: - Honor: nodes without taints, along with tainted nodes for
    ///which the incoming pod has a toleration, are included. - Ignore: node taints are ignored.
    ///All nodes are included.
    ///
    ///If this value is nil, the behavior is equivalent to the Ignore policy. This is a
    ///beta-level feature default enabled by the NodeInclusionPolicyInPodTopologySpread feature
    ///flag.
    @JsonKey(name: "nodeTaintsPolicy")
    String? nodeTaintsPolicy;
    
    ///TopologyKey is the key of node labels. Nodes that have a label with this key and
    ///identical values are considered to be in the same topology. We consider each <key, value>
    ///as a "bucket", and try to put balanced number of pods into each bucket. We define a
    ///domain as a particular instance of a topology. Also, we define an eligible domain as a
    ///domain whose nodes meet the requirements of nodeAffinityPolicy and nodeTaintsPolicy. e.g.
    ///If TopologyKey is "kubernetes.io/hostname", each Node is a domain of that topology. And,
    ///if TopologyKey is "topology.kubernetes.io/zone", each zone is a domain of that topology.
    ///It's a required field.
    @JsonKey(name: "topologyKey")
    String topologyKey;
    
    ///WhenUnsatisfiable indicates how to deal with a pod if it doesn't satisfy the spread
    ///constraint. - DoNotSchedule (default) tells the scheduler not to schedule it. -
    ///ScheduleAnyway tells the scheduler to schedule the pod in any location,
    ///but giving higher precedence to topologies that would help reduce the
    ///skew.
    ///A constraint is considered "Unsatisfiable" for an incoming pod if and only if every
    ///possible node assignment for that pod would violate "MaxSkew" on some topology. For
    ///example, in a 3-zone cluster, MaxSkew is set to 1, and pods with the same labelSelector
    ///spread as 3/1/1: | zone1 | zone2 | zone3 | | P P P |   P   |   P   | If WhenUnsatisfiable
    ///is set to DoNotSchedule, incoming pod can only be scheduled to zone2(zone3) to become
    ///3/2/1(3/1/2) as ActualSkew(2-1) on zone2(zone3) satisfies MaxSkew(1). In other words, the
    ///cluster can still be imbalanced, but scheduler won't make it *more* imbalanced. It's a
    ///required field.
    @JsonKey(name: "whenUnsatisfiable")
    String whenUnsatisfiable;

    IoK8SApiCoreV1TopologySpreadConstraint({
        this.labelSelector,
        this.matchLabelKeys,
        required this.maxSkew,
        this.minDomains,
        this.nodeAffinityPolicy,
        this.nodeTaintsPolicy,
        required this.topologyKey,
        required this.whenUnsatisfiable,
    });

    factory IoK8SApiCoreV1TopologySpreadConstraint.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TopologySpreadConstraintFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TopologySpreadConstraintToJson(this);
}


///Volume represents a named volume in a pod that may be accessed by any container in the
///pod.
@JsonSerializable()
class IoK8SApiCoreV1Volume {
    
    ///awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
    ///machine and then exposed to the pod. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "awsElasticBlockStore")
    IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource? awsElasticBlockStore;
    
    ///azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    @JsonKey(name: "azureDisk")
    IoK8SApiCoreV1AzureDiskVolumeSource? azureDisk;
    
    ///azureFile represents an Azure File Service mount on the host and bind mount to the pod.
    @JsonKey(name: "azureFile")
    IoK8SApiCoreV1AzureFileVolumeSource? azureFile;
    
    ///cephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    @JsonKey(name: "cephfs")
    IoK8SApiCoreV1CephFsVolumeSource? cephfs;
    
    ///cinder represents a cinder volume attached and mounted on kubelets host machine. More
    ///info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "cinder")
    IoK8SApiCoreV1CinderVolumeSource? cinder;
    
    ///configMap represents a configMap that should populate this volume
    @JsonKey(name: "configMap")
    IoK8SApiCoreV1ConfigMapVolumeSource? configMap;
    
    ///csi (Container Storage Interface) represents ephemeral storage that is handled by certain
    ///external CSI drivers (Beta feature).
    @JsonKey(name: "csi")
    IoK8SApiCoreV1CsiVolumeSource? csi;
    
    ///downwardAPI represents downward API about the pod that should populate this volume
    @JsonKey(name: "downwardAPI")
    IoK8SApiCoreV1DownwardApiVolumeSource? downwardApi;
    
    ///emptyDir represents a temporary directory that shares a pod's lifetime. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    @JsonKey(name: "emptyDir")
    IoK8SApiCoreV1EmptyDirVolumeSource? emptyDir;
    
    ///ephemeral represents a volume that is handled by a cluster storage driver. The volume's
    ///lifecycle is tied to the pod that defines it - it will be created before the pod starts,
    ///and deleted when the pod is removed.
    ///
    ///Use this if: a) the volume is only needed while the pod runs, b) features of normal
    ///volumes like restoring from snapshot or capacity
    ///tracking are needed,
    ///c) the storage driver is specified through a storage class, and d) the storage driver
    ///supports dynamic volume provisioning through
    ///a PersistentVolumeClaim (see EphemeralVolumeSource for more
    ///information on the connection between this volume type
    ///and PersistentVolumeClaim).
    ///
    ///Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for
    ///longer than the lifecycle of an individual pod.
    ///
    ///Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used
    ///that way - see the documentation of the driver for more information.
    ///
    ///A pod can use both types of ephemeral volumes and persistent volumes at the same time.
    @JsonKey(name: "ephemeral")
    IoK8SApiCoreV1EphemeralVolumeSource? ephemeral;
    
    ///fc represents a Fibre Channel resource that is attached to a kubelet's host machine and
    ///then exposed to the pod.
    @JsonKey(name: "fc")
    IoK8SApiCoreV1FcVolumeSource? fc;
    
    ///flexVolume represents a generic volume resource that is provisioned/attached using an
    ///exec based plugin.
    @JsonKey(name: "flexVolume")
    IoK8SApiCoreV1FlexVolumeSource? flexVolume;
    
    ///flocker represents a Flocker volume attached to a kubelet's host machine. This depends on
    ///the Flocker control service being running
    @JsonKey(name: "flocker")
    IoK8SApiCoreV1FlockerVolumeSource? flocker;
    
    ///gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host
    ///machine and then exposed to the pod. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "gcePersistentDisk")
    IoK8SApiCoreV1GcePersistentDiskVolumeSource? gcePersistentDisk;
    
    ///gitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is
    ///deprecated. To provision a container with a git repo, mount an EmptyDir into an
    ///InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's
    ///container.
    @JsonKey(name: "gitRepo")
    IoK8SApiCoreV1GitRepoVolumeSource? gitRepo;
    
    ///glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More
    ///info: https://examples.k8s.io/volumes/glusterfs/README.md
    @JsonKey(name: "glusterfs")
    IoK8SApiCoreV1GlusterfsVolumeSource? glusterfs;
    
    ///hostPath represents a pre-existing file or directory on the host machine that is directly
    ///exposed to the container. This is generally used for system agents or other privileged
    ///things that are allowed to see the host machine. Most containers will NOT need this. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "hostPath")
    IoK8SApiCoreV1HostPathVolumeSource? hostPath;
    
    ///iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and
    ///then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md
    @JsonKey(name: "iscsi")
    IoK8SApiCoreV1IscsiVolumeSource? iscsi;
    
    ///name of the volume. Must be a DNS_LABEL and unique within the pod. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String name;
    
    ///nfs represents an NFS mount on the host that shares a pod's lifetime More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "nfs")
    IoK8SApiCoreV1NfsVolumeSource? nfs;
    
    ///persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in
    ///the same namespace. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
    @JsonKey(name: "persistentVolumeClaim")
    IoK8SApiCoreV1PersistentVolumeClaimVolumeSource? persistentVolumeClaim;
    
    ///photonPersistentDisk represents a PhotonController persistent disk attached and mounted
    ///on kubelets host machine
    @JsonKey(name: "photonPersistentDisk")
    IoK8SApiCoreV1PhotonPersistentDiskVolumeSource? photonPersistentDisk;
    
    ///portworxVolume represents a portworx volume attached and mounted on kubelets host machine
    @JsonKey(name: "portworxVolume")
    IoK8SApiCoreV1PortworxVolumeSource? portworxVolume;
    
    ///projected items for all in one resources secrets, configmaps, and downward API
    @JsonKey(name: "projected")
    IoK8SApiCoreV1ProjectedVolumeSource? projected;
    
    ///quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    @JsonKey(name: "quobyte")
    IoK8SApiCoreV1QuobyteVolumeSource? quobyte;
    
    ///rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More
    ///info: https://examples.k8s.io/volumes/rbd/README.md
    @JsonKey(name: "rbd")
    IoK8SApiCoreV1RbdVolumeSource? rbd;
    
    ///scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    @JsonKey(name: "scaleIO")
    IoK8SApiCoreV1ScaleIoVolumeSource? scaleIo;
    
    ///secret represents a secret that should populate this volume. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#secret
    @JsonKey(name: "secret")
    IoK8SApiCoreV1SecretVolumeSource? secret;
    
    ///storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
    @JsonKey(name: "storageos")
    IoK8SApiCoreV1StorageOsVolumeSource? storageos;
    
    ///vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    @JsonKey(name: "vsphereVolume")
    IoK8SApiCoreV1VsphereVirtualDiskVolumeSource? vsphereVolume;

    IoK8SApiCoreV1Volume({
        this.awsElasticBlockStore,
        this.azureDisk,
        this.azureFile,
        this.cephfs,
        this.cinder,
        this.configMap,
        this.csi,
        this.downwardApi,
        this.emptyDir,
        this.ephemeral,
        this.fc,
        this.flexVolume,
        this.flocker,
        this.gcePersistentDisk,
        this.gitRepo,
        this.glusterfs,
        this.hostPath,
        this.iscsi,
        required this.name,
        this.nfs,
        this.persistentVolumeClaim,
        this.photonPersistentDisk,
        this.portworxVolume,
        this.projected,
        this.quobyte,
        this.rbd,
        this.scaleIo,
        this.secret,
        this.storageos,
        this.vsphereVolume,
    });

    factory IoK8SApiCoreV1Volume.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeToJson(this);
}


///awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
///machine and then exposed to the pod. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
///
///Represents a Persistent Disk resource in AWS.
///
///An AWS EBS disk must exist before mounting to a container. The disk must also be in the
///same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS
///EBS volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource {
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///partition is the partition in the volume that you want to mount. If omitted, the default
    ///is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as
    ///"1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property
    ///empty).
    @JsonKey(name: "partition")
    int? partition;
    
    ///readOnly value true will force the readOnly setting in VolumeMounts. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource({
        this.fsType,
        this.partition,
        this.readOnly,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AwsElasticBlockStoreVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AwsElasticBlockStoreVolumeSourceToJson(this);
}


///azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
///
///AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
@JsonSerializable()
class IoK8SApiCoreV1AzureDiskVolumeSource {
    
    ///cachingMode is the Host Caching mode: None, Read Only, Read Write.
    @JsonKey(name: "cachingMode")
    String? cachingMode;
    
    ///diskName is the Name of the data disk in the blob storage
    @JsonKey(name: "diskName")
    String diskName;
    
    ///diskURI is the URI of data disk in the blob storage
    @JsonKey(name: "diskURI")
    String diskUri;
    
    ///fsType is Filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///kind expected values are Shared: multiple blob disks per storage account  Dedicated:
    ///single blob disk per storage account  Managed: azure managed data disk (only in managed
    ///availability set). defaults to shared
    @JsonKey(name: "kind")
    String? kind;
    
    ///readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1AzureDiskVolumeSource({
        this.cachingMode,
        required this.diskName,
        required this.diskUri,
        this.fsType,
        this.kind,
        this.readOnly,
    });

    factory IoK8SApiCoreV1AzureDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AzureDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AzureDiskVolumeSourceToJson(this);
}


///azureFile represents an Azure File Service mount on the host and bind mount to the pod.
///
///AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
@JsonSerializable()
class IoK8SApiCoreV1AzureFileVolumeSource {
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretName is the  name of secret that contains Azure Storage Account Name and Key
    @JsonKey(name: "secretName")
    String secretName;
    
    ///shareName is the azure share Name
    @JsonKey(name: "shareName")
    String shareName;

    IoK8SApiCoreV1AzureFileVolumeSource({
        this.readOnly,
        required this.secretName,
        required this.shareName,
    });

    factory IoK8SApiCoreV1AzureFileVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AzureFileVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AzureFileVolumeSourceToJson(this);
}


///cephFS represents a Ceph FS mount on the host that shares a pod's lifetime
///
///Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1CephFsVolumeSource {
    
    ///monitors is Required: Monitors is a collection of Ceph monitors More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "monitors")
    List<String> monitors;
    
    ///path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    @JsonKey(name: "path")
    String? path;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts. More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretFile is Optional: SecretFile is the path to key ring for User, default is
    ////etc/ceph/user.secret More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "secretFile")
    String? secretFile;
    
    ///secretRef is Optional: SecretRef is reference to the authentication secret for User,
    ///default is empty. More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///user is optional: User is the rados user name, default is admin More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1CephFsVolumeSource({
        required this.monitors,
        this.path,
        this.readOnly,
        this.secretFile,
        this.secretRef,
        this.user,
    });

    factory IoK8SApiCoreV1CephFsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CephFsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CephFsVolumeSourceToJson(this);
}


///cinder represents a cinder volume attached and mounted on kubelets host machine. More
///info: https://examples.k8s.io/mysql-cinder-pd/README.md
///
///Represents a cinder volume resource in Openstack. A Cinder volume must exist before
///mounting to a container. The volume must also be in the same region as the kubelet.
///Cinder volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1CinderVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is optional: points to a secret object containing parameters used to connect to
    ///OpenStack.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///volumeID used to identify the volume in cinder. More info:
    ///https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1CinderVolumeSource({
        this.fsType,
        this.readOnly,
        this.secretRef,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1CinderVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CinderVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CinderVolumeSourceToJson(this);
}


///configMap represents a configMap that should populate this volume
///
///Adapts a ConfigMap into a volume.
///
///The contents of the target ConfigMap's Data field will be presented in a volume as files
///using the keys in the Data field as the file names, unless the items element is populated
///with specific mappings of keys to paths. ConfigMap volumes support ownership management
///and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapVolumeSource {
    
    ///defaultMode is optional: mode bits used to set permissions on created files by default.
    ///Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML
    ///accepts both octal and decimal values, JSON requires decimal values for mode bits.
    ///Defaults to 0644. Directories within the path are not affected by this setting. This
    ///might be in conflict with other options that affect the file mode, like fsGroup, and the
    ///result can be other mode bits set.
    @JsonKey(name: "defaultMode")
    int? defaultMode;
    
    ///items if unspecified, each key-value pair in the Data field of the referenced ConfigMap
    ///will be projected into the volume as a file whose name is the key and content is the
    ///value. If specified, the listed keys will be projected into the specified paths, and
    ///unlisted keys will not be present. If a key is specified which is not present in the
    ///ConfigMap, the volume setup will error unless it is marked optional. Paths must be
    ///relative and may not contain the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional specify whether the ConfigMap or its keys must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapVolumeSource({
        this.defaultMode,
        this.items,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapVolumeSourceToJson(this);
}


///Maps a string key to a path within a volume.
@JsonSerializable()
class IoK8SApiCoreV1KeyToPath {
    
    ///key is the key to project.
    @JsonKey(name: "key")
    String key;
    
    ///mode is Optional: mode bits used to set permissions on this file. Must be an octal value
    ///between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and
    ///decimal values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///path is the relative path of the file to map the key to. May not be an absolute path. May
    ///not contain the path element '..'. May not start with the string '..'.
    @JsonKey(name: "path")
    String path;

    IoK8SApiCoreV1KeyToPath({
        required this.key,
        this.mode,
        required this.path,
    });

    factory IoK8SApiCoreV1KeyToPath.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1KeyToPathFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1KeyToPathToJson(this);
}


///csi (Container Storage Interface) represents ephemeral storage that is handled by certain
///external CSI drivers (Beta feature).
///
///Represents a source location of a volume to mount, managed by an external CSI driver
@JsonSerializable()
class IoK8SApiCoreV1CsiVolumeSource {
    
    ///driver is the name of the CSI driver that handles this volume. Consult with your admin
    ///for the correct name as registered in the cluster.
    @JsonKey(name: "driver")
    String driver;
    
    ///fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to
    ///the associated CSI driver which will determine the default filesystem to apply.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///nodePublishSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
    ///calls. This field is optional, and  may be empty if no secret is required. If the secret
    ///object contains more than one secret, all secret references are passed.
    @JsonKey(name: "nodePublishSecretRef")
    IoK8SApiCoreV1LocalObjectReference? nodePublishSecretRef;
    
    ///readOnly specifies a read-only configuration for the volume. Defaults to false
    ///(read/write).
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeAttributes stores driver-specific properties that are passed to the CSI driver.
    ///Consult your driver's documentation for supported values.
    @JsonKey(name: "volumeAttributes")
    Map<String, String>? volumeAttributes;

    IoK8SApiCoreV1CsiVolumeSource({
        required this.driver,
        this.fsType,
        this.nodePublishSecretRef,
        this.readOnly,
        this.volumeAttributes,
    });

    factory IoK8SApiCoreV1CsiVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CsiVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CsiVolumeSourceToJson(this);
}


///downwardAPI represents downward API about the pod that should populate this volume
///
///DownwardAPIVolumeSource represents a volume containing downward API info. Downward API
///volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiVolumeSource {
    
    ///Optional: mode bits to use on created files by default. Must be a Optional: mode bits
    ///used to set permissions on created files by default. Must be an octal value between 0000
    ///and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal
    ///values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within
    ///the path are not affected by this setting. This might be in conflict with other options
    ///that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "defaultMode")
    int? defaultMode;
    
    ///Items is a list of downward API volume file
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1DownwardApiVolumeFile>? items;

    IoK8SApiCoreV1DownwardApiVolumeSource({
        this.defaultMode,
        this.items,
    });

    factory IoK8SApiCoreV1DownwardApiVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiVolumeSourceToJson(this);
}


///DownwardAPIVolumeFile represents information to create the file containing the pod field
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiVolumeFile {
    
    ///Required: Selects a field of the pod: only annotations, labels, name, namespace and uid
    ///are supported.
    @JsonKey(name: "fieldRef")
    IoK8SApiCoreV1ObjectFieldSelector? fieldRef;
    
    ///Optional: mode bits used to set permissions on this file, must be an octal value between
    ///0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal
    ///values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///Required: Path is  the relative path name of the file to be created. Must not be absolute
    ///or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must
    ///not start with '..'
    @JsonKey(name: "path")
    String path;
    
    ///Selects a resource of the container: only resources limits and requests (limits.cpu,
    ///limits.memory, requests.cpu and requests.memory) are currently supported.
    @JsonKey(name: "resourceFieldRef")
    IoK8SApiCoreV1ResourceFieldSelector? resourceFieldRef;

    IoK8SApiCoreV1DownwardApiVolumeFile({
        this.fieldRef,
        this.mode,
        required this.path,
        this.resourceFieldRef,
    });

    factory IoK8SApiCoreV1DownwardApiVolumeFile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiVolumeFileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiVolumeFileToJson(this);
}


///emptyDir represents a temporary directory that shares a pod's lifetime. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#emptydir
///
///Represents an empty directory for a pod. Empty directory volumes support ownership
///management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1EmptyDirVolumeSource {
    
    ///medium represents what type of storage medium should back this directory. The default is
    ///"" which means to use the node's default medium. Must be an empty string (default) or
    ///Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    @JsonKey(name: "medium")
    String? medium;
    
    ///sizeLimit is the total amount of local storage required for this EmptyDir volume. The
    ///size limit is also applicable for memory medium. The maximum usage on memory medium
    ///EmptyDir would be the minimum value between the SizeLimit specified here and the sum of
    ///memory limits of all containers in a pod. The default is nil which means that the limit
    ///is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    @JsonKey(name: "sizeLimit")
    dynamic sizeLimit;

    IoK8SApiCoreV1EmptyDirVolumeSource({
        this.medium,
        this.sizeLimit,
    });

    factory IoK8SApiCoreV1EmptyDirVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EmptyDirVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EmptyDirVolumeSourceToJson(this);
}


///ephemeral represents a volume that is handled by a cluster storage driver. The volume's
///lifecycle is tied to the pod that defines it - it will be created before the pod starts,
///and deleted when the pod is removed.
///
///Use this if: a) the volume is only needed while the pod runs, b) features of normal
///volumes like restoring from snapshot or capacity
///tracking are needed,
///c) the storage driver is specified through a storage class, and d) the storage driver
///supports dynamic volume provisioning through
///a PersistentVolumeClaim (see EphemeralVolumeSource for more
///information on the connection between this volume type
///and PersistentVolumeClaim).
///
///Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for
///longer than the lifecycle of an individual pod.
///
///Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used
///that way - see the documentation of the driver for more information.
///
///A pod can use both types of ephemeral volumes and persistent volumes at the same time.
///
///Represents an ephemeral volume that is handled by a normal storage driver.
@JsonSerializable()
class IoK8SApiCoreV1EphemeralVolumeSource {
    
    ///Will be used to create a stand-alone PVC to provision the volume. The pod in which this
    ///EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be
    ///deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>`
    ///where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation
    ///will reject the pod if the concatenated name is not valid for a PVC (for example, too
    ///long).
    ///
    ///An existing PVC with that name that is not owned by the pod will *not* be used for the
    ///pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until
    ///the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod,
    ///the PVC has to updated with an owner reference to the pod once the pod exists. Normally
    ///this should not be necessary, but it may be useful when manually reconstructing a broken
    ///cluster.
    ///
    ///This field is read-only and no changes will be made by Kubernetes to the PVC after it has
    ///been created.
    ///
    ///Required, must not be nil.
    @JsonKey(name: "volumeClaimTemplate")
    IoK8SApiCoreV1PersistentVolumeClaimTemplate? volumeClaimTemplate;

    IoK8SApiCoreV1EphemeralVolumeSource({
        this.volumeClaimTemplate,
    });

    factory IoK8SApiCoreV1EphemeralVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EphemeralVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EphemeralVolumeSourceToJson(this);
}


///Will be used to create a stand-alone PVC to provision the volume. The pod in which this
///EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be
///deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>`
///where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation
///will reject the pod if the concatenated name is not valid for a PVC (for example, too
///long).
///
///An existing PVC with that name that is not owned by the pod will *not* be used for the
///pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until
///the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod,
///the PVC has to updated with an owner reference to the pod once the pod exists. Normally
///this should not be necessary, but it may be useful when manually reconstructing a broken
///cluster.
///
///This field is read-only and no changes will be made by Kubernetes to the PVC after it has
///been created.
///
///Required, must not be nil.
///
///PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of
///an EphemeralVolumeSource.
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeClaimTemplate {
    
    ///May contain labels and annotations that will be copied into the PVC when creating it. No
    ///other fields are allowed and will be rejected during validation.
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///The specification for the PersistentVolumeClaim. The entire content is copied unchanged
    ///into the PVC that gets created from this template. The same fields as in a
    ///PersistentVolumeClaim are also valid here.
    @JsonKey(name: "spec")
    IoK8SApiCoreV1PersistentVolumeClaimSpec spec;

    IoK8SApiCoreV1PersistentVolumeClaimTemplate({
        this.metadata,
        required this.spec,
    });

    factory IoK8SApiCoreV1PersistentVolumeClaimTemplate.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeClaimTemplateFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeClaimTemplateToJson(this);
}


///The specification for the PersistentVolumeClaim. The entire content is copied unchanged
///into the PVC that gets created from this template. The same fields as in a
///PersistentVolumeClaim are also valid here.
///
///PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a
///Source for provider-specific attributes
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeClaimSpec {
    
    ///accessModes contains the desired access modes the volume should have. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
    @JsonKey(name: "accessModes")
    List<String>? accessModes;
    
    ///dataSource field can be used to specify either: * An existing VolumeSnapshot object
    ///(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the
    ///provisioner or an external controller can support the specified data source, it will
    ///create a new volume based on the contents of the specified data source. When the
    ///AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to
    ///dataSourceRef, and dataSourceRef contents will be copied to dataSource when
    ///dataSourceRef.namespace is not specified. If the namespace is specified, then
    ///dataSourceRef will not be copied to dataSource.
    @JsonKey(name: "dataSource")
    IoK8SApiCoreV1TypedLocalObjectReference? dataSource;
    
    ///dataSourceRef specifies the object from which to populate the volume with data, if a
    ///non-empty volume is desired. This may be any object from a non-empty API group (non core
    ///object) or a PersistentVolumeClaim object. When this field is specified, volume binding
    ///will only succeed if the type of the specified object matches some installed volume
    ///populator or dynamic provisioner. This field will replace the functionality of the
    ///dataSource field and as such if both fields are non-empty, they must have the same value.
    ///For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields
    ///(dataSource and dataSourceRef) will be set to the same value automatically if one of them
    ///is empty and the other is non-empty. When namespace is specified in dataSourceRef,
    ///dataSource isn't set to the same value and must be empty. There are three important
    ///differences between dataSource and dataSourceRef: * While dataSource only allows two
    ///specific types of objects, dataSourceRef
    ///allows any non-core object, as well as PersistentVolumeClaim objects.
    ///* While dataSource ignores disallowed values (dropping them), dataSourceRef
    ///preserves all values, and generates an error if a disallowed value is
    ///specified.
    ///* While dataSource only allows local objects, dataSourceRef allows objects
    ///in any namespaces.
    ///(Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
    ///(Alpha) Using the namespace field of dataSourceRef requires the
    ///CrossNamespaceVolumeDataSource feature gate to be enabled.
    @JsonKey(name: "dataSourceRef")
    IoK8SApiCoreV1TypedObjectReference? dataSourceRef;
    
    ///resources represents the minimum resources the volume should have. If
    ///RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource
    ///requirements that are lower than previous value but must still be higher than capacity
    ///recorded in the status field of the claim. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
    @JsonKey(name: "resources")
    IoK8SApiCoreV1VolumeResourceRequirements? resources;
    
    ///selector is a label query over volumes to consider for binding.
    @JsonKey(name: "selector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? selector;
    
    ///storageClassName is the name of the StorageClass required by the claim. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
    @JsonKey(name: "storageClassName")
    String? storageClassName;
    
    ///volumeAttributesClassName may be used to set the VolumeAttributesClass used by this
    ///claim. If specified, the CSI driver will create or update the volume with the attributes
    ///defined in the corresponding VolumeAttributesClass. This has a different purpose than
    ///storageClassName, it can be changed after the claim is created. An empty string value
    ///means that no VolumeAttributesClass will be applied to the claim but it's not allowed to
    ///reset this field to empty string once it is set. If unspecified and the
    ///PersistentVolumeClaim is unbound, the default VolumeAttributesClass will be set by the
    ///persistentvolume controller if it exists. If the resource referred to by
    ///volumeAttributesClass does not exist, this PersistentVolumeClaim will be set to a Pending
    ///state, as reflected by the modifyVolumeStatus field, until such as a resource exists.
    ///More info: https://kubernetes.io/docs/concepts/storage/volume-attributes-classes/ (Alpha)
    ///Using this field requires the VolumeAttributesClass feature gate to be enabled.
    @JsonKey(name: "volumeAttributesClassName")
    String? volumeAttributesClassName;
    
    ///volumeMode defines what type of volume is required by the claim. Value of Filesystem is
    ///implied when not included in claim spec.
    @JsonKey(name: "volumeMode")
    String? volumeMode;
    
    ///volumeName is the binding reference to the PersistentVolume backing this claim.
    @JsonKey(name: "volumeName")
    String? volumeName;

    IoK8SApiCoreV1PersistentVolumeClaimSpec({
        this.accessModes,
        this.dataSource,
        this.dataSourceRef,
        this.resources,
        this.selector,
        this.storageClassName,
        this.volumeAttributesClassName,
        this.volumeMode,
        this.volumeName,
    });

    factory IoK8SApiCoreV1PersistentVolumeClaimSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeClaimSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeClaimSpecToJson(this);
}


///dataSource field can be used to specify either: * An existing VolumeSnapshot object
///(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the
///provisioner or an external controller can support the specified data source, it will
///create a new volume based on the contents of the specified data source. When the
///AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to
///dataSourceRef, and dataSourceRef contents will be copied to dataSource when
///dataSourceRef.namespace is not specified. If the namespace is specified, then
///dataSourceRef will not be copied to dataSource.
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


///dataSourceRef specifies the object from which to populate the volume with data, if a
///non-empty volume is desired. This may be any object from a non-empty API group (non core
///object) or a PersistentVolumeClaim object. When this field is specified, volume binding
///will only succeed if the type of the specified object matches some installed volume
///populator or dynamic provisioner. This field will replace the functionality of the
///dataSource field and as such if both fields are non-empty, they must have the same value.
///For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields
///(dataSource and dataSourceRef) will be set to the same value automatically if one of them
///is empty and the other is non-empty. When namespace is specified in dataSourceRef,
///dataSource isn't set to the same value and must be empty. There are three important
///differences between dataSource and dataSourceRef: * While dataSource only allows two
///specific types of objects, dataSourceRef
///allows any non-core object, as well as PersistentVolumeClaim objects.
///* While dataSource ignores disallowed values (dropping them), dataSourceRef
///preserves all values, and generates an error if a disallowed value is
///specified.
///* While dataSource only allows local objects, dataSourceRef allows objects
///in any namespaces.
///(Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
///(Alpha) Using the namespace field of dataSourceRef requires the
///CrossNamespaceVolumeDataSource feature gate to be enabled.
@JsonSerializable()
class IoK8SApiCoreV1TypedObjectReference {
    
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
    
    ///Namespace is the namespace of resource being referenced Note that when a namespace is
    ///specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent
    ///namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant
    ///documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource
    ///feature gate to be enabled.
    @JsonKey(name: "namespace")
    String? namespace;

    IoK8SApiCoreV1TypedObjectReference({
        this.apiGroup,
        required this.kind,
        required this.name,
        this.namespace,
    });

    factory IoK8SApiCoreV1TypedObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TypedObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TypedObjectReferenceToJson(this);
}


///resources represents the minimum resources the volume should have. If
///RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource
///requirements that are lower than previous value but must still be higher than capacity
///recorded in the status field of the claim. More info:
///https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
///
///VolumeResourceRequirements describes the storage resource requirements for a volume.
@JsonSerializable()
class IoK8SApiCoreV1VolumeResourceRequirements {
    
    ///Limits describes the maximum amount of compute resources allowed. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "limits")
    Map<String, dynamic>? limits;
    
    ///Requests describes the minimum amount of compute resources required. If Requests is
    ///omitted for a container, it defaults to Limits if that is explicitly specified, otherwise
    ///to an implementation-defined value. Requests cannot exceed Limits. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "requests")
    Map<String, dynamic>? requests;

    IoK8SApiCoreV1VolumeResourceRequirements({
        this.limits,
        this.requests,
    });

    factory IoK8SApiCoreV1VolumeResourceRequirements.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeResourceRequirementsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeResourceRequirementsToJson(this);
}


///fc represents a Fibre Channel resource that is attached to a kubelet's host machine and
///then exposed to the pod.
///
///Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as
///read/write once. Fibre Channel volumes support ownership management and SELinux
///relabeling.
@JsonSerializable()
class IoK8SApiCoreV1FcVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///lun is Optional: FC target lun number
    @JsonKey(name: "lun")
    int? lun;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///targetWWNs is Optional: FC target worldwide names (WWNs)
    @JsonKey(name: "targetWWNs")
    List<String>? targetWwNs;
    
    ///wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of
    ///targetWWNs and lun must be set, but not both simultaneously.
    @JsonKey(name: "wwids")
    List<String>? wwids;

    IoK8SApiCoreV1FcVolumeSource({
        this.fsType,
        this.lun,
        this.readOnly,
        this.targetWwNs,
        this.wwids,
    });

    factory IoK8SApiCoreV1FcVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FcVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FcVolumeSourceToJson(this);
}


///flexVolume represents a generic volume resource that is provisioned/attached using an
///exec based plugin.
///
///FlexVolume represents a generic volume resource that is provisioned/attached using an
///exec based plugin.
@JsonSerializable()
class IoK8SApiCoreV1FlexVolumeSource {
    
    ///driver is the name of the driver to use for this volume.
    @JsonKey(name: "driver")
    String driver;
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume
    ///script.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///options is Optional: this field holds extra command options if any.
    @JsonKey(name: "options")
    Map<String, String>? options;
    
    ///readOnly is Optional: defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is Optional: secretRef is reference to the secret object containing sensitive
    ///information to pass to the plugin scripts. This may be empty if no secret object is
    ///specified. If the secret object contains more than one secret, all secrets are passed to
    ///the plugin scripts.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;

    IoK8SApiCoreV1FlexVolumeSource({
        required this.driver,
        this.fsType,
        this.options,
        this.readOnly,
        this.secretRef,
    });

    factory IoK8SApiCoreV1FlexVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FlexVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FlexVolumeSourceToJson(this);
}


///flocker represents a Flocker volume attached to a kubelet's host machine. This depends on
///the Flocker control service being running
///
///Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName
///and datasetUUID should be set. Flocker volumes do not support ownership management or
///SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1FlockerVolumeSource {
    
    ///datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker
    ///should be considered as deprecated
    @JsonKey(name: "datasetName")
    String? datasetName;
    
    ///datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
    @JsonKey(name: "datasetUUID")
    String? datasetUuid;

    IoK8SApiCoreV1FlockerVolumeSource({
        this.datasetName,
        this.datasetUuid,
    });

    factory IoK8SApiCoreV1FlockerVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FlockerVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FlockerVolumeSourceToJson(this);
}


///gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host
///machine and then exposed to the pod. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
///
///Represents a Persistent Disk resource in Google Compute Engine.
///
///A GCE PD must exist before mounting to a container. The disk must also be in the same GCE
///project and zone as the kubelet. A GCE PD can only be mounted as read/write once or
///read-only many times. GCE PDs support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1GcePersistentDiskVolumeSource {
    
    ///fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///partition is the partition in the volume that you want to mount. If omitted, the default
    ///is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as
    ///"1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property
    ///empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "partition")
    int? partition;
    
    ///pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "pdName")
    String pdName;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1GcePersistentDiskVolumeSource({
        this.fsType,
        this.partition,
        required this.pdName,
        this.readOnly,
    });

    factory IoK8SApiCoreV1GcePersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GcePersistentDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GcePersistentDiskVolumeSourceToJson(this);
}


///gitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is
///deprecated. To provision a container with a git repo, mount an EmptyDir into an
///InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's
///container.
///
///Represents a volume that is populated with the contents of a git repository. Git repo
///volumes do not support ownership management. Git repo volumes support SELinux
///relabeling.
///
///DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an
///EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir
///into the Pod's container.
@JsonSerializable()
class IoK8SApiCoreV1GitRepoVolumeSource {
    
    ///directory is the target directory name. Must not contain or start with '..'.  If '.' is
    ///supplied, the volume directory will be the git repository.  Otherwise, if specified, the
    ///volume will contain the git repository in the subdirectory with the given name.
    @JsonKey(name: "directory")
    String? directory;
    
    ///repository is the URL
    @JsonKey(name: "repository")
    String repository;
    
    ///revision is the commit hash for the specified revision.
    @JsonKey(name: "revision")
    String? revision;

    IoK8SApiCoreV1GitRepoVolumeSource({
        this.directory,
        required this.repository,
        this.revision,
    });

    factory IoK8SApiCoreV1GitRepoVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GitRepoVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GitRepoVolumeSourceToJson(this);
}


///glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More
///info: https://examples.k8s.io/volumes/glusterfs/README.md
///
///Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1GlusterfsVolumeSource {
    
    ///endpoints is the endpoint name that details Glusterfs topology. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "endpoints")
    String endpoints;
    
    ///path is the Glusterfs volume path. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "path")
    String path;
    
    ///readOnly here will force the Glusterfs volume to be mounted with read-only permissions.
    ///Defaults to false. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1GlusterfsVolumeSource({
        required this.endpoints,
        required this.path,
        this.readOnly,
    });

    factory IoK8SApiCoreV1GlusterfsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GlusterfsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GlusterfsVolumeSourceToJson(this);
}


///hostPath represents a pre-existing file or directory on the host machine that is directly
///exposed to the container. This is generally used for system agents or other privileged
///things that are allowed to see the host machine. Most containers will NOT need this. More
///info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
///
///Represents a host path mapped into a pod. Host path volumes do not support ownership
///management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1HostPathVolumeSource {
    
    ///path of the directory on the host. If the path is a symlink, it will follow the link to
    ///the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "path")
    String path;
    
    ///type for HostPath Volume Defaults to "" More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "type")
    String? type;

    IoK8SApiCoreV1HostPathVolumeSource({
        required this.path,
        this.type,
    });

    factory IoK8SApiCoreV1HostPathVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HostPathVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HostPathVolumeSourceToJson(this);
}


///iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and
///then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md
///
///Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI
///volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1IscsiVolumeSource {
    
    ///chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
    @JsonKey(name: "chapAuthDiscovery")
    bool? chapAuthDiscovery;
    
    ///chapAuthSession defines whether support iSCSI Session CHAP authentication
    @JsonKey(name: "chapAuthSession")
    bool? chapAuthSession;
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#iscsi
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with
    ///iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be
    ///created for the connection.
    @JsonKey(name: "initiatorName")
    String? initiatorName;
    
    ///iqn is the target iSCSI Qualified Name.
    @JsonKey(name: "iqn")
    String iqn;
    
    ///iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default'
    ///(tcp).
    @JsonKey(name: "iscsiInterface")
    String? iscsiInterface;
    
    ///lun represents iSCSI Target Lun number.
    @JsonKey(name: "lun")
    int lun;
    
    ///portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if
    ///the port is other than default (typically TCP ports 860 and 3260).
    @JsonKey(name: "portals")
    List<String>? portals;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is the CHAP Secret for iSCSI target and initiator authentication
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the
    ///port is other than default (typically TCP ports 860 and 3260).
    @JsonKey(name: "targetPortal")
    String targetPortal;

    IoK8SApiCoreV1IscsiVolumeSource({
        this.chapAuthDiscovery,
        this.chapAuthSession,
        this.fsType,
        this.initiatorName,
        required this.iqn,
        this.iscsiInterface,
        required this.lun,
        this.portals,
        this.readOnly,
        this.secretRef,
        required this.targetPortal,
    });

    factory IoK8SApiCoreV1IscsiVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1IscsiVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1IscsiVolumeSourceToJson(this);
}


///nfs represents an NFS mount on the host that shares a pod's lifetime More info:
///https://kubernetes.io/docs/concepts/storage/volumes#nfs
///
///Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support
///ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1NfsVolumeSource {
    
    ///path that is exported by the NFS server. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "path")
    String path;
    
    ///readOnly here will force the NFS export to be mounted with read-only permissions.
    ///Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///server is the hostname or IP address of the NFS server. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "server")
    String server;

    IoK8SApiCoreV1NfsVolumeSource({
        required this.path,
        this.readOnly,
        required this.server,
    });

    factory IoK8SApiCoreV1NfsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NfsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NfsVolumeSourceToJson(this);
}


///persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in
///the same namespace. More info:
///https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
///
///PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This
///volume finds the bound PV and mounts that volume for the pod. A
///PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of
///volume that is owned by someone else (the system).
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeClaimVolumeSource {
    
    ///claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using
    ///this volume. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
    @JsonKey(name: "claimName")
    String claimName;
    
    ///readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1PersistentVolumeClaimVolumeSource({
        required this.claimName,
        this.readOnly,
    });

    factory IoK8SApiCoreV1PersistentVolumeClaimVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeClaimVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeClaimVolumeSourceToJson(this);
}


///photonPersistentDisk represents a PhotonController persistent disk attached and mounted
///on kubelets host machine
///
///Represents a Photon Controller persistent disk resource.
@JsonSerializable()
class IoK8SApiCoreV1PhotonPersistentDiskVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///pdID is the ID that identifies Photon Controller persistent disk
    @JsonKey(name: "pdID")
    String pdId;

    IoK8SApiCoreV1PhotonPersistentDiskVolumeSource({
        this.fsType,
        required this.pdId,
    });

    factory IoK8SApiCoreV1PhotonPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PhotonPersistentDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PhotonPersistentDiskVolumeSourceToJson(this);
}


///portworxVolume represents a portworx volume attached and mounted on kubelets host
///machine
///
///PortworxVolumeSource represents a Portworx volume resource.
@JsonSerializable()
class IoK8SApiCoreV1PortworxVolumeSource {
    
    ///fSType represents the filesystem type to mount Must be a filesystem type supported by the
    ///host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeID uniquely identifies a Portworx volume
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1PortworxVolumeSource({
        this.fsType,
        this.readOnly,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1PortworxVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PortworxVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PortworxVolumeSourceToJson(this);
}


///projected items for all in one resources secrets, configmaps, and downward API
///
///Represents a projected volume source
@JsonSerializable()
class IoK8SApiCoreV1ProjectedVolumeSource {
    
    ///defaultMode are the mode bits used to set permissions on created files by default. Must
    ///be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML
    ///accepts both octal and decimal values, JSON requires decimal values for mode bits.
    ///Directories within the path are not affected by this setting. This might be in conflict
    ///with other options that affect the file mode, like fsGroup, and the result can be other
    ///mode bits set.
    @JsonKey(name: "defaultMode")
    int? defaultMode;
    
    ///sources is the list of volume projections
    @JsonKey(name: "sources")
    List<IoK8SApiCoreV1VolumeProjection>? sources;

    IoK8SApiCoreV1ProjectedVolumeSource({
        this.defaultMode,
        this.sources,
    });

    factory IoK8SApiCoreV1ProjectedVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ProjectedVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ProjectedVolumeSourceToJson(this);
}


///Projection that may be projected along with other supported volume types
@JsonSerializable()
class IoK8SApiCoreV1VolumeProjection {
    
    ///ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of
    ///ClusterTrustBundle objects in an auto-updating file.
    ///
    ///Alpha, gated by the ClusterTrustBundleProjection feature gate.
    ///
    ///ClusterTrustBundle objects can either be selected by name, or by the combination of
    ///signer name and a label selector.
    ///
    ///Kubelet performs aggressive normalization of the PEM contents written into the pod
    ///filesystem.  Esoteric PEM features such as inter-block comments and block headers are
    ///stripped.  Certificates are deduplicated. The ordering of certificates within the file is
    ///arbitrary, and Kubelet may change the order over time.
    @JsonKey(name: "clusterTrustBundle")
    IoK8SApiCoreV1ClusterTrustBundleProjection? clusterTrustBundle;
    
    ///configMap information about the configMap data to project
    @JsonKey(name: "configMap")
    IoK8SApiCoreV1ConfigMapProjection? configMap;
    
    ///downwardAPI information about the downwardAPI data to project
    @JsonKey(name: "downwardAPI")
    IoK8SApiCoreV1DownwardApiProjection? downwardApi;
    
    ///secret information about the secret data to project
    @JsonKey(name: "secret")
    IoK8SApiCoreV1SecretProjection? secret;
    
    ///serviceAccountToken is information about the serviceAccountToken data to project
    @JsonKey(name: "serviceAccountToken")
    IoK8SApiCoreV1ServiceAccountTokenProjection? serviceAccountToken;

    IoK8SApiCoreV1VolumeProjection({
        this.clusterTrustBundle,
        this.configMap,
        this.downwardApi,
        this.secret,
        this.serviceAccountToken,
    });

    factory IoK8SApiCoreV1VolumeProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeProjectionToJson(this);
}


///ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of
///ClusterTrustBundle objects in an auto-updating file.
///
///Alpha, gated by the ClusterTrustBundleProjection feature gate.
///
///ClusterTrustBundle objects can either be selected by name, or by the combination of
///signer name and a label selector.
///
///Kubelet performs aggressive normalization of the PEM contents written into the pod
///filesystem.  Esoteric PEM features such as inter-block comments and block headers are
///stripped.  Certificates are deduplicated. The ordering of certificates within the file is
///arbitrary, and Kubelet may change the order over time.
///
///ClusterTrustBundleProjection describes how to select a set of ClusterTrustBundle objects
///and project their contents into the pod filesystem.
@JsonSerializable()
class IoK8SApiCoreV1ClusterTrustBundleProjection {
    
    ///Select all ClusterTrustBundles that match this label selector.  Only has effect if
    ///signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match
    ///nothing".  If set but empty, interpreted as "match everything".
    @JsonKey(name: "labelSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? labelSelector;
    
    ///Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName
    ///and labelSelector.
    @JsonKey(name: "name")
    String? name;
    
    ///If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't
    ///available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If
    ///using signerName, then the combination of signerName and labelSelector is allowed to
    ///match zero ClusterTrustBundles.
    @JsonKey(name: "optional")
    bool? optional;
    
    ///Relative path from the volume root to write the bundle.
    @JsonKey(name: "path")
    String path;
    
    ///Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with
    ///name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated.
    @JsonKey(name: "signerName")
    String? signerName;

    IoK8SApiCoreV1ClusterTrustBundleProjection({
        this.labelSelector,
        this.name,
        this.optional,
        required this.path,
        this.signerName,
    });

    factory IoK8SApiCoreV1ClusterTrustBundleProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ClusterTrustBundleProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ClusterTrustBundleProjectionToJson(this);
}


///configMap information about the configMap data to project
///
///Adapts a ConfigMap into a projected volume.
///
///The contents of the target ConfigMap's Data field will be presented in a projected volume
///as files using the keys in the Data field as the file names, unless the items element is
///populated with specific mappings of keys to paths. Note that this is identical to a
///configmap volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapProjection {
    
    ///items if unspecified, each key-value pair in the Data field of the referenced ConfigMap
    ///will be projected into the volume as a file whose name is the key and content is the
    ///value. If specified, the listed keys will be projected into the specified paths, and
    ///unlisted keys will not be present. If a key is specified which is not present in the
    ///ConfigMap, the volume setup will error unless it is marked optional. Paths must be
    ///relative and may not contain the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional specify whether the ConfigMap or its keys must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapProjection({
        this.items,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapProjectionToJson(this);
}


///downwardAPI information about the downwardAPI data to project
///
///Represents downward API info for projecting into a projected volume. Note that this is
///identical to a downwardAPI volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiProjection {
    
    ///Items is a list of DownwardAPIVolume file
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1DownwardApiVolumeFile>? items;

    IoK8SApiCoreV1DownwardApiProjection({
        this.items,
    });

    factory IoK8SApiCoreV1DownwardApiProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiProjectionToJson(this);
}


///secret information about the secret data to project
///
///Adapts a secret into a projected volume.
///
///The contents of the target Secret's Data field will be presented in a projected volume as
///files using the keys in the Data field as the file names. Note that this is identical to
///a secret volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1SecretProjection {
    
    ///items if unspecified, each key-value pair in the Data field of the referenced Secret will
    ///be projected into the volume as a file whose name is the key and content is the value. If
    ///specified, the listed keys will be projected into the specified paths, and unlisted keys
    ///will not be present. If a key is specified which is not present in the Secret, the volume
    ///setup will error unless it is marked optional. Paths must be relative and may not contain
    ///the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional field specify whether the Secret or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1SecretProjection({
        this.items,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1SecretProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretProjectionToJson(this);
}


///serviceAccountToken is information about the serviceAccountToken data to project
///
///ServiceAccountTokenProjection represents a projected service account token volume. This
///projection can be used to insert a service account token into the pods runtime filesystem
///for use against APIs (Kubernetes API Server or otherwise).
@JsonSerializable()
class IoK8SApiCoreV1ServiceAccountTokenProjection {
    
    ///audience is the intended audience of the token. A recipient of a token must identify
    ///itself with an identifier specified in the audience of the token, and otherwise should
    ///reject the token. The audience defaults to the identifier of the apiserver.
    @JsonKey(name: "audience")
    String? audience;
    
    ///expirationSeconds is the requested duration of validity of the service account token. As
    ///the token approaches expiration, the kubelet volume plugin will proactively rotate the
    ///service account token. The kubelet will start trying to rotate the token if the token is
    ///older than 80 percent of its time to live or if the token is older than 24 hours.Defaults
    ///to 1 hour and must be at least 10 minutes.
    @JsonKey(name: "expirationSeconds")
    int? expirationSeconds;
    
    ///path is the path relative to the mount point of the file to project the token into.
    @JsonKey(name: "path")
    String path;

    IoK8SApiCoreV1ServiceAccountTokenProjection({
        this.audience,
        this.expirationSeconds,
        required this.path,
    });

    factory IoK8SApiCoreV1ServiceAccountTokenProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ServiceAccountTokenProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ServiceAccountTokenProjectionToJson(this);
}


///quobyte represents a Quobyte mount on the host that shares a pod's lifetime
///
///Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1QuobyteVolumeSource {
    
    ///group to map volume access to Default is no group
    @JsonKey(name: "group")
    String? group;
    
    ///readOnly here will force the Quobyte volume to be mounted with read-only permissions.
    ///Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///registry represents a single or multiple Quobyte Registry services specified as a string
    ///as host:port pair (multiple entries are separated with commas) which acts as the central
    ///registry for volumes
    @JsonKey(name: "registry")
    String registry;
    
    ///tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned
    ///Quobyte volumes, value is set by the plugin
    @JsonKey(name: "tenant")
    String? tenant;
    
    ///user to map volume access to Defaults to serivceaccount user
    @JsonKey(name: "user")
    String? user;
    
    ///volume is a string that references an already created Quobyte volume by name.
    @JsonKey(name: "volume")
    String volume;

    IoK8SApiCoreV1QuobyteVolumeSource({
        this.group,
        this.readOnly,
        required this.registry,
        this.tenant,
        this.user,
        required this.volume,
    });

    factory IoK8SApiCoreV1QuobyteVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1QuobyteVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1QuobyteVolumeSourceToJson(this);
}


///rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More
///info: https://examples.k8s.io/volumes/rbd/README.md
///
///Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes
///support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1RbdVolumeSource {
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#rbd
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///image is the rados image name. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "image")
    String image;
    
    ///keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "keyring")
    String? keyring;
    
    ///monitors is a collection of Ceph monitors. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "monitors")
    List<String> monitors;
    
    ///pool is the rados pool name. Default is rbd. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "pool")
    String? pool;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More
    ///info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is name of the authentication secret for RBDUser. If provided overrides
    ///keyring. Default is nil. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///user is the rados user name. Default is admin. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1RbdVolumeSource({
        this.fsType,
        required this.image,
        this.keyring,
        required this.monitors,
        this.pool,
        this.readOnly,
        this.secretRef,
        this.user,
    });

    factory IoK8SApiCoreV1RbdVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1RbdVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1RbdVolumeSourceToJson(this);
}


///scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
///
///ScaleIOVolumeSource represents a persistent ScaleIO volume
@JsonSerializable()
class IoK8SApiCoreV1ScaleIoVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs".
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///gateway is the host address of the ScaleIO API Gateway.
    @JsonKey(name: "gateway")
    String gateway;
    
    ///protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
    @JsonKey(name: "protectionDomain")
    String? protectionDomain;
    
    ///readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef references to the secret for ScaleIO user and other sensitive information. If
    ///this is not provided, Login operation will fail.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference secretRef;
    
    ///sslEnabled Flag enable/disable SSL communication with Gateway, default false
    @JsonKey(name: "sslEnabled")
    bool? sslEnabled;
    
    ///storageMode indicates whether the storage for a volume should be ThickProvisioned or
    ///ThinProvisioned. Default is ThinProvisioned.
    @JsonKey(name: "storageMode")
    String? storageMode;
    
    ///storagePool is the ScaleIO Storage Pool associated with the protection domain.
    @JsonKey(name: "storagePool")
    String? storagePool;
    
    ///system is the name of the storage system as configured in ScaleIO.
    @JsonKey(name: "system")
    String system;
    
    ///volumeName is the name of a volume already created in the ScaleIO system that is
    ///associated with this volume source.
    @JsonKey(name: "volumeName")
    String? volumeName;

    IoK8SApiCoreV1ScaleIoVolumeSource({
        this.fsType,
        required this.gateway,
        this.protectionDomain,
        this.readOnly,
        required this.secretRef,
        this.sslEnabled,
        this.storageMode,
        this.storagePool,
        required this.system,
        this.volumeName,
    });

    factory IoK8SApiCoreV1ScaleIoVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ScaleIoVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ScaleIoVolumeSourceToJson(this);
}


///secret represents a secret that should populate this volume. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#secret
///
///Adapts a Secret into a volume.
///
///The contents of the target Secret's Data field will be presented in a volume as files
///using the keys in the Data field as the file names. Secret volumes support ownership
///management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1SecretVolumeSource {
    
    ///defaultMode is Optional: mode bits used to set permissions on created files by default.
    ///Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML
    ///accepts both octal and decimal values, JSON requires decimal values for mode bits.
    ///Defaults to 0644. Directories within the path are not affected by this setting. This
    ///might be in conflict with other options that affect the file mode, like fsGroup, and the
    ///result can be other mode bits set.
    @JsonKey(name: "defaultMode")
    int? defaultMode;
    
    ///items If unspecified, each key-value pair in the Data field of the referenced Secret will
    ///be projected into the volume as a file whose name is the key and content is the value. If
    ///specified, the listed keys will be projected into the specified paths, and unlisted keys
    ///will not be present. If a key is specified which is not present in the Secret, the volume
    ///setup will error unless it is marked optional. Paths must be relative and may not contain
    ///the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///optional field specify whether the Secret or its keys must be defined
    @JsonKey(name: "optional")
    bool? optional;
    
    ///secretName is the name of the secret in the pod's namespace to use. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#secret
    @JsonKey(name: "secretName")
    String? secretName;

    IoK8SApiCoreV1SecretVolumeSource({
        this.defaultMode,
        this.items,
        this.optional,
        this.secretName,
    });

    factory IoK8SApiCoreV1SecretVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretVolumeSourceToJson(this);
}


///storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
///
///Represents a StorageOS persistent volume resource.
@JsonSerializable()
class IoK8SApiCoreV1StorageOsVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
    ///not specified, default values will be attempted.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///volumeName is the human-readable name of the StorageOS volume.  Volume names are only
    ///unique within a namespace.
    @JsonKey(name: "volumeName")
    String? volumeName;
    
    ///volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is
    ///specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping
    ///to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to
    ///override the default behaviour. Set to "default" if you are not using namespaces within
    ///StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    @JsonKey(name: "volumeNamespace")
    String? volumeNamespace;

    IoK8SApiCoreV1StorageOsVolumeSource({
        this.fsType,
        this.readOnly,
        this.secretRef,
        this.volumeName,
        this.volumeNamespace,
    });

    factory IoK8SApiCoreV1StorageOsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1StorageOsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1StorageOsVolumeSourceToJson(this);
}


///vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
///
///Represents a vSphere volume resource.
@JsonSerializable()
class IoK8SApiCoreV1VsphereVirtualDiskVolumeSource {
    
    ///fsType is filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with
    ///the StoragePolicyName.
    @JsonKey(name: "storagePolicyID")
    String? storagePolicyId;
    
    ///storagePolicyName is the storage Policy Based Management (SPBM) profile name.
    @JsonKey(name: "storagePolicyName")
    String? storagePolicyName;
    
    ///volumePath is the path that identifies vSphere volume vmdk
    @JsonKey(name: "volumePath")
    String volumePath;

    IoK8SApiCoreV1VsphereVirtualDiskVolumeSource({
        this.fsType,
        this.storagePolicyId,
        this.storagePolicyName,
        required this.volumePath,
    });

    factory IoK8SApiCoreV1VsphereVirtualDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VsphereVirtualDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VsphereVirtualDiskVolumeSourceToJson(this);
}
