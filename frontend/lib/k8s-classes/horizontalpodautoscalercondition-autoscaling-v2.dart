import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'horizontalpodautoscalercondition_autoscaling_v2.g.dart';


///HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a
///certain point.
@JsonSerializable()
class HorizontalpodautoscalerconditionAutoscalingV2 {
    
    ///lastTransitionTime is the last time the condition transitioned from one status to another
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///message is a human-readable explanation containing details about the transition
    @JsonKey(name: "message")
    String? message;
    
    ///reason is the reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///status is the status of the condition (True, False, Unknown)
    @JsonKey(name: "status")
    String? status;
    
    ///type describes the current condition
    @JsonKey(name: "type")
    String? type;

    HorizontalpodautoscalerconditionAutoscalingV2({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory HorizontalpodautoscalerconditionAutoscalingV2.fromJson(Map<String, dynamic> json) => _$HorizontalpodautoscalerconditionAutoscalingV2FromJson(json);

    Map<String, dynamic> toJson() => _$HorizontalpodautoscalerconditionAutoscalingV2ToJson(this);
}
