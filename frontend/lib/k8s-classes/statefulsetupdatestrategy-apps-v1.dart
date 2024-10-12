import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statefulsetupdatestrategy_apps_v1.g.dart';


///StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use
///to perform updates. It includes any additional parameters necessary to perform the update
///for the indicated strategy.
@JsonSerializable()
class StatefulsetupdatestrategyAppsV1 {
    
    ///RollingUpdate is used to communicate parameters when Type is
    ///RollingUpdateStatefulSetStrategyType.
    @JsonKey(name: "rollingUpdate")
    IoK8SApiAppsV1RollingUpdateStatefulSetStrategy? rollingUpdate;
    
    ///Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
    @JsonKey(name: "type")
    String? type;

    StatefulsetupdatestrategyAppsV1({
        this.rollingUpdate,
        this.type,
    });

    factory StatefulsetupdatestrategyAppsV1.fromJson(Map<String, dynamic> json) => _$StatefulsetupdatestrategyAppsV1FromJson(json);

    Map<String, dynamic> toJson() => _$StatefulsetupdatestrategyAppsV1ToJson(this);
}


///RollingUpdate is used to communicate parameters when Type is
///RollingUpdateStatefulSetStrategyType.
///
///RollingUpdateStatefulSetStrategy is used to communicate parameter for
///RollingUpdateStatefulSetStrategyType.
@JsonSerializable()
class IoK8SApiAppsV1RollingUpdateStatefulSetStrategy {
    
    ///The maximum number of pods that can be unavailable during the update. Value can be an
    ///absolute number (ex: 5) or a percentage of desired pods (ex: 10%). Absolute number is
    ///calculated from percentage by rounding up. This can not be 0. Defaults to 1. This field
    ///is alpha-level and is only honored by servers that enable the MaxUnavailableStatefulSet
    ///feature. The field applies to all pods in the range 0 to Replicas-1. That means if there
    ///is any unavailable pod in the range 0 to Replicas-1, it will be counted towards
    ///MaxUnavailable.
    @JsonKey(name: "maxUnavailable")
    dynamic maxUnavailable;
    
    ///Partition indicates the ordinal at which the StatefulSet should be partitioned for
    ///updates. During a rolling update, all pods from ordinal Replicas-1 to Partition are
    ///updated. All pods from ordinal Partition-1 to 0 remain untouched. This is helpful in
    ///being able to do a canary based deployment. The default value is 0.
    @JsonKey(name: "partition")
    int? partition;

    IoK8SApiAppsV1RollingUpdateStatefulSetStrategy({
        this.maxUnavailable,
        this.partition,
    });

    factory IoK8SApiAppsV1RollingUpdateStatefulSetStrategy.fromJson(Map<String, dynamic> json) => _$IoK8SApiAppsV1RollingUpdateStatefulSetStrategyFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAppsV1RollingUpdateStatefulSetStrategyToJson(this);
}
