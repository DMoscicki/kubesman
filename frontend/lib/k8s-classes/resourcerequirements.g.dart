// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourcerequirements.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourcerequirements _$ResourcerequirementsFromJson(
        Map<String, dynamic> json) =>
    Resourcerequirements(
      claims: (json['claims'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ResourceClaim.fromJson(e as Map<String, dynamic>))
          .toList(),
      limits: json['limits'] as Map<String, dynamic>?,
      requests: json['requests'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$ResourcerequirementsToJson(
        Resourcerequirements instance) =>
    <String, dynamic>{
      'claims': instance.claims,
      'limits': instance.limits,
      'requests': instance.requests,
    };

IoK8SApiCoreV1ResourceClaim _$IoK8SApiCoreV1ResourceClaimFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ResourceClaim(
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceClaimToJson(
        IoK8SApiCoreV1ResourceClaim instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
