// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namedresourcesattribute.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Namedresourcesattribute _$NamedresourcesattributeFromJson(
        Map<String, dynamic> json) =>
    Namedresourcesattribute(
      namedresourcesattributeBool: json['bool'] as bool?,
      namedresourcesattributeInt: (json['int'] as num?)?.toInt(),
      intSlice: json['intSlice'] == null
          ? null
          : IoK8SApiResourceV1Alpha2NamedResourcesIntSlice.fromJson(
              json['intSlice'] as Map<String, dynamic>),
      name: json['name'] as String?,
      quantity: json['quantity'],
      string: json['string'] as String?,
      stringSlice: json['stringSlice'] == null
          ? null
          : IoK8SApiResourceV1Alpha2NamedResourcesStringSlice.fromJson(
              json['stringSlice'] as Map<String, dynamic>),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$NamedresourcesattributeToJson(
        Namedresourcesattribute instance) =>
    <String, dynamic>{
      'bool': instance.namedresourcesattributeBool,
      'int': instance.namedresourcesattributeInt,
      'intSlice': instance.intSlice,
      'name': instance.name,
      'quantity': instance.quantity,
      'string': instance.string,
      'stringSlice': instance.stringSlice,
      'version': instance.version,
    };

IoK8SApiResourceV1Alpha2NamedResourcesIntSlice
    _$IoK8SApiResourceV1Alpha2NamedResourcesIntSliceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesIntSlice(
          ints: (json['ints'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesIntSliceToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesIntSlice instance) =>
    <String, dynamic>{
      'ints': instance.ints,
    };

IoK8SApiResourceV1Alpha2NamedResourcesStringSlice
    _$IoK8SApiResourceV1Alpha2NamedResourcesStringSliceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesStringSlice(
          strings: (json['strings'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesStringSliceToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesStringSlice instance) =>
    <String, dynamic>{
      'strings': instance.strings,
    };
