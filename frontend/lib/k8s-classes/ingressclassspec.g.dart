// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingressclassspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingressclassspec _$IngressclassspecFromJson(Map<String, dynamic> json) =>
    Ingressclassspec(
      controller: json['controller'] as String?,
      parameters: json['parameters'] == null
          ? null
          : IoK8SApiNetworkingV1IngressClassParametersReference.fromJson(
              json['parameters'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IngressclassspecToJson(Ingressclassspec instance) =>
    <String, dynamic>{
      'controller': instance.controller,
      'parameters': instance.parameters,
    };

IoK8SApiNetworkingV1IngressClassParametersReference
    _$IoK8SApiNetworkingV1IngressClassParametersReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressClassParametersReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
          namespace: json['namespace'] as String?,
          scope: json['scope'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiNetworkingV1IngressClassParametersReferenceToJson(
            IoK8SApiNetworkingV1IngressClassParametersReference instance) =>
        <String, dynamic>{
          'apiGroup': instance.apiGroup,
          'kind': instance.kind,
          'name': instance.name,
          'namespace': instance.namespace,
          'scope': instance.scope,
        };
