// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclaimstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclaimstatus _$ResourceclaimstatusFromJson(Map<String, dynamic> json) =>
    Resourceclaimstatus(
      allocation: json['allocation'] == null
          ? null
          : IoK8SApiResourceV1Alpha2AllocationResult.fromJson(
              json['allocation'] as Map<String, dynamic>),
      deallocationRequested: json['deallocationRequested'] as bool?,
      driverName: json['driverName'] as String?,
      reservedFor: (json['reservedFor'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResourceclaimstatusToJson(
        Resourceclaimstatus instance) =>
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
