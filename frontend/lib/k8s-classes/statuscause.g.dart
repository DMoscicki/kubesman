// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statuscause.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statuscause _$StatuscauseFromJson(Map<String, dynamic> json) => Statuscause(
      field: json['field'] as String?,
      message: json['message'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$StatuscauseToJson(Statuscause instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
      'reason': instance.reason,
    };
