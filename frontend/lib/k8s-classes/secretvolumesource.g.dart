// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'secretvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Secretvolumesource _$SecretvolumesourceFromJson(Map<String, dynamic> json) =>
    Secretvolumesource(
      defaultMode: (json['defaultMode'] as num?)?.toInt(),
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1KeyToPath.fromJson(e as Map<String, dynamic>))
          .toList(),
      optional: json['optional'] as bool?,
      secretName: json['secretName'] as String?,
    );

Map<String, dynamic> _$SecretvolumesourceToJson(Secretvolumesource instance) =>
    <String, dynamic>{
      'defaultMode': instance.defaultMode,
      'items': instance.items,
      'optional': instance.optional,
      'secretName': instance.secretName,
    };

IoK8SApiCoreV1KeyToPath _$IoK8SApiCoreV1KeyToPathFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1KeyToPath(
      key: json['key'] as String,
      mode: (json['mode'] as num?)?.toInt(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1KeyToPathToJson(
        IoK8SApiCoreV1KeyToPath instance) =>
    <String, dynamic>{
      'key': instance.key,
      'mode': instance.mode,
      'path': instance.path,
    };
