// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclaimlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclaimlist _$ResourceclaimlistFromJson(Map<String, dynamic> json) =>
    Resourceclaimlist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiResourceV1Alpha2ResourceClaim.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$ResourceclaimlistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourceclaimlistToJson(Resourceclaimlist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$ResourceclaimlistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$ResourceclaimlistKindEnumMap = {
  ResourceclaimlistKind.RESOURCE_CLAIM_LIST: 'ResourceClaimList',
};

IoK8SApiResourceV1Alpha2ResourceClaim
    _$IoK8SApiResourceV1Alpha2ResourceClaimFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaim(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: IoK8SApiResourceV1Alpha2ResourceClaimSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : IoK8SApiResourceV1Alpha2ResourceClaimStatus.fromJson(
                  json['status'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2ResourceClaimToJson(
        IoK8SApiResourceV1Alpha2ResourceClaim instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$ItemKindEnumMap = {
  ItemKind.RESOURCE_CLAIM: 'ResourceClaim',
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

IoK8SApiResourceV1Alpha2ResourceClaimSpec
    _$IoK8SApiResourceV1Alpha2ResourceClaimSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaimSpec(
          allocationMode: json['allocationMode'] as String?,
          parametersRef: json['parametersRef'] == null
              ? null
              : IoK8SApiResourceV1Alpha2ResourceClaimParametersReference
                  .fromJson(json['parametersRef'] as Map<String, dynamic>),
          resourceClassName: json['resourceClassName'] as String,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2ResourceClaimSpecToJson(
        IoK8SApiResourceV1Alpha2ResourceClaimSpec instance) =>
    <String, dynamic>{
      'allocationMode': instance.allocationMode,
      'parametersRef': instance.parametersRef,
      'resourceClassName': instance.resourceClassName,
    };

IoK8SApiResourceV1Alpha2ResourceClaimParametersReference
    _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaimParametersReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String,
    dynamic> _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceToJson(
        IoK8SApiResourceV1Alpha2ResourceClaimParametersReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };

IoK8SApiResourceV1Alpha2ResourceClaimStatus
    _$IoK8SApiResourceV1Alpha2ResourceClaimStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaimStatus(
          allocation: json['allocation'] == null
              ? null
              : IoK8SApiResourceV1Alpha2AllocationResult.fromJson(
                  json['allocation'] as Map<String, dynamic>),
          deallocationRequested: json['deallocationRequested'] as bool?,
          driverName: json['driverName'] as String?,
          reservedFor: (json['reservedFor'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2ResourceClaimStatusToJson(
        IoK8SApiResourceV1Alpha2ResourceClaimStatus instance) =>
    <String, dynamic>{
      'allocation': instance.allocation,
      'deallocationRequested': instance.deallocationRequested,
      'driverName': instance.driverName,
      'reservedFor': instance.reservedFor,
    };

IoK8SApiResourceV1Alpha2AllocationResult
    _$IoK8SApiResourceV1Alpha2AllocationResultFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2AllocationResult(
          availableOnNodes: json['availableOnNodes'] == null
              ? null
              : IoK8SApiCoreV1NodeSelector.fromJson(
                  json['availableOnNodes'] as Map<String, dynamic>),
          resourceHandles: (json['resourceHandles'] as List<dynamic>?)
              ?.map((e) => IoK8SApiResourceV1Alpha2ResourceHandle.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          shareable: json['shareable'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2AllocationResultToJson(
        IoK8SApiResourceV1Alpha2AllocationResult instance) =>
    <String, dynamic>{
      'availableOnNodes': instance.availableOnNodes,
      'resourceHandles': instance.resourceHandles,
      'shareable': instance.shareable,
    };

IoK8SApiCoreV1NodeSelector _$IoK8SApiCoreV1NodeSelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeSelector(
      nodeSelectorTerms: (json['nodeSelectorTerms'] as List<dynamic>)
          .map((e) => IoK8SApiCoreV1NodeSelectorTerm.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorToJson(
        IoK8SApiCoreV1NodeSelector instance) =>
    <String, dynamic>{
      'nodeSelectorTerms': instance.nodeSelectorTerms,
    };

IoK8SApiCoreV1NodeSelectorTerm _$IoK8SApiCoreV1NodeSelectorTermFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeSelectorTerm(
      matchExpressions: (json['matchExpressions'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1NodeSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      matchFields: (json['matchFields'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1NodeSelectorRequirement.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorTermToJson(
        IoK8SApiCoreV1NodeSelectorTerm instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchFields': instance.matchFields,
    };

IoK8SApiCoreV1NodeSelectorRequirement
    _$IoK8SApiCoreV1NodeSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1NodeSelectorRequirement(
          key: json['key'] as String,
          ioK8SApiCoreV1NodeSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSelectorRequirementToJson(
        IoK8SApiCoreV1NodeSelectorRequirement instance) =>
    <String, dynamic>{
      'key': instance.key,
      'operator': instance.ioK8SApiCoreV1NodeSelectorRequirementOperator,
      'values': instance.values,
    };

IoK8SApiResourceV1Alpha2ResourceHandle
    _$IoK8SApiResourceV1Alpha2ResourceHandleFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceHandle(
          data: json['data'] as String?,
          driverName: json['driverName'] as String?,
          structuredData: json['structuredData'] == null
              ? null
              : IoK8SApiResourceV1Alpha2StructuredResourceHandle.fromJson(
                  json['structuredData'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2ResourceHandleToJson(
        IoK8SApiResourceV1Alpha2ResourceHandle instance) =>
    <String, dynamic>{
      'data': instance.data,
      'driverName': instance.driverName,
      'structuredData': instance.structuredData,
    };

IoK8SApiResourceV1Alpha2StructuredResourceHandle
    _$IoK8SApiResourceV1Alpha2StructuredResourceHandleFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2StructuredResourceHandle(
          nodeName: json['nodeName'] as String?,
          results: (json['results'] as List<dynamic>)
              .map((e) =>
                  IoK8SApiResourceV1Alpha2DriverAllocationResult.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          vendorClaimParameters:
              json['vendorClaimParameters'] as Map<String, dynamic>?,
          vendorClassParameters:
              json['vendorClassParameters'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2StructuredResourceHandleToJson(
        IoK8SApiResourceV1Alpha2StructuredResourceHandle instance) =>
    <String, dynamic>{
      'nodeName': instance.nodeName,
      'results': instance.results,
      'vendorClaimParameters': instance.vendorClaimParameters,
      'vendorClassParameters': instance.vendorClassParameters,
    };

IoK8SApiResourceV1Alpha2DriverAllocationResult
    _$IoK8SApiResourceV1Alpha2DriverAllocationResultFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2DriverAllocationResult(
          namedResources: json['namedResources'] == null
              ? null
              : IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult.fromJson(
                  json['namedResources'] as Map<String, dynamic>),
          vendorRequestParameters:
              json['vendorRequestParameters'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2DriverAllocationResultToJson(
        IoK8SApiResourceV1Alpha2DriverAllocationResult instance) =>
    <String, dynamic>{
      'namedResources': instance.namedResources,
      'vendorRequestParameters': instance.vendorRequestParameters,
    };

IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult
    _$IoK8SApiResourceV1Alpha2NamedResourcesAllocationResultFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult(
          name: json['name'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiResourceV1Alpha2NamedResourcesAllocationResultToJson(
            IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult instance) =>
        <String, dynamic>{
          'name': instance.name,
        };

IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference
    _$IoK8SApiResourceV1Alpha2ResourceClaimConsumerReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference(
          apiGroup: json['apiGroup'] as String?,
          name: json['name'] as String,
          resource: json['resource'] as String,
          uid: json['uid'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiResourceV1Alpha2ResourceClaimConsumerReferenceToJson(
            IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference instance) =>
        <String, dynamic>{
          'apiGroup': instance.apiGroup,
          'name': instance.name,
          'resource': instance.resource,
          'uid': instance.uid,
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
