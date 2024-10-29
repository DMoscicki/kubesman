// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csinodelist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Csinodelist _$CsinodelistFromJson(Map<String, dynamic> json) => Csinodelist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiStorageV1CsiNode.fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$CsinodelistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CsinodelistToJson(Csinodelist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$CsinodelistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$CsinodelistKindEnumMap = {
  CsinodelistKind.CSI_NODE_LIST: 'CSINodeList',
};

IoK8SApiStorageV1CsiNode _$IoK8SApiStorageV1CsiNodeFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiStorageV1CsiNode(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: IoK8SApiStorageV1CsiNodeSpec.fromJson(
          json['spec'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiStorageV1CsiNodeToJson(
        IoK8SApiStorageV1CsiNode instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
    };

const _$ItemKindEnumMap = {
  ItemKind.CSI_NODE: 'CSINode',
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

IoK8SApiStorageV1CsiNodeSpec _$IoK8SApiStorageV1CsiNodeSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiStorageV1CsiNodeSpec(
      drivers: (json['drivers'] as List<dynamic>)
          .map((e) => IoK8SApiStorageV1CsiNodeDriver.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiStorageV1CsiNodeSpecToJson(
        IoK8SApiStorageV1CsiNodeSpec instance) =>
    <String, dynamic>{
      'drivers': instance.drivers,
    };

IoK8SApiStorageV1CsiNodeDriver _$IoK8SApiStorageV1CsiNodeDriverFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiStorageV1CsiNodeDriver(
      allocatable: json['allocatable'] == null
          ? null
          : IoK8SApiStorageV1VolumeNodeResources.fromJson(
              json['allocatable'] as Map<String, dynamic>),
      name: json['name'] as String,
      nodeId: json['nodeID'] as String,
      topologyKeys: (json['topologyKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiStorageV1CsiNodeDriverToJson(
        IoK8SApiStorageV1CsiNodeDriver instance) =>
    <String, dynamic>{
      'allocatable': instance.allocatable,
      'name': instance.name,
      'nodeID': instance.nodeId,
      'topologyKeys': instance.topologyKeys,
    };

IoK8SApiStorageV1VolumeNodeResources
    _$IoK8SApiStorageV1VolumeNodeResourcesFromJson(Map<String, dynamic> json) =>
        IoK8SApiStorageV1VolumeNodeResources(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiStorageV1VolumeNodeResourcesToJson(
        IoK8SApiStorageV1VolumeNodeResources instance) =>
    <String, dynamic>{
      'count': instance.count,
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
