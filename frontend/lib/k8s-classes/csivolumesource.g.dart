// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csivolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Csivolumesource _$CsivolumesourceFromJson(Map<String, dynamic> json) =>
    Csivolumesource(
      driver: json['driver'] as String?,
      fsType: json['fsType'] as String?,
      nodePublishSecretRef: json['nodePublishSecretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['nodePublishSecretRef'] as Map<String, dynamic>),
      readOnly: json['readOnly'] as bool?,
      volumeAttributes:
          (json['volumeAttributes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
    );

Map<String, dynamic> _$CsivolumesourceToJson(Csivolumesource instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'fsType': instance.fsType,
      'nodePublishSecretRef': instance.nodePublishSecretRef,
      'readOnly': instance.readOnly,
      'volumeAttributes': instance.volumeAttributes,
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
