// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicereference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Servicereference _$ServicereferenceFromJson(Map<String, dynamic> json) =>
    Servicereference(
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      port: (json['port'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ServicereferenceToJson(Servicereference instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
      'port': instance.port,
    };
