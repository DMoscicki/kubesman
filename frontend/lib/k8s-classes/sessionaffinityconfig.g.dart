// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sessionaffinityconfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sessionaffinityconfig _$SessionaffinityconfigFromJson(
        Map<String, dynamic> json) =>
    Sessionaffinityconfig(
      clientIp: json['clientIP'] == null
          ? null
          : IoK8SApiCoreV1ClientIpConfig.fromJson(
              json['clientIP'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SessionaffinityconfigToJson(
        Sessionaffinityconfig instance) =>
    <String, dynamic>{
      'clientIP': instance.clientIp,
    };

IoK8SApiCoreV1ClientIpConfig _$IoK8SApiCoreV1ClientIpConfigFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ClientIpConfig(
      timeoutSeconds: (json['timeoutSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ClientIpConfigToJson(
        IoK8SApiCoreV1ClientIpConfig instance) =>
    <String, dynamic>{
      'timeoutSeconds': instance.timeoutSeconds,
    };
