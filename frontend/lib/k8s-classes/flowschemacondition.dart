import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flowschemacondition.g.dart';


///FlowSchemaCondition describes conditions for a FlowSchema.
@JsonSerializable()
class Flowschemacondition {
    
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

    Flowschemacondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        this.status,
        this.type,
    });

    factory Flowschemacondition.fromJson(Map<String, dynamic> json) => _$FlowschemaconditionFromJson(json);

    Map<String, dynamic> toJson() => _$FlowschemaconditionToJson(this);
}
