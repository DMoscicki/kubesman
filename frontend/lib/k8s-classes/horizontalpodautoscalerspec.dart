import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'horizontalpodautoscalerspec.g.dart';


///HorizontalPodAutoscalerSpec describes the desired functionality of the
///HorizontalPodAutoscaler.
@JsonSerializable()
class Horizontalpodautoscalerspec {
    
    ///behavior configures the scaling behavior of the target in both Up and Down directions
    ///(scaleUp and scaleDown fields respectively). If not set, the default HPAScalingRules for
    ///scale up and scale down are used.
    @JsonKey(name: "behavior")
    IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior? behavior;
    
    ///maxReplicas is the upper limit for the number of replicas to which the autoscaler can
    ///scale up. It cannot be less that minReplicas.
    @JsonKey(name: "maxReplicas")
    int? maxReplicas;
    
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

    Horizontalpodautoscalerspec({
        this.behavior,
        required this.maxReplicas,
        this.metrics,
        this.minReplicas,
        required this.scaleTargetRef,
    });

    factory Horizontalpodautoscalerspec.fromJson(Map<String, dynamic> json) => _$HorizontalpodautoscalerspecFromJson(json);

    Map<String, dynamic> toJson() => _$HorizontalpodautoscalerspecToJson(this);
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
