// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scalestatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scalestatus _$ScalestatusFromJson(Map<String, dynamic> json) => Scalestatus(
      replicas: (json['replicas'] as num?)?.toInt(),
      selector: json['selector'] as String?,
    );

Map<String, dynamic> _$ScalestatusToJson(Scalestatus instance) =>
    <String, dynamic>{
      'replicas': instance.replicas,
      'selector': instance.selector,
    };
