// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceattributes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceattributes _$ResourceattributesFromJson(Map<String, dynamic> json) =>
    Resourceattributes(
      group: json['group'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      resource: json['resource'] as String?,
      subresource: json['subresource'] as String?,
      verb: json['verb'] as String?,
      version: json['version'] as String?,
    );

Map<String, dynamic> _$ResourceattributesToJson(Resourceattributes instance) =>
    <String, dynamic>{
      'group': instance.group,
      'name': instance.name,
      'namespace': instance.namespace,
      'resource': instance.resource,
      'subresource': instance.subresource,
      'verb': instance.verb,
      'version': instance.version,
    };
