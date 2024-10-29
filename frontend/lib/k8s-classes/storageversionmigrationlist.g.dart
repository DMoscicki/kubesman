// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageversionmigrationlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageversionmigrationlist _$StorageversionmigrationlistFromJson(
        Map<String, dynamic> json) =>
    Storageversionmigrationlist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiStoragemigrationV1Alpha1StorageVersionMigration.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(
          _$StorageversionmigrationlistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StorageversionmigrationlistToJson(
        Storageversionmigrationlist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$StorageversionmigrationlistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$StorageversionmigrationlistKindEnumMap = {
  StorageversionmigrationlistKind.STORAGE_VERSION_MIGRATION_LIST:
      'StorageVersionMigrationList',
};

IoK8SApiStoragemigrationV1Alpha1StorageVersionMigration
    _$IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiStoragemigrationV1Alpha1StorageVersionMigration(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: json['spec'] == null
              ? null
              : IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationSpec
                  .fromJson(json['spec'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationStatus
                  .fromJson(json['status'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationToJson(
            IoK8SApiStoragemigrationV1Alpha1StorageVersionMigration instance) =>
        <String, dynamic>{
          'apiVersion': instance.apiVersion,
          'kind': _$ItemKindEnumMap[instance.kind],
          'metadata': instance.metadata,
          'spec': instance.spec,
          'status': instance.status,
        };

const _$ItemKindEnumMap = {
  ItemKind.STORAGE_VERSION_MIGRATION: 'StorageVersionMigration',
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

IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationSpec
    _$IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationSpec(
          continueToken: json['continueToken'] as String?,
          resource:
              IoK8SApiStoragemigrationV1Alpha1GroupVersionResource.fromJson(
                  json['resource'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationSpecToJson(
            IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationSpec
                instance) =>
        <String, dynamic>{
          'continueToken': instance.continueToken,
          'resource': instance.resource,
        };

IoK8SApiStoragemigrationV1Alpha1GroupVersionResource
    _$IoK8SApiStoragemigrationV1Alpha1GroupVersionResourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiStoragemigrationV1Alpha1GroupVersionResource(
          group: json['group'] as String?,
          resource: json['resource'] as String?,
          version: json['version'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiStoragemigrationV1Alpha1GroupVersionResourceToJson(
            IoK8SApiStoragemigrationV1Alpha1GroupVersionResource instance) =>
        <String, dynamic>{
          'group': instance.group,
          'resource': instance.resource,
          'version': instance.version,
        };

IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationStatus
    _$IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationStatus(
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiStoragemigrationV1Alpha1MigrationCondition.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          resourceVersion: json['resourceVersion'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationStatusToJson(
            IoK8SApiStoragemigrationV1Alpha1StorageVersionMigrationStatus
                instance) =>
        <String, dynamic>{
          'conditions': instance.conditions,
          'resourceVersion': instance.resourceVersion,
        };

IoK8SApiStoragemigrationV1Alpha1MigrationCondition
    _$IoK8SApiStoragemigrationV1Alpha1MigrationConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiStoragemigrationV1Alpha1MigrationCondition(
          lastUpdateTime: json['lastUpdateTime'] == null
              ? null
              : DateTime.parse(json['lastUpdateTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApiStoragemigrationV1Alpha1MigrationConditionToJson(
        IoK8SApiStoragemigrationV1Alpha1MigrationCondition instance) =>
    <String, dynamic>{
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
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
