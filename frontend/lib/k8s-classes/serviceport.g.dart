// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serviceport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Serviceport _$ServiceportFromJson(Map<String, dynamic> json) => Serviceport(
      appProtocol: json['appProtocol'] as String?,
      name: json['name'] as String?,
      nodePort: (json['nodePort'] as num?)?.toInt(),
      port: (json['port'] as num?)?.toInt(),
      protocol: json['protocol'] as String?,
      targetPort: json['targetPort'],
    );

Map<String, dynamic> _$ServiceportToJson(Serviceport instance) =>
    <String, dynamic>{
      'appProtocol': instance.appProtocol,
      'name': instance.name,
      'nodePort': instance.nodePort,
      'port': instance.port,
      'protocol': instance.protocol,
      'targetPort': instance.targetPort,
    };
