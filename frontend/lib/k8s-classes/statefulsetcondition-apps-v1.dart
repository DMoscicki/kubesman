import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statefulsetcondition_apps_v1.g.dart';


///StatefulSetCondition describes the state of a statefulset at a certain point.
@JsonSerializable()
class StatefulsetconditionAppsV1 {
    
    ///Last time the condition transitioned from one status to another.
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
    
    ///Type of statefulset condition.
    @JsonKey(name: "type")
    String? type;

    StatefulsetconditionAppsV1({
        this.lastTransitionTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory StatefulsetconditionAppsV1.fromJson(Map<String, dynamic> json) => _$StatefulsetconditionAppsV1FromJson(json);

    Map<String, dynamic> toJson() => _$StatefulsetconditionAppsV1ToJson(this);
}
