import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'deploymentcondition_apps_v1.g.dart';


///DeploymentCondition describes the state of a deployment at a certain point.
@JsonSerializable()
class DeploymentconditionAppsV1 {
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///The last time this condition was updated.
    @JsonKey(name: "lastUpdateTime")
    DateTime? lastUpdateTime;
    
    ///A human readable message indicating details about the transition.
    @JsonKey(name: "message")
    String? message;
    
    ///The reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///Type of deployment condition.
    @JsonKey(name: "type")
    String? type;

    DeploymentconditionAppsV1({
        this.lastTransitionTime,
        this.lastUpdateTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory DeploymentconditionAppsV1.fromJson(Map<String, dynamic> json) => _$DeploymentconditionAppsV1FromJson(json);

    Map<String, dynamic> toJson() => _$DeploymentconditionAppsV1ToJson(this);
}
