// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listmeta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Listmeta _$ListmetaFromJson(Map<String, dynamic> json) => Listmeta(
      listmetaContinue: json['continue'] as String?,
      remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
    );

Map<String, dynamic> _$ListmetaToJson(Listmeta instance) => <String, dynamic>{
      'continue': instance.listmetaContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
