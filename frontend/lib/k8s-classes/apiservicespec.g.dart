// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiservicespec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apiservicespec _$ApiservicespecFromJson(Map<String, dynamic> json) =>
    Apiservicespec(
      caBundle: json['caBundle'] as String?,
      group: json['group'] as String?,
      groupPriorityMinimum: (json['groupPriorityMinimum'] as num?)?.toInt(),
      insecureSkipTlsVerify: json['insecureSkipTLSVerify'] as bool?,
      service: json['service'] == null
          ? null
          : IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference
              .fromJson(json['service'] as Map<String, dynamic>),
      version: json['version'] as String?,
      versionPriority: (json['versionPriority'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ApiservicespecToJson(Apiservicespec instance) =>
    <String, dynamic>{
      'caBundle': instance.caBundle,
      'group': instance.group,
      'groupPriorityMinimum': instance.groupPriorityMinimum,
      'insecureSkipTLSVerify': instance.insecureSkipTlsVerify,
      'service': instance.service,
      'version': instance.version,
      'versionPriority': instance.versionPriority,
    };

IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference(
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          port: (json['port'] as num?)?.toInt(),
        );

Map<String, dynamic>
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReferenceToJson(
            IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'namespace': instance.namespace,
          'port': instance.port,
        };
