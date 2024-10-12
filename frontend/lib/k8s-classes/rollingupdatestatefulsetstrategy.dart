import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'rollingupdatestatefulsetstrategy.g.dart';


///RollingUpdateStatefulSetStrategy is used to communicate parameter for
///RollingUpdateStatefulSetStrategyType.
@JsonSerializable()
class Rollingupdatestatefulsetstrategy {
    
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

    Rollingupdatestatefulsetstrategy({
        this.maxUnavailable,
        this.partition,
    });

    factory Rollingupdatestatefulsetstrategy.fromJson(Map<String, dynamic> json) => _$RollingupdatestatefulsetstrategyFromJson(json);

    Map<String, dynamic> toJson() => _$RollingupdatestatefulsetstrategyToJson(this);
}
