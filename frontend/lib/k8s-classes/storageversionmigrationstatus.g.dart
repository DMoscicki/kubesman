// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageversionmigrationstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageversionmigrationstatus _$StorageversionmigrationstatusFromJson(
        Map<String, dynamic> json) =>
    Storageversionmigrationstatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiStoragemigrationV1Alpha1MigrationCondition.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      resourceVersion: json['resourceVersion'] as String?,
    );

Map<String, dynamic> _$StorageversionmigrationstatusToJson(
        Storageversionmigrationstatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'resourceVersion': instance.resourceVersion,
    };

IoK8SApiStoragemigrationV1Alpha1MigrationCondition
    _$IoK8SApiStoragemigrationV1Alpha1MigrationConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiStoragemigrationV1Alpha1MigrationCondition(
          lastUpdateTime: json['lastUpdateTime'] == null
              ? null
              : DateTime.parse(json['lastUpdateTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApiStoragemigrationV1Alpha1MigrationConditionToJson(
        IoK8SApiStoragemigrationV1Alpha1MigrationCondition instance) =>
    <String, dynamic>{
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
