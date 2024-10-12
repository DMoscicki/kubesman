// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containerstate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containerstate _$ContainerstateFromJson(Map<String, dynamic> json) =>
    Containerstate(
      running: json['running'] == null
          ? null
          : IoK8SApiCoreV1ContainerStateRunning.fromJson(
              json['running'] as Map<String, dynamic>),
      terminated: json['terminated'] == null
          ? null
          : IoK8SApiCoreV1ContainerStateTerminated.fromJson(
              json['terminated'] as Map<String, dynamic>),
      waiting: json['waiting'] == null
          ? null
          : IoK8SApiCoreV1ContainerStateWaiting.fromJson(
              json['waiting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContainerstateToJson(Containerstate instance) =>
    <String, dynamic>{
      'running': instance.running,
      'terminated': instance.terminated,
      'waiting': instance.waiting,
    };

IoK8SApiCoreV1ContainerStateRunning
    _$IoK8SApiCoreV1ContainerStateRunningFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ContainerStateRunning(
          startedAt: json['startedAt'] == null
              ? null
              : DateTime.parse(json['startedAt'] as String),
        );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerStateRunningToJson(
        IoK8SApiCoreV1ContainerStateRunning instance) =>
    <String, dynamic>{
      'startedAt': instance.startedAt?.toIso8601String(),
    };

IoK8SApiCoreV1ContainerStateTerminated
    _$IoK8SApiCoreV1ContainerStateTerminatedFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ContainerStateTerminated(
          containerId: json['containerID'] as String?,
          exitCode: (json['exitCode'] as num).toInt(),
          finishedAt: json['finishedAt'] == null
              ? null
              : DateTime.parse(json['finishedAt'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          signal: (json['signal'] as num?)?.toInt(),
          startedAt: json['startedAt'] == null
              ? null
              : DateTime.parse(json['startedAt'] as String),
        );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerStateTerminatedToJson(
        IoK8SApiCoreV1ContainerStateTerminated instance) =>
    <String, dynamic>{
      'containerID': instance.containerId,
      'exitCode': instance.exitCode,
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'signal': instance.signal,
      'startedAt': instance.startedAt?.toIso8601String(),
    };

IoK8SApiCoreV1ContainerStateWaiting
    _$IoK8SApiCoreV1ContainerStateWaitingFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ContainerStateWaiting(
          message: json['message'] as String?,
          reason: json['reason'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerStateWaitingToJson(
        IoK8SApiCoreV1ContainerStateWaiting instance) =>
    <String, dynamic>{
      'message': instance.message,
      'reason': instance.reason,
    };
