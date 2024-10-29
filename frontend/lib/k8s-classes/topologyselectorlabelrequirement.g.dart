// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topologyselectorlabelrequirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topologyselectorlabelrequirement _$TopologyselectorlabelrequirementFromJson(
        Map<String, dynamic> json) =>
    Topologyselectorlabelrequirement(
      key: json['key'] as String?,
      values:
          (json['values'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$TopologyselectorlabelrequirementToJson(
        Topologyselectorlabelrequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'values': instance.values,
    };
