// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podschedulingcontextlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podschedulingcontextlist _$PodschedulingcontextlistFromJson(
        Map<String, dynamic> json) =>
    Podschedulingcontextlist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiResourceV1Alpha2PodSchedulingContext.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(
          _$PodschedulingcontextlistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PodschedulingcontextlistToJson(
        Podschedulingcontextlist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$PodschedulingcontextlistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$PodschedulingcontextlistKindEnumMap = {
  PodschedulingcontextlistKind.POD_SCHEDULING_CONTEXT_LIST:
      'PodSchedulingContextList',
};

IoK8SApiResourceV1Alpha2PodSchedulingContext
    _$IoK8SApiResourceV1Alpha2PodSchedulingContextFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2PodSchedulingContext(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: IoK8SApiResourceV1Alpha2PodSchedulingContextSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : IoK8SApiResourceV1Alpha2PodSchedulingContextStatus.fromJson(
                  json['status'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2PodSchedulingContextToJson(
        IoK8SApiResourceV1Alpha2PodSchedulingContext instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$ItemKindEnumMap = {
  ItemKind.POD_SCHEDULING_CONTEXT: 'PodSchedulingContext',
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

IoK8SApiResourceV1Alpha2PodSchedulingContextSpec
    _$IoK8SApiResourceV1Alpha2PodSchedulingContextSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2PodSchedulingContextSpec(
          potentialNodes: (json['potentialNodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          selectedNode: json['selectedNode'] as String?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2PodSchedulingContextSpecToJson(
        IoK8SApiResourceV1Alpha2PodSchedulingContextSpec instance) =>
    <String, dynamic>{
      'potentialNodes': instance.potentialNodes,
      'selectedNode': instance.selectedNode,
    };

IoK8SApiResourceV1Alpha2PodSchedulingContextStatus
    _$IoK8SApiResourceV1Alpha2PodSchedulingContextStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2PodSchedulingContextStatus(
          resourceClaims: (json['resourceClaims'] as List<dynamic>?)
              ?.map((e) => IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2PodSchedulingContextStatusToJson(
        IoK8SApiResourceV1Alpha2PodSchedulingContextStatus instance) =>
    <String, dynamic>{
      'resourceClaims': instance.resourceClaims,
    };

IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus
    _$IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus(
          name: json['name'] as String?,
          unsuitableNodes: (json['unsuitableNodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatusToJson(
            IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus instance) =>
        <String, dynamic>{
          'name': instance.name,
          'unsuitableNodes': instance.unsuitableNodes,
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
