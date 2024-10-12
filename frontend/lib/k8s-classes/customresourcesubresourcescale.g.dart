// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customresourcesubresourcescale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customresourcesubresourcescale _$CustomresourcesubresourcescaleFromJson(
        Map<String, dynamic> json) =>
    Customresourcesubresourcescale(
      labelSelectorPath: json['labelSelectorPath'] as String?,
      specReplicasPath: json['specReplicasPath'] as String?,
      statusReplicasPath: json['statusReplicasPath'] as String?,
    );

Map<String, dynamic> _$CustomresourcesubresourcescaleToJson(
        Customresourcesubresourcescale instance) =>
    <String, dynamic>{
      'labelSelectorPath': instance.labelSelectorPath,
      'specReplicasPath': instance.specReplicasPath,
      'statusReplicasPath': instance.statusReplicasPath,
    };
