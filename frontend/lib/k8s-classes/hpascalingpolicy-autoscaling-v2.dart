import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hpascalingpolicy_autoscaling_v2.g.dart';


///HPAScalingPolicy is a single policy which must hold true for a specified past interval.
@JsonSerializable()
class HpascalingpolicyAutoscalingV2 {
    
    ///periodSeconds specifies the window of time for which the policy should hold true.
    ///PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
    @JsonKey(name: "periodSeconds")
    int? periodSeconds;
    
    ///type is used to specify the scaling policy.
    @JsonKey(name: "type")
    String? type;
    
    ///value contains the amount of change which is permitted by the policy. It must be greater
    ///than zero
    @JsonKey(name: "value")
    int? value;

    HpascalingpolicyAutoscalingV2({
        required this.periodSeconds,
        required this.type,
        required this.value,
    });

    factory HpascalingpolicyAutoscalingV2.fromJson(Map<String, dynamic> json) => _$HpascalingpolicyAutoscalingV2FromJson(json);

    Map<String, dynamic> toJson() => _$HpascalingpolicyAutoscalingV2ToJson(this);
}
