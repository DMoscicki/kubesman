// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenrequestspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tokenrequestspec _$TokenrequestspecFromJson(Map<String, dynamic> json) =>
    Tokenrequestspec(
      audiences: (json['audiences'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      boundObjectRef: json['boundObjectRef'] == null
          ? null
          : IoK8SApiAuthenticationV1BoundObjectReference.fromJson(
              json['boundObjectRef'] as Map<String, dynamic>),
      expirationSeconds: (json['expirationSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TokenrequestspecToJson(Tokenrequestspec instance) =>
    <String, dynamic>{
      'audiences': instance.audiences,
      'boundObjectRef': instance.boundObjectRef,
      'expirationSeconds': instance.expirationSeconds,
    };

IoK8SApiAuthenticationV1BoundObjectReference
    _$IoK8SApiAuthenticationV1BoundObjectReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAuthenticationV1BoundObjectReference(
          apiVersion: json['apiVersion'] as String?,
          kind: json['kind'] as String?,
          name: json['name'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAuthenticationV1BoundObjectReferenceToJson(
        IoK8SApiAuthenticationV1BoundObjectReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };
