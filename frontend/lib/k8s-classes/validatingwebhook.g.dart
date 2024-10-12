// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validatingwebhook.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validatingwebhook _$ValidatingwebhookFromJson(Map<String, dynamic> json) =>
    Validatingwebhook(
      admissionReviewVersions:
          (json['admissionReviewVersions'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList(),
      clientConfig: IoK8SApiAdmissionregistrationV1WebhookClientConfig.fromJson(
          json['clientConfig'] as Map<String, dynamic>),
      failurePolicy: json['failurePolicy'] as String?,
      matchConditions: (json['matchConditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAdmissionregistrationV1MatchCondition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      matchPolicy: json['matchPolicy'] as String?,
      name: json['name'] as String?,
      namespaceSelector: json['namespaceSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['namespaceSelector'] as Map<String, dynamic>),
      objectSelector: json['objectSelector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['objectSelector'] as Map<String, dynamic>),
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAdmissionregistrationV1RuleWithOperations.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      sideEffects: json['sideEffects'] as String?,
      timeoutSeconds: (json['timeoutSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ValidatingwebhookToJson(Validatingwebhook instance) =>
    <String, dynamic>{
      'admissionReviewVersions': instance.admissionReviewVersions,
      'clientConfig': instance.clientConfig,
      'failurePolicy': instance.failurePolicy,
      'matchConditions': instance.matchConditions,
      'matchPolicy': instance.matchPolicy,
      'name': instance.name,
      'namespaceSelector': instance.namespaceSelector,
      'objectSelector': instance.objectSelector,
      'rules': instance.rules,
      'sideEffects': instance.sideEffects,
      'timeoutSeconds': instance.timeoutSeconds,
    };

IoK8SApiAdmissionregistrationV1WebhookClientConfig
    _$IoK8SApiAdmissionregistrationV1WebhookClientConfigFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1WebhookClientConfig(
          caBundle: json['caBundle'] as String?,
          service: json['service'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1ServiceReference.fromJson(
                  json['service'] as Map<String, dynamic>),
          url: json['url'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1WebhookClientConfigToJson(
        IoK8SApiAdmissionregistrationV1WebhookClientConfig instance) =>
    <String, dynamic>{
      'caBundle': instance.caBundle,
      'service': instance.service,
      'url': instance.url,
    };

IoK8SApiAdmissionregistrationV1ServiceReference
    _$IoK8SApiAdmissionregistrationV1ServiceReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1ServiceReference(
          name: json['name'] as String,
          namespace: json['namespace'] as String,
          path: json['path'] as String?,
          port: (json['port'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1ServiceReferenceToJson(
        IoK8SApiAdmissionregistrationV1ServiceReference instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
      'path': instance.path,
      'port': instance.port,
    };

IoK8SApiAdmissionregistrationV1MatchCondition
    _$IoK8SApiAdmissionregistrationV1MatchConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1MatchCondition(
          expression: json['expression'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1MatchConditionToJson(
        IoK8SApiAdmissionregistrationV1MatchCondition instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
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

IoK8SApiAdmissionregistrationV1RuleWithOperations
    _$IoK8SApiAdmissionregistrationV1RuleWithOperationsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1RuleWithOperations(
          apiGroups: (json['apiGroups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          apiVersions: (json['apiVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          operations: (json['operations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          resources: (json['resources'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          scope: json['scope'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1RuleWithOperationsToJson(
        IoK8SApiAdmissionregistrationV1RuleWithOperations instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'apiVersions': instance.apiVersions,
      'operations': instance.operations,
      'resources': instance.resources,
      'scope': instance.scope,
    };
