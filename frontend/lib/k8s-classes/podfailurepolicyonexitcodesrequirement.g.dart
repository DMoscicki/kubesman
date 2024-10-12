// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podfailurepolicyonexitcodesrequirement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podfailurepolicyonexitcodesrequirement
    _$PodfailurepolicyonexitcodesrequirementFromJson(
            Map<String, dynamic> json) =>
        Podfailurepolicyonexitcodesrequirement(
          containerName: json['containerName'] as String?,
          podfailurepolicyonexitcodesrequirementOperator:
              json['operator'] as String?,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => (e as num?)?.toInt())
              .toList(),
        );

Map<String, dynamic> _$PodfailurepolicyonexitcodesrequirementToJson(
        Podfailurepolicyonexitcodesrequirement instance) =>
    <String, dynamic>{
      'containerName': instance.containerName,
      'operator': instance.podfailurepolicyonexitcodesrequirementOperator,
      'values': instance.values,
    };
