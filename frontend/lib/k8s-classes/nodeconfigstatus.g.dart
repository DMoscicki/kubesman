// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodeconfigstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nodeconfigstatus _$NodeconfigstatusFromJson(Map<String, dynamic> json) =>
    Nodeconfigstatus(
      active: json['active'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigSource.fromJson(
              json['active'] as Map<String, dynamic>),
      assigned: json['assigned'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigSource.fromJson(
              json['assigned'] as Map<String, dynamic>),
      error: json['error'] as String?,
      lastKnownGood: json['lastKnownGood'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigSource.fromJson(
              json['lastKnownGood'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodeconfigstatusToJson(Nodeconfigstatus instance) =>
    <String, dynamic>{
      'active': instance.active,
      'assigned': instance.assigned,
      'error': instance.error,
      'lastKnownGood': instance.lastKnownGood,
    };

IoK8SApiCoreV1NodeConfigSource _$IoK8SApiCoreV1NodeConfigSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeConfigSource(
      configMap: json['configMap'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapNodeConfigSource.fromJson(
              json['configMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeConfigSourceToJson(
        IoK8SApiCoreV1NodeConfigSource instance) =>
    <String, dynamic>{
      'configMap': instance.configMap,
    };

IoK8SApiCoreV1ConfigMapNodeConfigSource
    _$IoK8SApiCoreV1ConfigMapNodeConfigSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ConfigMapNodeConfigSource(
          kubeletConfigKey: json['kubeletConfigKey'] as String,
          name: json['name'] as String,
          namespace: json['namespace'] as String,
          resourceVersion: json['resourceVersion'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapNodeConfigSourceToJson(
        IoK8SApiCoreV1ConfigMapNodeConfigSource instance) =>
    <String, dynamic>{
      'kubeletConfigKey': instance.kubeletConfigKey,
      'name': instance.name,
      'namespace': instance.namespace,
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };
