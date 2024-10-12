// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flowschemalist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Flowschemalist _$FlowschemalistFromJson(Map<String, dynamic> json) =>
    Flowschemalist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiFlowcontrolV1Beta3FlowSchema.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$FlowschemalistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FlowschemalistToJson(Flowschemalist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$FlowschemalistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$FlowschemalistKindEnumMap = {
  FlowschemalistKind.FLOW_SCHEMA_LIST: 'FlowSchemaList',
};

IoK8SApiFlowcontrolV1Beta3FlowSchema
    _$IoK8SApiFlowcontrolV1Beta3FlowSchemaFromJson(Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3FlowSchema(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: json['spec'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3FlowSchemaSpec.fromJson(
                  json['spec'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3FlowSchemaStatus.fromJson(
                  json['status'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3FlowSchemaToJson(
        IoK8SApiFlowcontrolV1Beta3FlowSchema instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$ItemKindEnumMap = {
  ItemKind.FLOW_SCHEMA: 'FlowSchema',
};

IoK8SApimachineryPkgApisMetaV1ObjectMeta
    _$IoK8SApimachineryPkgApisMetaV1ObjectMetaFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ObjectMeta(
          annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          creationTimestamp: json['creationTimestamp'] == null
              ? null
              : DateTime.parse(json['creationTimestamp'] as String),
          deletionGracePeriodSeconds:
              (json['deletionGracePeriodSeconds'] as num?)?.toInt(),
          deletionTimestamp: json['deletionTimestamp'] == null
              ? null
              : DateTime.parse(json['deletionTimestamp'] as String),
          finalizers: (json['finalizers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          generateName: json['generateName'] as String?,
          generation: (json['generation'] as num?)?.toInt(),
          labels: (json['labels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          managedFields: (json['managedFields'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          ownerReferences: (json['ownerReferences'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1OwnerReference.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          resourceVersion: json['resourceVersion'] as String?,
          selfLink: json['selfLink'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ObjectMetaToJson(
        IoK8SApimachineryPkgApisMetaV1ObjectMeta instance) =>
    <String, dynamic>{
      'annotations': instance.annotations,
      'creationTimestamp': instance.creationTimestamp?.toIso8601String(),
      'deletionGracePeriodSeconds': instance.deletionGracePeriodSeconds,
      'deletionTimestamp': instance.deletionTimestamp?.toIso8601String(),
      'finalizers': instance.finalizers,
      'generateName': instance.generateName,
      'generation': instance.generation,
      'labels': instance.labels,
      'managedFields': instance.managedFields,
      'name': instance.name,
      'namespace': instance.namespace,
      'ownerReferences': instance.ownerReferences,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
      'uid': instance.uid,
    };

IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry
    _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry(
          apiVersion: json['apiVersion'] as String?,
          fieldsType: json['fieldsType'] as String?,
          fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
          manager: json['manager'] as String?,
          operation: json['operation'] as String?,
          subresource: json['subresource'] as String?,
          time: json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryToJson(
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

IoK8SApimachineryPkgApisMetaV1OwnerReference
    _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1OwnerReference(
          apiVersion: json['apiVersion'] as String,
          blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
          controller: json['controller'] as bool?,
          kind: json['kind'] as String,
          name: json['name'] as String,
          uid: json['uid'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceToJson(
        IoK8SApimachineryPkgApisMetaV1OwnerReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

IoK8SApiFlowcontrolV1Beta3FlowSchemaSpec
    _$IoK8SApiFlowcontrolV1Beta3FlowSchemaSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3FlowSchemaSpec(
          distinguisherMethod: json['distinguisherMethod'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod.fromJson(
                  json['distinguisherMethod'] as Map<String, dynamic>),
          matchingPrecedence: (json['matchingPrecedence'] as num?)?.toInt(),
          priorityLevelConfiguration:
              IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference
                  .fromJson(json['priorityLevelConfiguration']
                      as Map<String, dynamic>),
          rules: (json['rules'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3FlowSchemaSpecToJson(
        IoK8SApiFlowcontrolV1Beta3FlowSchemaSpec instance) =>
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

IoK8SApiFlowcontrolV1Beta3FlowSchemaStatus
    _$IoK8SApiFlowcontrolV1Beta3FlowSchemaStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3FlowSchemaStatus(
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3FlowSchemaStatusToJson(
        IoK8SApiFlowcontrolV1Beta3FlowSchemaStatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
    };

IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition
    _$IoK8SApiFlowcontrolV1Beta3FlowSchemaConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3FlowSchemaConditionToJson(
        IoK8SApiFlowcontrolV1Beta3FlowSchemaCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      metadataContinue: json['continue'] as String?,
      remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'continue': instance.metadataContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
