// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fcvolumesource _$FcvolumesourceFromJson(Map<String, dynamic> json) =>
    Fcvolumesource(
      fsType: json['fsType'] as String?,
      lun: (json['lun'] as num?)?.toInt(),
      readOnly: json['readOnly'] as bool?,
      targetWwNs: (json['targetWWNs'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      wwids:
          (json['wwids'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$FcvolumesourceToJson(Fcvolumesource instance) =>
    <String, dynamic>{
      'fsType': instance.fsType,
      'lun': instance.lun,
      'readOnly': instance.readOnly,
      'targetWWNs': instance.targetWwNs,
      'wwids': instance.wwids,
    };
