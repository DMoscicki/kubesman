// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'boundobjectreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Boundobjectreference _$BoundobjectreferenceFromJson(
        Map<String, dynamic> json) =>
    Boundobjectreference(
      apiVersion: json['apiVersion'] as String?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$BoundobjectreferenceToJson(
        Boundobjectreference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };
