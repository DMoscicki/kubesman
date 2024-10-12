// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiservicecondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apiservicecondition _$ApiserviceconditionFromJson(Map<String, dynamic> json) =>
    Apiservicecondition(
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ApiserviceconditionToJson(
        Apiservicecondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
