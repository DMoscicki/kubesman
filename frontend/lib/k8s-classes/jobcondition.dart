import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'jobcondition.g.dart';


///JobCondition describes current state of a job.
@JsonSerializable()
class Jobcondition {
    
    ///Last time the condition was checked.
    @JsonKey(name: "lastProbeTime")
    DateTime? lastProbeTime;
    
    ///Last time the condition transit from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///Human readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///(brief) reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the condition, one of True, False, Unknown.
    @JsonKey(name: "status")
    String? status;
    
    ///Type of job condition, Complete or Failed.
    @JsonKey(name: "type")
    String? type;

    Jobcondition({
        this.lastProbeTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Jobcondition.fromJson(Map<String, dynamic> json) => _$JobconditionFromJson(json);

    Map<String, dynamic> toJson() => _$JobconditionToJson(this);
}
