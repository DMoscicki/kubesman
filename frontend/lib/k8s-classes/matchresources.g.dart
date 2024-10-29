// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matchresources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Matchresources _$MatchresourcesFromJson(Map<String, dynamic> json) =>
    Matchresources(
      excludeResourceRules: (json['excludeResourceRules'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations
                  .fromJson(e as Map<String, dynamic>))
          .toList(),
      matchPolicy: json['matchPolicy'] as String?,
      namespaceSelector: json['namespaceSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['namespaceSelector'] as Map<String, dynamic>),
      objectSelector: json['objectSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['objectSelector'] as Map<String, dynamic>),
      resourceRules: (json['resourceRules'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations
                  .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MatchresourcesToJson(Matchresources instance) =>
    <String, dynamic>{
      'excludeResourceRules': instance.excludeResourceRules,
      'matchPolicy': instance.matchPolicy,
      'namespaceSelector': instance.namespaceSelector,
      'objectSelector': instance.objectSelector,
      'resourceRules': instance.resourceRules,
    };

IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations
    _$IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperationsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations(
          apiGroups: (json['apiGroups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          apiVersions: (json['apiVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          operations: (json['operations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          resourceNames: (json['resourceNames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          resources: (json['resources'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          scope: json['scope'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperationsToJson(
            IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations
                instance) =>
        <String, dynamic>{
          'apiGroups': instance.apiGroups,
          'apiVersions': instance.apiVersions,
          'operations': instance.operations,
          'resourceNames': instance.resourceNames,
          'resources': instance.resources,
          'scope': instance.scope,
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
