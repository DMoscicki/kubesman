// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'taint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Taint _$TaintFromJson(Map<String, dynamic> json) => Taint(
      effect: json['effect'] as String?,
      key: json['key'] as String?,
      timeAdded: json['timeAdded'] == null
          ? null
          : DateTime.parse(json['timeAdded'] as String),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$TaintToJson(Taint instance) => <String, dynamic>{
      'effect': instance.effect,
      'key': instance.key,
      'timeAdded': instance.timeAdded?.toIso8601String(),
      'value': instance.value,
    };
