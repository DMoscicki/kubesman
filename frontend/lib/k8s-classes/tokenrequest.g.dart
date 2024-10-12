// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tokenrequest _$TokenrequestFromJson(Map<String, dynamic> json) => Tokenrequest(
      audience: json['audience'] as String?,
      expirationSeconds: (json['expirationSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TokenrequestToJson(Tokenrequest instance) =>
    <String, dynamic>{
      'audience': instance.audience,
      'expirationSeconds': instance.expirationSeconds,
    };
