// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glusterfsvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Glusterfsvolumesource _$GlusterfsvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Glusterfsvolumesource(
      endpoints: json['endpoints'] as String?,
      path: json['path'] as String?,
      readOnly: json['readOnly'] as bool?,
    );

Map<String, dynamic> _$GlusterfsvolumesourceToJson(
        Glusterfsvolumesource instance) =>
    <String, dynamic>{
      'endpoints': instance.endpoints,
      'path': instance.path,
      'readOnly': instance.readOnly,
    };
