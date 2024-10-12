import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'metricvaluestatus.g.dart';


///MetricValueStatus holds the current value for a metric
@JsonSerializable()
class Metricvaluestatus {
    
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

    Metricvaluestatus({
        this.averageUtilization,
        this.averageValue,
        this.value,
    });

    factory Metricvaluestatus.fromJson(Map<String, dynamic> json) => _$MetricvaluestatusFromJson(json);

    Map<String, dynamic> toJson() => _$MetricvaluestatusToJson(this);
}
