// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validatingadmissionpolicybindingspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validatingadmissionpolicybindingspec
    _$ValidatingadmissionpolicybindingspecFromJson(Map<String, dynamic> json) =>
        Validatingadmissionpolicybindingspec(
          matchResources: json['matchResources'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1MatchResources.fromJson(
                  json['matchResources'] as Map<String, dynamic>),
          paramRef: json['paramRef'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1ParamRef.fromJson(
                  json['paramRef'] as Map<String, dynamic>),
          policyName: json['policyName'] as String?,
          validationActions: (json['validationActions'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList(),
        );

Map<String, dynamic> _$ValidatingadmissionpolicybindingspecToJson(
        Validatingadmissionpolicybindingspec instance) =>
    <String, dynamic>{
      'matchResources': instance.matchResources,
      'paramRef': instance.paramRef,
      'policyName': instance.policyName,
      'validationActions': instance.validationActions,
    };

IoK8SApiAdmissionregistrationV1Beta1MatchResources
    _$IoK8SApiAdmissionregistrationV1Beta1MatchResourcesFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1MatchResources(
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

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1MatchResourcesToJson(
        IoK8SApiAdmissionregistrationV1Beta1MatchResources instance) =>
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

IoK8SApiAdmissionregistrationV1Beta1ParamRef
    _$IoK8SApiAdmissionregistrationV1Beta1ParamRefFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ParamRef(
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          parameterNotFoundAction: json['parameterNotFoundAction'] as String?,
          selector: json['selector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['selector'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1ParamRefToJson(
        IoK8SApiAdmissionregistrationV1Beta1ParamRef instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
      'parameterNotFoundAction': instance.parameterNotFoundAction,
      'selector': instance.selector,
    };
