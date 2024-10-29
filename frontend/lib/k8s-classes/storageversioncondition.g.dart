// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageversioncondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageversioncondition _$StorageversionconditionFromJson(
        Map<String, dynamic> json) =>
    Storageversioncondition(
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$StorageversionconditionToJson(
        Storageversioncondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
