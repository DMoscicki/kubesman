// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'replicationcontrollerstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Replicationcontrollerstatus _$ReplicationcontrollerstatusFromJson(
        Map<String, dynamic> json) =>
    Replicationcontrollerstatus(
      availableReplicas: (json['availableReplicas'] as num?)?.toInt(),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1ReplicationControllerCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      fullyLabeledReplicas: (json['fullyLabeledReplicas'] as num?)?.toInt(),
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
      readyReplicas: (json['readyReplicas'] as num?)?.toInt(),
      replicas: (json['replicas'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReplicationcontrollerstatusToJson(
        Replicationcontrollerstatus instance) =>
    <String, dynamic>{
      'availableReplicas': instance.availableReplicas,
      'conditions': instance.conditions,
      'fullyLabeledReplicas': instance.fullyLabeledReplicas,
      'observedGeneration': instance.observedGeneration,
      'readyReplicas': instance.readyReplicas,
      'replicas': instance.replicas,
    };

IoK8SApiCoreV1ReplicationControllerCondition
    _$IoK8SApiCoreV1ReplicationControllerConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ReplicationControllerCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ReplicationControllerConditionToJson(
        IoK8SApiCoreV1ReplicationControllerCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
