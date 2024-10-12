// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageosvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageosvolumesource _$StorageosvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Storageosvolumesource(
      fsType: json['fsType'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      volumeName: json['volumeName'] as String?,
      volumeNamespace: json['volumeNamespace'] as String?,
    );

Map<String, dynamic> _$StorageosvolumesourceToJson(
        Storageosvolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'volumeName': instance.volumeName,
      'volumeNamespace': instance.volumeNamespace,
    };

IoK8SApiCoreV1LocalObjectReference _$IoK8SApiCoreV1LocalObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LocalObjectReference(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1LocalObjectReferenceToJson(
        IoK8SApiCoreV1LocalObjectReference instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
