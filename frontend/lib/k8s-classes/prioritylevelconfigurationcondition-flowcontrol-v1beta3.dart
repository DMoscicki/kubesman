import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'prioritylevelconfigurationcondition_flowcontrol_v1_beta3.g.dart';


///PriorityLevelConfigurationCondition defines the condition of priority level.
@JsonSerializable()
class PrioritylevelconfigurationconditionFlowcontrolV1Beta3 {
    
    ///`lastTransitionTime` is the last time the condition transitioned from one status to
    ///another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///`message` is a human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///`reason` is a unique, one-word, CamelCase reason for the condition's last transition.
    @JsonKey(name: "reason")
    String? reason;
    
    ///`status` is the status of the condition. Can be True, False, Unknown. Required.
    @JsonKey(name: "status")
    String? status;
    
    ///`type` is the type of the condition. Required.
    @JsonKey(name: "type")
    String? type;

    PrioritylevelconfigurationconditionFlowcontrolV1Beta3({
        this.lastTransitionTime,
        this.message,
        this.reason,
        this.status,
        this.type,
    });

    factory PrioritylevelconfigurationconditionFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$PrioritylevelconfigurationconditionFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$PrioritylevelconfigurationconditionFlowcontrolV1Beta3ToJson(this);
}
