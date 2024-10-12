// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flowschemastatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flowschemastatus _$FlowschemastatusFromJson(Map<String, dynamic> json) =>
    Flowschemastatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FlowschemastatusToJson(Flowschemastatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
    };

IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition
    _$IoK8SApiFlowcontrolV1Beta3FlowSchemaConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3FlowSchemaConditionToJson(
        IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
