// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metricvaluestatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metricvaluestatus _$MetricvaluestatusFromJson(Map<String, dynamic> json) =>
    Metricvaluestatus(
      averageUtilization: (json['averageUtilization'] as num?)?.toInt(),
      averageValue: json['averageValue'],
      value: json['value'],
    );

Map<String, dynamic> _$MetricvaluestatusToJson(Metricvaluestatus instance) =>
    <String, dynamic>{
      'averageUtilization': instance.averageUtilization,
      'averageValue': instance.averageValue,
      'value': instance.value,
    };
