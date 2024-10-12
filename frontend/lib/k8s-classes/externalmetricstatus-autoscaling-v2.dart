import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'externalmetricstatus_autoscaling_v2.g.dart';


///ExternalMetricStatus indicates the current value of a global metric not associated with
///any Kubernetes object.
@JsonSerializable()
class ExternalmetricstatusAutoscalingV2 {
    
    ///current contains the current value for the given metric
    @JsonKey(name: "current")
    IoK8SApiAutoscalingV2MetricValueStatus current;
    
    ///metric identifies the target metric by name and selector
    @JsonKey(name: "metric")
    IoK8SApiAutoscalingV2MetricIdentifier metric;

    ExternalmetricstatusAutoscalingV2({
        required this.current,
        required this.metric,
    });

    factory ExternalmetricstatusAutoscalingV2.fromJson(Map<String, dynamic> json) => _$ExternalmetricstatusAutoscalingV2FromJson(json);

    Map<String, dynamic> toJson() => _$ExternalmetricstatusAutoscalingV2ToJson(this);
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
