// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'successpolicyrule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Successpolicyrule _$SuccesspolicyruleFromJson(Map<String, dynamic> json) =>
    Successpolicyrule(
      succeededCount: (json['succeededCount'] as num?)?.toInt(),
      succeededIndexes: json['succeededIndexes'] as String?,
    );

Map<String, dynamic> _$SuccesspolicyruleToJson(Successpolicyrule instance) =>
    <String, dynamic>{
      'succeededCount': instance.succeededCount,
      'succeededIndexes': instance.succeededIndexes,
    };
