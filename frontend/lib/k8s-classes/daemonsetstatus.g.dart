// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daemonsetstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Daemonsetstatus _$DaemonsetstatusFromJson(Map<String, dynamic> json) =>
    Daemonsetstatus(
      collisionCount: (json['collisionCount'] as num?)?.toInt(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAppsV1DaemonSetCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      currentNumberScheduled: (json['currentNumberScheduled'] as num?)?.toInt(),
      desiredNumberScheduled: (json['desiredNumberScheduled'] as num?)?.toInt(),
      numberAvailable: (json['numberAvailable'] as num?)?.toInt(),
      numberMisscheduled: (json['numberMisscheduled'] as num?)?.toInt(),
      numberReady: (json['numberReady'] as num?)?.toInt(),
      numberUnavailable: (json['numberUnavailable'] as num?)?.toInt(),
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
      updatedNumberScheduled: (json['updatedNumberScheduled'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DaemonsetstatusToJson(Daemonsetstatus instance) =>
    <String, dynamic>{
      'collisionCount': instance.collisionCount,
      'conditions': instance.conditions,
      'currentNumberScheduled': instance.currentNumberScheduled,
      'desiredNumberScheduled': instance.desiredNumberScheduled,
      'numberAvailable': instance.numberAvailable,
      'numberMisscheduled': instance.numberMisscheduled,
      'numberReady': instance.numberReady,
      'numberUnavailable': instance.numberUnavailable,
      'observedGeneration': instance.observedGeneration,
      'updatedNumberScheduled': instance.updatedNumberScheduled,
    };

IoK8SApiAppsV1DaemonSetCondition _$IoK8SApiAppsV1DaemonSetConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAppsV1DaemonSetCondition(
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiAppsV1DaemonSetConditionToJson(
        IoK8SApiAppsV1DaemonSetCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
