import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hpascalingpolicy.g.dart';


///HPAScalingPolicy is a single policy which must hold true for a specified past interval.
@JsonSerializable()
class Hpascalingpolicy {
    
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

    Hpascalingpolicy({
        required this.periodSeconds,
        required this.type,
        required this.value,
    });

    factory Hpascalingpolicy.fromJson(Map<String, dynamic> json) => _$HpascalingpolicyFromJson(json);

    Map<String, dynamic> toJson() => _$HpascalingpolicyToJson(this);
}
