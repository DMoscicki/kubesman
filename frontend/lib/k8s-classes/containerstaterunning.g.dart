// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containerstaterunning.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containerstaterunning _$ContainerstaterunningFromJson(
        Map<String, dynamic> json) =>
    Containerstaterunning(
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
    );

Map<String, dynamic> _$ContainerstaterunningToJson(
        Containerstaterunning instance) =>
    <String, dynamic>{
      'startedAt': instance.startedAt?.toIso8601String(),
    };
