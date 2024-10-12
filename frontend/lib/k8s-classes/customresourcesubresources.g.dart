// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customresourcesubresources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customresourcesubresources _$CustomresourcesubresourcesFromJson(
        Map<String, dynamic> json) =>
    Customresourcesubresources(
      scale: json['scale'] == null
          ? null
          : IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale
              .fromJson(json['scale'] as Map<String, dynamic>),
      status: json['status'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CustomresourcesubresourcesToJson(
        Customresourcesubresources instance) =>
    <String, dynamic>{
      'scale': instance.scale,
      'status': instance.status,
    };

IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale
    _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale(
          labelSelectorPath: json['labelSelectorPath'] as String?,
          specReplicasPath: json['specReplicasPath'] as String,
          statusReplicasPath: json['statusReplicasPath'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScaleToJson(
            IoK8SApiextensionsApiserverPkgApisApiextensionsV1CustomResourceSubresourceScale
                instance) =>
        <String, dynamic>{
          'labelSelectorPath': instance.labelSelectorPath,
          'specReplicasPath': instance.specReplicasPath,
          'statusReplicasPath': instance.statusReplicasPath,
        };
