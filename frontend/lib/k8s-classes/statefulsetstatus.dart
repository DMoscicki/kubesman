import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statefulsetstatus.g.dart';


///StatefulSetStatus represents the current state of a StatefulSet.
@JsonSerializable()
class Statefulsetstatus {
    
    ///Total number of available pods (ready for at least minReadySeconds) targeted by this
    ///statefulset.
    @JsonKey(name: "availableReplicas")
    int? availableReplicas;
    
    ///collisionCount is the count of hash collisions for the StatefulSet. The StatefulSet
    ///controller uses this field as a collision avoidance mechanism when it needs to create the
    ///name for the newest ControllerRevision.
    @JsonKey(name: "collisionCount")
    int? collisionCount;
    
    ///Represents the latest available observations of a statefulset's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApiAppsV1StatefulSetCondition>? conditions;
    
    ///currentReplicas is the number of Pods created by the StatefulSet controller from the
    ///StatefulSet version indicated by currentRevision.
    @JsonKey(name: "currentReplicas")
    int? currentReplicas;
    
    ///currentRevision, if not empty, indicates the version of the StatefulSet used to generate
    ///Pods in the sequence [0,currentReplicas).
    @JsonKey(name: "currentRevision")
    String? currentRevision;
    
    ///observedGeneration is the most recent generation observed for this StatefulSet. It
    ///corresponds to the StatefulSet's generation, which is updated on mutation by the API
    ///Server.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///readyReplicas is the number of pods created for this StatefulSet with a Ready Condition.
    @JsonKey(name: "readyReplicas")
    int? readyReplicas;
    
    ///replicas is the number of Pods created by the StatefulSet controller.
    @JsonKey(name: "replicas")
    int? replicas;
    
    ///updatedReplicas is the number of Pods created by the StatefulSet controller from the
    ///StatefulSet version indicated by updateRevision.
    @JsonKey(name: "updatedReplicas")
    int? updatedReplicas;
    
    ///updateRevision, if not empty, indicates the version of the StatefulSet used to generate
    ///Pods in the sequence [replicas-updatedReplicas,replicas)
    @JsonKey(name: "updateRevision")
    String? updateRevision;

    Statefulsetstatus({
        this.availableReplicas,
        this.collisionCount,
        this.conditions,
        this.currentReplicas,
        this.currentRevision,
        this.observedGeneration,
        this.readyReplicas,
        required this.replicas,
        this.updatedReplicas,
        this.updateRevision,
    });

    factory Statefulsetstatus.fromJson(Map<String, dynamic> json) => _$StatefulsetstatusFromJson(json);

    Map<String, dynamic> toJson() => _$StatefulsetstatusToJson(this);
}


///StatefulSetCondition describes the state of a statefulset at a certain point.
@JsonSerializable()
class IoK8SApiAppsV1StatefulSetCondition {
    
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
    String status;
    
    ///Type of statefulset condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiAppsV1StatefulSetCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiAppsV1StatefulSetCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiAppsV1StatefulSetConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAppsV1StatefulSetConditionToJson(this);
}
