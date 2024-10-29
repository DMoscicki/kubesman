import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podreadinessgate_v1.g.dart';


///PodReadinessGate contains the reference to a pod condition
@JsonSerializable()
class PodreadinessgateV1 {
    
    ///ConditionType refers to a condition in the pod's condition list with matching type.
    @JsonKey(name: "conditionType")
    String? conditionType;

    PodreadinessgateV1({
        required this.conditionType,
    });

    factory PodreadinessgateV1.fromJson(Map<String, dynamic> json) => _$PodreadinessgateV1FromJson(json);

    Map<String, dynamic> toJson() => _$PodreadinessgateV1ToJson(this);
}
