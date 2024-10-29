// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'networkpolicyport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Networkpolicyport _$NetworkpolicyportFromJson(Map<String, dynamic> json) =>
    Networkpolicyport(
      endPort: (json['endPort'] as num?)?.toInt(),
      port: json['port'],
      protocol: json['protocol'] as String?,
    );

Map<String, dynamic> _$NetworkpolicyportToJson(Networkpolicyport instance) =>
    <String, dynamic>{
      'endPort': instance.endPort,
      'port': instance.port,
      'protocol': instance.protocol,
    };
