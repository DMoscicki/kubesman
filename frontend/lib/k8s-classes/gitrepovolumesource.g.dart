// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gitrepovolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Gitrepovolumesource _$GitrepovolumesourceFromJson(Map<String, dynamic> json) =>
    Gitrepovolumesource(
      directory: json['directory'] as String?,
      repository: json['repository'] as String?,
      revision: json['revision'] as String?,
    );

Map<String, dynamic> _$GitrepovolumesourceToJson(
        Gitrepovolumesource instance) =>
    <String, dynamic>{
      'directory': instance.directory,
      'repository': instance.repository,
      'revision': instance.revision,
    };
