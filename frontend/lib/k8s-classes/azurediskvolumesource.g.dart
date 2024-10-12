// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azurediskvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Azurediskvolumesource _$AzurediskvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Azurediskvolumesource(
      cachingMode: json['cachingMode'] as String?,
      diskName: json['diskName'] as String?,
      diskUri: json['diskURI'] as String?,
      fsType: json['fsType'] as String?,
      kind: json['kind'] as String?,
      readOnly: json['readOnly'] as bool?,
    );

Map<String, dynamic> _$AzurediskvolumesourceToJson(
        Azurediskvolumesource instance) =>
    <String, dynamic>{
      'cachingMode': instance.cachingMode,
      'diskName': instance.diskName,
      'diskURI': instance.diskUri,
      'fsType': instance.fsType,
      'kind': instance.kind,
      'readOnly': instance.readOnly,
    };
