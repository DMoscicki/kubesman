// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'roleref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Roleref _$RolerefFromJson(Map<String, dynamic> json) => Roleref(
      apiGroup: json['apiGroup'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$RolerefToJson(Roleref instance) => <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };
