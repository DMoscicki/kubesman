// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loadbalancerstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Loadbalancerstatus _$LoadbalancerstatusFromJson(Map<String, dynamic> json) =>
    Loadbalancerstatus(
      ingress: (json['ingress'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1LoadBalancerIngress.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LoadbalancerstatusToJson(Loadbalancerstatus instance) =>
    <String, dynamic>{
      'ingress': instance.ingress,
    };

IoK8SApiCoreV1LoadBalancerIngress _$IoK8SApiCoreV1LoadBalancerIngressFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LoadBalancerIngress(
      hostname: json['hostname'] as String?,
      ip: json['ip'] as String?,
      ipMode: json['ipMode'] as String?,
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1PortStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1LoadBalancerIngressToJson(
        IoK8SApiCoreV1LoadBalancerIngress instance) =>
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
