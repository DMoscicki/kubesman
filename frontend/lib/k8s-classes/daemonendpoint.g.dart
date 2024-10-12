// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daemonendpoint.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Daemonendpoint _$DaemonendpointFromJson(Map<String, dynamic> json) =>
    Daemonendpoint(
      port: (json['Port'] as num?)?.toInt(),
    );

Map<String, dynamic> _$DaemonendpointToJson(Daemonendpoint instance) =>
    <String, dynamic>{
      'Port': instance.port,
    };
