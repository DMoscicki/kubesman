// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flowschemaspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flowschemaspec _$FlowschemaspecFromJson(Map<String, dynamic> json) =>
    Flowschemaspec(
      distinguisherMethod: json['distinguisherMethod'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod.fromJson(
              json['distinguisherMethod'] as Map<String, dynamic>),
      matchingPrecedence: (json['matchingPrecedence'] as num?)?.toInt(),
      priorityLevelConfiguration:
          IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference
              .fromJson(
                  json['priorityLevelConfiguration'] as Map<String, dynamic>),
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FlowschemaspecToJson(Flowschemaspec instance) =>
    <String, dynamic>{
      'distinguisherMethod': instance.distinguisherMethod,
      'matchingPrecedence': instance.matchingPrecedence,
      'priorityLevelConfiguration': instance.priorityLevelConfiguration,
      'rules': instance.rules,
    };

IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod
    _$IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethodFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod(
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethodToJson(
        IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod instance) =>
    <String, dynamic>{
      'type': instance.type,
    };

IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference
    _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference(
          name: json['name'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReferenceToJson(
            IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference
                instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects
    _$IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjectsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects(
          nonResourceRules: (json['nonResourceRules'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRule.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          resourceRules: (json['resourceRules'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiFlowcontrolV1Beta3ResourcePolicyRule.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          subjects: (json['subjects'] as List<dynamic>)
              .map((e) => IoK8SApiFlowcontrolV1Beta3Subject.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjectsToJson(
        IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects instance) =>
    <String, dynamic>{
      'nonResourceRules': instance.nonResourceRules,
      'resourceRules': instance.resourceRules,
      'subjects': instance.subjects,
    };

IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRule
    _$IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRuleFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRule(
          nonResourceUrLs: (json['nonResourceURLs'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          verbs:
              (json['verbs'] as List<dynamic>).map((e) => e as String).toList(),
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRuleToJson(
        IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRule instance) =>
    <String, dynamic>{
      'nonResourceURLs': instance.nonResourceUrLs,
      'verbs': instance.verbs,
    };

IoK8SApiFlowcontrolV1Beta3ResourcePolicyRule
    _$IoK8SApiFlowcontrolV1Beta3ResourcePolicyRuleFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3ResourcePolicyRule(
          apiGroups: (json['apiGroups'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          clusterScope: json['clusterScope'] as bool?,
          namespaces: (json['namespaces'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          resources: (json['resources'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
          verbs:
              (json['verbs'] as List<dynamic>).map((e) => e as String).toList(),
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3ResourcePolicyRuleToJson(
        IoK8SApiFlowcontrolV1Beta3ResourcePolicyRule instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'clusterScope': instance.clusterScope,
      'namespaces': instance.namespaces,
      'resources': instance.resources,
      'verbs': instance.verbs,
    };

IoK8SApiFlowcontrolV1Beta3Subject _$IoK8SApiFlowcontrolV1Beta3SubjectFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiFlowcontrolV1Beta3Subject(
      group: json['group'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3GroupSubject.fromJson(
              json['group'] as Map<String, dynamic>),
      kind: json['kind'] as String,
      serviceAccount: json['serviceAccount'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject.fromJson(
              json['serviceAccount'] as Map<String, dynamic>),
      user: json['user'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3UserSubject.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3SubjectToJson(
        IoK8SApiFlowcontrolV1Beta3Subject instance) =>
    <String, dynamic>{
      'group': instance.group,
      'kind': instance.kind,
      'serviceAccount': instance.serviceAccount,
      'user': instance.user,
    };

IoK8SApiFlowcontrolV1Beta3GroupSubject
    _$IoK8SApiFlowcontrolV1Beta3GroupSubjectFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3GroupSubject(
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3GroupSubjectToJson(
        IoK8SApiFlowcontrolV1Beta3GroupSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject
    _$IoK8SApiFlowcontrolV1Beta3ServiceAccountSubjectFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject(
          name: json['name'] as String,
          namespace: json['namespace'] as String,
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3ServiceAccountSubjectToJson(
        IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
    };

IoK8SApiFlowcontrolV1Beta3UserSubject
    _$IoK8SApiFlowcontrolV1Beta3UserSubjectFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3UserSubject(
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3UserSubjectToJson(
        IoK8SApiFlowcontrolV1Beta3UserSubject instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
