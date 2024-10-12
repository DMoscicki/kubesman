// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourcefilter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourcefilter _$ResourcefilterFromJson(Map<String, dynamic> json) =>
    Resourcefilter(
      driverName: json['driverName'] as String?,
      namedResources: json['namedResources'] == null
          ? null
          : IoK8SApiResourceV1Alpha2NamedResourcesFilter.fromJson(
              json['namedResources'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourcefilterToJson(Resourcefilter instance) =>
    <String, dynamic>{
      'driverName': instance.driverName,
      'namedResources': instance.namedResources,
    };

IoK8SApiResourceV1Alpha2NamedResourcesFilter
    _$IoK8SApiResourceV1Alpha2NamedResourcesFilterFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesFilter(
          selector: json['selector'] as String,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesFilterToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesFilter instance) =>
    <String, dynamic>{
      'selector': instance.selector,
    };
