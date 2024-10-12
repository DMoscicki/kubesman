// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclaimparametersreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclaimparametersreference _$ResourceclaimparametersreferenceFromJson(
        Map<String, dynamic> json) =>
    Resourceclaimparametersreference(
      apiGroup: json['apiGroup'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$ResourceclaimparametersreferenceToJson(
        Resourceclaimparametersreference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };
