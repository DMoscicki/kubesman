// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limitrangespec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Limitrangespec _$LimitrangespecFromJson(Map<String, dynamic> json) =>
    Limitrangespec(
      limits: (json['limits'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1LimitRangeItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LimitrangespecToJson(Limitrangespec instance) =>
    <String, dynamic>{
      'limits': instance.limits,
    };

IoK8SApiCoreV1LimitRangeItem _$IoK8SApiCoreV1LimitRangeItemFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LimitRangeItem(
      ioK8SApiCoreV1LimitRangeItemDefault:
          json['default'] as Map<String, dynamic>?,
      defaultRequest: json['defaultRequest'] as Map<String, dynamic>?,
      max: json['max'] as Map<String, dynamic>?,
      maxLimitRequestRatio:
          json['maxLimitRequestRatio'] as Map<String, dynamic>?,
      min: json['min'] as Map<String, dynamic>?,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1LimitRangeItemToJson(
        IoK8SApiCoreV1LimitRangeItem instance) =>
    <String, dynamic>{
      'default': instance.ioK8SApiCoreV1LimitRangeItemDefault,
      'defaultRequest': instance.defaultRequest,
      'max': instance.max,
      'maxLimitRequestRatio': instance.maxLimitRequestRatio,
      'min': instance.min,
      'type': instance.type,
    };
