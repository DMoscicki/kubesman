// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressclassparametersreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingressclassparametersreference _$IngressclassparametersreferenceFromJson(
        Map<String, dynamic> json) =>
    Ingressclassparametersreference(
      apiGroup: json['apiGroup'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$IngressclassparametersreferenceToJson(
        Ingressclassparametersreference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
      'scope': instance.scope,
    };
