// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenrequeststatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tokenrequeststatus _$TokenrequeststatusFromJson(Map<String, dynamic> json) =>
    Tokenrequeststatus(
      expirationTimestamp:
          DateTime.parse(json['expirationTimestamp'] as String),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$TokenrequeststatusToJson(Tokenrequeststatus instance) =>
    <String, dynamic>{
      'expirationTimestamp': instance.expirationTimestamp.toIso8601String(),
      'token': instance.token,
    };
