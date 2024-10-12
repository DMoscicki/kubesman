// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpointsubset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpointsubset _$EndpointsubsetFromJson(Map<String, dynamic> json) =>
    Endpointsubset(
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

Map<String, dynamic> _$EndpointsubsetToJson(Endpointsubset instance) =>
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
