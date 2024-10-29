// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parentreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Parentreference _$ParentreferenceFromJson(Map<String, dynamic> json) =>
    Parentreference(
      group: json['group'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      resource: json['resource'] as String?,
    );

Map<String, dynamic> _$ParentreferenceToJson(Parentreference instance) =>
    <String, dynamic>{
      'group': instance.group,
      'name': instance.name,
      'namespace': instance.namespace,
      'resource': instance.resource,
    };
