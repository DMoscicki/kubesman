// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podaffinity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podaffinity _$PodaffinityFromJson(Map<String, dynamic> json) => Podaffinity(
      preferredDuringSchedulingIgnoredDuringExecution:
          (json['preferredDuringSchedulingIgnoredDuringExecution']
                  as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1WeightedPodAffinityTerm.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      requiredDuringSchedulingIgnoredDuringExecution: (json[
                  'requiredDuringSchedulingIgnoredDuringExecution']
              as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1PodAffinityTerm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PodaffinityToJson(Podaffinity instance) =>
    <String, dynamic>{
      'preferredDuringSchedulingIgnoredDuringExecution':
          instance.preferredDuringSchedulingIgnoredDuringExecution,
      'requiredDuringSchedulingIgnoredDuringExecution':
          instance.requiredDuringSchedulingIgnoredDuringExecution,
    };

IoK8SApiCoreV1WeightedPodAffinityTerm
    _$IoK8SApiCoreV1WeightedPodAffinityTermFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1WeightedPodAffinityTerm(
          podAffinityTerm: IoK8SApiCoreV1PodAffinityTerm.fromJson(
              json['podAffinityTerm'] as Map<String, dynamic>),
          weight: (json['weight'] as num).toInt(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1WeightedPodAffinityTermToJson(
        IoK8SApiCoreV1WeightedPodAffinityTerm instance) =>
    <String, dynamic>{
      'podAffinityTerm': instance.podAffinityTerm,
      'weight': instance.weight,
    };

IoK8SApiCoreV1PodAffinityTerm _$IoK8SApiCoreV1PodAffinityTermFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodAffinityTerm(
      labelSelector: json['labelSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['labelSelector'] as Map<String, dynamic>),
      matchLabelKeys: (json['matchLabelKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      mismatchLabelKeys: (json['mismatchLabelKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      namespaces: (json['namespaces'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      namespaceSelector: json['namespaceSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['namespaceSelector'] as Map<String, dynamic>),
      topologyKey: json['topologyKey'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodAffinityTermToJson(
        IoK8SApiCoreV1PodAffinityTerm instance) =>
    <String, dynamic>{
      'labelSelector': instance.labelSelector,
      'matchLabelKeys': instance.matchLabelKeys,
      'mismatchLabelKeys': instance.mismatchLabelKeys,
      'namespaces': instance.namespaces,
      'namespaceSelector': instance.namespaceSelector,
      'topologyKey': instance.topologyKey,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelector
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelector(
          matchExpressions: (json['matchExpressions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          matchLabels: (json['matchLabels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(
        IoK8SApimachineryPkgApisMetaV1LabelSelector instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchLabels': instance.matchLabels,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement(
          key: json['key'] as String,
          ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(
            IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement instance) =>
        <String, dynamic>{
          'key': instance.key,
          'operator': instance
              .ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
          'values': instance.values,
        };
