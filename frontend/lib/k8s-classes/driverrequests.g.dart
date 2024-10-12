// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'driverrequests.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Driverrequests _$DriverrequestsFromJson(Map<String, dynamic> json) =>
    Driverrequests(
      driverName: json['driverName'] as String?,
      requests: (json['requests'] as List<dynamic>?)
          ?.map((e) => IoK8SApiResourceV1Alpha2ResourceRequest.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      vendorParameters: json['vendorParameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$DriverrequestsToJson(Driverrequests instance) =>
    <String, dynamic>{
      'driverName': instance.driverName,
      'requests': instance.requests,
      'vendorParameters': instance.vendorParameters,
    };

IoK8SApiResourceV1Alpha2ResourceRequest
    _$IoK8SApiResourceV1Alpha2ResourceRequestFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceRequest(
          namedResources: json['namedResources'] == null
              ? null
              : IoK8SApiResourceV1Alpha2NamedResourcesRequest.fromJson(
                  json['namedResources'] as Map<String, dynamic>),
          vendorParameters: json['vendorParameters'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2ResourceRequestToJson(
        IoK8SApiResourceV1Alpha2ResourceRequest instance) =>
    <String, dynamic>{
      'namedResources': instance.namedResources,
      'vendorParameters': instance.vendorParameters,
    };

IoK8SApiResourceV1Alpha2NamedResourcesRequest
    _$IoK8SApiResourceV1Alpha2NamedResourcesRequestFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesRequest(
          selector: json['selector'] as String,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesRequestToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesRequest instance) =>
    <String, dynamic>{
      'selector': instance.selector,
    };
