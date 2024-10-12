import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'daemonsetcondition_apps_v1.g.dart';


///DaemonSetCondition describes the state of a DaemonSet at a certain point.
@JsonSerializable()
class DaemonsetconditionAppsV1 {
    
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

    DaemonsetconditionAppsV1({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory DaemonsetconditionAppsV1.fromJson(Map<String, dynamic> json) => _$DaemonsetconditionAppsV1FromJson(json);

    Map<String, dynamic> toJson() => _$DaemonsetconditionAppsV1ToJson(this);
}
