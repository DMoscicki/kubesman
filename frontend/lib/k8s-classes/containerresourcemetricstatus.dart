import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'containerresourcemetricstatus.g.dart';


///ContainerResourceMetricStatus indicates the current value of a resource metric known to
///Kubernetes, as specified in requests and limits, describing a single container in each
///pod in the current scale target (e.g. CPU or memory).  Such metrics are built in to
///Kubernetes, and have special scaling options on top of those available to normal per-pod
///metrics using the "pods" source.
@JsonSerializable()
class Containerresourcemetricstatus {
    
    ///container is the name of the container in the pods of the scaling target
    @JsonKey(name: "container")
    String? container;
    
    ///current contains the current value for the given metric
    @JsonKey(name: "current")
    IoK8SApiAutoscalingV2MetricValueStatus current;
    
    ///name is the name of the resource in question.
    @JsonKey(name: "name")
    String? name;

    Containerresourcemetricstatus({
        required this.container,
        required this.current,
        required this.name,
    });

    factory Containerresourcemetricstatus.fromJson(Map<String, dynamic> json) => _$ContainerresourcemetricstatusFromJson(json);

    Map<String, dynamic> toJson() => _$ContainerresourcemetricstatusToJson(this);
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
