// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podschedulingcontext.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podschedulingcontext _$PodschedulingcontextFromJson(
        Map<String, dynamic> json) =>
    Podschedulingcontext(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      spec: IoK8SApiResourceV1Alpha2PodSchedulingContextSpec.fromJson(
          json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiResourceV1Alpha2PodSchedulingContextStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PodschedulingcontextToJson(
        Podschedulingcontext instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.POD_SCHEDULING_CONTEXT: 'PodSchedulingContext',
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
