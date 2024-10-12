// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grpcaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Grpcaction _$GrpcactionFromJson(Map<String, dynamic> json) => Grpcaction(
      port: (json['port'] as num?)?.toInt(),
      service: json['service'] as String?,
    );

Map<String, dynamic> _$GrpcactionToJson(Grpcaction instance) =>
    <String, dynamic>{
      'port': instance.port,
      'service': instance.service,
    };
