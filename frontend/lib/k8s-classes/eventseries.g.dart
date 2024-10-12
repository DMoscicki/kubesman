// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eventseries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Eventseries _$EventseriesFromJson(Map<String, dynamic> json) => Eventseries(
      count: (json['count'] as num?)?.toInt(),
      lastObservedTime: DateTime.parse(json['lastObservedTime'] as String),
    );

Map<String, dynamic> _$EventseriesToJson(Eventseries instance) =>
    <String, dynamic>{
      'count': instance.count,
      'lastObservedTime': instance.lastObservedTime.toIso8601String(),
    };
