// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downwardapiprojection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Downwardapiprojection _$DownwardapiprojectionFromJson(
        Map<String, dynamic> json) =>
    Downwardapiprojection(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1DownwardApiVolumeFile.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DownwardapiprojectionToJson(
        Downwardapiprojection instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

IoK8SApiCoreV1DownwardApiVolumeFile
    _$IoK8SApiCoreV1DownwardApiVolumeFileFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1DownwardApiVolumeFile(
          fieldRef: json['fieldRef'] == null
              ? null
              : IoK8SApiCoreV1ObjectFieldSelector.fromJson(
                  json['fieldRef'] as Map<String, dynamic>),
          mode: (json['mode'] as num?)?.toInt(),
          path: json['path'] as String,
          resourceFieldRef: json['resourceFieldRef'] == null
              ? null
              : IoK8SApiCoreV1ResourceFieldSelector.fromJson(
                  json['resourceFieldRef'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCoreV1DownwardApiVolumeFileToJson(
        IoK8SApiCoreV1DownwardApiVolumeFile instance) =>
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
