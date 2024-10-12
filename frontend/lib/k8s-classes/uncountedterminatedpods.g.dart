// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'uncountedterminatedpods.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Uncountedterminatedpods _$UncountedterminatedpodsFromJson(
        Map<String, dynamic> json) =>
    Uncountedterminatedpods(
      failed:
          (json['failed'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      succeeded: (json['succeeded'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$UncountedterminatedpodsToJson(
        Uncountedterminatedpods instance) =>
    <String, dynamic>{
      'failed': instance.failed,
      'succeeded': instance.succeeded,
    };
