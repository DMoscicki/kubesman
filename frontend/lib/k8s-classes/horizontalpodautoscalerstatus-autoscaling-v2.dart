import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'horizontalpodautoscalerstatus_autoscaling_v2.g.dart';


///HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
@JsonSerializable()
class HorizontalpodautoscalerstatusAutoscalingV2 {
    
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
    int? desiredReplicas;
    
    ///lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods,
    ///used by the autoscaler to control how often the number of pods is changed.
    @JsonKey(name: "lastScaleTime")
    DateTime? lastScaleTime;
    
    ///observedGeneration is the most recent generation observed by this autoscaler.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;

    HorizontalpodautoscalerstatusAutoscalingV2({
        this.conditions,
        this.currentMetrics,
        this.currentReplicas,
        required this.desiredReplicas,
        this.lastScaleTime,
        this.observedGeneration,
    });

    factory HorizontalpodautoscalerstatusAutoscalingV2.fromJson(Map<String, dynamic> json) => _$HorizontalpodautoscalerstatusAutoscalingV2FromJson(json);

    Map<String, dynamic> toJson() => _$HorizontalpodautoscalerstatusAutoscalingV2ToJson(this);
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


///DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
///
///CrossVersionObjectReference contains enough information to let you identify the referred
///resource.
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
