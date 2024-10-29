// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressportstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingressportstatus _$IngressportstatusFromJson(Map<String, dynamic> json) =>
    Ingressportstatus(
      error: json['error'] as String?,
      port: (json['port'] as num?)?.toInt(),
      protocol: json['protocol'] as String?,
    );

Map<String, dynamic> _$IngressportstatusToJson(Ingressportstatus instance) =>
    <String, dynamic>{
      'error': instance.error,
      'port': instance.port,
      'protocol': instance.protocol,
    };
