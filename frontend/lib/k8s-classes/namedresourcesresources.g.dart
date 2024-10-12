// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namedresourcesresources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Namedresourcesresources _$NamedresourcesresourcesFromJson(
        Map<String, dynamic> json) =>
    Namedresourcesresources(
      instances: (json['instances'] as List<dynamic>?)
          ?.map((e) => IoK8SApiResourceV1Alpha2NamedResourcesInstance.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NamedresourcesresourcesToJson(
        Namedresourcesresources instance) =>
    <String, dynamic>{
      'instances': instance.instances,
    };

IoK8SApiResourceV1Alpha2NamedResourcesInstance
    _$IoK8SApiResourceV1Alpha2NamedResourcesInstanceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesInstance(
          attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiResourceV1Alpha2NamedResourcesAttribute.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesInstanceToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesInstance instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'name': instance.name,
    };

IoK8SApiResourceV1Alpha2NamedResourcesAttribute
    _$IoK8SApiResourceV1Alpha2NamedResourcesAttributeFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesAttribute(
          ioK8SApiResourceV1Alpha2NamedResourcesAttributeBool:
              json['bool'] as bool?,
          ioK8SApiResourceV1Alpha2NamedResourcesAttributeInt:
              (json['int'] as num?)?.toInt(),
          intSlice: json['intSlice'] == null
              ? null
              : IoK8SApiResourceV1Alpha2NamedResourcesIntSlice.fromJson(
                  json['intSlice'] as Map<String, dynamic>),
          name: json['name'] as String,
          quantity: json['quantity'],
          string: json['string'] as String?,
          stringSlice: json['stringSlice'] == null
              ? null
              : IoK8SApiResourceV1Alpha2NamedResourcesStringSlice.fromJson(
                  json['stringSlice'] as Map<String, dynamic>),
          version: json['version'] as String?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesAttributeToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesAttribute instance) =>
    <String, dynamic>{
      'bool': instance.ioK8SApiResourceV1Alpha2NamedResourcesAttributeBool,
      'int': instance.ioK8SApiResourceV1Alpha2NamedResourcesAttributeInt,
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
