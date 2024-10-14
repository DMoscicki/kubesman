// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validatingwebhookconfigurationlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validatingwebhookconfigurationlist _$ValidatingwebhookconfigurationlistFromJson(
        Map<String, dynamic> json) =>
    Validatingwebhookconfigurationlist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAdmissionregistrationV1ValidatingWebhookConfiguration
                  .fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(
          _$ValidatingwebhookconfigurationlistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidatingwebhookconfigurationlistToJson(
        Validatingwebhookconfigurationlist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$ValidatingwebhookconfigurationlistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$ValidatingwebhookconfigurationlistKindEnumMap = {
  ValidatingwebhookconfigurationlistKind.VALIDATING_WEBHOOK_CONFIGURATION_LIST:
      'ValidatingWebhookConfigurationList',
};

IoK8SApiAdmissionregistrationV1ValidatingWebhookConfiguration
    _$IoK8SApiAdmissionregistrationV1ValidatingWebhookConfigurationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1ValidatingWebhookConfiguration(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          webhooks: (json['webhooks'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1ValidatingWebhook.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1ValidatingWebhookConfigurationToJson(
            IoK8SApiAdmissionregistrationV1ValidatingWebhookConfiguration
                instance) =>
        <String, dynamic>{
          'apiVersion': instance.apiVersion,
          'kind': _$ItemKindEnumMap[instance.kind],
          'metadata': instance.metadata,
          'webhooks': instance.webhooks,
        };

const _$ItemKindEnumMap = {
  ItemKind.VALIDATING_WEBHOOK_CONFIGURATION: 'ValidatingWebhookConfiguration',
};

IoK8SApimachineryPkgApisMetaV1ObjectMeta
    _$IoK8SApimachineryPkgApisMetaV1ObjectMetaFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ObjectMeta(
          annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          creationTimestamp: json['creationTimestamp'] == null
              ? null
              : DateTime.parse(json['creationTimestamp'] as String),
          deletionGracePeriodSeconds:
              (json['deletionGracePeriodSeconds'] as num?)?.toInt(),
          deletionTimestamp: json['deletionTimestamp'] == null
              ? null
              : DateTime.parse(json['deletionTimestamp'] as String),
          finalizers: (json['finalizers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          generateName: json['generateName'] as String?,
          generation: (json['generation'] as num?)?.toInt(),
          labels: (json['labels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          managedFields: (json['managedFields'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          ownerReferences: (json['ownerReferences'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1OwnerReference.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          resourceVersion: json['resourceVersion'] as String?,
          selfLink: json['selfLink'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ObjectMetaToJson(
        IoK8SApimachineryPkgApisMetaV1ObjectMeta instance) =>
    <String, dynamic>{
      'annotations': instance.annotations,
      'creationTimestamp': instance.creationTimestamp?.toIso8601String(),
      'deletionGracePeriodSeconds': instance.deletionGracePeriodSeconds,
      'deletionTimestamp': instance.deletionTimestamp?.toIso8601String(),
      'finalizers': instance.finalizers,
      'generateName': instance.generateName,
      'generation': instance.generation,
      'labels': instance.labels,
      'managedFields': instance.managedFields,
      'name': instance.name,
      'namespace': instance.namespace,
      'ownerReferences': instance.ownerReferences,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
      'uid': instance.uid,
    };

IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry
    _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry(
          apiVersion: json['apiVersion'] as String?,
          fieldsType: json['fieldsType'] as String?,
          fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
          manager: json['manager'] as String?,
          operation: json['operation'] as String?,
          subresource: json['subresource'] as String?,
          time: json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryToJson(
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

IoK8SApimachineryPkgApisMetaV1OwnerReference
    _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1OwnerReference(
          apiVersion: json['apiVersion'] as String,
          blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
          controller: json['controller'] as bool?,
          kind: json['kind'] as String,
          name: json['name'] as String,
          uid: json['uid'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceToJson(
        IoK8SApimachineryPkgApisMetaV1OwnerReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

IoK8SApiAdmissionregistrationV1ValidatingWebhook
    _$IoK8SApiAdmissionregistrationV1ValidatingWebhookFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1ValidatingWebhook(
          admissionReviewVersions:
              (json['admissionReviewVersions'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
          clientConfig:
              IoK8SApiAdmissionregistrationV1WebhookClientConfig.fromJson(
                  json['clientConfig'] as Map<String, dynamic>),
          failurePolicy: json['failurePolicy'] as String?,
          matchConditions: (json['matchConditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1MatchCondition.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          matchPolicy: json['matchPolicy'] as String?,
          name: json['name'] as String,
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
          sideEffects: json['sideEffects'] as String,
          timeoutSeconds: (json['timeoutSeconds'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1ValidatingWebhookToJson(
        IoK8SApiAdmissionregistrationV1ValidatingWebhook instance) =>
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

IoK8SApimachineryPkgApisMetaV1ListMeta
    _$IoK8SApimachineryPkgApisMetaV1ListMetaFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ListMeta(
          ioK8SApimachineryPkgApisMetaV1ListMetaContinue:
              json['continue'] as String?,
          remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
          resourceVersion: json['resourceVersion'] as String?,
          selfLink: json['selfLink'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ListMetaToJson(
        IoK8SApimachineryPkgApisMetaV1ListMeta instance) =>
    <String, dynamic>{
      'continue': instance.ioK8SApimachineryPkgApisMetaV1ListMetaContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
