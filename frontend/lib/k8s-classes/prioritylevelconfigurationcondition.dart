import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'prioritylevelconfigurationcondition.g.dart';


///PriorityLevelConfigurationCondition defines the condition of priority level.
@JsonSerializable()
class Prioritylevelconfigurationcondition {
    
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

    Prioritylevelconfigurationcondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        this.status,
        this.type,
    });

    factory Prioritylevelconfigurationcondition.fromJson(Map<String, dynamic> json) => _$PrioritylevelconfigurationconditionFromJson(json);

    Map<String, dynamic> toJson() => _$PrioritylevelconfigurationconditionToJson(this);
}
