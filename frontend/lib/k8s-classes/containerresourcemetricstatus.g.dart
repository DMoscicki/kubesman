// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containerresourcemetricstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containerresourcemetricstatus _$ContainerresourcemetricstatusFromJson(
        Map<String, dynamic> json) =>
    Containerresourcemetricstatus(
      container: json['container'] as String?,
      current: IoK8SApiAutoscalingV2MetricValueStatus.fromJson(
          json['current'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ContainerresourcemetricstatusToJson(
        Containerresourcemetricstatus instance) =>
    <String, dynamic>{
      'container': instance.container,
      'current': instance.current,
      'name': instance.name,
    };

IoK8SApiAutoscalingV2MetricValueStatus
    _$IoK8SApiAutoscalingV2MetricValueStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2MetricValueStatus(
          averageUtilization: (json['averageUtilization'] as num?)?.toInt(),
          averageValue: json['averageValue'],
          value: json['value'],
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2MetricValueStatusToJson(
        IoK8SApiAutoscalingV2MetricValueStatus instance) =>
    <String, dynamic>{
      'averageUtilization': instance.averageUtilization,
      'averageValue': instance.averageValue,
      'value': instance.value,
    };
