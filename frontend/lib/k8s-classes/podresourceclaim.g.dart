// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podresourceclaim.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podresourceclaim _$PodresourceclaimFromJson(Map<String, dynamic> json) =>
    Podresourceclaim(
      name: json['name'] as String?,
      source: json['source'] == null
          ? null
          : IoK8SApiCoreV1ClaimSource.fromJson(
              json['source'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PodresourceclaimToJson(Podresourceclaim instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
    };

IoK8SApiCoreV1ClaimSource _$IoK8SApiCoreV1ClaimSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ClaimSource(
      resourceClaimName: json['resourceClaimName'] as String?,
      resourceClaimTemplateName: json['resourceClaimTemplateName'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ClaimSourceToJson(
        IoK8SApiCoreV1ClaimSource instance) =>
    <String, dynamic>{
      'resourceClaimName': instance.resourceClaimName,
      'resourceClaimTemplateName': instance.resourceClaimTemplateName,
    };
