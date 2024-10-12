// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validationrule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validationrule _$ValidationruleFromJson(Map<String, dynamic> json) =>
    Validationrule(
      fieldPath: json['fieldPath'] as String?,
      message: json['message'] as String?,
      messageExpression: json['messageExpression'] as String?,
      optionalOldSelf: json['optionalOldSelf'] as bool?,
      reason: json['reason'] as String?,
      rule: json['rule'] as String?,
    );

Map<String, dynamic> _$ValidationruleToJson(Validationrule instance) =>
    <String, dynamic>{
      'fieldPath': instance.fieldPath,
      'message': instance.message,
      'messageExpression': instance.messageExpression,
      'optionalOldSelf': instance.optionalOldSelf,
      'reason': instance.reason,
      'rule': instance.rule,
    };
