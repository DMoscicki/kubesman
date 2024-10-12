// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validation _$ValidationFromJson(Map<String, dynamic> json) => Validation(
      expression: json['expression'] as String?,
      message: json['message'] as String?,
      messageExpression: json['messageExpression'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$ValidationToJson(Validation instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'message': instance.message,
      'messageExpression': instance.messageExpression,
      'reason': instance.reason,
    };
