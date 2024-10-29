// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourcerequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourcerequest _$ResourcerequestFromJson(Map<String, dynamic> json) =>
    Resourcerequest(
      namedResources: json['namedResources'] == null
          ? null
          : IoK8SApiResourceV1Alpha2NamedResourcesRequest.fromJson(
              json['namedResources'] as Map<String, dynamic>),
      vendorParameters: json['vendorParameters'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ResourcerequestToJson(Resourcerequest instance) =>
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
