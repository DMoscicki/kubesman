// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistentvolumestatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Persistentvolumestatus _$PersistentvolumestatusFromJson(
        Map<String, dynamic> json) =>
    Persistentvolumestatus(
      lastPhaseTransitionTime: json['lastPhaseTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastPhaseTransitionTime'] as String),
      message: json['message'] as String?,
      phase: json['phase'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$PersistentvolumestatusToJson(
        Persistentvolumestatus instance) =>
    <String, dynamic>{
      'lastPhaseTransitionTime':
          instance.lastPhaseTransitionTime?.toIso8601String(),
      'message': instance.message,
      'phase': instance.phase,
      'reason': instance.reason,
    };
