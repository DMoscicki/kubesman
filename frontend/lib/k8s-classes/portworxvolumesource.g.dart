// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'portworxvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Portworxvolumesource _$PortworxvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Portworxvolumesource(
      fsType: json['fsType'] as String?,
      readOnly: json['readOnly'] as bool?,
      volumeId: json['volumeID'] as String?,
    );

Map<String, dynamic> _$PortworxvolumesourceToJson(
        Portworxvolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'readOnly': instance.readOnly,
      'volumeID': instance.volumeId,
    };
