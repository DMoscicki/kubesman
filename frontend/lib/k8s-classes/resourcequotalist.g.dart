// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourcequotalist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourcequotalist _$ResourcequotalistFromJson(Map<String, dynamic> json) =>
    Resourcequotalist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ResourceQuota.fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$ResourcequotalistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourcequotalistToJson(Resourcequotalist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$ResourcequotalistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$ResourcequotalistKindEnumMap = {
  ResourcequotalistKind.RESOURCE_QUOTA_LIST: 'ResourceQuotaList',
};

IoK8SApiCoreV1ResourceQuota _$IoK8SApiCoreV1ResourceQuotaFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ResourceQuota(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiCoreV1ResourceQuotaSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiCoreV1ResourceQuotaStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceQuotaToJson(
        IoK8SApiCoreV1ResourceQuota instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$ItemKindEnumMap = {
  ItemKind.RESOURCE_QUOTA: 'ResourceQuota',
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

IoK8SApiCoreV1ResourceQuotaSpec _$IoK8SApiCoreV1ResourceQuotaSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ResourceQuotaSpec(
      hard: json['hard'] as Map<String, dynamic>?,
      scopes:
          (json['scopes'] as List<dynamic>?)?.map((e) => e as String).toList(),
      scopeSelector: json['scopeSelector'] == null
          ? null
          : IoK8SApiCoreV1ScopeSelector.fromJson(
              json['scopeSelector'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceQuotaSpecToJson(
        IoK8SApiCoreV1ResourceQuotaSpec instance) =>
    <String, dynamic>{
      'hard': instance.hard,
      'scopes': instance.scopes,
      'scopeSelector': instance.scopeSelector,
    };

IoK8SApiCoreV1ScopeSelector _$IoK8SApiCoreV1ScopeSelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ScopeSelector(
      matchExpressions: (json['matchExpressions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1ScopedResourceSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ScopeSelectorToJson(
        IoK8SApiCoreV1ScopeSelector instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
    };

IoK8SApiCoreV1ScopedResourceSelectorRequirement
    _$IoK8SApiCoreV1ScopedResourceSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ScopedResourceSelectorRequirement(
          ioK8SApiCoreV1ScopedResourceSelectorRequirementOperator:
              json['operator'] as String,
          scopeName: json['scopeName'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1ScopedResourceSelectorRequirementToJson(
        IoK8SApiCoreV1ScopedResourceSelectorRequirement instance) =>
    <String, dynamic>{
      'operator':
          instance.ioK8SApiCoreV1ScopedResourceSelectorRequirementOperator,
      'scopeName': instance.scopeName,
      'values': instance.values,
    };

IoK8SApiCoreV1ResourceQuotaStatus _$IoK8SApiCoreV1ResourceQuotaStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ResourceQuotaStatus(
      hard: json['hard'] as Map<String, dynamic>?,
      used: json['used'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceQuotaStatusToJson(
        IoK8SApiCoreV1ResourceQuotaStatus instance) =>
    <String, dynamic>{
      'hard': instance.hard,
      'used': instance.used,
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
