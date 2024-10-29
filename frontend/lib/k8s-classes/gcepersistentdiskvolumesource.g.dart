// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gcepersistentdiskvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gcepersistentdiskvolumesource _$GcepersistentdiskvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Gcepersistentdiskvolumesource(
      fsType: json['fsType'] as String?,
      partition: (json['partition'] as num?)?.toInt(),
      pdName: json['pdName'] as String?,
      readOnly: json['readOnly'] as bool?,
    );

Map<String, dynamic> _$GcepersistentdiskvolumesourceToJson(
        Gcepersistentdiskvolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'partition': instance.partition,
      'pdName': instance.pdName,
      'readOnly': instance.readOnly,
    };
