// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rbdpersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rbdpersistentvolumesource _$RbdpersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Rbdpersistentvolumesource(
      fsType: json['fsType'] as String?,
      image: json['image'] as String?,
      keyring: json['keyring'] as String?,
      monitors: (json['monitors'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      pool: json['pool'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$RbdpersistentvolumesourceToJson(
        Rbdpersistentvolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'image': instance.image,
      'keyring': instance.keyring,
      'monitors': instance.monitors,
      'pool': instance.pool,
      'readOnly': instance.readOnly,
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
