import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flowschemastatus_flowcontrol_v1_beta3.g.dart';


///FlowSchemaStatus represents the current state of a FlowSchema.
@JsonSerializable()
class FlowschemastatusFlowcontrolV1Beta3 {
    
    ///`conditions` is a list of the current states of FlowSchema.
    @JsonKey(name: "conditions")
    List<IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition>? conditions;

    FlowschemastatusFlowcontrolV1Beta3({
        this.conditions,
    });

    factory FlowschemastatusFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$FlowschemastatusFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$FlowschemastatusFlowcontrolV1Beta3ToJson(this);
}


///FlowSchemaCondition describes conditions for a FlowSchema.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition {
    
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

    IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition({
        this.lastTransitionTime,
        this.message,
        this.reason,
        this.status,
        this.type,
    });

    factory IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3FlowSchemaConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3FlowSchemaConditionToJson(this);
}
