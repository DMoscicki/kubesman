import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statefulsetordinals.g.dart';


///StatefulSetOrdinals describes the policy used for replica ordinal assignment in this
///StatefulSet.
@JsonSerializable()
class Statefulsetordinals {
    
    ///start is the number representing the first replica's index. It may be used to number
    ///replicas from an alternate index (eg: 1-indexed) over the default 0-indexed names, or to
    ///orchestrate progressive movement of replicas from one StatefulSet to another. If set,
    ///replica indices will be in the range:
    ///[.spec.ordinals.start, .spec.ordinals.start + .spec.replicas).
    ///If unset, defaults to 0. Replica indices will be in the range:
    ///[0, .spec.replicas).
    @JsonKey(name: "start")
    int? start;

    Statefulsetordinals({
        this.start,
    });

    factory Statefulsetordinals.fromJson(Map<String, dynamic> json) => _$StatefulsetordinalsFromJson(json);

    Map<String, dynamic> toJson() => _$StatefulsetordinalsToJson(this);
}
