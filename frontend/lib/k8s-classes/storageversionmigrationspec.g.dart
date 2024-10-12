// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageversionmigrationspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageversionmigrationspec _$StorageversionmigrationspecFromJson(
        Map<String, dynamic> json) =>
    Storageversionmigrationspec(
      continueToken: json['continueToken'] as String?,
      resource: IoK8SApiStoragemigrationV1Alpha1GroupVersionResource.fromJson(
          json['resource'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StorageversionmigrationspecToJson(
        Storageversionmigrationspec instance) =>
    <String, dynamic>{
      'continueToken': instance.continueToken,
      'resource': instance.resource,
    };

IoK8SApiStoragemigrationV1Alpha1GroupVersionResource
    _$IoK8SApiStoragemigrationV1Alpha1GroupVersionResourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiStoragemigrationV1Alpha1GroupVersionResource(
          group: json['group'] as String?,
          resource: json['resource'] as String?,
          version: json['version'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiStoragemigrationV1Alpha1GroupVersionResourceToJson(
            IoK8SApiStoragemigrationV1Alpha1GroupVersionResource instance) =>
        <String, dynamic>{
          'group': instance.group,
          'resource': instance.resource,
          'version': instance.version,
        };
