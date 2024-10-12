// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'containerstateterminated.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Containerstateterminated _$ContainerstateterminatedFromJson(
        Map<String, dynamic> json) =>
    Containerstateterminated(
      containerId: json['containerID'] as String?,
      exitCode: (json['exitCode'] as num?)?.toInt(),
      finishedAt: json['finishedAt'] == null
          ? null
          : DateTime.parse(json['finishedAt'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      signal: (json['signal'] as num?)?.toInt(),
      startedAt: json['startedAt'] == null
          ? null
          : DateTime.parse(json['startedAt'] as String),
    );

Map<String, dynamic> _$ContainerstateterminatedToJson(
        Containerstateterminated instance) =>
    <String, dynamic>{
      'containerID': instance.containerId,
      'exitCode': instance.exitCode,
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'signal': instance.signal,
      'startedAt': instance.startedAt?.toIso8601String(),
    };
