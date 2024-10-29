// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volumemount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Volumemount _$VolumemountFromJson(Map<String, dynamic> json) => Volumemount(
      mountPath: json['mountPath'] as String?,
      mountPropagation: json['mountPropagation'] as String?,
      name: json['name'] as String?,
      readOnly: json['readOnly'] as bool?,
      recursiveReadOnly: json['recursiveReadOnly'] as String?,
      subPath: json['subPath'] as String?,
      subPathExpr: json['subPathExpr'] as String?,
    );

Map<String, dynamic> _$VolumemountToJson(Volumemount instance) =>
    <String, dynamic>{
      'mountPath': instance.mountPath,
      'mountPropagation': instance.mountPropagation,
      'name': instance.name,
      'readOnly': instance.readOnly,
      'recursiveReadOnly': instance.recursiveReadOnly,
      'subPath': instance.subPath,
      'subPathExpr': instance.subPathExpr,
    };
