// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'webhookclientconfig.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Webhookclientconfig _$WebhookclientconfigFromJson(Map<String, dynamic> json) =>
    Webhookclientconfig(
      caBundle: json['caBundle'] as String?,
      service: json['service'] == null
          ? null
          : IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference
              .fromJson(json['service'] as Map<String, dynamic>),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$WebhookclientconfigToJson(
        Webhookclientconfig instance) =>
    <String, dynamic>{
      'caBundle': instance.caBundle,
      'service': instance.service,
      'url': instance.url,
    };

IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference
    _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference(
          name: json['name'] as String,
          namespace: json['namespace'] as String,
          path: json['path'] as String?,
          port: (json['port'] as num?)?.toInt(),
        );

Map<String, dynamic>
    _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReferenceToJson(
            IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'namespace': instance.namespace,
          'path': instance.path,
          'port': instance.port,
        };
