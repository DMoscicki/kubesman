// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poddnsconfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poddnsconfig _$PoddnsconfigFromJson(Map<String, dynamic> json) => Poddnsconfig(
      nameservers: (json['nameservers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      options: (json['options'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1PodDnsConfigOption.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      searches: (json['searches'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$PoddnsconfigToJson(Poddnsconfig instance) =>
    <String, dynamic>{
      'nameservers': instance.nameservers,
      'options': instance.options,
      'searches': instance.searches,
    };

IoK8SApiCoreV1PodDnsConfigOption _$IoK8SApiCoreV1PodDnsConfigOptionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodDnsConfigOption(
      name: json['name'] as String?,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodDnsConfigOptionToJson(
        IoK8SApiCoreV1PodDnsConfigOption instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
