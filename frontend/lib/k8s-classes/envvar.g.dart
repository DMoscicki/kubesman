// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'envvar.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Envvar _$EnvvarFromJson(Map<String, dynamic> json) => Envvar(
      name: json['name'] as String?,
      value: json['value'] as String?,
      valueFrom: json['valueFrom'] == null
          ? null
          : IoK8SApiCoreV1EnvVarSource.fromJson(
              json['valueFrom'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EnvvarToJson(Envvar instance) => <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
      'valueFrom': instance.valueFrom,
    };

IoK8SApiCoreV1EnvVarSource _$IoK8SApiCoreV1EnvVarSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EnvVarSource(
      configMapKeyRef: json['configMapKeyRef'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapKeySelector.fromJson(
              json['configMapKeyRef'] as Map<String, dynamic>),
      fieldRef: json['fieldRef'] == null
          ? null
          : IoK8SApiCoreV1ObjectFieldSelector.fromJson(
              json['fieldRef'] as Map<String, dynamic>),
      resourceFieldRef: json['resourceFieldRef'] == null
          ? null
          : IoK8SApiCoreV1ResourceFieldSelector.fromJson(
              json['resourceFieldRef'] as Map<String, dynamic>),
      secretKeyRef: json['secretKeyRef'] == null
          ? null
          : IoK8SApiCoreV1SecretKeySelector.fromJson(
              json['secretKeyRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1EnvVarSourceToJson(
        IoK8SApiCoreV1EnvVarSource instance) =>
    <String, dynamic>{
      'configMapKeyRef': instance.configMapKeyRef,
      'fieldRef': instance.fieldRef,
      'resourceFieldRef': instance.resourceFieldRef,
      'secretKeyRef': instance.secretKeyRef,
    };

IoK8SApiCoreV1ConfigMapKeySelector _$IoK8SApiCoreV1ConfigMapKeySelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ConfigMapKeySelector(
      key: json['key'] as String,
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapKeySelectorToJson(
        IoK8SApiCoreV1ConfigMapKeySelector instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1ObjectFieldSelector _$IoK8SApiCoreV1ObjectFieldSelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ObjectFieldSelector(
      apiVersion: json['apiVersion'] as String?,
      fieldPath: json['fieldPath'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ObjectFieldSelectorToJson(
        IoK8SApiCoreV1ObjectFieldSelector instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldPath': instance.fieldPath,
    };

IoK8SApiCoreV1ResourceFieldSelector
    _$IoK8SApiCoreV1ResourceFieldSelectorFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ResourceFieldSelector(
          containerName: json['containerName'] as String?,
          divisor: json['divisor'],
          resource: json['resource'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceFieldSelectorToJson(
        IoK8SApiCoreV1ResourceFieldSelector instance) =>
    <String, dynamic>{
      'containerName': instance.containerName,
      'divisor': instance.divisor,
      'resource': instance.resource,
    };

IoK8SApiCoreV1SecretKeySelector _$IoK8SApiCoreV1SecretKeySelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretKeySelector(
      key: json['key'] as String,
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretKeySelectorToJson(
        IoK8SApiCoreV1SecretKeySelector instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'optional': instance.optional,
    };
