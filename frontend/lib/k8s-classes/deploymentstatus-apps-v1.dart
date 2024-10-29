import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'deploymentstatus_apps_v1.g.dart';


///DeploymentStatus is the most recently observed status of the Deployment.
@JsonSerializable()
class DeploymentstatusAppsV1 {
    
    ///Total number of available pods (ready for at least minReadySeconds) targeted by this
    ///deployment.
    @JsonKey(name: "availableReplicas")
    int? availableReplicas;
    
    ///Count of hash collisions for the Deployment. The Deployment controller uses this field as
    ///a collision avoidance mechanism when it needs to create the name for the newest
    ///ReplicaSet.
    @JsonKey(name: "collisionCount")
    int? collisionCount;
    
    ///Represents the latest available observations of a deployment's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApiAppsV1DeploymentCondition>? conditions;
    
    ///The generation observed by the deployment controller.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///readyReplicas is the number of pods targeted by this Deployment with a Ready Condition.
    @JsonKey(name: "readyReplicas")
    int? readyReplicas;
    
    ///Total number of non-terminated pods targeted by this deployment (their labels match the
    ///selector).
    @JsonKey(name: "replicas")
    int? replicas;
    
    ///Total number of unavailable pods targeted by this deployment. This is the total number of
    ///pods that are still required for the deployment to have 100% available capacity. They may
    ///either be pods that are running but not yet available or pods that still have not been
    ///created.
    @JsonKey(name: "unavailableReplicas")
    int? unavailableReplicas;
    
    ///Total number of non-terminated pods targeted by this deployment that have the desired
    ///template spec.
    @JsonKey(name: "updatedReplicas")
    int? updatedReplicas;

    DeploymentstatusAppsV1({
        this.availableReplicas,
        this.collisionCount,
        this.conditions,
        this.observedGeneration,
        this.readyReplicas,
        this.replicas,
        this.unavailableReplicas,
        this.updatedReplicas,
    });

    factory DeploymentstatusAppsV1.fromJson(Map<String, dynamic> json) => _$DeploymentstatusAppsV1FromJson(json);

    Map<String, dynamic> toJson() => _$DeploymentstatusAppsV1ToJson(this);
}


///DeploymentCondition describes the state of a deployment at a certain point.
@JsonSerializable()
class IoK8SApiAppsV1DeploymentCondition {
    
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
    String status;
    
    ///Type of deployment condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiAppsV1DeploymentCondition({
        this.lastTransitionTime,
        this.lastUpdateTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiAppsV1DeploymentCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiAppsV1DeploymentConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAppsV1DeploymentConditionToJson(this);
}
