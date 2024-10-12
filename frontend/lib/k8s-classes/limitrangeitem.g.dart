// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limitrangeitem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Limitrangeitem _$LimitrangeitemFromJson(Map<String, dynamic> json) =>
    Limitrangeitem(
      limitrangeitemDefault: json['default'] as Map<String, dynamic>?,
      defaultRequest: json['defaultRequest'] as Map<String, dynamic>?,
      max: json['max'] as Map<String, dynamic>?,
      maxLimitRequestRatio:
          json['maxLimitRequestRatio'] as Map<String, dynamic>?,
      min: json['min'] as Map<String, dynamic>?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$LimitrangeitemToJson(Limitrangeitem instance) =>
    <String, dynamic>{
      'default': instance.limitrangeitemDefault,
      'defaultRequest': instance.defaultRequest,
      'max': instance.max,
      'maxLimitRequestRatio': instance.maxLimitRequestRatio,
      'min': instance.min,
      'type': instance.type,
    };
