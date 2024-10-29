// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nonresourcerule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nonresourcerule _$NonresourceruleFromJson(Map<String, dynamic> json) =>
    Nonresourcerule(
      nonResourceUrLs: (json['nonResourceURLs'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      verbs:
          (json['verbs'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$NonresourceruleToJson(Nonresourcerule instance) =>
    <String, dynamic>{
      'nonResourceURLs': instance.nonResourceUrLs,
      'verbs': instance.verbs,
    };
