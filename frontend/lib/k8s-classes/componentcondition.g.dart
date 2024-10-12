// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'componentcondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Componentcondition _$ComponentconditionFromJson(Map<String, dynamic> json) =>
    Componentcondition(
      error: json['error'] as String?,
      message: json['message'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$ComponentconditionToJson(Componentcondition instance) =>
    <String, dynamic>{
      'error': instance.error,
      'message': instance.message,
      'status': instance.status,
      'type': instance.type,
    };
