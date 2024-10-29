// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csidriverspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Csidriverspec _$CsidriverspecFromJson(Map<String, dynamic> json) =>
    Csidriverspec(
      attachRequired: json['attachRequired'] as bool?,
      fsGroupPolicy: json['fsGroupPolicy'] as String?,
      podInfoOnMount: json['podInfoOnMount'] as bool?,
      requiresRepublish: json['requiresRepublish'] as bool?,
      seLinuxMount: json['seLinuxMount'] as bool?,
      storageCapacity: json['storageCapacity'] as bool?,
      tokenRequests: (json['tokenRequests'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiStorageV1TokenRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      volumeLifecycleModes: (json['volumeLifecycleModes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$CsidriverspecToJson(Csidriverspec instance) =>
    <String, dynamic>{
      'attachRequired': instance.attachRequired,
      'fsGroupPolicy': instance.fsGroupPolicy,
      'podInfoOnMount': instance.podInfoOnMount,
      'requiresRepublish': instance.requiresRepublish,
      'seLinuxMount': instance.seLinuxMount,
      'storageCapacity': instance.storageCapacity,
      'tokenRequests': instance.tokenRequests,
      'volumeLifecycleModes': instance.volumeLifecycleModes,
    };

IoK8SApiStorageV1TokenRequest _$IoK8SApiStorageV1TokenRequestFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiStorageV1TokenRequest(
      audience: json['audience'] as String,
      expirationSeconds: (json['expirationSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IoK8SApiStorageV1TokenRequestToJson(
        IoK8SApiStorageV1TokenRequest instance) =>
    <String, dynamic>{
      'audience': instance.audience,
      'expirationSeconds': instance.expirationSeconds,
    };
