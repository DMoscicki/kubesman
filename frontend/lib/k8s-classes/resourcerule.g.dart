// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourcerule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourcerule _$ResourceruleFromJson(Map<String, dynamic> json) => Resourcerule(
      apiGroups: (json['apiGroups'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      resourceNames: (json['resourceNames'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      verbs:
          (json['verbs'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$ResourceruleToJson(Resourcerule instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'resourceNames': instance.resourceNames,
      'resources': instance.resources,
      'verbs': instance.verbs,
    };
