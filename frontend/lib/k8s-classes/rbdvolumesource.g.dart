// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rbdvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rbdvolumesource _$RbdvolumesourceFromJson(Map<String, dynamic> json) =>
    Rbdvolumesource(
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
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      user: json['user'] as String?,
    );

Map<String, dynamic> _$RbdvolumesourceToJson(Rbdvolumesource instance) =>
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
