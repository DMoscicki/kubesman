// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclassparametersreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclassparametersreference _$ResourceclassparametersreferenceFromJson(
        Map<String, dynamic> json) =>
    Resourceclassparametersreference(
      apiGroup: json['apiGroup'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$ResourceclassparametersreferenceToJson(
        Resourceclassparametersreference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
    };
