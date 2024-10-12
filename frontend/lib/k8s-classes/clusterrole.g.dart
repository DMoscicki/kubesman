// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clusterrole.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clusterrole _$ClusterroleFromJson(Map<String, dynamic> json) => Clusterrole(
      aggregationRule: json['aggregationRule'] == null
          ? null
          : IoK8SApiRbacV1AggregationRule.fromJson(
              json['aggregationRule'] as Map<String, dynamic>),
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) => PolicyruleRbacV1.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ClusterroleToJson(Clusterrole instance) =>
    <String, dynamic>{
      'aggregationRule': instance.aggregationRule,
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'rules': instance.rules,
    };

const _$KindEnumMap = {
  Kind.CLUSTER_ROLE: 'ClusterRole',
};

IoK8SApiRbacV1AggregationRule _$IoK8SApiRbacV1AggregationRuleFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiRbacV1AggregationRule(
      clusterRoleSelectors: (json['clusterRoleSelectors'] as List<dynamic>?)
          ?.map((e) => IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiRbacV1AggregationRuleToJson(
        IoK8SApiRbacV1AggregationRule instance) =>
    <String, dynamic>{
      'clusterRoleSelectors': instance.clusterRoleSelectors,
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

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
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
          ?.map((e) => e as String?)
          .toList(),
      generateName: json['generateName'] as String?,
      generation: (json['generation'] as num?)?.toInt(),
      labels: (json['labels'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      managedFields: (json['managedFields'] as List<dynamic>?)
          ?.map((e) =>
              ManagedfieldsentryMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      ownerReferences: (json['ownerReferences'] as List<dynamic>?)
          ?.map((e) => OwnerreferenceMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
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

ManagedfieldsentryMetaV1 _$ManagedfieldsentryMetaV1FromJson(
        Map<String, dynamic> json) =>
    ManagedfieldsentryMetaV1(
      apiVersion: json['apiVersion'] as String?,
      fieldsType: json['fieldsType'] as String?,
      fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
      manager: json['manager'] as String?,
      operation: json['operation'] as String?,
      subresource: json['subresource'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$ManagedfieldsentryMetaV1ToJson(
        ManagedfieldsentryMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

OwnerreferenceMetaV1 _$OwnerreferenceMetaV1FromJson(
        Map<String, dynamic> json) =>
    OwnerreferenceMetaV1(
      apiVersion: json['apiVersion'] as String?,
      blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
      controller: json['controller'] as bool?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$OwnerreferenceMetaV1ToJson(
        OwnerreferenceMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

PolicyruleRbacV1 _$PolicyruleRbacV1FromJson(Map<String, dynamic> json) =>
    PolicyruleRbacV1(
      apiGroups: (json['apiGroups'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      nonResourceUrLs: (json['nonResourceURLs'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      resourceNames: (json['resourceNames'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      verbs:
          (json['verbs'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$PolicyruleRbacV1ToJson(PolicyruleRbacV1 instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'nonResourceURLs': instance.nonResourceUrLs,
      'resourceNames': instance.resourceNames,
      'resources': instance.resources,
      'verbs': instance.verbs,
    };
