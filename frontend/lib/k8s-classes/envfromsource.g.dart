// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'envfromsource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Envfromsource _$EnvfromsourceFromJson(Map<String, dynamic> json) =>
    Envfromsource(
      configMapRef: json['configMapRef'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapEnvSource.fromJson(
              json['configMapRef'] as Map<String, dynamic>),
      prefix: json['prefix'] as String?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretEnvSource.fromJson(
              json['secretRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EnvfromsourceToJson(Envfromsource instance) =>
    <String, dynamic>{
      'configMapRef': instance.configMapRef,
      'prefix': instance.prefix,
      'secretRef': instance.secretRef,
    };

IoK8SApiCoreV1ConfigMapEnvSource _$IoK8SApiCoreV1ConfigMapEnvSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ConfigMapEnvSource(
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapEnvSourceToJson(
        IoK8SApiCoreV1ConfigMapEnvSource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1SecretEnvSource _$IoK8SApiCoreV1SecretEnvSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretEnvSource(
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretEnvSourceToJson(
        IoK8SApiCoreV1SecretEnvSource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'optional': instance.optional,
    };
