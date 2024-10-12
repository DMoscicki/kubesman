// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storageversionstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Storageversionstatus _$StorageversionstatusFromJson(
        Map<String, dynamic> json) =>
    Storageversionstatus(
      commonEncodingVersion: json['commonEncodingVersion'] as String?,
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      storageVersions: (json['storageVersions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$StorageversionstatusToJson(
        Storageversionstatus instance) =>
    <String, dynamic>{
      'commonEncodingVersion': instance.commonEncodingVersion,
      'conditions': instance.conditions,
      'storageVersions': instance.storageVersions,
    };

IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition
    _$IoK8SApiApiserverinternalV1Alpha1StorageVersionConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String,
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
          reason: json['reason'] as String,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String,
    dynamic> _$IoK8SApiApiserverinternalV1Alpha1StorageVersionConditionToJson(
        IoK8SApiApiserverinternalV1Alpha1StorageVersionCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion
    _$IoK8SApiApiserverinternalV1Alpha1ServerStorageVersionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion(
          apiServerId: json['apiServerID'] as String?,
          decodableVersions: (json['decodableVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          encodingVersion: json['encodingVersion'] as String?,
          servedVersions: (json['servedVersions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiApiserverinternalV1Alpha1ServerStorageVersionToJson(
            IoK8SApiApiserverinternalV1Alpha1ServerStorageVersion instance) =>
        <String, dynamic>{
          'apiServerID': instance.apiServerId,
          'decodableVersions': instance.decodableVersions,
          'encodingVersion': instance.encodingVersion,
          'servedVersions': instance.servedVersions,
        };
