// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpoint _$EndpointFromJson(Map<String, dynamic> json) => Endpoint(
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      conditions: json['conditions'] == null
          ? null
          : IoK8SApiDiscoveryV1EndpointConditions.fromJson(
              json['conditions'] as Map<String, dynamic>),
      deprecatedTopology:
          (json['deprecatedTopology'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      hints: json['hints'] == null
          ? null
          : IoK8SApiDiscoveryV1EndpointHints.fromJson(
              json['hints'] as Map<String, dynamic>),
      hostname: json['hostname'] as String?,
      nodeName: json['nodeName'] as String?,
      targetRef: json['targetRef'] == null
          ? null
          : IoK8SApiCoreV1ObjectReference.fromJson(
              json['targetRef'] as Map<String, dynamic>),
      zone: json['zone'] as String?,
    );

Map<String, dynamic> _$EndpointToJson(Endpoint instance) => <String, dynamic>{
      'addresses': instance.addresses,
      'conditions': instance.conditions,
      'deprecatedTopology': instance.deprecatedTopology,
      'hints': instance.hints,
      'hostname': instance.hostname,
      'nodeName': instance.nodeName,
      'targetRef': instance.targetRef,
      'zone': instance.zone,
    };

IoK8SApiDiscoveryV1EndpointConditions
    _$IoK8SApiDiscoveryV1EndpointConditionsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiDiscoveryV1EndpointConditions(
          ready: json['ready'] as bool?,
          serving: json['serving'] as bool?,
          terminating: json['terminating'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiDiscoveryV1EndpointConditionsToJson(
        IoK8SApiDiscoveryV1EndpointConditions instance) =>
    <String, dynamic>{
      'ready': instance.ready,
      'serving': instance.serving,
      'terminating': instance.terminating,
    };

IoK8SApiDiscoveryV1EndpointHints _$IoK8SApiDiscoveryV1EndpointHintsFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiDiscoveryV1EndpointHints(
      forZones: (json['forZones'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiDiscoveryV1ForZone.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiDiscoveryV1EndpointHintsToJson(
        IoK8SApiDiscoveryV1EndpointHints instance) =>
    <String, dynamic>{
      'forZones': instance.forZones,
    };

IoK8SApiDiscoveryV1ForZone _$IoK8SApiDiscoveryV1ForZoneFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiDiscoveryV1ForZone(
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiDiscoveryV1ForZoneToJson(
        IoK8SApiDiscoveryV1ForZone instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

IoK8SApiCoreV1ObjectReference _$IoK8SApiCoreV1ObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ObjectReference(
      apiVersion: json['apiVersion'] as String?,
      fieldPath: json['fieldPath'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      resourceVersion: json['resourceVersion'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ObjectReferenceToJson(
        IoK8SApiCoreV1ObjectReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldPath': instance.fieldPath,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };
