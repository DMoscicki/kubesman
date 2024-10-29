// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csipersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Csipersistentvolumesource _$CsipersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Csipersistentvolumesource(
      controllerExpandSecretRef: json['controllerExpandSecretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['controllerExpandSecretRef'] as Map<String, dynamic>),
      controllerPublishSecretRef: json['controllerPublishSecretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['controllerPublishSecretRef'] as Map<String, dynamic>),
      driver: json['driver'] as String?,
      fsType: json['fsType'] as String?,
      nodeExpandSecretRef: json['nodeExpandSecretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['nodeExpandSecretRef'] as Map<String, dynamic>),
      nodePublishSecretRef: json['nodePublishSecretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['nodePublishSecretRef'] as Map<String, dynamic>),
      nodeStageSecretRef: json['nodeStageSecretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['nodeStageSecretRef'] as Map<String, dynamic>),
      readOnly: json['readOnly'] as bool?,
      volumeAttributes:
          (json['volumeAttributes'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      volumeHandle: json['volumeHandle'] as String?,
    );

Map<String, dynamic> _$CsipersistentvolumesourceToJson(
        Csipersistentvolumesource instance) =>
    <String, dynamic>{
      'controllerExpandSecretRef': instance.controllerExpandSecretRef,
      'controllerPublishSecretRef': instance.controllerPublishSecretRef,
      'driver': instance.driver,
      'fsType': instance.fsType,
      'nodeExpandSecretRef': instance.nodeExpandSecretRef,
      'nodePublishSecretRef': instance.nodePublishSecretRef,
      'nodeStageSecretRef': instance.nodeStageSecretRef,
      'readOnly': instance.readOnly,
      'volumeAttributes': instance.volumeAttributes,
      'volumeHandle': instance.volumeHandle,
    };

IoK8SApiCoreV1SecretReference _$IoK8SApiCoreV1SecretReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretReference(
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretReferenceToJson(
        IoK8SApiCoreV1SecretReference instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
    };
