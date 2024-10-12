// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpoints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpoints _$EndpointsFromJson(Map<String, dynamic> json) => Endpoints(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      subsets: (json['subsets'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1EndpointSubset.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EndpointsToJson(Endpoints instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'subsets': instance.subsets,
    };

const _$KindEnumMap = {
  Kind.ENDPOINTS: 'Endpoints',
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

IoK8SApiCoreV1EndpointSubset _$IoK8SApiCoreV1EndpointSubsetFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EndpointSubset(
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1EndpointAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      notReadyAddresses: (json['notReadyAddresses'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1EndpointAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1EndpointPort.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1EndpointSubsetToJson(
        IoK8SApiCoreV1EndpointSubset instance) =>
    <String, dynamic>{
      'addresses': instance.addresses,
      'notReadyAddresses': instance.notReadyAddresses,
      'ports': instance.ports,
    };

IoK8SApiCoreV1EndpointAddress _$IoK8SApiCoreV1EndpointAddressFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EndpointAddress(
      hostname: json['hostname'] as String?,
      ip: json['ip'] as String,
      nodeName: json['nodeName'] as String?,
      targetRef: json['targetRef'] == null
          ? null
          : IoK8SApiCoreV1ObjectReference.fromJson(
              json['targetRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1EndpointAddressToJson(
        IoK8SApiCoreV1EndpointAddress instance) =>
    <String, dynamic>{
      'hostname': instance.hostname,
      'ip': instance.ip,
      'nodeName': instance.nodeName,
      'targetRef': instance.targetRef,
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

IoK8SApiCoreV1EndpointPort _$IoK8SApiCoreV1EndpointPortFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1EndpointPort(
      appProtocol: json['appProtocol'] as String?,
      name: json['name'] as String?,
      port: (json['port'] as num).toInt(),
      protocol: json['protocol'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1EndpointPortToJson(
        IoK8SApiCoreV1EndpointPort instance) =>
    <String, dynamic>{
      'appProtocol': instance.appProtocol,
      'name': instance.name,
      'port': instance.port,
      'protocol': instance.protocol,
    };
