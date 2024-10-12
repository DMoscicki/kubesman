// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topologyspreadconstraint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Topologyspreadconstraint _$TopologyspreadconstraintFromJson(
        Map<String, dynamic> json) =>
    Topologyspreadconstraint(
      labelSelector: json['labelSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['labelSelector'] as Map<String, dynamic>),
      matchLabelKeys: (json['matchLabelKeys'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      maxSkew: (json['maxSkew'] as num?)?.toInt(),
      minDomains: (json['minDomains'] as num?)?.toInt(),
      nodeAffinityPolicy: json['nodeAffinityPolicy'] as String?,
      nodeTaintsPolicy: json['nodeTaintsPolicy'] as String?,
      topologyKey: json['topologyKey'] as String?,
      whenUnsatisfiable: json['whenUnsatisfiable'] as String?,
    );

Map<String, dynamic> _$TopologyspreadconstraintToJson(
        Topologyspreadconstraint instance) =>
    <String, dynamic>{
      'labelSelector': instance.labelSelector,
      'matchLabelKeys': instance.matchLabelKeys,
      'maxSkew': instance.maxSkew,
      'minDomains': instance.minDomains,
      'nodeAffinityPolicy': instance.nodeAffinityPolicy,
      'nodeTaintsPolicy': instance.nodeTaintsPolicy,
      'topologyKey': instance.topologyKey,
      'whenUnsatisfiable': instance.whenUnsatisfiable,
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
