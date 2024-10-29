// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'objectreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Objectreference _$ObjectreferenceFromJson(Map<String, dynamic> json) =>
    Objectreference(
      apiVersion: json['apiVersion'] as String?,
      fieldPath: json['fieldPath'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      resourceVersion: json['resourceVersion'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$ObjectreferenceToJson(Objectreference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldPath': instance.fieldPath,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };
