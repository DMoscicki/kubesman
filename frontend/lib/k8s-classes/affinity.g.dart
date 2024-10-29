// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affinity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Affinity _$AffinityFromJson(Map<String, dynamic> json) => Affinity(
      nodeAffinity: json['nodeAffinity'] == null
          ? null
          : IoK8SApiCoreV1NodeAffinity.fromJson(
              json['nodeAffinity'] as Map<String, dynamic>),
      podAffinity: json['podAffinity'] == null
          ? null
          : IoK8SApiCoreV1PodAffinity.fromJson(
              json['podAffinity'] as Map<String, dynamic>),
      podAntiAffinity: json['podAntiAffinity'] == null
          ? null
          : IoK8SApiCoreV1PodAntiAffinity.fromJson(
              json['podAntiAffinity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AffinityToJson(Affinity instance) => <String, dynamic>{
      'nodeAffinity': instance.nodeAffinity,
      'podAffinity': instance.podAffinity,
      'podAntiAffinity': instance.podAntiAffinity,
    };

IoK8SApiCoreV1NodeAffinity _$IoK8SApiCoreV1NodeAffinityFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeAffinity(
      preferredDuringSchedulingIgnoredDuringExecution:
          (json['preferredDuringSchedulingIgnoredDuringExecution']
                  as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1PreferredSchedulingTerm.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
      requiredDuringSchedulingIgnoredDuringExecution:
          json['requiredDuringSchedulingIgnoredDuringExecution'] == null
              ? null
              : IoK8SApiCoreV1NodeSelector.fromJson(
                  json['requiredDuringSchedulingIgnoredDuringExecution']
                      as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeAffinityToJson(
        IoK8SApiCoreV1NodeAffinity instance) =>
    <String, dynamic>{
      'preferredDuringSchedulingIgnoredDuringExecution':
          instance.preferredDuringSchedulingIgnoredDuringExecution,
      'requiredDuringSchedulingIgnoredDuringExecution':
          instance.requiredDuringSchedulingIgnoredDuringExecution,
    };

IoK8SApiCoreV1PreferredSchedulingTerm
    _$IoK8SApiCoreV1PreferredSchedulingTermFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PreferredSchedulingTerm(
          preference: IoK8SApiCoreV1NodeSelectorTerm.fromJson(
              json['preference'] as Map<String, dynamic>),
          weight: (json['weight'] as num).toInt(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1PreferredSchedulingTermToJson(
        IoK8SApiCoreV1PreferredSchedulingTerm instance) =>
    <String, dynamic>{
      'preference': instance.preference,
      'weight': instance.weight,
    };

IoK8SApiCoreV1NodeSelectorTerm _$IoK8SApiCoreV1NodeSelectorTermFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeSelectorTerm(
      matchExpressions: (json['matchExpressions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1NodeSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      matchFields: (json['matchFields'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1NodeSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorTermToJson(
        IoK8SApiCoreV1NodeSelectorTerm instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchFields': instance.matchFields,
    };

IoK8SApiCoreV1NodeSelectorRequirement
    _$IoK8SApiCoreV1NodeSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1NodeSelectorRequirement(
          key: json['key'] as String,
          ioK8SApiCoreV1NodeSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorRequirementToJson(
        IoK8SApiCoreV1NodeSelectorRequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'operator': instance.ioK8SApiCoreV1NodeSelectorRequirementOperator,
      'values': instance.values,
    };

IoK8SApiCoreV1NodeSelector _$IoK8SApiCoreV1NodeSelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeSelector(
      nodeSelectorTerms: (json['nodeSelectorTerms'] as List<dynamic>)
          .map((e) => IoK8SApiCoreV1NodeSelectorTerm.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorToJson(
        IoK8SApiCoreV1NodeSelector instance) =>
    <String, dynamic>{
      'nodeSelectorTerms': instance.nodeSelectorTerms,
    };

IoK8SApiCoreV1PodAffinity _$IoK8SApiCoreV1PodAffinityFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodAffinity(
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

Map<String, dynamic> _$IoK8SApiCoreV1PodAffinityToJson(
        IoK8SApiCoreV1PodAffinity instance) =>
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

IoK8SApiCoreV1PodAntiAffinity _$IoK8SApiCoreV1PodAntiAffinityFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodAntiAffinity(
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

Map<String, dynamic> _$IoK8SApiCoreV1PodAntiAffinityToJson(
        IoK8SApiCoreV1PodAntiAffinity instance) =>
    <String, dynamic>{
      'preferredDuringSchedulingIgnoredDuringExecution':
          instance.preferredDuringSchedulingIgnoredDuringExecution,
      'requiredDuringSchedulingIgnoredDuringExecution':
          instance.requiredDuringSchedulingIgnoredDuringExecution,
    };
