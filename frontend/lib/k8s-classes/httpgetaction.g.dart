// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'httpgetaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Httpgetaction _$HttpgetactionFromJson(Map<String, dynamic> json) =>
    Httpgetaction(
      host: json['host'] as String?,
      httpHeaders: (json['httpHeaders'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1HttpHeader.fromJson(e as Map<String, dynamic>))
          .toList(),
      path: json['path'] as String?,
      port: json['port'],
      scheme: json['scheme'] as String?,
    );

Map<String, dynamic> _$HttpgetactionToJson(Httpgetaction instance) =>
    <String, dynamic>{
      'host': instance.host,
      'httpHeaders': instance.httpHeaders,
      'path': instance.path,
      'port': instance.port,
      'scheme': instance.scheme,
    };

IoK8SApiCoreV1HttpHeader _$IoK8SApiCoreV1HttpHeaderFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1HttpHeader(
      name: json['name'] as String,
      value: json['value'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1HttpHeaderToJson(
        IoK8SApiCoreV1HttpHeader instance) =>
    <String, dynamic>{
      'name': instance.name,
      'value': instance.value,
    };
