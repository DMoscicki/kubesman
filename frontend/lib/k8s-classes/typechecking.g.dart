// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'typechecking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Typechecking _$TypecheckingFromJson(Map<String, dynamic> json) => Typechecking(
      expressionWarnings: (json['expressionWarnings'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TypecheckingToJson(Typechecking instance) =>
    <String, dynamic>{
      'expressionWarnings': instance.expressionWarnings,
    };

IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning
    _$IoK8SApiAdmissionregistrationV1Beta1ExpressionWarningFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning(
          fieldRef: json['fieldRef'] as String,
          warning: json['warning'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1ExpressionWarningToJson(
            IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning instance) =>
        <String, dynamic>{
          'fieldRef': instance.fieldRef,
          'warning': instance.warning,
        };
