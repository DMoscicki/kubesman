// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statefulsetstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statefulsetstatus _$StatefulsetstatusFromJson(Map<String, dynamic> json) =>
    Statefulsetstatus(
      availableReplicas: (json['availableReplicas'] as num?)?.toInt(),
      collisionCount: (json['collisionCount'] as num?)?.toInt(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAppsV1StatefulSetCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      currentReplicas: (json['currentReplicas'] as num?)?.toInt(),
      currentRevision: json['currentRevision'] as String?,
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
      readyReplicas: (json['readyReplicas'] as num?)?.toInt(),
      replicas: (json['replicas'] as num?)?.toInt(),
      updatedReplicas: (json['updatedReplicas'] as num?)?.toInt(),
      updateRevision: json['updateRevision'] as String?,
    );

Map<String, dynamic> _$StatefulsetstatusToJson(Statefulsetstatus instance) =>
    <String, dynamic>{
      'availableReplicas': instance.availableReplicas,
      'collisionCount': instance.collisionCount,
      'conditions': instance.conditions,
      'currentReplicas': instance.currentReplicas,
      'currentRevision': instance.currentRevision,
      'observedGeneration': instance.observedGeneration,
      'readyReplicas': instance.readyReplicas,
      'replicas': instance.replicas,
      'updatedReplicas': instance.updatedReplicas,
      'updateRevision': instance.updateRevision,
    };

IoK8SApiAppsV1StatefulSetCondition _$IoK8SApiAppsV1StatefulSetConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAppsV1StatefulSetCondition(
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiAppsV1StatefulSetConditionToJson(
        IoK8SApiAppsV1StatefulSetCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
