// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serverstorageversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Serverstorageversion _$ServerstorageversionFromJson(
        Map<String, dynamic> json) =>
    Serverstorageversion(
      apiServerId: json['apiServerID'] as String?,
      decodableVersions: (json['decodableVersions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      encodingVersion: json['encodingVersion'] as String?,
      servedVersions: (json['servedVersions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$ServerstorageversionToJson(
        Serverstorageversion instance) =>
    <String, dynamic>{
      'apiServerID': instance.apiServerId,
      'decodableVersions': instance.decodableVersions,
      'encodingVersion': instance.encodingVersion,
      'servedVersions': instance.servedVersions,
    };
