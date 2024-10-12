// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpointhints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpointhints _$EndpointhintsFromJson(Map<String, dynamic> json) =>
    Endpointhints(
      forZones: (json['forZones'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiDiscoveryV1ForZone.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EndpointhintsToJson(Endpointhints instance) =>
    <String, dynamic>{
      'forZones': instance.forZones,
    };

IoK8SApiDiscoveryV1ForZone _$IoK8SApiDiscoveryV1ForZoneFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiDiscoveryV1ForZone(
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiDiscoveryV1ForZoneToJson(
        IoK8SApiDiscoveryV1ForZone instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
