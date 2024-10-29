import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'horizontalpodautoscalerlist.g.dart';


///HorizontalPodAutoscalerList is a list of horizontal pod autoscaler objects.
@JsonSerializable()
class Horizontalpodautoscalerlist {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///items is the list of horizontal pod autoscaler objects.
    @JsonKey(name: "items")
    List<IoK8SApiAutoscalingV2HorizontalPodAutoscaler>? items;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    HorizontalpodautoscalerlistKind? kind;
    
    ///metadata is the standard list metadata.
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ListMeta? metadata;

    Horizontalpodautoscalerlist({
        this.apiVersion,
        required this.items,
        this.kind,
        this.metadata,
    });

    factory Horizontalpodautoscalerlist.fromJson(Map<String, dynamic> json) => _$HorizontalpodautoscalerlistFromJson(json);

    Map<String, dynamic> toJson() => _$HorizontalpodautoscalerlistToJson(this);
}


///HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which
///automatically manages the replica count of any resource implementing the scale
///subresource based on the metrics specified.
@JsonSerializable()
class IoK8SApiAutoscalingV2HorizontalPodAutoscaler {
    
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
    
    ///metadata is the standard object metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///spec is the specification for the behaviour of the autoscaler. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
    @JsonKey(name: "spec")
    IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpec? spec;
    
    ///status is the current information about the autoscaler.
    @JsonKey(name: "status")
    IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatus? status;

    IoK8SApiAutoscalingV2HorizontalPodAutoscaler({
        this.apiVersion,
        this.kind,
        this.metadata,
        this.spec,
        this.status,
    });

    factory IoK8SApiAutoscalingV2HorizontalPodAutoscaler.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum ItemKind {
    @JsonValue("HorizontalPodAutoscaler")
    HORIZONTAL_POD_AUTOSCALER
}

final itemKindValues = EnumValues({
    "HorizontalPodAutoscaler": ItemKind.HORIZONTAL_POD_AUTOSCALER
});


///metadata is the standard object metadata. More info:
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


///spec is the specification for the behaviour of the autoscaler. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
///
///HorizontalPodAutoscalerSpec describes the desired functionality of the
///HorizontalPodAutoscaler.
@JsonSerializable()
class IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpec {
    
    ///behavior configures the scaling behavior of the target in both Up and Down directions
    ///(scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for
    ///scale up and scale down are used.
    @JsonKey(name: "behavior")
    IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior? behavior;
    
    ///maxReplicas is the upper limit for the number of replicas to which the autoscaler can
    ///scale up. It cannot be less that minReplicas.
    @JsonKey(name: "maxReplicas")
    int maxReplicas;
    
    ///metrics contains the specifications for which to use to calculate the desired replica
    ///count (the maximum replica count across all metrics will be used).  The desired replica
    ///count is calculated multiplying the ratio between the target value and the current value
    ///by the current number of pods.  Ergo, metrics used must decrease as the pod count is
    ///increased, and vice-versa.  See the individual metric source types for more information
    ///about how each type of metric must respond. If not set, the default metric will be set to
    ///80% average CPU utilization.
    @JsonKey(name: "metrics")
    List<IoK8SApiAutoscalingV2MetricSpec>? metrics;
    
    ///minReplicas is the lower limit for the number of replicas to which the autoscaler can
    ///scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the alpha feature
    ///gate HPAScaleToZero is enabled and at least one Object or External metric is configured.
    ///Scaling is active as long as at least one metric value is available.
    @JsonKey(name: "minReplicas")
    int? minReplicas;
    
    ///scaleTargetRef points to the target resource to scale, and is used to the pods for which
    ///metrics should be collected, as well as to actually change the replica count.
    @JsonKey(name: "scaleTargetRef")
    IoK8SApiAutoscalingV2CrossVersionObjectReference scaleTargetRef;

    IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpec({
        this.behavior,
        required this.maxReplicas,
        this.metrics,
        this.minReplicas,
        required this.scaleTargetRef,
    });

    factory IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpecToJson(this);
}


///behavior configures the scaling behavior of the target in both Up and Down directions
///(scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for
///scale up and scale down are used.
///
///HorizontalPodAutoscalerBehavior configures the scaling behavior of the target in both Up
///and Down directions (scaleUp and scaleDown fields respectively).
@JsonSerializable()
class IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior {
    
    ///scaleDown is scaling policy for scaling Down. If not set, the default value is to allow
    ///to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the
    ///highest recommendation for the last 300sec is used).
    @JsonKey(name: "scaleDown")
    IoK8SApiAutoscalingV2HpaScalingRules? scaleDown;
    
    ///scaleUp is scaling policy for scaling Up. If not set, the default value is the higher
    ///of:
    ///* increase no more than 4 pods per 60 seconds
    ///* double the number of pods per 60 seconds
    ///No stabilization is used.
    @JsonKey(name: "scaleUp")
    IoK8SApiAutoscalingV2HpaScalingRules? scaleUp;

    IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior({
        this.scaleDown,
        this.scaleUp,
    });

    factory IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehaviorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehaviorToJson(this);
}


///scaleDown is scaling policy for scaling Down. If not set, the default value is to allow
///to scale down to minReplicas pods, with a 300 second stabilization window (i.e., the
///highest recommendation for the last 300sec is used).
///
///HPAScalingRules configures the scaling behavior for one direction. These Rules are
///applied after calculating DesiredReplicas from metrics for the HPA. They can limit the
///scaling velocity by specifying scaling policies. They can prevent flapping by specifying
///the stabilization window, so that the number of replicas is not set instantly, instead,
///the safest value from the stabilization window is chosen.
///
///scaleUp is scaling policy for scaling Up. If not set, the default value is the higher
///of:
///* increase no more than 4 pods per 60 seconds
///* double the number of pods per 60 seconds
///No stabilization is used.
@JsonSerializable()
class IoK8SApiAutoscalingV2HpaScalingRules {
    
    ///policies is a list of potential scaling polices which can be used during scaling. At
    ///least one policy must be specified, otherwise the HPAScalingRules will be discarded as
    ///invalid
    @JsonKey(name: "policies")
    List<IoK8SApiAutoscalingV2HpaScalingPolicy>? policies;
    
    ///selectPolicy is used to specify which policy should be used. If not set, the default
    ///value Max is used.
    @JsonKey(name: "selectPolicy")
    String? selectPolicy;
    
    ///stabilizationWindowSeconds is the number of seconds for which past recommendations should
    ///be considered while scaling up or scaling down. StabilizationWindowSeconds must be
    ///greater than or equal to zero and less than or equal to 3600 (one hour). If not set, use
    ///the default values: - For scale up: 0 (i.e. no stabilization is done). - For scale down:
    ///300 (i.e. the stabilization window is 300 seconds long).
    @JsonKey(name: "stabilizationWindowSeconds")
    int? stabilizationWindowSeconds;

    IoK8SApiAutoscalingV2HpaScalingRules({
        this.policies,
        this.selectPolicy,
        this.stabilizationWindowSeconds,
    });

    factory IoK8SApiAutoscalingV2HpaScalingRules.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2HpaScalingRulesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2HpaScalingRulesToJson(this);
}


///HPAScalingPolicy is a single policy which must hold true for a specified past interval.
@JsonSerializable()
class IoK8SApiAutoscalingV2HpaScalingPolicy {
    
    ///periodSeconds specifies the window of time for which the policy should hold true.
    ///PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    @JsonKey(name: "periodSeconds")
    int periodSeconds;
    
    ///type is used to specify the scaling policy.
    @JsonKey(name: "type")
    String type;
    
    ///value contains the amount of change which is permitted by the policy. It must be greater
    ///than zero
    @JsonKey(name: "value")
    int value;

    IoK8SApiAutoscalingV2HpaScalingPolicy({
        required this.periodSeconds,
        required this.type,
        required this.value,
    });

    factory IoK8SApiAutoscalingV2HpaScalingPolicy.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2HpaScalingPolicyFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2HpaScalingPolicyToJson(this);
}


///MetricSpec specifies how to scale based on a single metric (only `type` and one other
///matching field should be set at once).
@JsonSerializable()
class IoK8SApiAutoscalingV2MetricSpec {
    
    ///containerResource refers to a resource metric (such as those specified in requests and
    ///limits) known to Kubernetes describing a single container in each pod of the current
    ///scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have
    ///special scaling options on top of those available to normal per-pod metrics using the
    ///"pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics
    ///feature flag.
    @JsonKey(name: "containerResource")
    IoK8SApiAutoscalingV2ContainerResourceMetricSource? containerResource;
    
    ///external refers to a global metric that is not associated with any Kubernetes object. It
    ///allows autoscaling based on information coming from components running outside of cluster
    ///(for example length of queue in cloud messaging service, or QPS from loadbalancer running
    ///outside of cluster).
    @JsonKey(name: "external")
    IoK8SApiAutoscalingV2ExternalMetricSource? ioK8SApiAutoscalingV2MetricSpecExternal;
    
    ///object refers to a metric describing a single kubernetes object (for example,
    ///hits-per-second on an Ingress object).
    @JsonKey(name: "object")
    IoK8SApiAutoscalingV2ObjectMetricSource? object;
    
    ///pods refers to a metric describing each pod in the current scale target (for example,
    ///transactions-processed-per-second).  The values will be averaged together before being
    ///compared to the target value.
    @JsonKey(name: "pods")
    IoK8SApiAutoscalingV2PodsMetricSource? pods;
    
    ///resource refers to a resource metric (such as those specified in requests and limits)
    ///known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory).
    ///Such metrics are built in to Kubernetes, and have special scaling options on top of those
    ///available to normal per-pod metrics using the "pods" source.
    @JsonKey(name: "resource")
    IoK8SApiAutoscalingV2ResourceMetricSource? resource;
    
    ///type is the type of metric source.  It should be one of "ContainerResource", "External",
    ///"Object", "Pods" or "Resource", each mapping to a matching field in the object. Note:
    ///"ContainerResource" type is available on when the feature-gate HPAContainerMetrics is
    ///enabled
    @JsonKey(name: "type")
    String type;

    IoK8SApiAutoscalingV2MetricSpec({
        this.containerResource,
        this.ioK8SApiAutoscalingV2MetricSpecExternal,
        this.object,
        this.pods,
        this.resource,
        required this.type,
    });

    factory IoK8SApiAutoscalingV2MetricSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2MetricSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2MetricSpecToJson(this);
}


///containerResource refers to a resource metric (such as those specified in requests and
///limits) known to Kubernetes describing a single container in each pod of the current
///scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have
///special scaling options on top of those available to normal per-pod metrics using the
///"pods" source. This is an alpha feature and can be enabled by the HPAContainerMetrics
///feature flag.
///
///ContainerResourceMetricSource indicates how to scale on a resource metric known to
///Kubernetes, as specified in requests and limits, describing each pod in the current scale
///target (e.g. CPU or memory).  The values will be averaged together before being compared
///to the target.  Such metrics are built in to Kubernetes, and have special scaling options
///on top of those available to normal per-pod metrics using the "pods" source.  Only one
///"target" type should be set.
@JsonSerializable()
class IoK8SApiAutoscalingV2ContainerResourceMetricSource {
    
    ///container is the name of the container in the pods of the scaling target
    @JsonKey(name: "container")
    String container;
    
    ///name is the name of the resource in question.
    @JsonKey(name: "name")
    String name;
    
    ///target specifies the target value for the given metric
    @JsonKey(name: "target")
    IoK8SApiAutoscalingV2MetricTarget target;

    IoK8SApiAutoscalingV2ContainerResourceMetricSource({
        required this.container,
        required this.name,
        required this.target,
    });

    factory IoK8SApiAutoscalingV2ContainerResourceMetricSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2ContainerResourceMetricSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2ContainerResourceMetricSourceToJson(this);
}


///target specifies the target value for the given metric
///
///MetricTarget defines the target value, average value, or average utilization of a
///specific metric
@JsonSerializable()
class IoK8SApiAutoscalingV2MetricTarget {
    
    ///averageUtilization is the target value of the average of the resource metric across all
    ///relevant pods, represented as a percentage of the requested value of the resource for the
    ///pods. Currently only valid for Resource metric source type
    @JsonKey(name: "averageUtilization")
    int? averageUtilization;
    
    ///averageValue is the target value of the average of the metric across all relevant pods
    ///(as a quantity)
    @JsonKey(name: "averageValue")
    dynamic averageValue;
    
    ///type represents whether the metric type is Utilization, Value, or AverageValue
    @JsonKey(name: "type")
    String type;
    
    ///value is the target value of the metric (as a quantity).
    @JsonKey(name: "value")
    dynamic value;

    IoK8SApiAutoscalingV2MetricTarget({
        this.averageUtilization,
        this.averageValue,
        required this.type,
        this.value,
    });

    factory IoK8SApiAutoscalingV2MetricTarget.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2MetricTargetFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2MetricTargetToJson(this);
}


///external refers to a global metric that is not associated with any Kubernetes object. It
///allows autoscaling based on information coming from components running outside of cluster
///(for example length of queue in cloud messaging service, or QPS from loadbalancer running
///outside of cluster).
///
///ExternalMetricSource indicates how to scale on a metric not associated with any
///Kubernetes object (for example length of queue in cloud messaging service, or QPS from
///loadbalancer running outside of cluster).
@JsonSerializable()
class IoK8SApiAutoscalingV2ExternalMetricSource {
    
    ///metric identifies the target metric by name and selector
    @JsonKey(name: "metric")
    IoK8SApiAutoscalingV2MetricIdentifier metric;
    
    ///target specifies the target value for the given metric
    @JsonKey(name: "target")
    IoK8SApiAutoscalingV2MetricTarget target;

    IoK8SApiAutoscalingV2ExternalMetricSource({
        required this.metric,
        required this.target,
    });

    factory IoK8SApiAutoscalingV2ExternalMetricSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2ExternalMetricSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2ExternalMetricSourceToJson(this);
}


///metric identifies the target metric by name and selector
///
///MetricIdentifier defines the name and optionally selector for a metric
@JsonSerializable()
class IoK8SApiAutoscalingV2MetricIdentifier {
    
    ///name is the name of the given metric
    @JsonKey(name: "name")
    String name;
    
    ///selector is the string-encoded form of a standard kubernetes label selector for the given
    ///metric When set, it is passed as an additional parameter to the metrics server for more
    ///specific metrics scoping. When unset, just the metricName will be used to gather metrics.
    @JsonKey(name: "selector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? selector;

    IoK8SApiAutoscalingV2MetricIdentifier({
        required this.name,
        this.selector,
    });

    factory IoK8SApiAutoscalingV2MetricIdentifier.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2MetricIdentifierFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2MetricIdentifierToJson(this);
}


///selector is the string-encoded form of a standard kubernetes label selector for the given
///metric When set, it is passed as an additional parameter to the metrics server for more
///specific metrics scoping. When unset, just the metricName will be used to gather
///metrics.
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
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


///object refers to a metric describing a single kubernetes object (for example,
///hits-per-second on an Ingress object).
///
///ObjectMetricSource indicates how to scale on a metric describing a kubernetes object (for
///example, hits-per-second on an Ingress object).
@JsonSerializable()
class IoK8SApiAutoscalingV2ObjectMetricSource {
    
    ///describedObject specifies the descriptions of a object,such as kind,name apiVersion
    @JsonKey(name: "describedObject")
    IoK8SApiAutoscalingV2CrossVersionObjectReference describedObject;
    
    ///metric identifies the target metric by name and selector
    @JsonKey(name: "metric")
    IoK8SApiAutoscalingV2MetricIdentifier metric;
    
    ///target specifies the target value for the given metric
    @JsonKey(name: "target")
    IoK8SApiAutoscalingV2MetricTarget target;

    IoK8SApiAutoscalingV2ObjectMetricSource({
        required this.describedObject,
        required this.metric,
        required this.target,
    });

    factory IoK8SApiAutoscalingV2ObjectMetricSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2ObjectMetricSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2ObjectMetricSourceToJson(this);
}


///describedObject specifies the descriptions of a object,such as kind,name apiVersion
///
///CrossVersionObjectReference contains enough information to let you identify the referred
///resource.
///
///scaleTargetRef points to the target resource to scale, and is used to the pods for which
///metrics should be collected, as well as to actually change the replica count.
///
///DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
@JsonSerializable()
class IoK8SApiAutoscalingV2CrossVersionObjectReference {
    
    ///apiVersion is the API version of the referent
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///kind is the kind of the referent; More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String kind;
    
    ///name is the name of the referent; More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String name;

    IoK8SApiAutoscalingV2CrossVersionObjectReference({
        this.apiVersion,
        required this.kind,
        required this.name,
    });

    factory IoK8SApiAutoscalingV2CrossVersionObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2CrossVersionObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2CrossVersionObjectReferenceToJson(this);
}


///pods refers to a metric describing each pod in the current scale target (for example,
///transactions-processed-per-second).  The values will be averaged together before being
///compared to the target value.
///
///PodsMetricSource indicates how to scale on a metric describing each pod in the current
///scale target (for example, transactions-processed-per-second). The values will be
///averaged together before being compared to the target value.
@JsonSerializable()
class IoK8SApiAutoscalingV2PodsMetricSource {
    
    ///metric identifies the target metric by name and selector
    @JsonKey(name: "metric")
    IoK8SApiAutoscalingV2MetricIdentifier metric;
    
    ///target specifies the target value for the given metric
    @JsonKey(name: "target")
    IoK8SApiAutoscalingV2MetricTarget target;

    IoK8SApiAutoscalingV2PodsMetricSource({
        required this.metric,
        required this.target,
    });

    factory IoK8SApiAutoscalingV2PodsMetricSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2PodsMetricSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2PodsMetricSourceToJson(this);
}


///resource refers to a resource metric (such as those specified in requests and limits)
///known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory).
///Such metrics are built in to Kubernetes, and have special scaling options on top of those
///available to normal per-pod metrics using the "pods" source.
///
///ResourceMetricSource indicates how to scale on a resource metric known to Kubernetes, as
///specified in requests and limits, describing each pod in the current scale target (e.g.
///CPU or memory).  The values will be averaged together before being compared to the
///target.  Such metrics are built in to Kubernetes, and have special scaling options on top
///of those available to normal per-pod metrics using the "pods" source.  Only one "target"
///type should be set.
@JsonSerializable()
class IoK8SApiAutoscalingV2ResourceMetricSource {
    
    ///name is the name of the resource in question.
    @JsonKey(name: "name")
    String name;
    
    ///target specifies the target value for the given metric
    @JsonKey(name: "target")
    IoK8SApiAutoscalingV2MetricTarget target;

    IoK8SApiAutoscalingV2ResourceMetricSource({
        required this.name,
        required this.target,
    });

    factory IoK8SApiAutoscalingV2ResourceMetricSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2ResourceMetricSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2ResourceMetricSourceToJson(this);
}


///status is the current information about the autoscaler.
///
///HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
@JsonSerializable()
class IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatus {
    
    ///conditions is the set of conditions required for this autoscaler to scale its target, and
    ///indicates whether or not those conditions are met.
    @JsonKey(name: "conditions")
    List<IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition>? conditions;
    
    ///currentMetrics is the last read state of the metrics used by this autoscaler.
    @JsonKey(name: "currentMetrics")
    List<IoK8SApiAutoscalingV2MetricStatus>? currentMetrics;
    
    ///currentReplicas is current number of replicas of pods managed by this autoscaler, as last
    ///seen by the autoscaler.
    @JsonKey(name: "currentReplicas")
    int? currentReplicas;
    
    ///desiredReplicas is the desired number of replicas of pods managed by this autoscaler, as
    ///last calculated by the autoscaler.
    @JsonKey(name: "desiredReplicas")
    int desiredReplicas;
    
    ///lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods,
    ///used by the autoscaler to control how often the number of pods is changed.
    @JsonKey(name: "lastScaleTime")
    DateTime? lastScaleTime;
    
    ///observedGeneration is the most recent generation observed by this autoscaler.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;

    IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatus({
        this.conditions,
        this.currentMetrics,
        this.currentReplicas,
        required this.desiredReplicas,
        this.lastScaleTime,
        this.observedGeneration,
    });

    factory IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatusToJson(this);
}


///HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a
///certain point.
@JsonSerializable()
class IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition {
    
    ///lastTransitionTime is the last time the condition transitioned from one status to another
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///message is a human-readable explanation containing details about the transition
    @JsonKey(name: "message")
    String? message;
    
    ///reason is the reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///status is the status of the condition (True, False, Unknown)
    @JsonKey(name: "status")
    String status;
    
    ///type describes the current condition
    @JsonKey(name: "type")
    String type;

    IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerConditionToJson(this);
}


///MetricStatus describes the last-read state of a single metric.
@JsonSerializable()
class IoK8SApiAutoscalingV2MetricStatus {
    
    ///container resource refers to a resource metric (such as those specified in requests and
    ///limits) known to Kubernetes describing a single container in each pod in the current
    ///scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have
    ///special scaling options on top of those available to normal per-pod metrics using the
    ///"pods" source.
    @JsonKey(name: "containerResource")
    IoK8SApiAutoscalingV2ContainerResourceMetricStatus? containerResource;
    
    ///external refers to a global metric that is not associated with any Kubernetes object. It
    ///allows autoscaling based on information coming from components running outside of cluster
    ///(for example length of queue in cloud messaging service, or QPS from loadbalancer running
    ///outside of cluster).
    @JsonKey(name: "external")
    IoK8SApiAutoscalingV2ExternalMetricStatus? ioK8SApiAutoscalingV2MetricStatusExternal;
    
    ///object refers to a metric describing a single kubernetes object (for example,
    ///hits-per-second on an Ingress object).
    @JsonKey(name: "object")
    IoK8SApiAutoscalingV2ObjectMetricStatus? object;
    
    ///pods refers to a metric describing each pod in the current scale target (for example,
    ///transactions-processed-per-second).  The values will be averaged together before being
    ///compared to the target value.
    @JsonKey(name: "pods")
    IoK8SApiAutoscalingV2PodsMetricStatus? pods;
    
    ///resource refers to a resource metric (such as those specified in requests and limits)
    ///known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory).
    ///Such metrics are built in to Kubernetes, and have special scaling options on top of those
    ///available to normal per-pod metrics using the "pods" source.
    @JsonKey(name: "resource")
    IoK8SApiAutoscalingV2ResourceMetricStatus? resource;
    
    ///type is the type of metric source.  It will be one of "ContainerResource", "External",
    ///"Object", "Pods" or "Resource", each corresponds to a matching field in the object. Note:
    ///"ContainerResource" type is available on when the feature-gate HPAContainerMetrics is
    ///enabled
    @JsonKey(name: "type")
    String type;

    IoK8SApiAutoscalingV2MetricStatus({
        this.containerResource,
        this.ioK8SApiAutoscalingV2MetricStatusExternal,
        this.object,
        this.pods,
        this.resource,
        required this.type,
    });

    factory IoK8SApiAutoscalingV2MetricStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2MetricStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2MetricStatusToJson(this);
}


///container resource refers to a resource metric (such as those specified in requests and
///limits) known to Kubernetes describing a single container in each pod in the current
///scale target (e.g. CPU or memory). Such metrics are built in to Kubernetes, and have
///special scaling options on top of those available to normal per-pod metrics using the
///"pods" source.
///
///ContainerResourceMetricStatus indicates the current value of a resource metric known to
///Kubernetes, as specified in requests and limits, describing a single container in each
///pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to
///Kubernetes, and have special scaling options on top of those available to normal per-pod
///metrics using the "pods" source.
@JsonSerializable()
class IoK8SApiAutoscalingV2ContainerResourceMetricStatus {
    
    ///container is the name of the container in the pods of the scaling target
    @JsonKey(name: "container")
    String container;
    
    ///current contains the current value for the given metric
    @JsonKey(name: "current")
    IoK8SApiAutoscalingV2MetricValueStatus current;
    
    ///name is the name of the resource in question.
    @JsonKey(name: "name")
    String name;

    IoK8SApiAutoscalingV2ContainerResourceMetricStatus({
        required this.container,
        required this.current,
        required this.name,
    });

    factory IoK8SApiAutoscalingV2ContainerResourceMetricStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2ContainerResourceMetricStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2ContainerResourceMetricStatusToJson(this);
}


///current contains the current value for the given metric
///
///MetricValueStatus holds the current value for a metric
@JsonSerializable()
class IoK8SApiAutoscalingV2MetricValueStatus {
    
    ///currentAverageUtilization is the current value of the average of the resource metric
    ///across all relevant pods, represented as a percentage of the requested value of the
    ///resource for the pods.
    @JsonKey(name: "averageUtilization")
    int? averageUtilization;
    
    ///averageValue is the current value of the average of the metric across all relevant pods
    ///(as a quantity)
    @JsonKey(name: "averageValue")
    dynamic averageValue;
    
    ///value is the current value of the metric (as a quantity).
    @JsonKey(name: "value")
    dynamic value;

    IoK8SApiAutoscalingV2MetricValueStatus({
        this.averageUtilization,
        this.averageValue,
        this.value,
    });

    factory IoK8SApiAutoscalingV2MetricValueStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2MetricValueStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2MetricValueStatusToJson(this);
}


///external refers to a global metric that is not associated with any Kubernetes object. It
///allows autoscaling based on information coming from components running outside of cluster
///(for example length of queue in cloud messaging service, or QPS from loadbalancer running
///outside of cluster).
///
///ExternalMetricStatus indicates the current value of a global metric not associated with
///any Kubernetes object.
@JsonSerializable()
class IoK8SApiAutoscalingV2ExternalMetricStatus {
    
    ///current contains the current value for the given metric
    @JsonKey(name: "current")
    IoK8SApiAutoscalingV2MetricValueStatus current;
    
    ///metric identifies the target metric by name and selector
    @JsonKey(name: "metric")
    IoK8SApiAutoscalingV2MetricIdentifier metric;

    IoK8SApiAutoscalingV2ExternalMetricStatus({
        required this.current,
        required this.metric,
    });

    factory IoK8SApiAutoscalingV2ExternalMetricStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2ExternalMetricStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2ExternalMetricStatusToJson(this);
}


///object refers to a metric describing a single kubernetes object (for example,
///hits-per-second on an Ingress object).
///
///ObjectMetricStatus indicates the current value of a metric describing a kubernetes object
///(for example, hits-per-second on an Ingress object).
@JsonSerializable()
class IoK8SApiAutoscalingV2ObjectMetricStatus {
    
    ///current contains the current value for the given metric
    @JsonKey(name: "current")
    IoK8SApiAutoscalingV2MetricValueStatus current;
    
    ///DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
    @JsonKey(name: "describedObject")
    IoK8SApiAutoscalingV2CrossVersionObjectReference describedObject;
    
    ///metric identifies the target metric by name and selector
    @JsonKey(name: "metric")
    IoK8SApiAutoscalingV2MetricIdentifier metric;

    IoK8SApiAutoscalingV2ObjectMetricStatus({
        required this.current,
        required this.describedObject,
        required this.metric,
    });

    factory IoK8SApiAutoscalingV2ObjectMetricStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2ObjectMetricStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2ObjectMetricStatusToJson(this);
}


///pods refers to a metric describing each pod in the current scale target (for example,
///transactions-processed-per-second).  The values will be averaged together before being
///compared to the target value.
///
///PodsMetricStatus indicates the current value of a metric describing each pod in the
///current scale target (for example, transactions-processed-per-second).
@JsonSerializable()
class IoK8SApiAutoscalingV2PodsMetricStatus {
    
    ///current contains the current value for the given metric
    @JsonKey(name: "current")
    IoK8SApiAutoscalingV2MetricValueStatus current;
    
    ///metric identifies the target metric by name and selector
    @JsonKey(name: "metric")
    IoK8SApiAutoscalingV2MetricIdentifier metric;

    IoK8SApiAutoscalingV2PodsMetricStatus({
        required this.current,
        required this.metric,
    });

    factory IoK8SApiAutoscalingV2PodsMetricStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2PodsMetricStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2PodsMetricStatusToJson(this);
}


///resource refers to a resource metric (such as those specified in requests and limits)
///known to Kubernetes describing each pod in the current scale target (e.g. CPU or memory).
///Such metrics are built in to Kubernetes, and have special scaling options on top of those
///available to normal per-pod metrics using the "pods" source.
///
///ResourceMetricStatus indicates the current value of a resource metric known to
///Kubernetes, as specified in requests and limits, describing each pod in the current scale
///target (e.g. CPU or memory).  Such metrics are built in to Kubernetes, and have special
///scaling options on top of those available to normal per-pod metrics using the "pods"
///source.
@JsonSerializable()
class IoK8SApiAutoscalingV2ResourceMetricStatus {
    
    ///current contains the current value for the given metric
    @JsonKey(name: "current")
    IoK8SApiAutoscalingV2MetricValueStatus current;
    
    ///name is the name of the resource in question.
    @JsonKey(name: "name")
    String name;

    IoK8SApiAutoscalingV2ResourceMetricStatus({
        required this.current,
        required this.name,
    });

    factory IoK8SApiAutoscalingV2ResourceMetricStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiAutoscalingV2ResourceMetricStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAutoscalingV2ResourceMetricStatusToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum HorizontalpodautoscalerlistKind {
    @JsonValue("HorizontalPodAutoscalerList")
    HORIZONTAL_POD_AUTOSCALER_LIST
}

final horizontalpodautoscalerlistKindValues = EnumValues({
    "HorizontalPodAutoscalerList": HorizontalpodautoscalerlistKind.HORIZONTAL_POD_AUTOSCALER_LIST
});


///metadata is the standard list metadata.
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
