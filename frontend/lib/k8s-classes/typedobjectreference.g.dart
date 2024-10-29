// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typedobjectreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Typedobjectreference _$TypedobjectreferenceFromJson(
        Map<String, dynamic> json) =>
    Typedobjectreference(
      apiGroup: json['apiGroup'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$TypedobjectreferenceToJson(
        Typedobjectreference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
    };
