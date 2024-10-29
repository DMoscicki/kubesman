// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podresourceclaimstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podresourceclaimstatus _$PodresourceclaimstatusFromJson(
        Map<String, dynamic> json) =>
    Podresourceclaimstatus(
      name: json['name'] as String?,
      resourceClaimName: json['resourceClaimName'] as String?,
    );

Map<String, dynamic> _$PodresourceclaimstatusToJson(
        Podresourceclaimstatus instance) =>
    <String, dynamic>{
      'name': instance.name,
      'resourceClaimName': instance.resourceClaimName,
    };
