// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodeconfigsource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nodeconfigsource _$NodeconfigsourceFromJson(Map<String, dynamic> json) =>
    Nodeconfigsource(
      configMap: json['configMap'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapNodeConfigSource.fromJson(
              json['configMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodeconfigsourceToJson(Nodeconfigsource instance) =>
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
