// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serviceaccounttokenprojection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Serviceaccounttokenprojection _$ServiceaccounttokenprojectionFromJson(
        Map<String, dynamic> json) =>
    Serviceaccounttokenprojection(
      audience: json['audience'] as String?,
      expirationSeconds: (json['expirationSeconds'] as num?)?.toInt(),
      path: json['path'] as String?,
    );

Map<String, dynamic> _$ServiceaccounttokenprojectionToJson(
        Serviceaccounttokenprojection instance) =>
    <String, dynamic>{
      'audience': instance.audience,
      'expirationSeconds': instance.expirationSeconds,
      'path': instance.path,
    };
