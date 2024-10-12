// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostalias.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hostalias _$HostaliasFromJson(Map<String, dynamic> json) => Hostalias(
      hostnames: (json['hostnames'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      ip: json['ip'] as String?,
    );

Map<String, dynamic> _$HostaliasToJson(Hostalias instance) => <String, dynamic>{
      'hostnames': instance.hostnames,
      'ip': instance.ip,
    };
