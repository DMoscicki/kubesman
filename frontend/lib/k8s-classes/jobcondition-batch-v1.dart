import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'jobcondition_batch_v1.g.dart';


///JobCondition describes current state of a job.
@JsonSerializable()
class JobconditionBatchV1 {
    
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

    JobconditionBatchV1({
        this.lastProbeTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory JobconditionBatchV1.fromJson(Map<String, dynamic> json) => _$JobconditionBatchV1FromJson(json);

    Map<String, dynamic> toJson() => _$JobconditionBatchV1ToJson(this);
}
