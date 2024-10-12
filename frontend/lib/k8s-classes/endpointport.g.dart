// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpointport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpointport _$EndpointportFromJson(Map<String, dynamic> json) => Endpointport(
      appProtocol: json['appProtocol'] as String?,
      name: json['name'] as String?,
      port: (json['port'] as num?)?.toInt(),
      protocol: json['protocol'] as String?,
    );

Map<String, dynamic> _$EndpointportToJson(Endpointport instance) =>
    <String, dynamic>{
      'appProtocol': instance.appProtocol,
      'name': instance.name,
      'port': instance.port,
      'protocol': instance.protocol,
    };
