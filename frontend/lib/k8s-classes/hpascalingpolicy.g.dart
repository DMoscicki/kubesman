// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hpascalingpolicy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hpascalingpolicy _$HpascalingpolicyFromJson(Map<String, dynamic> json) =>
    Hpascalingpolicy(
      periodSeconds: (json['periodSeconds'] as num?)?.toInt(),
      type: json['type'] as String?,
      value: (json['value'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HpascalingpolicyToJson(Hpascalingpolicy instance) =>
    <String, dynamic>{
      'periodSeconds': instance.periodSeconds,
      'type': instance.type,
      'value': instance.value,
    };
