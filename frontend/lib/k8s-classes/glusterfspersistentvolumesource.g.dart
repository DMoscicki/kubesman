// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glusterfspersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Glusterfspersistentvolumesource _$GlusterfspersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Glusterfspersistentvolumesource(
      endpoints: json['endpoints'] as String?,
      endpointsNamespace: json['endpointsNamespace'] as String?,
      path: json['path'] as String?,
      readOnly: json['readOnly'] as bool?,
    );

Map<String, dynamic> _$GlusterfspersistentvolumesourceToJson(
        Glusterfspersistentvolumesource instance) =>
    <String, dynamic>{
      'endpoints': instance.endpoints,
      'endpointsNamespace': instance.endpointsNamespace,
      'path': instance.path,
      'readOnly': instance.readOnly,
    };
