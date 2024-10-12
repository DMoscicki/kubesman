// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodecondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nodecondition _$NodeconditionFromJson(Map<String, dynamic> json) =>
    Nodecondition(
      lastHeartbeatTime: json['lastHeartbeatTime'] == null
          ? null
          : DateTime.parse(json['lastHeartbeatTime'] as String),
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$NodeconditionToJson(Nodecondition instance) =>
    <String, dynamic>{
      'lastHeartbeatTime': instance.lastHeartbeatTime?.toIso8601String(),
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
