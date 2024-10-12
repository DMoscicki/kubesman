// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'jobstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Jobstatus _$JobstatusFromJson(Map<String, dynamic> json) => Jobstatus(
      active: (json['active'] as num?)?.toInt(),
      completedIndexes: json['completedIndexes'] as String?,
      completionTime: json['completionTime'] == null
          ? null
          : DateTime.parse(json['completionTime'] as String),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiBatchV1JobCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      failed: (json['failed'] as num?)?.toInt(),
      failedIndexes: json['failedIndexes'] as String?,
      ready: (json['ready'] as num?)?.toInt(),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
      succeeded: (json['succeeded'] as num?)?.toInt(),
      terminating: (json['terminating'] as num?)?.toInt(),
      uncountedTerminatedPods: json['uncountedTerminatedPods'] == null
          ? null
          : IoK8SApiBatchV1UncountedTerminatedPods.fromJson(
              json['uncountedTerminatedPods'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$JobstatusToJson(Jobstatus instance) => <String, dynamic>{
      'active': instance.active,
      'completedIndexes': instance.completedIndexes,
      'completionTime': instance.completionTime?.toIso8601String(),
      'conditions': instance.conditions,
      'failed': instance.failed,
      'failedIndexes': instance.failedIndexes,
      'ready': instance.ready,
      'startTime': instance.startTime?.toIso8601String(),
      'succeeded': instance.succeeded,
      'terminating': instance.terminating,
      'uncountedTerminatedPods': instance.uncountedTerminatedPods,
    };

IoK8SApiBatchV1JobCondition _$IoK8SApiBatchV1JobConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiBatchV1JobCondition(
      lastProbeTime: json['lastProbeTime'] == null
          ? null
          : DateTime.parse(json['lastProbeTime'] as String),
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiBatchV1JobConditionToJson(
        IoK8SApiBatchV1JobCondition instance) =>
    <String, dynamic>{
      'lastProbeTime': instance.lastProbeTime?.toIso8601String(),
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiBatchV1UncountedTerminatedPods
    _$IoK8SApiBatchV1UncountedTerminatedPodsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiBatchV1UncountedTerminatedPods(
          failed: (json['failed'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          succeeded: (json['succeeded'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiBatchV1UncountedTerminatedPodsToJson(
        IoK8SApiBatchV1UncountedTerminatedPods instance) =>
    <String, dynamic>{
      'failed': instance.failed,
      'succeeded': instance.succeeded,
    };
