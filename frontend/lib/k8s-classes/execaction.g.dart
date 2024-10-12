// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'execaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Execaction _$ExecactionFromJson(Map<String, dynamic> json) => Execaction(
      command: (json['command'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$ExecactionToJson(Execaction instance) =>
    <String, dynamic>{
      'command': instance.command,
    };
