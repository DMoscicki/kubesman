// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjectrulesreviewstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subjectrulesreviewstatus _$SubjectrulesreviewstatusFromJson(
        Map<String, dynamic> json) =>
    Subjectrulesreviewstatus(
      evaluationError: json['evaluationError'] as String?,
      incomplete: json['incomplete'] as bool?,
      nonResourceRules: (json['nonResourceRules'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAuthorizationV1NonResourceRule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      resourceRules: (json['resourceRules'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAuthorizationV1ResourceRule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SubjectrulesreviewstatusToJson(
        Subjectrulesreviewstatus instance) =>
    <String, dynamic>{
      'evaluationError': instance.evaluationError,
      'incomplete': instance.incomplete,
      'nonResourceRules': instance.nonResourceRules,
      'resourceRules': instance.resourceRules,
    };

IoK8SApiAuthorizationV1NonResourceRule
    _$IoK8SApiAuthorizationV1NonResourceRuleFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAuthorizationV1NonResourceRule(
          nonResourceUrLs: (json['nonResourceURLs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          verbs:
              (json['verbs'] as List<dynamic>).map((e) => e as String).toList(),
        );

Map<String, dynamic> _$IoK8SApiAuthorizationV1NonResourceRuleToJson(
        IoK8SApiAuthorizationV1NonResourceRule instance) =>
    <String, dynamic>{
      'nonResourceURLs': instance.nonResourceUrLs,
      'verbs': instance.verbs,
    };

IoK8SApiAuthorizationV1ResourceRule
    _$IoK8SApiAuthorizationV1ResourceRuleFromJson(Map<String, dynamic> json) =>
        IoK8SApiAuthorizationV1ResourceRule(
          apiGroups: (json['apiGroups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          resourceNames: (json['resourceNames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          resources: (json['resources'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          verbs:
              (json['verbs'] as List<dynamic>).map((e) => e as String).toList(),
        );

Map<String, dynamic> _$IoK8SApiAuthorizationV1ResourceRuleToJson(
        IoK8SApiAuthorizationV1ResourceRule instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'resourceNames': instance.resourceNames,
      'resources': instance.resources,
      'verbs': instance.verbs,
    };
