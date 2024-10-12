// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicespec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Servicespec _$ServicespecFromJson(Map<String, dynamic> json) => Servicespec(
      allocateLoadBalancerNodePorts:
          json['allocateLoadBalancerNodePorts'] as bool?,
      clusterIp: json['clusterIP'] as String?,
      clusterIPs: (json['clusterIPs'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      externalIPs: (json['externalIPs'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      externalName: json['externalName'] as String?,
      externalTrafficPolicy: json['externalTrafficPolicy'] as String?,
      healthCheckNodePort: (json['healthCheckNodePort'] as num?)?.toInt(),
      internalTrafficPolicy: json['internalTrafficPolicy'] as String?,
      ipFamilies: (json['ipFamilies'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      ipFamilyPolicy: json['ipFamilyPolicy'] as String?,
      loadBalancerClass: json['loadBalancerClass'] as String?,
      loadBalancerIp: json['loadBalancerIP'] as String?,
      loadBalancerSourceRanges:
          (json['loadBalancerSourceRanges'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList(),
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ServicePort.fromJson(e as Map<String, dynamic>))
          .toList(),
      publishNotReadyAddresses: json['publishNotReadyAddresses'] as bool?,
      selector: (json['selector'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      sessionAffinity: json['sessionAffinity'] as String?,
      sessionAffinityConfig: json['sessionAffinityConfig'] == null
          ? null
          : IoK8SApiCoreV1SessionAffinityConfig.fromJson(
              json['sessionAffinityConfig'] as Map<String, dynamic>),
      trafficDistribution: json['trafficDistribution'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ServicespecToJson(Servicespec instance) =>
    <String, dynamic>{
      'allocateLoadBalancerNodePorts': instance.allocateLoadBalancerNodePorts,
      'clusterIP': instance.clusterIp,
      'clusterIPs': instance.clusterIPs,
      'externalIPs': instance.externalIPs,
      'externalName': instance.externalName,
      'externalTrafficPolicy': instance.externalTrafficPolicy,
      'healthCheckNodePort': instance.healthCheckNodePort,
      'internalTrafficPolicy': instance.internalTrafficPolicy,
      'ipFamilies': instance.ipFamilies,
      'ipFamilyPolicy': instance.ipFamilyPolicy,
      'loadBalancerClass': instance.loadBalancerClass,
      'loadBalancerIP': instance.loadBalancerIp,
      'loadBalancerSourceRanges': instance.loadBalancerSourceRanges,
      'ports': instance.ports,
      'publishNotReadyAddresses': instance.publishNotReadyAddresses,
      'selector': instance.selector,
      'sessionAffinity': instance.sessionAffinity,
      'sessionAffinityConfig': instance.sessionAffinityConfig,
      'trafficDistribution': instance.trafficDistribution,
      'type': instance.type,
    };

IoK8SApiCoreV1ServicePort _$IoK8SApiCoreV1ServicePortFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ServicePort(
      appProtocol: json['appProtocol'] as String?,
      name: json['name'] as String?,
      nodePort: (json['nodePort'] as num?)?.toInt(),
      port: (json['port'] as num).toInt(),
      protocol: json['protocol'] as String?,
      targetPort: json['targetPort'],
    );

Map<String, dynamic> _$IoK8SApiCoreV1ServicePortToJson(
        IoK8SApiCoreV1ServicePort instance) =>
    <String, dynamic>{
      'appProtocol': instance.appProtocol,
      'name': instance.name,
      'nodePort': instance.nodePort,
      'port': instance.port,
      'protocol': instance.protocol,
      'targetPort': instance.targetPort,
    };

IoK8SApiCoreV1SessionAffinityConfig
    _$IoK8SApiCoreV1SessionAffinityConfigFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1SessionAffinityConfig(
          clientIp: json['clientIP'] == null
              ? null
              : IoK8SApiCoreV1ClientIpConfig.fromJson(
                  json['clientIP'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCoreV1SessionAffinityConfigToJson(
        IoK8SApiCoreV1SessionAffinityConfig instance) =>
    <String, dynamic>{
      'clientIP': instance.clientIp,
    };

IoK8SApiCoreV1ClientIpConfig _$IoK8SApiCoreV1ClientIpConfigFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ClientIpConfig(
      timeoutSeconds: (json['timeoutSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ClientIpConfigToJson(
        IoK8SApiCoreV1ClientIpConfig instance) =>
    <String, dynamic>{
      'timeoutSeconds': instance.timeoutSeconds,
    };
