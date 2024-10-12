// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'queuingconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Queuingconfiguration _$QueuingconfigurationFromJson(
        Map<String, dynamic> json) =>
    Queuingconfiguration(
      handSize: (json['handSize'] as num?)?.toInt(),
      queueLengthLimit: (json['queueLengthLimit'] as num?)?.toInt(),
      queues: (json['queues'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QueuingconfigurationToJson(
        Queuingconfiguration instance) =>
    <String, dynamic>{
      'handSize': instance.handSize,
      'queueLengthLimit': instance.queueLengthLimit,
      'queues': instance.queues,
    };
