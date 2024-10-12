import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'storageversioncondition.g.dart';


///Describes the state of the storageVersion at a certain point.
@JsonSerializable()
class Storageversioncondition {
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///A human readable message indicating details about the transition.
    @JsonKey(name: "message")
    String? message;
    
    ///If set, this represents the .metadata.generation that the condition was set based upon.
    @JsonKey(name: "observedGeneration")
    int? observedGeneration;
    
    ///The reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///Type of the condition.
    @JsonKey(name: "type")
    String? type;

    Storageversioncondition({
        this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory Storageversioncondition.fromJson(Map<String, dynamic> json) => _$StorageversionconditionFromJson(json);

    Map<String, dynamic> toJson() => _$StorageversionconditionToJson(this);
}
