import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'deploymentcondition.g.dart';


///DeploymentCondition describes the state of a deployment at a certain point.
@JsonSerializable()
class Deploymentcondition {
    
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

    Deploymentcondition({
        this.lastTransitionTime,
        this.lastUpdateTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Deploymentcondition.fromJson(Map<String, dynamic> json) => _$DeploymentconditionFromJson(json);

    Map<String, dynamic> toJson() => _$DeploymentconditionToJson(this);
}
