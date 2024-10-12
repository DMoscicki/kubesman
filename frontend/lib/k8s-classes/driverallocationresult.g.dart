// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driverallocationresult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Driverallocationresult _$DriverallocationresultFromJson(
        Map<String, dynamic> json) =>
    Driverallocationresult(
      namedResources: json['namedResources'] == null
          ? null
          : IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult.fromJson(
              json['namedResources'] as Map<String, dynamic>),
      vendorRequestParameters:
          json['vendorRequestParameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$DriverallocationresultToJson(
        Driverallocationresult instance) =>
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
