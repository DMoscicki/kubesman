// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobcondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Jobcondition _$JobconditionFromJson(Map<String, dynamic> json) => Jobcondition(
      lastProbeTime: json['lastProbeTime'] == null
          ? null
          : DateTime.parse(json['lastProbeTime'] as String),
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$JobconditionToJson(Jobcondition instance) =>
    <String, dynamic>{
      'lastProbeTime': instance.lastProbeTime?.toIso8601String(),
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
