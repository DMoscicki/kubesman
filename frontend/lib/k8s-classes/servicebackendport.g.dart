// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'servicebackendport.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Servicebackendport _$ServicebackendportFromJson(Map<String, dynamic> json) =>
    Servicebackendport(
      name: json['name'] as String?,
      number: (json['number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ServicebackendportToJson(Servicebackendport instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
    };
