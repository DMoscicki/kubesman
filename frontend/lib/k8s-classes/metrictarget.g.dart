// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrictarget.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Metrictarget _$MetrictargetFromJson(Map<String, dynamic> json) => Metrictarget(
      averageUtilization: (json['averageUtilization'] as num?)?.toInt(),
      averageValue: json['averageValue'],
      type: json['type'] as String?,
      value: json['value'],
    );

Map<String, dynamic> _$MetrictargetToJson(Metrictarget instance) =>
    <String, dynamic>{
      'averageUtilization': instance.averageUtilization,
      'averageValue': instance.averageValue,
      'type': instance.type,
      'value': instance.value,
    };
