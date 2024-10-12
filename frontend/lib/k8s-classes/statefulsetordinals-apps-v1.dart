import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statefulsetordinals_apps_v1.g.dart';


///StatefulSetOrdinals describes the policy used for replica ordinal assignment in this
///StatefulSet.
@JsonSerializable()
class StatefulsetordinalsAppsV1 {
    
    ///start is the number representing the first replica's index. It may be used to number
    ///replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to
    ///orchestrate progressive movement of replicas from one StatefulSet to another. If set,
    ///replica indices will be in the range:
    ///[.spec.ordinals.start, .spec.ordinals.start + .spec.replicas).
    ///If unset, defaults to 0. Replica indices will be in the range:
    ///[0, .spec.replicas).
    @JsonKey(name: "start")
    int? start;

    StatefulsetordinalsAppsV1({
        this.start,
    });

    factory StatefulsetordinalsAppsV1.fromJson(Map<String, dynamic> json) => _$StatefulsetordinalsAppsV1FromJson(json);

    Map<String, dynamic> toJson() => _$StatefulsetordinalsAppsV1ToJson(this);
}
