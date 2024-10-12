// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podlist _$PodlistFromJson(Map<String, dynamic> json) => Podlist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => PodV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$PodlistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : PodlistMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PodlistToJson(Podlist instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$PodlistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$PodlistKindEnumMap = {
  PodlistKind.POD_LIST: 'PodList',
};

PodV1 _$PodV1FromJson(Map<String, dynamic> json) => PodV1(
      apiVersion: $enumDecodeNullable(_$ApiVersionEnumMap, json['apiVersion']),
      kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : ItemMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : PodV1.fromJson(json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : PodV1.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PodV1ToJson(PodV1 instance) => <String, dynamic>{
      'apiVersion': _$ApiVersionEnumMap[instance.apiVersion],
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$ApiVersionEnumMap = {
  ApiVersion.V1: 'v1',
};

const _$ItemKindEnumMap = {
  ItemKind.POD: 'Pod',
};

ItemMetadata _$ItemMetadataFromJson(Map<String, dynamic> json) => ItemMetadata(
      annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
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
          ?.map((e) => e as String?)
          .toList(),
      generateName: json['generateName'] as String?,
      generation: (json['generation'] as num?)?.toInt(),
      labels: (json['labels'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      managedFields: (json['managedFields'] as List<dynamic>?)
          ?.map((e) =>
              ManagedfieldsentryMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      ownerReferences: (json['ownerReferences'] as List<dynamic>?)
          ?.map((e) => OwnerreferenceMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$ItemMetadataToJson(ItemMetadata instance) =>
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

ManagedfieldsentryMetaV1 _$ManagedfieldsentryMetaV1FromJson(
        Map<String, dynamic> json) =>
    ManagedfieldsentryMetaV1(
      apiVersion: json['apiVersion'] as String?,
      fieldsType: json['fieldsType'] as String?,
      fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
      manager: json['manager'] as String?,
      operation: json['operation'] as String?,
      subresource: json['subresource'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$ManagedfieldsentryMetaV1ToJson(
        ManagedfieldsentryMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

OwnerreferenceMetaV1 _$OwnerreferenceMetaV1FromJson(
        Map<String, dynamic> json) =>
    OwnerreferenceMetaV1(
      apiVersion: json['apiVersion'] as String?,
      blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
      controller: json['controller'] as bool?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$OwnerreferenceMetaV1ToJson(
        OwnerreferenceMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

PodlistMetadata _$PodlistMetadataFromJson(Map<String, dynamic> json) =>
    PodlistMetadata(
      metadataContinue: json['continue'] as String?,
      remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
    );

Map<String, dynamic> _$PodlistMetadataToJson(PodlistMetadata instance) =>
    <String, dynamic>{
      'continue': instance.metadataContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
