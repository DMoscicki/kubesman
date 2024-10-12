// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rollingupdatestatefulsetstrategy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Rollingupdatestatefulsetstrategy _$RollingupdatestatefulsetstrategyFromJson(
        Map<String, dynamic> json) =>
    Rollingupdatestatefulsetstrategy(
      maxUnavailable: json['maxUnavailable'],
      partition: (json['partition'] as num?)?.toInt(),
    );

Map<String, dynamic> _$RollingupdatestatefulsetstrategyToJson(
        Rollingupdatestatefulsetstrategy instance) =>
    <String, dynamic>{
      'maxUnavailable': instance.maxUnavailable,
      'partition': instance.partition,
    };
