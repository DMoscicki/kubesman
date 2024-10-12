// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressrule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingressrule _$IngressruleFromJson(Map<String, dynamic> json) => Ingressrule(
      host: json['host'] as String?,
      http: json['http'] == null
          ? null
          : IoK8SApiNetworkingV1HttpIngressRuleValue.fromJson(
              json['http'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IngressruleToJson(Ingressrule instance) =>
    <String, dynamic>{
      'host': instance.host,
      'http': instance.http,
    };

IoK8SApiNetworkingV1HttpIngressRuleValue
    _$IoK8SApiNetworkingV1HttpIngressRuleValueFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1HttpIngressRuleValue(
          paths: (json['paths'] as List<dynamic>)
              .map((e) => IoK8SApiNetworkingV1HttpIngressPath.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1HttpIngressRuleValueToJson(
        IoK8SApiNetworkingV1HttpIngressRuleValue instance) =>
    <String, dynamic>{
      'paths': instance.paths,
    };

IoK8SApiNetworkingV1HttpIngressPath
    _$IoK8SApiNetworkingV1HttpIngressPathFromJson(Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1HttpIngressPath(
          backend: IoK8SApiNetworkingV1IngressBackend.fromJson(
              json['backend'] as Map<String, dynamic>),
          path: json['path'] as String?,
          pathType: json['pathType'] as String,
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1HttpIngressPathToJson(
        IoK8SApiNetworkingV1HttpIngressPath instance) =>
    <String, dynamic>{
      'backend': instance.backend,
      'path': instance.path,
      'pathType': instance.pathType,
    };

IoK8SApiNetworkingV1IngressBackend _$IoK8SApiNetworkingV1IngressBackendFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1IngressBackend(
      resource: json['resource'] == null
          ? null
          : IoK8SApiCoreV1TypedLocalObjectReference.fromJson(
              json['resource'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : IoK8SApiNetworkingV1IngressServiceBackend.fromJson(
              json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressBackendToJson(
        IoK8SApiNetworkingV1IngressBackend instance) =>
    <String, dynamic>{
      'resource': instance.resource,
      'service': instance.service,
    };

IoK8SApiCoreV1TypedLocalObjectReference
    _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1TypedLocalObjectReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(
        IoK8SApiCoreV1TypedLocalObjectReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };

IoK8SApiNetworkingV1IngressServiceBackend
    _$IoK8SApiNetworkingV1IngressServiceBackendFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressServiceBackend(
          name: json['name'] as String,
          port: json['port'] == null
              ? null
              : IoK8SApiNetworkingV1ServiceBackendPort.fromJson(
                  json['port'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressServiceBackendToJson(
        IoK8SApiNetworkingV1IngressServiceBackend instance) =>
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
