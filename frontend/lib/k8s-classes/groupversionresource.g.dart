// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groupversionresource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Groupversionresource _$GroupversionresourceFromJson(
        Map<String, dynamic> json) =>
    Groupversionresource(
      group: json['group'] as String?,
      resource: json['resource'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$GroupversionresourceToJson(
        Groupversionresource instance) =>
    <String, dynamic>{
      'group': instance.group,
      'resource': instance.resource,
      'version': instance.version,
    };
