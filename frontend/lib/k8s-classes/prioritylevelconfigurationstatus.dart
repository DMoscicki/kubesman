import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'prioritylevelconfigurationstatus.g.dart';


///PriorityLevelConfigurationStatus represents the current state of a "request-priority".
@JsonSerializable()
class Prioritylevelconfigurationstatus {
    
    ///`conditions` is the current state of "request-priority".
    @JsonKey(name: "conditions")
    List<IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition>? conditions;

    Prioritylevelconfigurationstatus({
        this.conditions,
    });

    factory Prioritylevelconfigurationstatus.fromJson(Map<String, dynamic> json) => _$PrioritylevelconfigurationstatusFromJson(json);

    Map<String, dynamic> toJson() => _$PrioritylevelconfigurationstatusToJson(this);
}


///PriorityLevelConfigurationCondition defines the condition of priority level.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition {
    
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

    IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        this.status,
        this.type,
    });

    factory IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationConditionToJson(this);
}
