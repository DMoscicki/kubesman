// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclaimconsumerreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclaimconsumerreference _$ResourceclaimconsumerreferenceFromJson(
        Map<String, dynamic> json) =>
    Resourceclaimconsumerreference(
      apiGroup: json['apiGroup'] as String?,
      name: json['name'] as String?,
      resource: json['resource'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$ResourceclaimconsumerreferenceToJson(
        Resourceclaimconsumerreference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'name': instance.name,
      'resource': instance.resource,
      'uid': instance.uid,
    };
