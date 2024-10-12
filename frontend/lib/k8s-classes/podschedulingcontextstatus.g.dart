// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podschedulingcontextstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podschedulingcontextstatus _$PodschedulingcontextstatusFromJson(
        Map<String, dynamic> json) =>
    Podschedulingcontextstatus(
      resourceClaims: (json['resourceClaims'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PodschedulingcontextstatusToJson(
        Podschedulingcontextstatus instance) =>
    <String, dynamic>{
      'resourceClaims': instance.resourceClaims,
    };

IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus
    _$IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus(
          name: json['name'] as String?,
          unsuitableNodes: (json['unsuitableNodes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatusToJson(
            IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus instance) =>
        <String, dynamic>{
          'name': instance.name,
          'unsuitableNodes': instance.unsuitableNodes,
        };
