// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cindervolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cindervolumesource _$CindervolumesourceFromJson(Map<String, dynamic> json) =>
    Cindervolumesource(
      fsType: json['fsType'] as String?,
      readOnly: json['readOnly'] as bool?,
      secretRef: json['secretRef'] == null
          ? null
          : IoK8SApiCoreV1LocalObjectReference.fromJson(
              json['secretRef'] as Map<String, dynamic>),
      volumeId: json['volumeID'] as String?,
    );

Map<String, dynamic> _$CindervolumesourceToJson(Cindervolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'readOnly': instance.readOnly,
      'secretRef': instance.secretRef,
      'volumeID': instance.volumeId,
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
