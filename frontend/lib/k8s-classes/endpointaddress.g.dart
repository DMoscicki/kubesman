// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpointaddress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpointaddress _$EndpointaddressFromJson(Map<String, dynamic> json) =>
    Endpointaddress(
      hostname: json['hostname'] as String?,
      ip: json['ip'] as String?,
      nodeName: json['nodeName'] as String?,
      targetRef: json['targetRef'] == null
          ? null
          : IoK8SApiCoreV1ObjectReference.fromJson(
              json['targetRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EndpointaddressToJson(Endpointaddress instance) =>
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
