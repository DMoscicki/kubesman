import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'replicasetcondition_apps_v1.g.dart';


///ReplicaSetCondition describes the state of a replica set at a certain point.
@JsonSerializable()
class ReplicasetconditionAppsV1 {
    
    ///The last time the condition transitioned from one status to another.
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
    
    ///Type of replica set condition.
    @JsonKey(name: "type")
    String? type;

    ReplicasetconditionAppsV1({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory ReplicasetconditionAppsV1.fromJson(Map<String, dynamic> json) => _$ReplicasetconditionAppsV1FromJson(json);

    Map<String, dynamic> toJson() => _$ReplicasetconditionAppsV1ToJson(this);
}
