// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eviction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Eviction _$EvictionFromJson(Map<String, dynamic> json) => Eviction(
      apiVersion: json['apiVersion'] as String?,
      deleteOptions: json['deleteOptions'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1DeleteOptions.fromJson(
              json['deleteOptions'] as Map<String, dynamic>),
      kind: $enumDecodeNullable(_$EvictionKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EvictionToJson(Eviction instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'deleteOptions': instance.deleteOptions,
      'kind': _$EvictionKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$EvictionKindEnumMap = {
  EvictionKind.EVICTION: 'Eviction',
};

IoK8SApimachineryPkgApisMetaV1DeleteOptions
    _$IoK8SApimachineryPkgApisMetaV1DeleteOptionsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1DeleteOptions(
          apiVersion: json['apiVersion'] as String?,
          dryRun: (json['dryRun'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          gracePeriodSeconds: (json['gracePeriodSeconds'] as num?)?.toInt(),
          kind: $enumDecodeNullable(_$DeleteOptionsKindEnumMap, json['kind']),
          orphanDependents: json['orphanDependents'] as bool?,
          preconditions: json['preconditions'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1Preconditions.fromJson(
                  json['preconditions'] as Map<String, dynamic>),
          propagationPolicy: json['propagationPolicy'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1DeleteOptionsToJson(
        IoK8SApimachineryPkgApisMetaV1DeleteOptions instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'dryRun': instance.dryRun,
      'gracePeriodSeconds': instance.gracePeriodSeconds,
      'kind': _$DeleteOptionsKindEnumMap[instance.kind],
      'orphanDependents': instance.orphanDependents,
      'preconditions': instance.preconditions,
      'propagationPolicy': instance.propagationPolicy,
    };

const _$DeleteOptionsKindEnumMap = {
  DeleteOptionsKind.DELETE_OPTIONS: 'DeleteOptions',
};

IoK8SApimachineryPkgApisMetaV1Preconditions
    _$IoK8SApimachineryPkgApisMetaV1PreconditionsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1Preconditions(
          resourceVersion: json['resourceVersion'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1PreconditionsToJson(
        IoK8SApimachineryPkgApisMetaV1Preconditions instance) =>
    <String, dynamic>{
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
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

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
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
