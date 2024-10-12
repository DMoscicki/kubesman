// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourcepolicyrule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourcepolicyrule _$ResourcepolicyruleFromJson(Map<String, dynamic> json) =>
    Resourcepolicyrule(
      apiGroups: (json['apiGroups'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      clusterScope: json['clusterScope'] as bool?,
      namespaces: (json['namespaces'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      verbs:
          (json['verbs'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$ResourcepolicyruleToJson(Resourcepolicyrule instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'clusterScope': instance.clusterScope,
      'namespaces': instance.namespaces,
      'resources': instance.resources,
      'verbs': instance.verbs,
    };
