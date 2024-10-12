// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressservicebackend.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingressservicebackend _$IngressservicebackendFromJson(
        Map<String, dynamic> json) =>
    Ingressservicebackend(
      name: json['name'] as String?,
      port: json['port'] == null
          ? null
          : IoK8SApiNetworkingV1ServiceBackendPort.fromJson(
              json['port'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IngressservicebackendToJson(
        Ingressservicebackend instance) =>
    <String, dynamic>{
      'name': instance.name,
      'port': instance.port,
    };

IoK8SApiNetworkingV1ServiceBackendPort
    _$IoK8SApiNetworkingV1ServiceBackendPortFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1ServiceBackendPort(
          name: json['name'] as String?,
          number: (json['number'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1ServiceBackendPortToJson(
        IoK8SApiNetworkingV1ServiceBackendPort instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
    };
