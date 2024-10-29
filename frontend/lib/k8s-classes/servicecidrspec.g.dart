// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicecidrspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Servicecidrspec _$ServicecidrspecFromJson(Map<String, dynamic> json) =>
    Servicecidrspec(
      cidrs:
          (json['cidrs'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$ServicecidrspecToJson(Servicecidrspec instance) =>
    <String, dynamic>{
      'cidrs': instance.cidrs,
    };
