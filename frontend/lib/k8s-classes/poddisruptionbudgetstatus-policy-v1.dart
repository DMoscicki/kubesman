import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'poddisruptionbudgetstatus_policy_v1.g.dart';


///PodDisruptionBudgetStatus represents information about the status of a
///PodDisruptionBudget. Status may trail the actual state of a system.
@JsonSerializable()
class PoddisruptionbudgetstatusPolicyV1 {
    
    ///Conditions contain conditions for PDB. The disruption controller sets the
    ///DisruptionAllowed condition. The following are known values for the reason field
    ///(additional reasons could be added in the future): - SyncFailed: The controller
    ///encountered an error and wasn't able to compute
    ///the number of allowed disruptions. Therefore no disruptions are
    ///allowed and the status of the condition will be False.
    ///- InsufficientPods: The number of pods are either at or below the
    ///number
    ///required by the PodDisruptionBudget. No disruptions are
    ///allowed and the status of the condition will be False.
    ///- SufficientPods: There are more pods than required by the
    ///PodDisruptionBudget.
    ///The condition will be True, and the number of allowed
    ///disruptions are provided by the disruptionsAllowed property.
    @JsonKey(name: "conditions")
    List<IoK8SApimachineryPkgApisMetaV1Condition>? conditions;
    
    ///current number of healthy pods
    @JsonKey(name: "currentHealthy")
    int? currentHealthy;
    
    ///minimum desired number of healthy pods
    @JsonKey(name: "desiredHealthy")
    int? desiredHealthy;
    
    ///DisruptedPods contains information about pods whose eviction was processed by the API
    ///server eviction subresource handler but has not yet been observed by the
    ///PodDisruptionBudget controller. A pod will be in this map from the time when the API
    ///server processed the eviction request to the time when the pod is seen by PDB controller
    ///as having been marked for deletion (or after a timeout). The key in the map is the name
    ///of the pod and the value is the time when the API server processed the eviction request.
    ///If the deletion didn't occur and a pod is still there it will be removed from the list
    ///automatically by PodDisruptionBudget controller after some time. If everything goes
    ///smooth this map should be empty for the most of the time. Large number of entries in the
    ///map may indicate problems with pod deletions.
    @JsonKey(name: "disruptedPods")
    Map<String, DateTime>? disruptedPods;
    
    ///Number of pod disruptions that are currently allowed.
    @JsonKey(name: "disruptionsAllowed")
    int? disruptionsAllowed;
    
    ///total number of pods counted by this disruption budget
    @JsonKey(name: "expectedPods")
    int? expectedPods;
    
    ///Most recent generation observed when updating this PDB status. DisruptionsAllowed and
    ///other status information is valid only if observedGeneration equals to PDB's object
    ///generation.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;

    PoddisruptionbudgetstatusPolicyV1({
        this.conditions,
        required this.currentHealthy,
        required this.desiredHealthy,
        this.disruptedPods,
        required this.disruptionsAllowed,
        required this.expectedPods,
        this.observedGeneration,
    });

    factory PoddisruptionbudgetstatusPolicyV1.fromJson(Map<String, dynamic> json) => _$PoddisruptionbudgetstatusPolicyV1FromJson(json);

    Map<String, dynamic> toJson() => _$PoddisruptionbudgetstatusPolicyV1ToJson(this);
}


///Condition contains details for one aspect of the current state of this API Resource.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1Condition {
    
    ///lastTransitionTime is the last time the condition transitioned from one status to
    ///another. This should be when the underlying condition changed.  If that is not known,
    ///then using the time when the API field changed is acceptable.
    @JsonKey(name: "lastTransitionTime")
    DateTime lastTransitionTime;
    
    ///message is a human readable message indicating details about the transition. This may be
    ///an empty string.
    @JsonKey(name: "message")
    String message;
    
    ///observedGeneration represents the .metadata.generation that the condition was set based
    ///upon. For instance, if .metadata.generation is currently 12, but the
    ///.status.conditions[x].observedGeneration is 9, the condition is out of date with respect
    ///to the current state of the instance.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///reason contains a programmatic identifier indicating the reason for the condition's last
    ///transition. Producers of specific condition types may define expected values and meanings
    ///for this field, and whether the values are considered a guaranteed API. The value should
    ///be a CamelCase string. This field may not be empty.
    @JsonKey(name: "reason")
    String reason;
    
    ///status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String status;
    
    ///type of condition in CamelCase or in foo.example.com/CamelCase.
    @JsonKey(name: "type")
    String type;

    IoK8SApimachineryPkgApisMetaV1Condition({
        required this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApimachineryPkgApisMetaV1Condition.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(this);
}
