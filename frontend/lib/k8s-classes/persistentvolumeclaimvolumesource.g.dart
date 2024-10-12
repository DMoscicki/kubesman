// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistentvolumeclaimvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Persistentvolumeclaimvolumesource _$PersistentvolumeclaimvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Persistentvolumeclaimvolumesource(
      claimName: json['claimName'] as String?,
      readOnly: json['readOnly'] as bool?,
    );

Map<String, dynamic> _$PersistentvolumeclaimvolumesourceToJson(
        Persistentvolumeclaimvolumesource instance) =>
    <String, dynamic>{
      'claimName': instance.claimName,
      'readOnly': instance.readOnly,
    };
