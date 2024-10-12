// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nfsvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nfsvolumesource _$NfsvolumesourceFromJson(Map<String, dynamic> json) =>
    Nfsvolumesource(
      path: json['path'] as String?,
      readOnly: json['readOnly'] as bool?,
      server: json['server'] as String?,
    );

Map<String, dynamic> _$NfsvolumesourceToJson(Nfsvolumesource instance) =>
    <String, dynamic>{
      'path': instance.path,
      'readOnly': instance.readOnly,
      'server': instance.server,
    };
