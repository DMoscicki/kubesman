// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodedaemonendpoints.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nodedaemonendpoints _$NodedaemonendpointsFromJson(Map<String, dynamic> json) =>
    Nodedaemonendpoints(
      kubeletEndpoint: json['kubeletEndpoint'] == null
          ? null
          : IoK8SApiCoreV1DaemonEndpoint.fromJson(
              json['kubeletEndpoint'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodedaemonendpointsToJson(
        Nodedaemonendpoints instance) =>
    <String, dynamic>{
      'kubeletEndpoint': instance.kubeletEndpoint,
    };

IoK8SApiCoreV1DaemonEndpoint _$IoK8SApiCoreV1DaemonEndpointFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1DaemonEndpoint(
      port: (json['Port'] as num).toInt(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1DaemonEndpointToJson(
        IoK8SApiCoreV1DaemonEndpoint instance) =>
    <String, dynamic>{
      'Port': instance.port,
    };
