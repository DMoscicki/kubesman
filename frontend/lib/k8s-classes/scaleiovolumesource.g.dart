// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaleiovolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scaleiovolumesource _$ScaleiovolumesourceFromJson(Map<String, dynamic> json) =>
    Scaleiovolumesource(
      fsType: json['fsType'] as String?,
      gateway: json['gateway'] as String?,
      protectionDomain: json['protectionDomain'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: IoK8SApiCoreV1LocalObjectReference.fromJson(
          json['secretRef'] as Map<String, dynamic>),
      sslEnabled: json['sslEnabled'] as bool?,
      storageMode: json['storageMode'] as String?,
      storagePool: json['storagePool'] as String?,
      system: json['system'] as String?,
      volumeName: json['volumeName'] as String?,
    );

Map<String, dynamic> _$ScaleiovolumesourceToJson(
        Scaleiovolumesource instance) =>
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
