import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'persistentvolumestatus_v1.g.dart';


///PersistentVolumeStatus is the current status of a persistent volume.
@JsonSerializable()
class PersistentvolumestatusV1 {
    
    ///lastPhaseTransitionTime is the time the phase transitioned from one to another and
    ///automatically resets to current time everytime a volume phase transitions. This is a beta
    ///field and requires the PersistentVolumeLastPhaseTransitionTime feature to be enabled
    ///(enabled by default).
    @JsonKey(name: "lastPhaseTransitionTime")
    DateTime? lastPhaseTransitionTime;
    
    ///message is a human-readable message indicating details about why the volume is in this
    ///state.
    @JsonKey(name: "message")
    String? message;
    
    ///phase indicates if a volume is available, bound to a claim, or released by a claim. More
    ///info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase
    @JsonKey(name: "phase")
    String? phase;
    
    ///reason is a brief CamelCase string that describes any failure and is meant for machine
    ///parsing and tidy display in the CLI.
    @JsonKey(name: "reason")
    String? reason;

    PersistentvolumestatusV1({
        this.lastPhaseTransitionTime,
        this.message,
        this.phase,
        this.reason,
    });

    factory PersistentvolumestatusV1.fromJson(Map<String, dynamic> json) => _$PersistentvolumestatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$PersistentvolumestatusV1ToJson(this);
}
