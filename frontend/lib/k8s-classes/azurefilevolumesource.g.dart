// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azurefilevolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Azurefilevolumesource _$AzurefilevolumesourceFromJson(
        Map<String, dynamic> json) =>
    Azurefilevolumesource(
      readOnly: json['readOnly'] as bool?,
      secretName: json['secretName'] as String?,
      shareName: json['shareName'] as String?,
    );

Map<String, dynamic> _$AzurefilevolumesourceToJson(
        Azurefilevolumesource instance) =>
    <String, dynamic>{
      'readOnly': instance.readOnly,
      'secretName': instance.secretName,
      'shareName': instance.shareName,
    };
