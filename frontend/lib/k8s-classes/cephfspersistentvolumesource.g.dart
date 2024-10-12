// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cephfspersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cephfspersistentvolumesource _$CephfspersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Cephfspersistentvolumesource(
      monitors: (json['monitors'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      path: json['path'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretFile: json['secretFile'] as String?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$CephfspersistentvolumesourceToJson(
        Cephfspersistentvolumesource instance) =>
    <String, dynamic>{
      'monitors': instance.monitors,
      'path': instance.path,
      'readOnly': instance.readOnly,
      'secretFile': instance.secretFile,
      'secretRef': instance.secretRef,
      'user': instance.user,
    };

IoK8SApiCoreV1SecretReference _$IoK8SApiCoreV1SecretReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretReference(
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretReferenceToJson(
        IoK8SApiCoreV1SecretReference instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
    };
