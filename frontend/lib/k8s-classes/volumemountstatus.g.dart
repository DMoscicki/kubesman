// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volumemountstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Volumemountstatus _$VolumemountstatusFromJson(Map<String, dynamic> json) =>
    Volumemountstatus(
      mountPath: json['mountPath'] as String?,
      name: json['name'] as String?,
      readOnly: json['readOnly'] as bool?,
      recursiveReadOnly: json['recursiveReadOnly'] as String?,
    );

Map<String, dynamic> _$VolumemountstatusToJson(Volumemountstatus instance) =>
    <String, dynamic>{
      'mountPath': instance.mountPath,
      'name': instance.name,
      'readOnly': instance.readOnly,
      'recursiveReadOnly': instance.recursiveReadOnly,
    };
