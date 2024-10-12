// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poddisruptionbudgetlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poddisruptionbudgetlist _$PoddisruptionbudgetlistFromJson(
        Map<String, dynamic> json) =>
    Poddisruptionbudgetlist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiPolicyV1PodDisruptionBudget.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(
          _$PoddisruptionbudgetlistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PoddisruptionbudgetlistToJson(
        Poddisruptionbudgetlist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$PoddisruptionbudgetlistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$PoddisruptionbudgetlistKindEnumMap = {
  PoddisruptionbudgetlistKind.POD_DISRUPTION_BUDGET_LIST:
      'PodDisruptionBudgetList',
};

IoK8SApiPolicyV1PodDisruptionBudget
    _$IoK8SApiPolicyV1PodDisruptionBudgetFromJson(Map<String, dynamic> json) =>
        IoK8SApiPolicyV1PodDisruptionBudget(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: json['spec'] == null
              ? null
              : IoK8SApiPolicyV1PodDisruptionBudgetSpec.fromJson(
                  json['spec'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : IoK8SApiPolicyV1PodDisruptionBudgetStatus.fromJson(
                  json['status'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiPolicyV1PodDisruptionBudgetToJson(
        IoK8SApiPolicyV1PodDisruptionBudget instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$ItemKindEnumMap = {
  ItemKind.POD_DISRUPTION_BUDGET: 'PodDisruptionBudget',
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

IoK8SApiPolicyV1PodDisruptionBudgetSpec
    _$IoK8SApiPolicyV1PodDisruptionBudgetSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiPolicyV1PodDisruptionBudgetSpec(
          maxUnavailable: json['maxUnavailable'],
          minAvailable: json['minAvailable'],
          selector: json['selector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['selector'] as Map<String, dynamic>),
          unhealthyPodEvictionPolicy:
              json['unhealthyPodEvictionPolicy'] as String?,
        );

Map<String, dynamic> _$IoK8SApiPolicyV1PodDisruptionBudgetSpecToJson(
        IoK8SApiPolicyV1PodDisruptionBudgetSpec instance) =>
    <String, dynamic>{
      'maxUnavailable': instance.maxUnavailable,
      'minAvailable': instance.minAvailable,
      'selector': instance.selector,
      'unhealthyPodEvictionPolicy': instance.unhealthyPodEvictionPolicy,
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

IoK8SApiPolicyV1PodDisruptionBudgetStatus
    _$IoK8SApiPolicyV1PodDisruptionBudgetStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiPolicyV1PodDisruptionBudgetStatus(
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) => IoK8SApimachineryPkgApisMetaV1Condition.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          currentHealthy: (json['currentHealthy'] as num).toInt(),
          desiredHealthy: (json['desiredHealthy'] as num).toInt(),
          disruptedPods: (json['disruptedPods'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, DateTime.parse(e as String)),
          ),
          disruptionsAllowed: (json['disruptionsAllowed'] as num).toInt(),
          expectedPods: (json['expectedPods'] as num).toInt(),
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiPolicyV1PodDisruptionBudgetStatusToJson(
        IoK8SApiPolicyV1PodDisruptionBudgetStatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'currentHealthy': instance.currentHealthy,
      'desiredHealthy': instance.desiredHealthy,
      'disruptedPods': instance.disruptedPods
          ?.map((k, e) => MapEntry(k, e.toIso8601String())),
      'disruptionsAllowed': instance.disruptionsAllowed,
      'expectedPods': instance.expectedPods,
      'observedGeneration': instance.observedGeneration,
    };

IoK8SApimachineryPkgApisMetaV1Condition
    _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1Condition(
          lastTransitionTime:
              DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String,
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
          reason: json['reason'] as String,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(
        IoK8SApimachineryPkgApisMetaV1Condition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      metadataContinue: json['continue'] as String?,
      remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'continue': instance.metadataContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
