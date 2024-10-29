// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volumeattachmentstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Volumeattachmentstatus _$VolumeattachmentstatusFromJson(
        Map<String, dynamic> json) =>
    Volumeattachmentstatus(
      attached: json['attached'] as bool?,
      attachError: json['attachError'] == null
          ? null
          : IoK8SApiStorageV1VolumeError.fromJson(
              json['attachError'] as Map<String, dynamic>),
      attachmentMetadata:
          (json['attachmentMetadata'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      detachError: json['detachError'] == null
          ? null
          : IoK8SApiStorageV1VolumeError.fromJson(
              json['detachError'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VolumeattachmentstatusToJson(
        Volumeattachmentstatus instance) =>
    <String, dynamic>{
      'attached': instance.attached,
      'attachError': instance.attachError,
      'attachmentMetadata': instance.attachmentMetadata,
      'detachError': instance.detachError,
    };

IoK8SApiStorageV1VolumeError _$IoK8SApiStorageV1VolumeErrorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiStorageV1VolumeError(
      message: json['message'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$IoK8SApiStorageV1VolumeErrorToJson(
        IoK8SApiStorageV1VolumeError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'time': instance.time?.toIso8601String(),
    };
