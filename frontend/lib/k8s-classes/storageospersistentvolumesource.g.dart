// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageospersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageospersistentvolumesource _$StorageospersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Storageospersistentvolumesource(
      fsType: json['fsType'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1ObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      volumeName: json['volumeName'] as String?,
      volumeNamespace: json['volumeNamespace'] as String?,
    );

Map<String, dynamic> _$StorageospersistentvolumesourceToJson(
        Storageospersistentvolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'volumeName': instance.volumeName,
      'volumeNamespace': instance.volumeNamespace,
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
