// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjectaccessreviewstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subjectaccessreviewstatus _$SubjectaccessreviewstatusFromJson(
        Map<String, dynamic> json) =>
    Subjectaccessreviewstatus(
      allowed: json['allowed'] as bool?,
      denied: json['denied'] as bool?,
      evaluationError: json['evaluationError'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$SubjectaccessreviewstatusToJson(
        Subjectaccessreviewstatus instance) =>
    <String, dynamic>{
      'allowed': instance.allowed,
      'denied': instance.denied,
      'evaluationError': instance.evaluationError,
      'reason': instance.reason,
    };
