import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podcondition.g.dart';


///PodCondition contains details for the current condition of this pod.
@JsonSerializable()
class Podcondition {
    
    ///Last time we probed the condition.
    @JsonKey(name: "lastProbeTime")
    DateTime? lastProbeTime;
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///Human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///Unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status is the status of the condition. Can be True, False, Unknown. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
    @JsonKey(name: "status")
    String? status;
    
    ///Type is the type of the condition. More info:
    ///https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#pod-conditions
    @JsonKey(name: "type")
    String? type;

    Podcondition({
        this.lastProbeTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Podcondition.fromJson(Map<String, dynamic> json) => _$PodconditionFromJson(json);

    Map<String, dynamic> toJson() => _$PodconditionToJson(this);
}
