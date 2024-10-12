// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Portstatus _$PortstatusFromJson(Map<String, dynamic> json) => Portstatus(
      error: json['error'] as String?,
      port: (json['port'] as num?)?.toInt(),
      protocol: json['protocol'] as String?,
    );

Map<String, dynamic> _$PortstatusToJson(Portstatus instance) =>
    <String, dynamic>{
      'error': instance.error,
      'port': instance.port,
      'protocol': instance.protocol,
    };
