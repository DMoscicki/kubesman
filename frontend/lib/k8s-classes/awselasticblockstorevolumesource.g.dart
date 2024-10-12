// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'awselasticblockstorevolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Awselasticblockstorevolumesource _$AwselasticblockstorevolumesourceFromJson(
        Map<String, dynamic> json) =>
    Awselasticblockstorevolumesource(
      fsType: json['fsType'] as String?,
      partition: (json['partition'] as num?)?.toInt(),
      readOnly: json['readOnly'] as bool?,
      volumeId: json['volumeID'] as String?,
    );

Map<String, dynamic> _$AwselasticblockstorevolumesourceToJson(
        Awselasticblockstorevolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'partition': instance.partition,
      'readOnly': instance.readOnly,
      'volumeID': instance.volumeId,
    };
