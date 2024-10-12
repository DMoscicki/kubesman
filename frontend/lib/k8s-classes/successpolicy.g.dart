// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'successpolicy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Successpolicy _$SuccesspolicyFromJson(Map<String, dynamic> json) =>
    Successpolicy(
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) => IoK8SApiBatchV1SuccessPolicyRule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SuccesspolicyToJson(Successpolicy instance) =>
    <String, dynamic>{
      'rules': instance.rules,
    };

IoK8SApiBatchV1SuccessPolicyRule _$IoK8SApiBatchV1SuccessPolicyRuleFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiBatchV1SuccessPolicyRule(
      succeededCount: (json['succeededCount'] as num?)?.toInt(),
      succeededIndexes: json['succeededIndexes'] as String?,
    );

Map<String, dynamic> _$IoK8SApiBatchV1SuccessPolicyRuleToJson(
        IoK8SApiBatchV1SuccessPolicyRule instance) =>
    <String, dynamic>{
      'succeededCount': instance.succeededCount,
      'succeededIndexes': instance.succeededIndexes,
    };
