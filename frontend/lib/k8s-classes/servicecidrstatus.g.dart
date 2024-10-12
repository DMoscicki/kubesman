// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicecidrstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Servicecidrstatus _$ServicecidrstatusFromJson(Map<String, dynamic> json) =>
    Servicecidrstatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApimachineryPkgApisMetaV1Condition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ServicecidrstatusToJson(Servicecidrstatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
    };

IoK8SApimachineryPkgApisMetaV1Condition
    _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1Condition(
          lastTransitionTime:
              DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String,
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
          reason: json['reason'] as String,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(
        IoK8SApimachineryPkgApisMetaV1Condition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
