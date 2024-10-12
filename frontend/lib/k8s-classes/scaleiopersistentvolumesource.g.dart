// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaleiopersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scaleiopersistentvolumesource _$ScaleiopersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Scaleiopersistentvolumesource(
      fsType: json['fsType'] as String?,
      gateway: json['gateway'] as String?,
      protectionDomain: json['protectionDomain'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: IoK8SApiCoreV1SecretReference.fromJson(
          json['secretRef'] as Map<String, dynamic>),
      sslEnabled: json['sslEnabled'] as bool?,
      storageMode: json['storageMode'] as String?,
      storagePool: json['storagePool'] as String?,
      system: json['system'] as String?,
      volumeName: json['volumeName'] as String?,
    );

Map<String, dynamic> _$ScaleiopersistentvolumesourceToJson(
        Scaleiopersistentvolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'gateway': instance.gateway,
      'protectionDomain': instance.protectionDomain,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'sslEnabled': instance.sslEnabled,
      'storageMode': instance.storageMode,
      'storagePool': instance.storagePool,
      'system': instance.system,
      'volumeName': instance.volumeName,
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
