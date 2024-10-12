// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'endpointconditions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Endpointconditions _$EndpointconditionsFromJson(Map<String, dynamic> json) =>
    Endpointconditions(
      ready: json['ready'] as bool?,
      serving: json['serving'] as bool?,
      terminating: json['terminating'] as bool?,
    );

Map<String, dynamic> _$EndpointconditionsToJson(Endpointconditions instance) =>
    <String, dynamic>{
      'ready': instance.ready,
      'serving': instance.serving,
      'terminating': instance.terminating,
    };
