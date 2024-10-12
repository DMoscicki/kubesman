// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prioritylevelconfigurationstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prioritylevelconfigurationstatus _$PrioritylevelconfigurationstatusFromJson(
        Map<String, dynamic> json) =>
    Prioritylevelconfigurationstatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition
                  .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PrioritylevelconfigurationstatusToJson(
        Prioritylevelconfigurationstatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
    };

IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition
    _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationConditionToJson(
            IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition
                instance) =>
        <String, dynamic>{
          'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
          'message': instance.message,
          'reason': instance.reason,
          'status': instance.status,
          'type': instance.type,
        };
