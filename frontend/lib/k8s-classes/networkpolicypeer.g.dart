// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'networkpolicypeer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Networkpolicypeer _$NetworkpolicypeerFromJson(Map<String, dynamic> json) =>
    Networkpolicypeer(
      ipBlock: json['ipBlock'] == null
          ? null
          : IoK8SApiNetworkingV1IpBlock.fromJson(
              json['ipBlock'] as Map<String, dynamic>),
      namespaceSelector: json['namespaceSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['namespaceSelector'] as Map<String, dynamic>),
      podSelector: json['podSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['podSelector'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkpolicypeerToJson(Networkpolicypeer instance) =>
    <String, dynamic>{
      'ipBlock': instance.ipBlock,
      'namespaceSelector': instance.namespaceSelector,
      'podSelector': instance.podSelector,
    };

IoK8SApiNetworkingV1IpBlock _$IoK8SApiNetworkingV1IpBlockFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1IpBlock(
      cidr: json['cidr'] as String,
      except:
          (json['except'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1IpBlockToJson(
        IoK8SApiNetworkingV1IpBlock instance) =>
    <String, dynamic>{
      'cidr': instance.cidr,
      'except': instance.except,
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
