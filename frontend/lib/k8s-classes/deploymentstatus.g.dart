// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploymentstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deploymentstatus _$DeploymentstatusFromJson(Map<String, dynamic> json) =>
    Deploymentstatus(
      availableReplicas: (json['availableReplicas'] as num?)?.toInt(),
      collisionCount: (json['collisionCount'] as num?)?.toInt(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAppsV1DeploymentCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
      readyReplicas: (json['readyReplicas'] as num?)?.toInt(),
      replicas: (json['replicas'] as num?)?.toInt(),
      unavailableReplicas: (json['unavailableReplicas'] as num?)?.toInt(),
      updatedReplicas: (json['updatedReplicas'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DeploymentstatusToJson(Deploymentstatus instance) =>
    <String, dynamic>{
      'availableReplicas': instance.availableReplicas,
      'collisionCount': instance.collisionCount,
      'conditions': instance.conditions,
      'observedGeneration': instance.observedGeneration,
      'readyReplicas': instance.readyReplicas,
      'replicas': instance.replicas,
      'unavailableReplicas': instance.unavailableReplicas,
      'updatedReplicas': instance.updatedReplicas,
    };

IoK8SApiAppsV1DeploymentCondition _$IoK8SApiAppsV1DeploymentConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAppsV1DeploymentCondition(
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      lastUpdateTime: json['lastUpdateTime'] == null
          ? null
          : DateTime.parse(json['lastUpdateTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiAppsV1DeploymentConditionToJson(
        IoK8SApiAppsV1DeploymentCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
