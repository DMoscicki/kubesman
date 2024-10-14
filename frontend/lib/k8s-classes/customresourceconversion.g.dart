// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customresourceconversion.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customresourceconversion _$CustomresourceconversionFromJson(
        Map<String, dynamic> json) =>
    Customresourceconversion(
      strategy: json['strategy'] as String?,
      webhook: json['webhook'] == null
          ? null
          : IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion
              .fromJson(json['webhook'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CustomresourceconversionToJson(
        Customresourceconversion instance) =>
    <String, dynamic>{
      'strategy': instance.strategy,
      'webhook': instance.webhook,
    };

IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion
    _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion(
          clientConfig: json['clientConfig'] == null
              ? null
              : IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig
                  .fromJson(json['clientConfig'] as Map<String, dynamic>),
          conversionReviewVersions:
              (json['conversionReviewVersions'] as List<dynamic>)
                  .map((e) => e as String)
                  .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookConversionToJson(
            IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookConversion
                instance) =>
        <String, dynamic>{
          'clientConfig': instance.clientConfig,
          'conversionReviewVersions': instance.conversionReviewVersions,
        };

IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig
    _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfigFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig(
          caBundle: json['caBundle'] as String?,
          service: json['service'] == null
              ? null
              : IoK8SApiextensionsApiserverPkgApisApiextensionsV1ServiceReference
                  .fromJson(json['service'] as Map<String, dynamic>),
          url: json['url'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfigToJson(
            IoK8SApiextensionsApiserverPkgApisApiextensionsV1WebhookClientConfig
                instance) =>
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
