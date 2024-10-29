// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flexvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flexvolumesource _$FlexvolumesourceFromJson(Map<String, dynamic> json) =>
    Flexvolumesource(
      driver: json['driver'] as String?,
      fsType: json['fsType'] as String?,
      options: (json['options'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlexvolumesourceToJson(Flexvolumesource instance) =>
    <String, dynamic>{
      'driver': instance.driver,
      'fsType': instance.fsType,
      'options': instance.options,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
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
