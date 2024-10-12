// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ownerreference.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ownerreference _$OwnerreferenceFromJson(Map<String, dynamic> json) =>
    Ownerreference(
      apiVersion: json['apiVersion'] as String?,
      blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
      controller: json['controller'] as bool?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$OwnerreferenceToJson(Ownerreference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };
