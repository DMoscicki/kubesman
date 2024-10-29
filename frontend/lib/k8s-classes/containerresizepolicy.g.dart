// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containerresizepolicy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containerresizepolicy _$ContainerresizepolicyFromJson(
        Map<String, dynamic> json) =>
    Containerresizepolicy(
      resourceName: json['resourceName'] as String?,
      restartPolicy: json['restartPolicy'] as String?,
    );

Map<String, dynamic> _$ContainerresizepolicyToJson(
        Containerresizepolicy instance) =>
    <String, dynamic>{
      'resourceName': instance.resourceName,
      'restartPolicy': instance.restartPolicy,
    };
