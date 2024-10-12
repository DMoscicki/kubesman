import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'metrictarget.g.dart';


///MetricTarget defines the target value, average value, or average utilization of a
///specific metric
@JsonSerializable()
class Metrictarget {
    
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
    String? type;
    
    ///value is the target value of the metric (as a quantity).
    @JsonKey(name: "value")
    dynamic value;

    Metrictarget({
        this.averageUtilization,
        this.averageValue,
        required this.type,
        this.value,
    });

    factory Metrictarget.fromJson(Map<String, dynamic> json) => _$MetrictargetFromJson(json);

    Map<String, dynamic> toJson() => _$MetrictargetToJson(this);
}
