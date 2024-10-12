// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namedresourcesintslice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Namedresourcesintslice _$NamedresourcesintsliceFromJson(
        Map<String, dynamic> json) =>
    Namedresourcesintslice(
      ints: (json['ints'] as List<dynamic>?)
          ?.map((e) => (e as num?)?.toInt())
          .toList(),
    );

Map<String, dynamic> _$NamedresourcesintsliceToJson(
        Namedresourcesintslice instance) =>
    <String, dynamic>{
      'ints': instance.ints,
    };
