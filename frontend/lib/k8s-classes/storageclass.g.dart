// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageclass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageclass _$StorageclassFromJson(Map<String, dynamic> json) => Storageclass(
      allowedTopologies: (json['allowedTopologies'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1TopologySelectorTerm.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      allowVolumeExpansion: json['allowVolumeExpansion'] as bool?,
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      mountOptions: (json['mountOptions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      parameters: (json['parameters'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      provisioner: json['provisioner'] as String?,
      reclaimPolicy: json['reclaimPolicy'] as String?,
      volumeBindingMode: json['volumeBindingMode'] as String?,
    );

Map<String, dynamic> _$StorageclassToJson(Storageclass instance) =>
    <String, dynamic>{
      'allowedTopologies': instance.allowedTopologies,
      'allowVolumeExpansion': instance.allowVolumeExpansion,
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'mountOptions': instance.mountOptions,
      'parameters': instance.parameters,
      'provisioner': instance.provisioner,
      'reclaimPolicy': instance.reclaimPolicy,
      'volumeBindingMode': instance.volumeBindingMode,
    };

const _$KindEnumMap = {
  Kind.STORAGE_CLASS: 'StorageClass',
};

IoK8SApiCoreV1TopologySelectorTerm _$IoK8SApiCoreV1TopologySelectorTermFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1TopologySelectorTerm(
      matchLabelExpressions: (json['matchLabelExpressions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1TopologySelectorLabelRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1TopologySelectorTermToJson(
        IoK8SApiCoreV1TopologySelectorTerm instance) =>
    <String, dynamic>{
      'matchLabelExpressions': instance.matchLabelExpressions,
    };

IoK8SApiCoreV1TopologySelectorLabelRequirement
    _$IoK8SApiCoreV1TopologySelectorLabelRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1TopologySelectorLabelRequirement(
          key: json['key'] as String,
          values: (json['values'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1TopologySelectorLabelRequirementToJson(
        IoK8SApiCoreV1TopologySelectorLabelRequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'values': instance.values,
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
