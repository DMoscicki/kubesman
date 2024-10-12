// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validatingadmissionpolicystatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validatingadmissionpolicystatus _$ValidatingadmissionpolicystatusFromJson(
        Map<String, dynamic> json) =>
    Validatingadmissionpolicystatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApimachineryPkgApisMetaV1Condition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
      typeChecking: json['typeChecking'] == null
          ? null
          : IoK8SApiAdmissionregistrationV1Beta1TypeChecking.fromJson(
              json['typeChecking'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidatingadmissionpolicystatusToJson(
        Validatingadmissionpolicystatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'observedGeneration': instance.observedGeneration,
      'typeChecking': instance.typeChecking,
    };

IoK8SApimachineryPkgApisMetaV1Condition
    _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1Condition(
          lastTransitionTime:
              DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String,
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
          reason: json['reason'] as String,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(
        IoK8SApimachineryPkgApisMetaV1Condition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiAdmissionregistrationV1Beta1TypeChecking
    _$IoK8SApiAdmissionregistrationV1Beta1TypeCheckingFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1TypeChecking(
          expressionWarnings: (json['expressionWarnings'] as List<dynamic>?)
              ?.map((e) => IoK8SApiAdmissionregistrationV1Beta1ExpressionWarning
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1TypeCheckingToJson(
        IoK8SApiAdmissionregistrationV1Beta1TypeChecking instance) =>
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
