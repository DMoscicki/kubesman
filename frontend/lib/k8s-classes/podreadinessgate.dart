import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podreadinessgate.g.dart';


///PodReadinessGate contains the reference to a pod condition
@JsonSerializable()
class Podreadinessgate {
    
    ///ConditionType refers to a condition in the pod's condition list with matching type.
    @JsonKey(name: "conditionType")
    String? conditionType;

    Podreadinessgate({
        required this.conditionType,
    });

    factory Podreadinessgate.fromJson(Map<String, dynamic> json) => _$PodreadinessgateFromJson(json);

    Map<String, dynamic> toJson() => _$PodreadinessgateToJson(this);
}
