// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rulewithoperations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rulewithoperations _$RulewithoperationsFromJson(Map<String, dynamic> json) =>
    Rulewithoperations(
      apiGroups: (json['apiGroups'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      apiVersions: (json['apiVersions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      operations: (json['operations'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$RulewithoperationsToJson(Rulewithoperations instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'apiVersions': instance.apiVersions,
      'operations': instance.operations,
      'resources': instance.resources,
      'scope': instance.scope,
    };
