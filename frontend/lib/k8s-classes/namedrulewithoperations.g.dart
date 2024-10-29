// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namedrulewithoperations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Namedrulewithoperations _$NamedrulewithoperationsFromJson(
        Map<String, dynamic> json) =>
    Namedrulewithoperations(
      apiGroups: (json['apiGroups'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      apiVersions: (json['apiVersions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      operations: (json['operations'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      resourceNames: (json['resourceNames'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      resources: (json['resources'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      scope: json['scope'] as String?,
    );

Map<String, dynamic> _$NamedrulewithoperationsToJson(
        Namedrulewithoperations instance) =>
    <String, dynamic>{
      'apiGroups': instance.apiGroups,
      'apiVersions': instance.apiVersions,
      'operations': instance.operations,
      'resourceNames': instance.resourceNames,
      'resources': instance.resources,
      'scope': instance.scope,
    };
