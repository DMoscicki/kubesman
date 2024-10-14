// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      action: json['action'] as String?,
      apiVersion: json['apiVersion'] as String?,
      deprecatedCount: (json['deprecatedCount'] as num?)?.toInt(),
      deprecatedFirstTimestamp: json['deprecatedFirstTimestamp'] == null
          ? null
          : DateTime.parse(json['deprecatedFirstTimestamp'] as String),
      deprecatedLastTimestamp: json['deprecatedLastTimestamp'] == null
          ? null
          : DateTime.parse(json['deprecatedLastTimestamp'] as String),
      deprecatedSource: json['deprecatedSource'] == null
          ? null
          : IoK8SApiCoreV1EventSource.fromJson(
              json['deprecatedSource'] as Map<String, dynamic>),
      eventTime: DateTime.parse(json['eventTime'] as String),
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      note: json['note'] as String?,
      reason: json['reason'] as String?,
      regarding: json['regarding'] == null
          ? null
          : IoK8SApiCoreV1ObjectReference.fromJson(
              json['regarding'] as Map<String, dynamic>),
      related: json['related'] == null
          ? null
          : IoK8SApiCoreV1ObjectReference.fromJson(
              json['related'] as Map<String, dynamic>),
      reportingController: json['reportingController'] as String?,
      reportingInstance: json['reportingInstance'] as String?,
      series: json['series'] == null
          ? null
          : IoK8SApiEventsV1EventSeries.fromJson(
              json['series'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'action': instance.action,
      'apiVersion': instance.apiVersion,
      'deprecatedCount': instance.deprecatedCount,
      'deprecatedFirstTimestamp':
          instance.deprecatedFirstTimestamp?.toIso8601String(),
      'deprecatedLastTimestamp':
          instance.deprecatedLastTimestamp?.toIso8601String(),
      'deprecatedSource': instance.deprecatedSource,
      'eventTime': instance.eventTime.toIso8601String(),
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'note': instance.note,
      'reason': instance.reason,
      'regarding': instance.regarding,
      'related': instance.related,
      'reportingController': instance.reportingController,
      'reportingInstance': instance.reportingInstance,
      'series': instance.series,
      'type': instance.type,
    };

const _$KindEnumMap = {
  Kind.EVENT: 'Event',
};

IoK8SApiCoreV1EventSource _$IoK8SApiCoreV1EventSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EventSource(
      component: json['component'] as String?,
      host: json['host'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1EventSourceToJson(
        IoK8SApiCoreV1EventSource instance) =>
    <String, dynamic>{
      'component': instance.component,
      'host': instance.host,
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

IoK8SApiCoreV1ObjectReference _$IoK8SApiCoreV1ObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ObjectReference(
      apiVersion: json['apiVersion'] as String?,
      fieldPath: json['fieldPath'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      resourceVersion: json['resourceVersion'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ObjectReferenceToJson(
        IoK8SApiCoreV1ObjectReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldPath': instance.fieldPath,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };

IoK8SApiEventsV1EventSeries _$IoK8SApiEventsV1EventSeriesFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiEventsV1EventSeries(
      count: (json['count'] as num).toInt(),
      lastObservedTime: DateTime.parse(json['lastObservedTime'] as String),
    );

Map<String, dynamic> _$IoK8SApiEventsV1EventSeriesToJson(
        IoK8SApiEventsV1EventSeries instance) =>
    <String, dynamic>{
      'count': instance.count,
      'lastObservedTime': instance.lastObservedTime.toIso8601String(),
    };
