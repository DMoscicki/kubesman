// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourcequotaspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourcequotaspec _$ResourcequotaspecFromJson(Map<String, dynamic> json) =>
    Resourcequotaspec(
      hard: json['hard'] as Map<String, dynamic>?,
      scopes:
          (json['scopes'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      scopeSelector: json['scopeSelector'] == null
          ? null
          : IoK8SApiCoreV1ScopeSelector.fromJson(
              json['scopeSelector'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourcequotaspecToJson(Resourcequotaspec instance) =>
    <String, dynamic>{
      'hard': instance.hard,
      'scopes': instance.scopes,
      'scopeSelector': instance.scopeSelector,
    };

IoK8SApiCoreV1ScopeSelector _$IoK8SApiCoreV1ScopeSelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ScopeSelector(
      matchExpressions: (json['matchExpressions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1ScopedResourceSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ScopeSelectorToJson(
        IoK8SApiCoreV1ScopeSelector instance) =>
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
