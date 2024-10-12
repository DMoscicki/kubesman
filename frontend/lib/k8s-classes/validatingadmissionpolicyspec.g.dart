// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validatingadmissionpolicyspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validatingadmissionpolicyspec _$ValidatingadmissionpolicyspecFromJson(
        Map<String, dynamic> json) =>
    Validatingadmissionpolicyspec(
      auditAnnotations: (json['auditAnnotations'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAdmissionregistrationV1Beta1AuditAnnotation.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      failurePolicy: json['failurePolicy'] as String?,
      matchConditions: (json['matchConditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAdmissionregistrationV1Beta1MatchCondition.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      matchConstraints: json['matchConstraints'] == null
          ? null
          : IoK8SApiAdmissionregistrationV1Beta1MatchResources.fromJson(
              json['matchConstraints'] as Map<String, dynamic>),
      paramKind: json['paramKind'] == null
          ? null
          : IoK8SApiAdmissionregistrationV1Beta1ParamKind.fromJson(
              json['paramKind'] as Map<String, dynamic>),
      validations: (json['validations'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAdmissionregistrationV1Beta1Validation.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      variables: (json['variables'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAdmissionregistrationV1Beta1Variable.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ValidatingadmissionpolicyspecToJson(
        Validatingadmissionpolicyspec instance) =>
    <String, dynamic>{
      'auditAnnotations': instance.auditAnnotations,
      'failurePolicy': instance.failurePolicy,
      'matchConditions': instance.matchConditions,
      'matchConstraints': instance.matchConstraints,
      'paramKind': instance.paramKind,
      'validations': instance.validations,
      'variables': instance.variables,
    };

IoK8SApiAdmissionregistrationV1Beta1AuditAnnotation
    _$IoK8SApiAdmissionregistrationV1Beta1AuditAnnotationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1AuditAnnotation(
          key: json['key'] as String,
          valueExpression: json['valueExpression'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1AuditAnnotationToJson(
            IoK8SApiAdmissionregistrationV1Beta1AuditAnnotation instance) =>
        <String, dynamic>{
          'key': instance.key,
          'valueExpression': instance.valueExpression,
        };

IoK8SApiAdmissionregistrationV1Beta1MatchCondition
    _$IoK8SApiAdmissionregistrationV1Beta1MatchConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1MatchCondition(
          expression: json['expression'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1MatchConditionToJson(
        IoK8SApiAdmissionregistrationV1Beta1MatchCondition instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
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

IoK8SApiAdmissionregistrationV1Beta1ParamKind
    _$IoK8SApiAdmissionregistrationV1Beta1ParamKindFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ParamKind(
          apiVersion: json['apiVersion'] as String?,
          kind: json['kind'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1ParamKindToJson(
        IoK8SApiAdmissionregistrationV1Beta1ParamKind instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': instance.kind,
    };

IoK8SApiAdmissionregistrationV1Beta1Validation
    _$IoK8SApiAdmissionregistrationV1Beta1ValidationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1Validation(
          expression: json['expression'] as String,
          message: json['message'] as String?,
          messageExpression: json['messageExpression'] as String?,
          reason: json['reason'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1ValidationToJson(
        IoK8SApiAdmissionregistrationV1Beta1Validation instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'message': instance.message,
      'messageExpression': instance.messageExpression,
      'reason': instance.reason,
    };

IoK8SApiAdmissionregistrationV1Beta1Variable
    _$IoK8SApiAdmissionregistrationV1Beta1VariableFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1Variable(
          expression: json['expression'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1VariableToJson(
        IoK8SApiAdmissionregistrationV1Beta1Variable instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
    };
