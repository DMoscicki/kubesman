import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerresourcemetricsource.g.dart';


///ContainerResourceMetricSource indicates how to scale on a resource metric known to
///Kubernetes, as specified in requests and limits, describing each pod in the current scale
///target (e.g. CPU or memory).  The values will be averaged together before being compared
///to the target.  Such metrics are built in to Kubernetes, and have special scaling options
///on top of those available to normal per-pod metrics using the "pods" source.  Only one
///"target" type should be set.
@JsonSerializable()
class Containerresourcemetricsource {
    
    ///container is the name of the container in the pods of the scaling target
    @JsonKey(name: "container")
    String? container;
    
    ///name is the name of the resource in question.
    @JsonKey(name: "name")
    String? name;
    
    ///target specifies the target value for the given metric
    @JsonKey(name: "target")
    IoK8SApiAutoscalingV2MetricTarget target;

    Containerresourcemetricsource({
        required this.container,
        required this.name,
        required this.target,
    });

    factory Containerresourcemetricsource.fromJson(Map<String, dynamic> json) => _$ContainerresourcemetricsourceFromJson(json);

    Map<String, dynamic> toJson() => _$ContainerresourcemetricsourceToJson(this);
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
