// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namespacestatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Namespacestatus _$NamespacestatusFromJson(Map<String, dynamic> json) =>
    Namespacestatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1NamespaceCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      phase: json['phase'] as String?,
    );

Map<String, dynamic> _$NamespacestatusToJson(Namespacestatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'phase': instance.phase,
    };

IoK8SApiCoreV1NamespaceCondition _$IoK8SApiCoreV1NamespaceConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NamespaceCondition(
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1NamespaceConditionToJson(
        IoK8SApiCoreV1NamespaceCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
