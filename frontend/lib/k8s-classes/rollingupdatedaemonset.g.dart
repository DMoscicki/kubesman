// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rollingupdatedaemonset.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rollingupdatedaemonset _$RollingupdatedaemonsetFromJson(
        Map<String, dynamic> json) =>
    Rollingupdatedaemonset(
      maxSurge: json['maxSurge'],
      maxUnavailable: json['maxUnavailable'],
    );

Map<String, dynamic> _$RollingupdatedaemonsetToJson(
        Rollingupdatedaemonset instance) =>
    <String, dynamic>{
      'maxSurge': instance.maxSurge,
      'maxUnavailable': instance.maxUnavailable,
    };
