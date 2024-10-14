// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prioritylevelconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prioritylevelconfiguration _$PrioritylevelconfigurationFromJson(
        Map<String, dynamic> json) =>
    Prioritylevelconfiguration(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PrioritylevelconfigurationToJson(
        Prioritylevelconfiguration instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.PRIORITY_LEVEL_CONFIGURATION: 'PriorityLevelConfiguration',
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

IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpec
    _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpec(
          exempt: json['exempt'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration
                  .fromJson(json['exempt'] as Map<String, dynamic>),
          limited: json['limited'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration
                  .fromJson(json['limited'] as Map<String, dynamic>),
          type: json['type'] as String,
        );

Map<String,
    dynamic> _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpecToJson(
        IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationSpec instance) =>
    <String, dynamic>{
      'exempt': instance.exempt,
      'limited': instance.limited,
      'type': instance.type,
    };

IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration
    _$IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfigurationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration(
          lendablePercent: (json['lendablePercent'] as num?)?.toInt(),
          nominalConcurrencyShares:
              (json['nominalConcurrencyShares'] as num?)?.toInt(),
        );

Map<String,
    dynamic> _$IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfigurationToJson(
        IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration instance) =>
    <String, dynamic>{
      'lendablePercent': instance.lendablePercent,
      'nominalConcurrencyShares': instance.nominalConcurrencyShares,
    };

IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration
    _$IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfigurationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration(
          borrowingLimitPercent:
              (json['borrowingLimitPercent'] as num?)?.toInt(),
          lendablePercent: (json['lendablePercent'] as num?)?.toInt(),
          limitResponse: json['limitResponse'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3LimitResponse.fromJson(
                  json['limitResponse'] as Map<String, dynamic>),
          nominalConcurrencyShares:
              (json['nominalConcurrencyShares'] as num?)?.toInt(),
        );

Map<String, dynamic>
    _$IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfigurationToJson(
            IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration
                instance) =>
        <String, dynamic>{
          'borrowingLimitPercent': instance.borrowingLimitPercent,
          'lendablePercent': instance.lendablePercent,
          'limitResponse': instance.limitResponse,
          'nominalConcurrencyShares': instance.nominalConcurrencyShares,
        };

IoK8SApiFlowcontrolV1Beta3LimitResponse
    _$IoK8SApiFlowcontrolV1Beta3LimitResponseFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3LimitResponse(
          queuing: json['queuing'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3QueuingConfiguration.fromJson(
                  json['queuing'] as Map<String, dynamic>),
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3LimitResponseToJson(
        IoK8SApiFlowcontrolV1Beta3LimitResponse instance) =>
    <String, dynamic>{
      'queuing': instance.queuing,
      'type': instance.type,
    };

IoK8SApiFlowcontrolV1Beta3QueuingConfiguration
    _$IoK8SApiFlowcontrolV1Beta3QueuingConfigurationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3QueuingConfiguration(
          handSize: (json['handSize'] as num?)?.toInt(),
          queueLengthLimit: (json['queueLengthLimit'] as num?)?.toInt(),
          queues: (json['queues'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3QueuingConfigurationToJson(
        IoK8SApiFlowcontrolV1Beta3QueuingConfiguration instance) =>
    <String, dynamic>{
      'handSize': instance.handSize,
      'queueLengthLimit': instance.queueLengthLimit,
      'queues': instance.queues,
    };

IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatus
    _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatus(
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String,
    dynamic> _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatusToJson(
        IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationStatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
    };

IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition
    _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationConditionToJson(
            IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationCondition
                instance) =>
        <String, dynamic>{
          'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
          'message': instance.message,
          'reason': instance.reason,
          'status': instance.status,
          'type': instance.type,
        };
