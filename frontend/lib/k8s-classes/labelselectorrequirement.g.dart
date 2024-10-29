// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'labelselectorrequirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Labelselectorrequirement _$LabelselectorrequirementFromJson(
        Map<String, dynamic> json) =>
    Labelselectorrequirement(
      key: json['key'] as String?,
      labelselectorrequirementOperator: json['operator'] as String?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$LabelselectorrequirementToJson(
        Labelselectorrequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'operator': instance.labelselectorrequirementOperator,
      'values': instance.values,
    };
