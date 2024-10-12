// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containerimage.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containerimage _$ContainerimageFromJson(Map<String, dynamic> json) =>
    Containerimage(
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      sizeBytes: (json['sizeBytes'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ContainerimageToJson(Containerimage instance) =>
    <String, dynamic>{
      'names': instance.names,
      'sizeBytes': instance.sizeBytes,
    };
