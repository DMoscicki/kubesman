// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Info _$InfoFromJson(Map<String, dynamic> json) => Info(
      buildDate: json['buildDate'] as String?,
      compiler: json['compiler'] as String?,
      gitCommit: json['gitCommit'] as String?,
      gitTreeState: json['gitTreeState'] as String?,
      gitVersion: json['gitVersion'] as String?,
      goVersion: json['goVersion'] as String?,
      major: json['major'] as String?,
      minor: json['minor'] as String?,
      platform: json['platform'] as String?,
    );

Map<String, dynamic> _$InfoToJson(Info instance) => <String, dynamic>{
      'buildDate': instance.buildDate,
      'compiler': instance.compiler,
      'gitCommit': instance.gitCommit,
      'gitTreeState': instance.gitTreeState,
      'gitVersion': instance.gitVersion,
      'goVersion': instance.goVersion,
      'major': instance.major,
      'minor': instance.minor,
      'platform': instance.platform,
    };
