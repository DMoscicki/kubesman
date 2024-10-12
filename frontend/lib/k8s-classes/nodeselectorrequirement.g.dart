// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodeselectorrequirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nodeselectorrequirement _$NodeselectorrequirementFromJson(
        Map<String, dynamic> json) =>
    Nodeselectorrequirement(
      key: json['key'] as String?,
      nodeselectorrequirementOperator: json['operator'] as String?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$NodeselectorrequirementToJson(
        Nodeselectorrequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'operator': instance.nodeselectorrequirementOperator,
      'values': instance.values,
    };
