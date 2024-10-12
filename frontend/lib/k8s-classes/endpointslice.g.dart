// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpointslice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpointslice _$EndpointsliceFromJson(Map<String, dynamic> json) =>
    Endpointslice(
      addressType: json['addressType'] as String?,
      apiVersion: json['apiVersion'] as String?,
      endpoints: (json['endpoints'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiDiscoveryV1Endpoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) => IoK8SApiDiscoveryV1EndpointPort.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EndpointsliceToJson(Endpointslice instance) =>
    <String, dynamic>{
      'addressType': instance.addressType,
      'apiVersion': instance.apiVersion,
      'endpoints': instance.endpoints,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'ports': instance.ports,
    };

const _$KindEnumMap = {
  Kind.ENDPOINT_SLICE: 'EndpointSlice',
};

IoK8SApiDiscoveryV1Endpoint _$IoK8SApiDiscoveryV1EndpointFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiDiscoveryV1Endpoint(
      addresses:
          (json['addresses'] as List<dynamic>).map((e) => e as String).toList(),
      conditions: json['conditions'] == null
          ? null
          : IoK8SApiDiscoveryV1EndpointConditions.fromJson(
              json['conditions'] as Map<String, dynamic>),
      deprecatedTopology:
          (json['deprecatedTopology'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
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

Map<String, dynamic> _$IoK8SApiDiscoveryV1EndpointToJson(
        IoK8SApiDiscoveryV1Endpoint instance) =>
    <String, dynamic>{
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

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      creationTimestamp: json['creationTimestamp'] == null
          ? null
          : DateTime.parse(json['creationTimestamp'] as String),
      deletionGracePeriodSeconds:
          (json['deletionGracePeriodSeconds'] as num?)?.toInt(),
      deletionTimestamp: json['deletionTimestamp'] == null
          ? null
          : DateTime.parse(json['deletionTimestamp'] as String),
      finalizers: (json['finalizers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      generateName: json['generateName'] as String?,
      generation: (json['generation'] as num?)?.toInt(),
      labels: (json['labels'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      managedFields: (json['managedFields'] as List<dynamic>?)
          ?.map((e) =>
              ManagedfieldsentryMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      ownerReferences: (json['ownerReferences'] as List<dynamic>?)
          ?.map((e) => OwnerreferenceMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'annotations': instance.annotations,
      'creationTimestamp': instance.creationTimestamp?.toIso8601String(),
      'deletionGracePeriodSeconds': instance.deletionGracePeriodSeconds,
      'deletionTimestamp': instance.deletionTimestamp?.toIso8601String(),
      'finalizers': instance.finalizers,
      'generateName': instance.generateName,
      'generation': instance.generation,
      'labels': instance.labels,
      'managedFields': instance.managedFields,
      'name': instance.name,
      'namespace': instance.namespace,
      'ownerReferences': instance.ownerReferences,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
      'uid': instance.uid,
    };

ManagedfieldsentryMetaV1 _$ManagedfieldsentryMetaV1FromJson(
        Map<String, dynamic> json) =>
    ManagedfieldsentryMetaV1(
      apiVersion: json['apiVersion'] as String?,
      fieldsType: json['fieldsType'] as String?,
      fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
      manager: json['manager'] as String?,
      operation: json['operation'] as String?,
      subresource: json['subresource'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$ManagedfieldsentryMetaV1ToJson(
        ManagedfieldsentryMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

OwnerreferenceMetaV1 _$OwnerreferenceMetaV1FromJson(
        Map<String, dynamic> json) =>
    OwnerreferenceMetaV1(
      apiVersion: json['apiVersion'] as String?,
      blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
      controller: json['controller'] as bool?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$OwnerreferenceMetaV1ToJson(
        OwnerreferenceMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

IoK8SApiDiscoveryV1EndpointPort _$IoK8SApiDiscoveryV1EndpointPortFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiDiscoveryV1EndpointPort(
      appProtocol: json['appProtocol'] as String?,
      name: json['name'] as String?,
      port: (json['port'] as num?)?.toInt(),
      protocol: json['protocol'] as String?,
    );

Map<String, dynamic> _$IoK8SApiDiscoveryV1EndpointPortToJson(
        IoK8SApiDiscoveryV1EndpointPort instance) =>
    <String, dynamic>{
      'appProtocol': instance.appProtocol,
      'name': instance.name,
      'port': instance.port,
      'protocol': instance.protocol,
    };
