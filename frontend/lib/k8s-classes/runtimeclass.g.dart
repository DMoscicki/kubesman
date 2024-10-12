// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'runtimeclass.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Runtimeclass _$RuntimeclassFromJson(Map<String, dynamic> json) => Runtimeclass(
      apiVersion: json['apiVersion'] as String?,
      handler: json['handler'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      overhead: json['overhead'] == null
          ? null
          : IoK8SApiNodeV1Overhead.fromJson(
              json['overhead'] as Map<String, dynamic>),
      scheduling: json['scheduling'] == null
          ? null
          : IoK8SApiNodeV1Scheduling.fromJson(
              json['scheduling'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RuntimeclassToJson(Runtimeclass instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'handler': instance.handler,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'overhead': instance.overhead,
      'scheduling': instance.scheduling,
    };

const _$KindEnumMap = {
  Kind.RUNTIME_CLASS: 'RuntimeClass',
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

IoK8SApiNodeV1Overhead _$IoK8SApiNodeV1OverheadFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNodeV1Overhead(
      podFixed: json['podFixed'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$IoK8SApiNodeV1OverheadToJson(
        IoK8SApiNodeV1Overhead instance) =>
    <String, dynamic>{
      'podFixed': instance.podFixed,
    };

IoK8SApiNodeV1Scheduling _$IoK8SApiNodeV1SchedulingFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNodeV1Scheduling(
      nodeSelector: (json['nodeSelector'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      tolerations: (json['tolerations'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1Toleration.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiNodeV1SchedulingToJson(
        IoK8SApiNodeV1Scheduling instance) =>
    <String, dynamic>{
      'nodeSelector': instance.nodeSelector,
      'tolerations': instance.tolerations,
    };

IoK8SApiCoreV1Toleration _$IoK8SApiCoreV1TolerationFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Toleration(
      effect: json['effect'] as String?,
      key: json['key'] as String?,
      ioK8SApiCoreV1TolerationOperator: json['operator'] as String?,
      tolerationSeconds: (json['tolerationSeconds'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1TolerationToJson(
        IoK8SApiCoreV1Toleration instance) =>
    <String, dynamic>{
      'effect': instance.effect,
      'key': instance.key,
      'operator': instance.ioK8SApiCoreV1TolerationOperator,
      'tolerationSeconds': instance.tolerationSeconds,
      'value': instance.value,
    };
