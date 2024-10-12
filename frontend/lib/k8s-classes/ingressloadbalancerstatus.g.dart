// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressloadbalancerstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingressloadbalancerstatus _$IngressloadbalancerstatusFromJson(
        Map<String, dynamic> json) =>
    Ingressloadbalancerstatus(
      ingress: (json['ingress'] as List<dynamic>?)
          ?.map((e) => IoK8SApiNetworkingV1IngressLoadBalancerIngress.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IngressloadbalancerstatusToJson(
        Ingressloadbalancerstatus instance) =>
    <String, dynamic>{
      'ingress': instance.ingress,
    };

IoK8SApiNetworkingV1IngressLoadBalancerIngress
    _$IoK8SApiNetworkingV1IngressLoadBalancerIngressFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressLoadBalancerIngress(
          hostname: json['hostname'] as String?,
          ip: json['ip'] as String?,
          ports: (json['ports'] as List<dynamic>?)
              ?.map((e) => IoK8SApiNetworkingV1IngressPortStatus.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressLoadBalancerIngressToJson(
        IoK8SApiNetworkingV1IngressLoadBalancerIngress instance) =>
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
