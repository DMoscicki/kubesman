// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'policyrule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Policyrule _$PolicyruleFromJson(Map<String, dynamic> json) => Policyrule(
      apiGroups: (json['apiGroups'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      nonResourceUrLs: (json['nonResourceURLs'] as List<dynamic>?)
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

Map<String, dynamic> _$PolicyruleToJson(Policyrule instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'nonResourceURLs': instance.nonResourceUrLs,
      'resourceNames': instance.resourceNames,
      'resources': instance.resources,
      'verbs': instance.verbs,
    };
