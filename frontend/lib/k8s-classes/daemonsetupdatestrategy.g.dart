// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daemonsetupdatestrategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Daemonsetupdatestrategy _$DaemonsetupdatestrategyFromJson(
        Map<String, dynamic> json) =>
    Daemonsetupdatestrategy(
      rollingUpdate: json['rollingUpdate'] == null
          ? null
          : IoK8SApiAppsV1RollingUpdateDaemonSet.fromJson(
              json['rollingUpdate'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$DaemonsetupdatestrategyToJson(
        Daemonsetupdatestrategy instance) =>
    <String, dynamic>{
      'rollingUpdate': instance.rollingUpdate,
      'type': instance.type,
    };

IoK8SApiAppsV1RollingUpdateDaemonSet
    _$IoK8SApiAppsV1RollingUpdateDaemonSetFromJson(Map<String, dynamic> json) =>
        IoK8SApiAppsV1RollingUpdateDaemonSet(
          maxSurge: json['maxSurge'],
          maxUnavailable: json['maxUnavailable'],
        );

Map<String, dynamic> _$IoK8SApiAppsV1RollingUpdateDaemonSetToJson(
        IoK8SApiAppsV1RollingUpdateDaemonSet instance) =>
    <String, dynamic>{
      'maxSurge': instance.maxSurge,
      'maxUnavailable': instance.maxUnavailable,
    };
