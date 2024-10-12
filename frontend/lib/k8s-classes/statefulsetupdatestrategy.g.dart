// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statefulsetupdatestrategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statefulsetupdatestrategy _$StatefulsetupdatestrategyFromJson(
        Map<String, dynamic> json) =>
    Statefulsetupdatestrategy(
      rollingUpdate: json['rollingUpdate'] == null
          ? null
          : IoK8SApiAppsV1RollingUpdateStatefulSetStrategy.fromJson(
              json['rollingUpdate'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$StatefulsetupdatestrategyToJson(
        Statefulsetupdatestrategy instance) =>
    <String, dynamic>{
      'rollingUpdate': instance.rollingUpdate,
      'type': instance.type,
    };

IoK8SApiAppsV1RollingUpdateStatefulSetStrategy
    _$IoK8SApiAppsV1RollingUpdateStatefulSetStrategyFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAppsV1RollingUpdateStatefulSetStrategy(
          maxUnavailable: json['maxUnavailable'],
          partition: (json['partition'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiAppsV1RollingUpdateStatefulSetStrategyToJson(
        IoK8SApiAppsV1RollingUpdateStatefulSetStrategy instance) =>
    <String, dynamic>{
      'maxUnavailable': instance.maxUnavailable,
      'partition': instance.partition,
    };
