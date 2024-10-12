// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replicasetstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Replicasetstatus _$ReplicasetstatusFromJson(Map<String, dynamic> json) =>
    Replicasetstatus(
      availableReplicas: (json['availableReplicas'] as num?)?.toInt(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAppsV1ReplicaSetCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      fullyLabeledReplicas: (json['fullyLabeledReplicas'] as num?)?.toInt(),
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
      readyReplicas: (json['readyReplicas'] as num?)?.toInt(),
      replicas: (json['replicas'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReplicasetstatusToJson(Replicasetstatus instance) =>
    <String, dynamic>{
      'availableReplicas': instance.availableReplicas,
      'conditions': instance.conditions,
      'fullyLabeledReplicas': instance.fullyLabeledReplicas,
      'observedGeneration': instance.observedGeneration,
      'readyReplicas': instance.readyReplicas,
      'replicas': instance.replicas,
    };

IoK8SApiAppsV1ReplicaSetCondition _$IoK8SApiAppsV1ReplicaSetConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAppsV1ReplicaSetCondition(
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiAppsV1ReplicaSetConditionToJson(
        IoK8SApiAppsV1ReplicaSetCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
