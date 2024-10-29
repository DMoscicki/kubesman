// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cephfsvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cephfsvolumesource _$CephfsvolumesourceFromJson(Map<String, dynamic> json) =>
    Cephfsvolumesource(
      monitors: (json['monitors'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      path: json['path'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretFile: json['secretFile'] as String?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$CephfsvolumesourceToJson(Cephfsvolumesource instance) =>
    <String, dynamic>{
      'monitors': instance.monitors,
      'path': instance.path,
      'readOnly': instance.readOnly,
      'secretFile': instance.secretFile,
      'secretRef': instance.secretRef,
      'user': instance.user,
    };

IoK8SApiCoreV1LocalObjectReference _$IoK8SApiCoreV1LocalObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LocalObjectReference(
      name: json['name'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1LocalObjectReferenceToJson(
        IoK8SApiCoreV1LocalObjectReference instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
