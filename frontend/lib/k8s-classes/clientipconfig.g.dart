// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clientipconfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clientipconfig _$ClientipconfigFromJson(Map<String, dynamic> json) =>
    Clientipconfig(
      timeoutSeconds: (json['timeoutSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClientipconfigToJson(Clientipconfig instance) =>
    <String, dynamic>{
      'timeoutSeconds': instance.timeoutSeconds,
    };
