// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistentvolumeclaimstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Persistentvolumeclaimstatus _$PersistentvolumeclaimstatusFromJson(
        Map<String, dynamic> json) =>
    Persistentvolumeclaimstatus(
      accessModes: (json['accessModes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      allocatedResources: json['allocatedResources'] as Map<String, dynamic>?,
      allocatedResourceStatuses:
          (json['allocatedResourceStatuses'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      capacity: json['capacity'] as Map<String, dynamic>?,
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1PersistentVolumeClaimCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      currentVolumeAttributesClassName:
          json['currentVolumeAttributesClassName'] as String?,
      modifyVolumeStatus: json['modifyVolumeStatus'] == null
          ? null
          : IoK8SApiCoreV1ModifyVolumeStatus.fromJson(
              json['modifyVolumeStatus'] as Map<String, dynamic>),
      phase: json['phase'] as String?,
    );

Map<String, dynamic> _$PersistentvolumeclaimstatusToJson(
        Persistentvolumeclaimstatus instance) =>
    <String, dynamic>{
      'accessModes': instance.accessModes,
      'allocatedResources': instance.allocatedResources,
      'allocatedResourceStatuses': instance.allocatedResourceStatuses,
      'capacity': instance.capacity,
      'conditions': instance.conditions,
      'currentVolumeAttributesClassName':
          instance.currentVolumeAttributesClassName,
      'modifyVolumeStatus': instance.modifyVolumeStatus,
      'phase': instance.phase,
    };

IoK8SApiCoreV1PersistentVolumeClaimCondition
    _$IoK8SApiCoreV1PersistentVolumeClaimConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PersistentVolumeClaimCondition(
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

Map<String, dynamic> _$IoK8SApiCoreV1PersistentVolumeClaimConditionToJson(
        IoK8SApiCoreV1PersistentVolumeClaimCondition instance) =>
    <String, dynamic>{
      'lastProbeTime': instance.lastProbeTime?.toIso8601String(),
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiCoreV1ModifyVolumeStatus _$IoK8SApiCoreV1ModifyVolumeStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ModifyVolumeStatus(
      status: json['status'] as String,
      targetVolumeAttributesClassName:
          json['targetVolumeAttributesClassName'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ModifyVolumeStatusToJson(
        IoK8SApiCoreV1ModifyVolumeStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'targetVolumeAttributesClassName':
          instance.targetVolumeAttributesClassName,
    };
