// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customresourcedefinitionstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customresourcedefinitionstatus _$CustomresourcedefinitionstatusFromJson(
        Map<String, dynamic> json) =>
    Customresourcedefinitionstatus(
      acceptedNames: json['acceptedNames'] == null
          ? null
          : AcceptedNames.fromJson(
              json['acceptedNames'] as Map<String, dynamic>),
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              CustomresourcedefinitionconditionApiextensionsV1.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      storedVersions: (json['storedVersions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$CustomresourcedefinitionstatusToJson(
        Customresourcedefinitionstatus instance) =>
    <String, dynamic>{
      'acceptedNames': instance.acceptedNames,
      'conditions': instance.conditions,
      'storedVersions': instance.storedVersions,
    };

AcceptedNames _$AcceptedNamesFromJson(Map<String, dynamic> json) =>
    AcceptedNames(
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

Map<String, dynamic> _$AcceptedNamesToJson(AcceptedNames instance) =>
    <String, dynamic>{
      'categories': instance.categories,
      'kind': instance.kind,
      'listKind': instance.listKind,
      'plural': instance.plural,
      'shortNames': instance.shortNames,
      'singular': instance.singular,
    };

CustomresourcedefinitionconditionApiextensionsV1
    _$CustomresourcedefinitionconditionApiextensionsV1FromJson(
            Map<String, dynamic> json) =>
        CustomresourcedefinitionconditionApiextensionsV1(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String?,
          type: json['type'] as String?,
        );

Map<String, dynamic> _$CustomresourcedefinitionconditionApiextensionsV1ToJson(
        CustomresourcedefinitionconditionApiextensionsV1 instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
