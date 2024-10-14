// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicecidrlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Servicecidrlist _$ServicecidrlistFromJson(Map<String, dynamic> json) =>
    Servicecidrlist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiNetworkingV1Alpha1ServiceCidr.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$ServicecidrlistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServicecidrlistToJson(Servicecidrlist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$ServicecidrlistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$ServicecidrlistKindEnumMap = {
  ServicecidrlistKind.SERVICE_CIDR_LIST: 'ServiceCIDRList',
};

IoK8SApiNetworkingV1Alpha1ServiceCidr
    _$IoK8SApiNetworkingV1Alpha1ServiceCidrFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1Alpha1ServiceCidr(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: json['spec'] == null
              ? null
              : IoK8SApiNetworkingV1Alpha1ServiceCidrSpec.fromJson(
                  json['spec'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : IoK8SApiNetworkingV1Alpha1ServiceCidrStatus.fromJson(
                  json['status'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1Alpha1ServiceCidrToJson(
        IoK8SApiNetworkingV1Alpha1ServiceCidr instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$ItemKindEnumMap = {
  ItemKind.SERVICE_CIDR: 'ServiceCIDR',
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

IoK8SApiNetworkingV1Alpha1ServiceCidrSpec
    _$IoK8SApiNetworkingV1Alpha1ServiceCidrSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1Alpha1ServiceCidrSpec(
          cidrs: (json['cidrs'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1Alpha1ServiceCidrSpecToJson(
        IoK8SApiNetworkingV1Alpha1ServiceCidrSpec instance) =>
    <String, dynamic>{
      'cidrs': instance.cidrs,
    };

IoK8SApiNetworkingV1Alpha1ServiceCidrStatus
    _$IoK8SApiNetworkingV1Alpha1ServiceCidrStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1Alpha1ServiceCidrStatus(
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) => IoK8SApimachineryPkgApisMetaV1Condition.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1Alpha1ServiceCidrStatusToJson(
        IoK8SApiNetworkingV1Alpha1ServiceCidrStatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
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
