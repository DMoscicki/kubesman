// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downwardapivolumefile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Downwardapivolumefile _$DownwardapivolumefileFromJson(
        Map<String, dynamic> json) =>
    Downwardapivolumefile(
      fieldRef: json['fieldRef'] == null
          ? null
          : IoK8SApiCoreV1ObjectFieldSelector.fromJson(
              json['fieldRef'] as Map<String, dynamic>),
      mode: (json['mode'] as num?)?.toInt(),
      path: json['path'] as String?,
      resourceFieldRef: json['resourceFieldRef'] == null
          ? null
          : IoK8SApiCoreV1ResourceFieldSelector.fromJson(
              json['resourceFieldRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DownwardapivolumefileToJson(
        Downwardapivolumefile instance) =>
    <String, dynamic>{
      'fieldRef': instance.fieldRef,
      'mode': instance.mode,
      'path': instance.path,
      'resourceFieldRef': instance.resourceFieldRef,
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
