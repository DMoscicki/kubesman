// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scopedresourceselectorrequirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scopedresourceselectorrequirement _$ScopedresourceselectorrequirementFromJson(
        Map<String, dynamic> json) =>
    Scopedresourceselectorrequirement(
      scopedresourceselectorrequirementOperator: json['operator'] as String?,
      scopeName: json['scopeName'] as String?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$ScopedresourceselectorrequirementToJson(
        Scopedresourceselectorrequirement instance) =>
    <String, dynamic>{
      'operator': instance.scopedresourceselectorrequirementOperator,
      'scopeName': instance.scopeName,
      'values': instance.values,
    };
