import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'storageversioncondition_apiserverinternal_v1_alpha1.g.dart';


///Describes the state of the storageVersion at a certain point.
@JsonSerializable()
class StorageversionconditionApiserverinternalV1Alpha1 {
    
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

    StorageversionconditionApiserverinternalV1Alpha1({
        this.lastTransitionTime,
        required this.message,
        this.observedGeneration,
        required this.reason,
        required this.status,
        required this.type,
    });

    factory StorageversionconditionApiserverinternalV1Alpha1.fromJson(Map<String, dynamic> json) => _$StorageversionconditionApiserverinternalV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$StorageversionconditionApiserverinternalV1Alpha1ToJson(this);
}
