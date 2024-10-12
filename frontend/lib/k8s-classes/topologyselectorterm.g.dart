// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topologyselectorterm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topologyselectorterm _$TopologyselectortermFromJson(
        Map<String, dynamic> json) =>
    Topologyselectorterm(
      matchLabelExpressions: (json['matchLabelExpressions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1TopologySelectorLabelRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TopologyselectortermToJson(
        Topologyselectorterm instance) =>
    <String, dynamic>{
      'matchLabelExpressions': instance.matchLabelExpressions,
    };

IoK8SApiCoreV1TopologySelectorLabelRequirement
    _$IoK8SApiCoreV1TopologySelectorLabelRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1TopologySelectorLabelRequirement(
          key: json['key'] as String,
          values: (json['values'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1TopologySelectorLabelRequirementToJson(
        IoK8SApiCoreV1TopologySelectorLabelRequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'values': instance.values,
    };
