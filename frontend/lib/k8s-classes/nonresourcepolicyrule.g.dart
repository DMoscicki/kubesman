// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nonresourcepolicyrule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nonresourcepolicyrule _$NonresourcepolicyruleFromJson(
        Map<String, dynamic> json) =>
    Nonresourcepolicyrule(
      nonResourceUrLs: (json['nonResourceURLs'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      verbs:
          (json['verbs'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$NonresourcepolicyruleToJson(
        Nonresourcepolicyrule instance) =>
    <String, dynamic>{
      'nonResourceURLs': instance.nonResourceUrLs,
      'verbs': instance.verbs,
    };
