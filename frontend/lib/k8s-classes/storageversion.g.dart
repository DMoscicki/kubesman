// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageversion _$StorageversionFromJson(Map<String, dynamic> json) =>
    Storageversion(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] as Map<String, dynamic>,
      status: IoK8SApiApiserverinternalV1Alpha1StorageVersionStatus.fromJson(
          json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StorageversionToJson(Storageversion instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.STORAGE_VERSION: 'StorageVersion',
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

IoK8SApiApiserverinternalV1Alpha1StorageVersionStatus
    _$IoK8SApiApiserverinternalV1Alpha1StorageVersionStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiApiserverinternalV1Alpha1StorageVersionStatus(
          commonEncodingVersion: json['commonEncodingVersion'] as String?,
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          storageVersions: (json['storageVersions'] as List<dynamic>?)
              ?.map((e) => IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiApiserverinternalV1Alpha1StorageVersionStatusToJson(
            IoK8SApiApiserverinternalV1Alpha1StorageVersionStatus instance) =>
        <String, dynamic>{
          'commonEncodingVersion': instance.commonEncodingVersion,
          'conditions': instance.conditions,
          'storageVersions': instance.storageVersions,
        };

IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition
    _$IoK8SApiApiserverinternalV1Alpha1StorageVersionConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String,
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
          reason: json['reason'] as String,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String,
    dynamic> _$IoK8SApiApiserverinternalV1Alpha1StorageVersionConditionToJson(
        IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion
    _$IoK8SApiApiserverinternalV1Alpha1ServerStorageVersionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion(
          apiServerId: json['apiServerID'] as String?,
          decodableVersions: (json['decodableVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          encodingVersion: json['encodingVersion'] as String?,
          servedVersions: (json['servedVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiApiserverinternalV1Alpha1ServerStorageVersionToJson(
            IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion instance) =>
        <String, dynamic>{
          'apiServerID': instance.apiServerId,
          'decodableVersions': instance.decodableVersions,
          'encodingVersion': instance.encodingVersion,
          'servedVersions': instance.servedVersions,
        };
