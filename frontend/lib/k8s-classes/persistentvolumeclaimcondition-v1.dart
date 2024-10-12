import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'persistentvolumeclaimcondition_v1.g.dart';


///PersistentVolumeClaimCondition contains details about state of pvc
@JsonSerializable()
class PersistentvolumeclaimconditionV1 {
    
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

    PersistentvolumeclaimconditionV1({
        this.lastProbeTime,
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory PersistentvolumeclaimconditionV1.fromJson(Map<String, dynamic> json) => _$PersistentvolumeclaimconditionV1FromJson(json);

    Map<String, dynamic> toJson() => _$PersistentvolumeclaimconditionV1ToJson(this);
}
