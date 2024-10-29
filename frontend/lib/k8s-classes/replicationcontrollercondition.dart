import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'replicationcontrollercondition.g.dart';


///ReplicationControllerCondition describes the state of a replication controller at a
///certain point.
@JsonSerializable()
class Replicationcontrollercondition {
    
    ///The last time the condition transitioned from one status to another.
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
    
    ///Type of replication controller condition.
    @JsonKey(name: "type")
    String? type;

    Replicationcontrollercondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Replicationcontrollercondition.fromJson(Map<String, dynamic> json) => _$ReplicationcontrollerconditionFromJson(json);

    Map<String, dynamic> toJson() => _$ReplicationcontrollerconditionToJson(this);
}
