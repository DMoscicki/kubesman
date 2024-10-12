import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statefulsetcondition.g.dart';


///StatefulSetCondition describes the state of a statefulset at a certain point.
@JsonSerializable()
class Statefulsetcondition {
    
    ///Last time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///A human readable message indicating details about the transition.
    @JsonKey(name: "message")
    String? message;
    
    ///The reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///Type of statefulset condition.
    @JsonKey(name: "type")
    String? type;

    Statefulsetcondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Statefulsetcondition.fromJson(Map<String, dynamic> json) => _$StatefulsetconditionFromJson(json);

    Map<String, dynamic> toJson() => _$StatefulsetconditionToJson(this);
}
