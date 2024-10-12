// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containerport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containerport _$ContainerportFromJson(Map<String, dynamic> json) =>
    Containerport(
      containerPort: (json['containerPort'] as num?)?.toInt(),
      hostIp: json['hostIP'] as String?,
      hostPort: (json['hostPort'] as num?)?.toInt(),
      name: json['name'] as String?,
      protocol: json['protocol'] as String?,
    );

Map<String, dynamic> _$ContainerportToJson(Containerport instance) =>
    <String, dynamic>{
      'containerPort': instance.containerPort,
      'hostIP': instance.hostIp,
      'hostPort': instance.hostPort,
      'name': instance.name,
      'protocol': instance.protocol,
    };
