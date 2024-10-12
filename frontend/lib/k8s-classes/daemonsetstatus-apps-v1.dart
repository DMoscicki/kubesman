import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'daemonsetstatus_apps_v1.g.dart';


///DaemonSetStatus represents the current status of a daemon set.
@JsonSerializable()
class DaemonsetstatusAppsV1 {
    
    ///Count of hash collisions for the DaemonSet. The DaemonSet controller uses this field as a
    ///collision avoidance mechanism when it needs to create the name for the newest
    ///ControllerRevision.
    @JsonKey(name: "collisionCount")
    int? collisionCount;
    
    ///Represents the latest available observations of a DaemonSet's current state.
    @JsonKey(name: "conditions")
    List<IoK8SApiAppsV1DaemonSetCondition>? conditions;
    
    ///The number of nodes that are running at least 1 daemon pod and are supposed to run the
    ///daemon pod. More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
    @JsonKey(name: "currentNumberScheduled")
    int? currentNumberScheduled;
    
    ///The total number of nodes that should be running the daemon pod (including nodes
    ///correctly running the daemon pod). More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
    @JsonKey(name: "desiredNumberScheduled")
    int? desiredNumberScheduled;
    
    ///The number of nodes that should be running the daemon pod and have one or more of the
    ///daemon pod running and available (ready for at least spec.minReadySeconds)
    @JsonKey(name: "numberAvailable")
    int? numberAvailable;
    
    ///The number of nodes that are running the daemon pod, but are not supposed to run the
    ///daemon pod. More info:
    ///https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
    @JsonKey(name: "numberMisscheduled")
    int? numberMisscheduled;
    
    ///numberReady is the number of nodes that should be running the daemon pod and have one or
    ///more of the daemon pod running with a Ready Condition.
    @JsonKey(name: "numberReady")
    int? numberReady;
    
    ///The number of nodes that should be running the daemon pod and have none of the daemon pod
    ///running and available (ready for at least spec.minReadySeconds)
    @JsonKey(name: "numberUnavailable")
    int? numberUnavailable;
    
    ///The most recent generation observed by the daemon set controller.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///The total number of nodes that are running updated daemon pod
    @JsonKey(name: "updatedNumberScheduled")
    int? updatedNumberScheduled;

    DaemonsetstatusAppsV1({
        this.collisionCount,
        this.conditions,
        required this.currentNumberScheduled,
        required this.desiredNumberScheduled,
        this.numberAvailable,
        required this.numberMisscheduled,
        required this.numberReady,
        this.numberUnavailable,
        this.observedGeneration,
        this.updatedNumberScheduled,
    });

    factory DaemonsetstatusAppsV1.fromJson(Map<String, dynamic> json) => _$DaemonsetstatusAppsV1FromJson(json);

    Map<String, dynamic> toJson() => _$DaemonsetstatusAppsV1ToJson(this);
}


///DaemonSetCondition describes the state of a DaemonSet at a certain point.
@JsonSerializable()
class IoK8SApiAppsV1DaemonSetCondition {
    
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
    
    ///Type of DaemonSet condition.
    @JsonKey(name: "type")
    String type;

    IoK8SApiAppsV1DaemonSetCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiAppsV1DaemonSetCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiAppsV1DaemonSetConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAppsV1DaemonSetConditionToJson(this);
}
