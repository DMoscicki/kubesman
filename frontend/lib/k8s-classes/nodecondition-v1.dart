import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodecondition_v1.g.dart';


///NodeCondition contains condition information for a node.
@JsonSerializable()
class NodeconditionV1 {
    
    ///Last time we got an update on a given condition.
    @JsonKey(name: "lastHeartbeatTime")
    DateTime? lastHeartbeatTime;
    
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
    
    ///Type of node condition.
    @JsonKey(name: "type")
    String? type;

    NodeconditionV1({
        this.lastHeartbeatTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory NodeconditionV1.fromJson(Map<String, dynamic> json) => _$NodeconditionV1FromJson(json);

    Map<String, dynamic> toJson() => _$NodeconditionV1ToJson(this);
}
