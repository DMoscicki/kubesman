// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclaimspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclaimspec _$ResourceclaimspecFromJson(Map<String, dynamic> json) =>
    Resourceclaimspec(
      allocationMode: json['allocationMode'] as String?,
      parametersRef: json['parametersRef'] == null
          ? null
          : IoK8SApiResourceV1Alpha2ResourceClaimParametersReference.fromJson(
              json['parametersRef'] as Map<String, dynamic>),
      resourceClassName: json['resourceClassName'] as String?,
    );

Map<String, dynamic> _$ResourceclaimspecToJson(Resourceclaimspec instance) =>
    <String, dynamic>{
      'allocationMode': instance.allocationMode,
      'parametersRef': instance.parametersRef,
      'resourceClassName': instance.resourceClassName,
    };

IoK8SApiResourceV1Alpha2ResourceClaimParametersReference
    _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaimParametersReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String,
    dynamic> _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceToJson(
        IoK8SApiResourceV1Alpha2ResourceClaimParametersReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };
