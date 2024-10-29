// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiresource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apiresource _$ApiresourceFromJson(Map<String, dynamic> json) => Apiresource(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      group: json['group'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      namespaced: json['namespaced'] as bool?,
      shortNames: (json['shortNames'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      singularName: json['singularName'] as String?,
      storageVersionHash: json['storageVersionHash'] as String?,
      verbs:
          (json['verbs'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      version: json['version'] as String?,
    );

Map<String, dynamic> _$ApiresourceToJson(Apiresource instance) =>
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
