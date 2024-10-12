// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keytopath.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Keytopath _$KeytopathFromJson(Map<String, dynamic> json) => Keytopath(
      key: json['key'] as String?,
      mode: (json['mode'] as num?)?.toInt(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$KeytopathToJson(Keytopath instance) => <String, dynamic>{
      'key': instance.key,
      'mode': instance.mode,
      'path': instance.path,
    };
