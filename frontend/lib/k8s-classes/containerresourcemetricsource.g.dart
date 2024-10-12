// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containerresourcemetricsource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containerresourcemetricsource _$ContainerresourcemetricsourceFromJson(
        Map<String, dynamic> json) =>
    Containerresourcemetricsource(
      container: json['container'] as String?,
      name: json['name'] as String?,
      target: IoK8SApiAutoscalingV2MetricTarget.fromJson(
          json['target'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ContainerresourcemetricsourceToJson(
        Containerresourcemetricsource instance) =>
    <String, dynamic>{
      'container': instance.container,
      'name': instance.name,
      'target': instance.target,
    };

IoK8SApiAutoscalingV2MetricTarget _$IoK8SApiAutoscalingV2MetricTargetFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAutoscalingV2MetricTarget(
      averageUtilization: (json['averageUtilization'] as num?)?.toInt(),
      averageValue: json['averageValue'],
      type: json['type'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$IoK8SApiAutoscalingV2MetricTargetToJson(
        IoK8SApiAutoscalingV2MetricTarget instance) =>
    <String, dynamic>{
      'averageUtilization': instance.averageUtilization,
      'averageValue': instance.averageValue,
      'type': instance.type,
      'value': instance.value,
    };
