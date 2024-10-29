// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressloadbalanceringress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingressloadbalanceringress _$IngressloadbalanceringressFromJson(
        Map<String, dynamic> json) =>
    Ingressloadbalanceringress(
      hostname: json['hostname'] as String?,
      ip: json['ip'] as String?,
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) => IoK8SApiNetworkingV1IngressPortStatus.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IngressloadbalanceringressToJson(
        Ingressloadbalanceringress instance) =>
    <String, dynamic>{
      'hostname': instance.hostname,
      'ip': instance.ip,
      'ports': instance.ports,
    };

IoK8SApiNetworkingV1IngressPortStatus
    _$IoK8SApiNetworkingV1IngressPortStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressPortStatus(
          error: json['error'] as String?,
          port: (json['port'] as num).toInt(),
          protocol: json['protocol'] as String,
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressPortStatusToJson(
        IoK8SApiNetworkingV1IngressPortStatus instance) =>
    <String, dynamic>{
      'error': instance.error,
      'port': instance.port,
      'protocol': instance.protocol,
    };
