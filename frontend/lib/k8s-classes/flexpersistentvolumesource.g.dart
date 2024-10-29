// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexpersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flexpersistentvolumesource _$FlexpersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Flexpersistentvolumesource(
      driver: json['driver'] as String?,
      fsType: json['fsType'] as String?,
      options: (json['options'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1SecretReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlexpersistentvolumesourceToJson(
        Flexpersistentvolumesource instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'fsType': instance.fsType,
      'options': instance.options,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
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
