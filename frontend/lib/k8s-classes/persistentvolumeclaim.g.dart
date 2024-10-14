// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistentvolumeclaim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Persistentvolumeclaim _$PersistentvolumeclaimFromJson(
        Map<String, dynamic> json) =>
    Persistentvolumeclaim(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiCoreV1PersistentVolumeClaimSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiCoreV1PersistentVolumeClaimStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PersistentvolumeclaimToJson(
        Persistentvolumeclaim instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.PERSISTENT_VOLUME_CLAIM: 'PersistentVolumeClaim',
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

IoK8SApiCoreV1PersistentVolumeClaimSpec
    _$IoK8SApiCoreV1PersistentVolumeClaimSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PersistentVolumeClaimSpec(
          accessModes: (json['accessModes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          dataSource: json['dataSource'] == null
              ? null
              : IoK8SApiCoreV1TypedLocalObjectReference.fromJson(
                  json['dataSource'] as Map<String, dynamic>),
          dataSourceRef: json['dataSourceRef'] == null
              ? null
              : IoK8SApiCoreV1TypedObjectReference.fromJson(
                  json['dataSourceRef'] as Map<String, dynamic>),
          resources: json['resources'] == null
              ? null
              : IoK8SApiCoreV1VolumeResourceRequirements.fromJson(
                  json['resources'] as Map<String, dynamic>),
          selector: json['selector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['selector'] as Map<String, dynamic>),
          storageClassName: json['storageClassName'] as String?,
          volumeAttributesClassName:
              json['volumeAttributesClassName'] as String?,
          volumeMode: json['volumeMode'] as String?,
          volumeName: json['volumeName'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1PersistentVolumeClaimSpecToJson(
        IoK8SApiCoreV1PersistentVolumeClaimSpec instance) =>
    <String, dynamic>{
      'accessModes': instance.accessModes,
      'dataSource': instance.dataSource,
      'dataSourceRef': instance.dataSourceRef,
      'resources': instance.resources,
      'selector': instance.selector,
      'storageClassName': instance.storageClassName,
      'volumeAttributesClassName': instance.volumeAttributesClassName,
      'volumeMode': instance.volumeMode,
      'volumeName': instance.volumeName,
    };

IoK8SApiCoreV1TypedLocalObjectReference
    _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1TypedLocalObjectReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(
        IoK8SApiCoreV1TypedLocalObjectReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };

IoK8SApiCoreV1TypedObjectReference _$IoK8SApiCoreV1TypedObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1TypedObjectReference(
      apiGroup: json['apiGroup'] as String?,
      kind: json['kind'] as String,
      name: json['name'] as String,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1TypedObjectReferenceToJson(
        IoK8SApiCoreV1TypedObjectReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
    };

IoK8SApiCoreV1VolumeResourceRequirements
    _$IoK8SApiCoreV1VolumeResourceRequirementsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1VolumeResourceRequirements(
          limits: json['limits'] as Map<String, dynamic>?,
          requests: json['requests'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeResourceRequirementsToJson(
        IoK8SApiCoreV1VolumeResourceRequirements instance) =>
    <String, dynamic>{
      'limits': instance.limits,
      'requests': instance.requests,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelector
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelector(
          matchExpressions: (json['matchExpressions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          matchLabels: (json['matchLabels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(
        IoK8SApimachineryPkgApisMetaV1LabelSelector instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchLabels': instance.matchLabels,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement(
          key: json['key'] as String,
          ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(
            IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement instance) =>
        <String, dynamic>{
          'key': instance.key,
          'operator': instance
              .ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
          'values': instance.values,
        };

IoK8SApiCoreV1PersistentVolumeClaimStatus
    _$IoK8SApiCoreV1PersistentVolumeClaimStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PersistentVolumeClaimStatus(
          accessModes: (json['accessModes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          allocatedResources:
              json['allocatedResources'] as Map<String, dynamic>?,
          allocatedResourceStatuses:
              (json['allocatedResourceStatuses'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          capacity: json['capacity'] as Map<String, dynamic>?,
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiCoreV1PersistentVolumeClaimCondition.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          currentVolumeAttributesClassName:
              json['currentVolumeAttributesClassName'] as String?,
          modifyVolumeStatus: json['modifyVolumeStatus'] == null
              ? null
              : IoK8SApiCoreV1ModifyVolumeStatus.fromJson(
                  json['modifyVolumeStatus'] as Map<String, dynamic>),
          phase: json['phase'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1PersistentVolumeClaimStatusToJson(
        IoK8SApiCoreV1PersistentVolumeClaimStatus instance) =>
    <String, dynamic>{
      'accessModes': instance.accessModes,
      'allocatedResources': instance.allocatedResources,
      'allocatedResourceStatuses': instance.allocatedResourceStatuses,
      'capacity': instance.capacity,
      'conditions': instance.conditions,
      'currentVolumeAttributesClassName':
          instance.currentVolumeAttributesClassName,
      'modifyVolumeStatus': instance.modifyVolumeStatus,
      'phase': instance.phase,
    };

IoK8SApiCoreV1PersistentVolumeClaimCondition
    _$IoK8SApiCoreV1PersistentVolumeClaimConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1PersistentVolumeClaimCondition(
          lastProbeTime: json['lastProbeTime'] == null
              ? null
              : DateTime.parse(json['lastProbeTime'] as String),
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1PersistentVolumeClaimConditionToJson(
        IoK8SApiCoreV1PersistentVolumeClaimCondition instance) =>
    <String, dynamic>{
      'lastProbeTime': instance.lastProbeTime?.toIso8601String(),
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiCoreV1ModifyVolumeStatus _$IoK8SApiCoreV1ModifyVolumeStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ModifyVolumeStatus(
      status: json['status'] as String,
      targetVolumeAttributesClassName:
          json['targetVolumeAttributesClassName'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ModifyVolumeStatusToJson(
        IoK8SApiCoreV1ModifyVolumeStatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'targetVolumeAttributesClassName':
          instance.targetVolumeAttributesClassName,
    };
