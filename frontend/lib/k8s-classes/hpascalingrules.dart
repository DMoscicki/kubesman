import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'hpascalingrules.g.dart';


///HPAScalingRules configures the scaling behavior for one direction. These Rules are
///applied after calculating DesiredReplicas from metrics for the HPA. They can limit the
///scaling velocity by specifying scaling policies. They can prevent flapping by specifying
///the stabilization window, so that the number of replicas is not set instantly, instead,
///the safest value from the stabilization window is chosen.
@JsonSerializable()
class Hpascalingrules {
    
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

    Hpascalingrules({
        this.policies,
        this.selectPolicy,
        this.stabilizationWindowSeconds,
    });

    factory Hpascalingrules.fromJson(Map<String, dynamic> json) => _$HpascalingrulesFromJson(json);

    Map<String, dynamic> toJson() => _$HpascalingrulesToJson(this);
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
