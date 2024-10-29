// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azurefilepersistentvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Azurefilepersistentvolumesource _$AzurefilepersistentvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Azurefilepersistentvolumesource(
      readOnly: json['readOnly'] as bool?,
      secretName: json['secretName'] as String?,
      secretNamespace: json['secretNamespace'] as String?,
      shareName: json['shareName'] as String?,
    );

Map<String, dynamic> _$AzurefilepersistentvolumesourceToJson(
        Azurefilepersistentvolumesource instance) =>
    <String, dynamic>{
      'readOnly': instance.readOnly,
      'secretName': instance.secretName,
      'secretNamespace': instance.secretNamespace,
      'shareName': instance.shareName,
    };
