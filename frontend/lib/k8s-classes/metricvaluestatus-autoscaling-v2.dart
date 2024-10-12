import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'metricvaluestatus_autoscaling_v2.g.dart';


///MetricValueStatus holds the current value for a metric
@JsonSerializable()
class MetricvaluestatusAutoscalingV2 {
    
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

    MetricvaluestatusAutoscalingV2({
        this.averageUtilization,
        this.averageValue,
        this.value,
    });

    factory MetricvaluestatusAutoscalingV2.fromJson(Map<String, dynamic> json) => _$MetricvaluestatusAutoscalingV2FromJson(json);

    Map<String, dynamic> toJson() => _$MetricvaluestatusAutoscalingV2ToJson(this);
}
