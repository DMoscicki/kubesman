// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loadbalanceringress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loadbalanceringress _$LoadbalanceringressFromJson(Map<String, dynamic> json) =>
    Loadbalanceringress(
      hostname: json['hostname'] as String?,
      ip: json['ip'] as String?,
      ipMode: json['ipMode'] as String?,
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1PortStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LoadbalanceringressToJson(
        Loadbalanceringress instance) =>
    <String, dynamic>{
      'hostname': instance.hostname,
      'ip': instance.ip,
      'ipMode': instance.ipMode,
      'ports': instance.ports,
    };

IoK8SApiCoreV1PortStatus _$IoK8SApiCoreV1PortStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PortStatus(
      error: json['error'] as String?,
      port: (json['port'] as num).toInt(),
      protocol: json['protocol'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PortStatusToJson(
        IoK8SApiCoreV1PortStatus instance) =>
    <String, dynamic>{
      'error': instance.error,
      'port': instance.port,
      'protocol': instance.protocol,
    };
