// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclaimschedulingstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclaimschedulingstatus _$ResourceclaimschedulingstatusFromJson(
        Map<String, dynamic> json) =>
    Resourceclaimschedulingstatus(
      name: json['name'] as String?,
      unsuitableNodes: (json['unsuitableNodes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$ResourceclaimschedulingstatusToJson(
        Resourceclaimschedulingstatus instance) =>
    <String, dynamic>{
      'name': instance.name,
      'unsuitableNodes': instance.unsuitableNodes,
    };
