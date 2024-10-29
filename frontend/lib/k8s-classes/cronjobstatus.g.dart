// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cronjobstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cronjobstatus _$CronjobstatusFromJson(Map<String, dynamic> json) =>
    Cronjobstatus(
      active: (json['active'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ObjectReference.fromJson(e as Map<String, dynamic>))
          .toList(),
      lastScheduleTime: json['lastScheduleTime'] == null
          ? null
          : DateTime.parse(json['lastScheduleTime'] as String),
      lastSuccessfulTime: json['lastSuccessfulTime'] == null
          ? null
          : DateTime.parse(json['lastSuccessfulTime'] as String),
    );

Map<String, dynamic> _$CronjobstatusToJson(Cronjobstatus instance) =>
    <String, dynamic>{
      'active': instance.active,
      'lastScheduleTime': instance.lastScheduleTime?.toIso8601String(),
      'lastSuccessfulTime': instance.lastSuccessfulTime?.toIso8601String(),
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
