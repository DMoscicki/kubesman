// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scopeselector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scopeselector _$ScopeselectorFromJson(Map<String, dynamic> json) =>
    Scopeselector(
      matchExpressions: (json['matchExpressions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1ScopedResourceSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ScopeselectorToJson(Scopeselector instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
    };

IoK8SApiCoreV1ScopedResourceSelectorRequirement
    _$IoK8SApiCoreV1ScopedResourceSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ScopedResourceSelectorRequirement(
          ioK8SApiCoreV1ScopedResourceSelectorRequirementOperator:
              json['operator'] as String,
          scopeName: json['scopeName'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1ScopedResourceSelectorRequirementToJson(
        IoK8SApiCoreV1ScopedResourceSelectorRequirement instance) =>
    <String, dynamic>{
      'operator':
          instance.ioK8SApiCoreV1ScopedResourceSelectorRequirementOperator,
      'scopeName': instance.scopeName,
      'values': instance.values,
    };
