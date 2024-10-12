// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customresourcecolumndefinition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customresourcecolumndefinition _$CustomresourcecolumndefinitionFromJson(
        Map<String, dynamic> json) =>
    Customresourcecolumndefinition(
      description: json['description'] as String?,
      format: json['format'] as String?,
      jsonPath: json['jsonPath'] as String?,
      name: json['name'] as String?,
      priority: (json['priority'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CustomresourcecolumndefinitionToJson(
        Customresourcecolumndefinition instance) =>
    <String, dynamic>{
      'description': instance.description,
      'format': instance.format,
      'jsonPath': instance.jsonPath,
      'name': instance.name,
      'priority': instance.priority,
      'type': instance.type,
    };
