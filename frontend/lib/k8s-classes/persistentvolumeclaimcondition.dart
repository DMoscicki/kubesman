import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'persistentvolumeclaimcondition.g.dart';


///PersistentVolumeClaimCondition contains details about state of pvc
@JsonSerializable()
class Persistentvolumeclaimcondition {
    
    ///lastProbeTime is the time we probed the condition.
    @JsonKey(name: "lastProbeTime")
    DateTime? lastProbeTime;
    
    ///lastTransitionTime is the time the condition transitioned from one status to another.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///message is the human-readable message indicating details about last transition.
    @JsonKey(name: "message")
    String? message;
    
    ///reason is a unique, this should be a short, machine understandable string that gives the
    ///reason for condition's last transition. If it reports "Resizing" that means the
    ///underlying persistent volume is being resized.
    @JsonKey(name: "reason")
    String? reason;
    @JsonKey(name: "status")
    String? status;
    @JsonKey(name: "type")
    String? type;

    Persistentvolumeclaimcondition({
        this.lastProbeTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory Persistentvolumeclaimcondition.fromJson(Map<String, dynamic> json) => _$PersistentvolumeclaimconditionFromJson(json);

    Map<String, dynamic> toJson() => _$PersistentvolumeclaimconditionToJson(this);
}
