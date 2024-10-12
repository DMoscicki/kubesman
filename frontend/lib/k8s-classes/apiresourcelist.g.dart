// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiresourcelist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apiresourcelist _$ApiresourcelistFromJson(Map<String, dynamic> json) =>
    Apiresourcelist(
      apiVersion: json['apiVersion'] as String?,
      groupVersion: json['groupVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => IoK8SApimachineryPkgApisMetaV1ApiResource.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiresourcelistToJson(Apiresourcelist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'groupVersion': instance.groupVersion,
      'kind': _$KindEnumMap[instance.kind],
      'resources': instance.resources,
    };

const _$KindEnumMap = {
  Kind.API_RESOURCE_LIST: 'APIResourceList',
};

IoK8SApimachineryPkgApisMetaV1ApiResource
    _$IoK8SApimachineryPkgApisMetaV1ApiResourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ApiResource(
          categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          group: json['group'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
          namespaced: json['namespaced'] as bool,
          shortNames: (json['shortNames'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          singularName: json['singularName'] as String,
          storageVersionHash: json['storageVersionHash'] as String?,
          verbs:
              (json['verbs'] as List<dynamic>).map((e) => e as String).toList(),
          version: json['version'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ApiResourceToJson(
        IoK8SApimachineryPkgApisMetaV1ApiResource instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'group': instance.group,
      'kind': instance.kind,
      'name': instance.name,
      'namespaced': instance.namespaced,
      'shortNames': instance.shortNames,
      'singularName': instance.singularName,
      'storageVersionHash': instance.storageVersionHash,
      'verbs': instance.verbs,
      'version': instance.version,
    };
