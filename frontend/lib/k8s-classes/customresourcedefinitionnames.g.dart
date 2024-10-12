// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customresourcedefinitionnames.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customresourcedefinitionnames _$CustomresourcedefinitionnamesFromJson(
        Map<String, dynamic> json) =>
    Customresourcedefinitionnames(
      categories: (json['categories'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      kind: json['kind'] as String?,
      listKind: json['listKind'] as String?,
      plural: json['plural'] as String?,
      shortNames: (json['shortNames'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      singular: json['singular'] as String?,
    );

Map<String, dynamic> _$CustomresourcedefinitionnamesToJson(
        Customresourcedefinitionnames instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'kind': instance.kind,
      'listKind': instance.listKind,
      'plural': instance.plural,
      'shortNames': instance.shortNames,
      'singular': instance.singular,
    };
