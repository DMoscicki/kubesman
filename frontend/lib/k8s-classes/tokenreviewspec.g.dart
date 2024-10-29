// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenreviewspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tokenreviewspec _$TokenreviewspecFromJson(Map<String, dynamic> json) =>
    Tokenreviewspec(
      audiences: (json['audiences'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$TokenreviewspecToJson(Tokenreviewspec instance) =>
    <String, dynamic>{
      'audiences': instance.audiences,
      'token': instance.token,
    };
