// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validatingadmissionpolicybindinglist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Validatingadmissionpolicybindinglist
    _$ValidatingadmissionpolicybindinglistFromJson(Map<String, dynamic> json) =>
        Validatingadmissionpolicybindinglist(
          apiVersion: json['apiVersion'] as String?,
          items: (json['items'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBinding
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          kind: $enumDecodeNullable(
              _$ValidatingadmissionpolicybindinglistKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$ValidatingadmissionpolicybindinglistToJson(
        Validatingadmissionpolicybindinglist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$ValidatingadmissionpolicybindinglistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$ValidatingadmissionpolicybindinglistKindEnumMap = {
  ValidatingadmissionpolicybindinglistKind
          .VALIDATING_ADMISSION_POLICY_BINDING_LIST:
      'ValidatingAdmissionPolicyBindingList',
};

IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBinding
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBinding(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: json['spec'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpec
                  .fromJson(json['spec'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingToJson(
            IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBinding
                instance) =>
        <String, dynamic>{
          'apiVersion': instance.apiVersion,
          'kind': _$ItemKindEnumMap[instance.kind],
          'metadata': instance.metadata,
          'spec': instance.spec,
        };

const _$ItemKindEnumMap = {
  ItemKind.VALIDATING_ADMISSION_POLICY_BINDING:
      'ValidatingAdmissionPolicyBinding',
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

IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpec
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpec(
          matchResources: json['matchResources'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1MatchResources.fromJson(
                  json['matchResources'] as Map<String, dynamic>),
          paramRef: json['paramRef'] == null
              ? null
              : IoK8SApiAdmissionregistrationV1Beta1ParamRef.fromJson(
                  json['paramRef'] as Map<String, dynamic>),
          policyName: json['policyName'] as String?,
          validationActions: (json['validationActions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpecToJson(
            IoK8SApiAdmissionregistrationV1Beta1ValidatingAdmissionPolicyBindingSpec
                instance) =>
        <String, dynamic>{
          'matchResources': instance.matchResources,
          'paramRef': instance.paramRef,
          'policyName': instance.policyName,
          'validationActions': instance.validationActions,
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

IoK8SApiAdmissionregistrationV1Beta1ParamRef
    _$IoK8SApiAdmissionregistrationV1Beta1ParamRefFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAdmissionregistrationV1Beta1ParamRef(
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          parameterNotFoundAction: json['parameterNotFoundAction'] as String?,
          selector: json['selector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['selector'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAdmissionregistrationV1Beta1ParamRefToJson(
        IoK8SApiAdmissionregistrationV1Beta1ParamRef instance) =>
    <String, dynamic>{
      'name': instance.name,
      'namespace': instance.namespace,
      'parameterNotFoundAction': instance.parameterNotFoundAction,
      'selector': instance.selector,
    };

IoK8SApimachineryPkgApisMetaV1ListMeta
    _$IoK8SApimachineryPkgApisMetaV1ListMetaFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ListMeta(
          ioK8SApimachineryPkgApisMetaV1ListMetaContinue:
              json['continue'] as String?,
          remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
          resourceVersion: json['resourceVersion'] as String?,
          selfLink: json['selfLink'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ListMetaToJson(
        IoK8SApimachineryPkgApisMetaV1ListMeta instance) =>
    <String, dynamic>{
      'continue': instance.ioK8SApimachineryPkgApisMetaV1ListMetaContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
