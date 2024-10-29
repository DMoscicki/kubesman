import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'prioritylevelconfigurationstatus_flowcontrol_v1.g.dart';


///PriorityLevelConfigurationStatus represents the current state of a "request-priority".
@JsonSerializable()
class PrioritylevelconfigurationstatusFlowcontrolV1 {
    
    ///`conditions` is the current state of "request-priority".
    @JsonKey(name: "conditions")
    List<IoK8SApiFlowcontrolV1PriorityLevelConfigurationCondition>? conditions;

    PrioritylevelconfigurationstatusFlowcontrolV1({
        this.conditions,
    });

    factory PrioritylevelconfigurationstatusFlowcontrolV1.fromJson(Map<String, dynamic> json) => _$PrioritylevelconfigurationstatusFlowcontrolV1FromJson(json);

    Map<String, dynamic> toJson() => _$PrioritylevelconfigurationstatusFlowcontrolV1ToJson(this);
}


///PriorityLevelConfigurationCondition defines the condition of priority level.
@JsonSerializable()
class IoK8SApiFlowcontrolV1PriorityLevelConfigurationCondition {
    
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

    IoK8SApiFlowcontrolV1PriorityLevelConfigurationCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        this.status,
        this.type,
    });

    factory IoK8SApiFlowcontrolV1PriorityLevelConfigurationCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1PriorityLevelConfigurationConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1PriorityLevelConfigurationConditionToJson(this);
}
