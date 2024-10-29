// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'migrationcondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Migrationcondition _$MigrationconditionFromJson(Map<String, dynamic> json) =>
    Migrationcondition(
      lastUpdateTime: json['lastUpdateTime'] == null
          ? null
          : DateTime.parse(json['lastUpdateTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$MigrationconditionToJson(Migrationcondition instance) =>
    <String, dynamic>{
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
