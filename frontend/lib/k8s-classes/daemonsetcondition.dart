import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'daemonsetcondition.g.dart';


///DaemonSetCondition describes the state of a DaemonSet at a certain point.
@JsonSerializable()
class Daemonsetcondition {
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///A human readable message indicating details about the transition.
    @JsonKey(name: "message")
    String? message;
    
    ///The reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///Type of DaemonSet condition.
    @JsonKey(name: "type")
    String? type;

    Daemonsetcondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Daemonsetcondition.fromJson(Map<String, dynamic> json) => _$DaemonsetconditionFromJson(json);

    Map<String, dynamic> toJson() => _$DaemonsetconditionToJson(this);
}
