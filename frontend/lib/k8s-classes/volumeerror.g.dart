// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volumeerror.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Volumeerror _$VolumeerrorFromJson(Map<String, dynamic> json) => Volumeerror(
      message: json['message'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$VolumeerrorToJson(Volumeerror instance) =>
    <String, dynamic>{
      'message': instance.message,
      'time': instance.time?.toIso8601String(),
    };
