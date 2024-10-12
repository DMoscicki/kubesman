// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingressstatus _$IngressstatusFromJson(Map<String, dynamic> json) =>
    Ingressstatus(
      loadBalancer: json['loadBalancer'] == null
          ? null
          : IoK8SApiNetworkingV1IngressLoadBalancerStatus.fromJson(
              json['loadBalancer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IngressstatusToJson(Ingressstatus instance) =>
    <String, dynamic>{
      'loadBalancer': instance.loadBalancer,
    };

IoK8SApiNetworkingV1IngressLoadBalancerStatus
    _$IoK8SApiNetworkingV1IngressLoadBalancerStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressLoadBalancerStatus(
          ingress: (json['ingress'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiNetworkingV1IngressLoadBalancerIngress.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressLoadBalancerStatusToJson(
        IoK8SApiNetworkingV1IngressLoadBalancerStatus instance) =>
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
