// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podschedulingcontextspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podschedulingcontextspec _$PodschedulingcontextspecFromJson(
        Map<String, dynamic> json) =>
    Podschedulingcontextspec(
      potentialNodes: (json['potentialNodes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      selectedNode: json['selectedNode'] as String?,
    );

Map<String, dynamic> _$PodschedulingcontextspecToJson(
        Podschedulingcontextspec instance) =>
    <String, dynamic>{
      'potentialNodes': instance.potentialNodes,
      'selectedNode': instance.selectedNode,
    };
