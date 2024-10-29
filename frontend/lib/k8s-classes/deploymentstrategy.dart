import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'deploymentstrategy.g.dart';


///DeploymentStrategy describes how to replace existing pods with new ones.
@JsonSerializable()
class Deploymentstrategy {
    
    ///Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
    @JsonKey(name: "rollingUpdate")
    IoK8SApiAppsV1RollingUpdateDeployment? rollingUpdate;
    
    ///Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
    @JsonKey(name: "type")
    String? type;

    Deploymentstrategy({
        this.rollingUpdate,
        this.type,
    });

    factory Deploymentstrategy.fromJson(Map<String, dynamic> json) => _$DeploymentstrategyFromJson(json);

    Map<String, dynamic> toJson() => _$DeploymentstrategyToJson(this);
}


///Rolling update config params. Present only if DeploymentStrategyType = RollingUpdate.
///
///Spec to control the desired behavior of rolling update.
@JsonSerializable()
class IoK8SApiAppsV1RollingUpdateDeployment {
    
    ///The maximum number of pods that can be scheduled above the desired number of pods. Value
    ///can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%). This can not
    ///be 0 if MaxUnavailable is 0. Absolute number is calculated from percentage by rounding
    ///up. Defaults to 25%. Example: when this is set to 30%, the new ReplicaSet can be scaled
    ///up immediately when the rolling update starts, such that the total number of old and new
    ///pods do not exceed 130% of desired pods. Once old pods have been killed, new ReplicaSet
    ///can be scaled up further, ensuring that total number of pods running at any time during
    ///the update is at most 130% of desired pods.
    @JsonKey(name: "maxSurge")
    dynamic maxSurge;
    
    ///The maximum number of pods that can be unavailable during the update. Value can be an
    ///absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is
    ///calculated from percentage by rounding down. This can not be 0 if MaxSurge is 0. Defaults
    ///to 25%. Example: when this is set to 30%, the old ReplicaSet can be scaled down to 70% of
    ///desired pods immediately when the rolling update starts. Once new pods are ready, old
    ///ReplicaSet can be scaled down further, followed by scaling up the new ReplicaSet,
    ///ensuring that the total number of pods available at all times during the update is at
    ///least 70% of desired pods.
    @JsonKey(name: "maxUnavailable")
    dynamic maxUnavailable;

    IoK8SApiAppsV1RollingUpdateDeployment({
        this.maxSurge,
        this.maxUnavailable,
    });

    factory IoK8SApiAppsV1RollingUpdateDeployment.fromJson(Map<String, dynamic> json) => _$IoK8SApiAppsV1RollingUpdateDeploymentFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAppsV1RollingUpdateDeploymentToJson(this);
}
