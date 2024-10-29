// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'namedresourcesstringslice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Namedresourcesstringslice _$NamedresourcesstringsliceFromJson(
        Map<String, dynamic> json) =>
    Namedresourcesstringslice(
      strings: (json['strings'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$NamedresourcesstringsliceToJson(
        Namedresourcesstringslice instance) =>
    <String, dynamic>{
      'strings': instance.strings,
    };
