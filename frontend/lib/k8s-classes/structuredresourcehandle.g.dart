// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'structuredresourcehandle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Structuredresourcehandle _$StructuredresourcehandleFromJson(
        Map<String, dynamic> json) =>
    Structuredresourcehandle(
      nodeName: json['nodeName'] as String?,
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => IoK8SApiResourceV1Alpha2DriverAllocationResult.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      vendorClaimParameters:
          json['vendorClaimParameters'] as Map<String, dynamic>?,
      vendorClassParameters:
          json['vendorClassParameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$StructuredresourcehandleToJson(
        Structuredresourcehandle instance) =>
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
