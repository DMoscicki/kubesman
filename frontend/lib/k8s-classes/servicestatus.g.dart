// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicestatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Servicestatus _$ServicestatusFromJson(Map<String, dynamic> json) =>
    Servicestatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApimachineryPkgApisMetaV1Condition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      loadBalancer: json['loadBalancer'] == null
          ? null
          : IoK8SApiCoreV1LoadBalancerStatus.fromJson(
              json['loadBalancer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServicestatusToJson(Servicestatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'loadBalancer': instance.loadBalancer,
    };

IoK8SApimachineryPkgApisMetaV1Condition
    _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1Condition(
          lastTransitionTime:
              DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String,
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
          reason: json['reason'] as String,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(
        IoK8SApimachineryPkgApisMetaV1Condition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiCoreV1LoadBalancerStatus _$IoK8SApiCoreV1LoadBalancerStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LoadBalancerStatus(
      ingress: (json['ingress'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1LoadBalancerIngress.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1LoadBalancerStatusToJson(
        IoK8SApiCoreV1LoadBalancerStatus instance) =>
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
