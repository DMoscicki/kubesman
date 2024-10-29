// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deploymentstrategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deploymentstrategy _$DeploymentstrategyFromJson(Map<String, dynamic> json) =>
    Deploymentstrategy(
      rollingUpdate: json['rollingUpdate'] == null
          ? null
          : IoK8SApiAppsV1RollingUpdateDeployment.fromJson(
              json['rollingUpdate'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$DeploymentstrategyToJson(Deploymentstrategy instance) =>
    <String, dynamic>{
      'rollingUpdate': instance.rollingUpdate,
      'type': instance.type,
    };

IoK8SApiAppsV1RollingUpdateDeployment
    _$IoK8SApiAppsV1RollingUpdateDeploymentFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAppsV1RollingUpdateDeployment(
          maxSurge: json['maxSurge'],
          maxUnavailable: json['maxUnavailable'],
        );

Map<String, dynamic> _$IoK8SApiAppsV1RollingUpdateDeploymentToJson(
        IoK8SApiAppsV1RollingUpdateDeployment instance) =>
    <String, dynamic>{
      'maxSurge': instance.maxSurge,
      'maxUnavailable': instance.maxUnavailable,
    };
