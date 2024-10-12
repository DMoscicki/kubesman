import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'replicationcontrollerstatus.g.dart';


///ReplicationControllerStatus represents the current status of a replication controller.
@JsonSerializable()
class Replicationcontrollerstatus {
    
    ///The number of available replicas (ready for at least minReadySeconds) for this
    ///replication controller.
    @JsonKey(name: "availableReplicas")
    int? availableReplicas;
    
    ///Represents the latest available observations of a replication controller's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApiCoreV1ReplicationControllerCondition>? conditions;
    
    ///The number of pods that have labels matching the labels of the pod template of the
    ///replication controller.
    @JsonKey(name: "fullyLabeledReplicas")
    int? fullyLabeledReplicas;
    
    ///ObservedGeneration reflects the generation of the most recently observed replication
    ///controller.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///The number of ready replicas for this replication controller.
    @JsonKey(name: "readyReplicas")
    int? readyReplicas;
    
    ///Replicas is the most recently observed number of replicas. More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#what-is-a-replicationcontroller
    @JsonKey(name: "replicas")
    int? replicas;

    Replicationcontrollerstatus({
        this.availableReplicas,
        this.conditions,
        this.fullyLabeledReplicas,
        this.observedGeneration,
        this.readyReplicas,
        required this.replicas,
    });

    factory Replicationcontrollerstatus.fromJson(Map<String, dynamic> json) => _$ReplicationcontrollerstatusFromJson(json);

    Map<String, dynamic> toJson() => _$ReplicationcontrollerstatusToJson(this);
}


///ReplicationControllerCondition describes the state of a replication controller at a
///certain point.
@JsonSerializable()
class IoK8SApiCoreV1ReplicationControllerCondition {
    
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
    
    ///Type of replication controller condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiCoreV1ReplicationControllerCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiCoreV1ReplicationControllerCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ReplicationControllerConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ReplicationControllerConditionToJson(this);
}
