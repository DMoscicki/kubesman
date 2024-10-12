import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'horizontalpodautoscalercondition.g.dart';


///HorizontalPodAutoscalerCondition describes the state of a HorizontalPodAutoscaler at a
///certain point.
@JsonSerializable()
class Horizontalpodautoscalercondition {
    
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

    Horizontalpodautoscalercondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Horizontalpodautoscalercondition.fromJson(Map<String, dynamic> json) => _$HorizontalpodautoscalerconditionFromJson(json);

    Map<String, dynamic> toJson() => _$HorizontalpodautoscalerconditionToJson(this);
}
