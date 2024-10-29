import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'replicasetstatus.g.dart';


///ReplicaSetStatus represents the current status of a ReplicaSet.
@JsonSerializable()
class Replicasetstatus {
    
    ///The number of available replicas (ready for at least minReadySeconds) for this replica
    ///set.
    @JsonKey(name: "availableReplicas")
    int? availableReplicas;
    
    ///Represents the latest available observations of a replica set's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApiAppsV1ReplicaSetCondition>? conditions;
    
    ///The number of pods that have labels matching the labels of the pod template of the
    ///replicaset.
    @JsonKey(name: "fullyLabeledReplicas")
    int? fullyLabeledReplicas;
    
    ///ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///readyReplicas is the number of pods targeted by this ReplicaSet with a Ready Condition.
    @JsonKey(name: "readyReplicas")
    int? readyReplicas;
    
    ///Replicas is the most recently observed number of replicas. More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
    @JsonKey(name: "replicas")
    int? replicas;

    Replicasetstatus({
        this.availableReplicas,
        this.conditions,
        this.fullyLabeledReplicas,
        this.observedGeneration,
        this.readyReplicas,
        required this.replicas,
    });

    factory Replicasetstatus.fromJson(Map<String, dynamic> json) => _$ReplicasetstatusFromJson(json);

    Map<String, dynamic> toJson() => _$ReplicasetstatusToJson(this);
}


///ReplicaSetCondition describes the state of a replica set at a certain point.
@JsonSerializable()
class IoK8SApiAppsV1ReplicaSetCondition {
    
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
    String status;
    
    ///Type of replica set condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiAppsV1ReplicaSetCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiAppsV1ReplicaSetCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiAppsV1ReplicaSetConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAppsV1ReplicaSetConditionToJson(this);
}
