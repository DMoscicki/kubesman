// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validatingadmissionpolicylist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validatingadmissionpolicylist _$ValidatingadmissionpolicylistFromJson(
        Map<String, dynamic> json) =>
    Validatingadmissionpolicylist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicy
                  .fromJson(e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(
          _$ValidatingadmissionpolicylistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ValidatingadmissionpolicylistToJson(
        Validatingadmissionpolicylist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$ValidatingadmissionpolicylistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$ValidatingadmissionpolicylistKindEnumMap = {
  ValidatingadmissionpolicylistKind.VALIDATING_ADMISSION_POLICY_LIST:
      'ValidatingAdmissionPolicyList',
};

IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicy
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicy(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: json['spec'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicySpec
                  .fromJson(json['spec'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyStatus
                  .fromJson(json['status'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyToJson(
            IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicy
                instance) =>
        <String, dynamic>{
          'apiVersion': instance.apiVersion,
          'kind': _$ItemKindEnumMap[instance.kind],
          'metadata': instance.metadata,
          'spec': instance.spec,
          'status': instance.status,
        };

const _$ItemKindEnumMap = {
  ItemKind.VALIDATING_ADMISSION_POLICY: 'ValidatingAdmissionPolicy',
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

IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicySpec
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicySpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicySpec(
          auditAnnotations: (json['auditAnnotations'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1Beta1AuditAnnotation.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          failurePolicy: json['failurePolicy'] as String?,
          matchConditions: (json['matchConditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1Beta1MatchCondition.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          matchConstraints: json['matchConstraints'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1MatchResources.fromJson(
                  json['matchConstraints'] as Map<String, dynamic>),
          paramKind: json['paramKind'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1ParamKind.fromJson(
                  json['paramKind'] as Map<String, dynamic>),
          validations: (json['validations'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1Beta1Validation.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          variables: (json['variables'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1Beta1Variable.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicySpecToJson(
            IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicySpec
                instance) =>
        <String, dynamic>{
          'auditAnnotations': instance.auditAnnotations,
          'failurePolicy': instance.failurePolicy,
          'matchConditions': instance.matchConditions,
          'matchConstraints': instance.matchConstraints,
          'paramKind': instance.paramKind,
          'validations': instance.validations,
          'variables': instance.variables,
        };

IoK8SApiAdmissionregistrationV1Beta1AuditAnnotation
    _$IoK8SApiAdmissionregistrationV1Beta1AuditAnnotationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1AuditAnnotation(
          key: json['key'] as String,
          valueExpression: json['valueExpression'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1AuditAnnotationToJson(
            IoK8SApiAdmissionregistrationV1Beta1AuditAnnotation instance) =>
        <String, dynamic>{
          'key': instance.key,
          'valueExpression': instance.valueExpression,
        };

IoK8SApiAdmissionregistrationV1Beta1MatchCondition
    _$IoK8SApiAdmissionregistrationV1Beta1MatchConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1MatchCondition(
          expression: json['expression'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1MatchConditionToJson(
        IoK8SApiAdmissionregistrationV1Beta1MatchCondition instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
    };

IoK8SApiAdmissionregistrationV1Beta1MatchResources
    _$IoK8SApiAdmissionregistrationV1Beta1MatchResourcesFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1MatchResources(
          excludeResourceRules: (json['excludeResourceRules'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          matchPolicy: json['matchPolicy'] as String?,
          namespaceSelector: json['namespaceSelector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['namespaceSelector'] as Map<String, dynamic>),
          objectSelector: json['objectSelector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['objectSelector'] as Map<String, dynamic>),
          resourceRules: (json['resourceRules'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1MatchResourcesToJson(
        IoK8SApiAdmissionregistrationV1Beta1MatchResources instance) =>
    <String, dynamic>{
      'excludeResourceRules': instance.excludeResourceRules,
      'matchPolicy': instance.matchPolicy,
      'namespaceSelector': instance.namespaceSelector,
      'objectSelector': instance.objectSelector,
      'resourceRules': instance.resourceRules,
    };

IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations
    _$IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperationsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations(
          apiGroups: (json['apiGroups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          apiVersions: (json['apiVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          operations: (json['operations'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          resourceNames: (json['resourceNames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          resources: (json['resources'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          scope: json['scope'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperationsToJson(
            IoK8SApiAdmissionregistrationV1Beta1NamedRuleWithOperations
                instance) =>
        <String, dynamic>{
          'apiGroups': instance.apiGroups,
          'apiVersions': instance.apiVersions,
          'operations': instance.operations,
          'resourceNames': instance.resourceNames,
          'resources': instance.resources,
          'scope': instance.scope,
        };

IoK8SApimachineryPkgApisMetaV1LabelSelector
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelector(
          matchExpressions: (json['matchExpressions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          matchLabels: (json['matchLabels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(
        IoK8SApimachineryPkgApisMetaV1LabelSelector instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchLabels': instance.matchLabels,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement(
          key: json['key'] as String,
          ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(
            IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement instance) =>
        <String, dynamic>{
          'key': instance.key,
          'operator': instance
              .ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
          'values': instance.values,
        };

IoK8SApiAdmissionregistrationV1Beta1ParamKind
    _$IoK8SApiAdmissionregistrationV1Beta1ParamKindFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ParamKind(
          apiVersion: json['apiVersion'] as String?,
          kind: json['kind'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1ParamKindToJson(
        IoK8SApiAdmissionregistrationV1Beta1ParamKind instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': instance.kind,
    };

IoK8SApiAdmissionregistrationV1Beta1Validation
    _$IoK8SApiAdmissionregistrationV1Beta1ValidationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1Validation(
          expression: json['expression'] as String,
          message: json['message'] as String?,
          messageExpression: json['messageExpression'] as String?,
          reason: json['reason'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1ValidationToJson(
        IoK8SApiAdmissionregistrationV1Beta1Validation instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'message': instance.message,
      'messageExpression': instance.messageExpression,
      'reason': instance.reason,
    };

IoK8SApiAdmissionregistrationV1Beta1Variable
    _$IoK8SApiAdmissionregistrationV1Beta1VariableFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1Variable(
          expression: json['expression'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1VariableToJson(
        IoK8SApiAdmissionregistrationV1Beta1Variable instance) =>
    <String, dynamic>{
      'expression': instance.expression,
      'name': instance.name,
    };

IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyStatus
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyStatus(
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

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyStatusToJson(
            IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyStatus
                instance) =>
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
