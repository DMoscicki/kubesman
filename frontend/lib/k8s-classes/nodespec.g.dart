// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodespec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nodespec _$NodespecFromJson(Map<String, dynamic> json) => Nodespec(
      configSource: json['configSource'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigSource.fromJson(
              json['configSource'] as Map<String, dynamic>),
      externalId: json['externalID'] as String?,
      podCidr: json['podCIDR'] as String?,
      podCidRs: (json['podCIDRs'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      providerId: json['providerID'] as String?,
      taints: (json['taints'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1Taint.fromJson(e as Map<String, dynamic>))
          .toList(),
      unschedulable: json['unschedulable'] as bool?,
    );

Map<String, dynamic> _$NodespecToJson(Nodespec instance) => <String, dynamic>{
      'configSource': instance.configSource,
      'externalID': instance.externalId,
      'podCIDR': instance.podCidr,
      'podCIDRs': instance.podCidRs,
      'providerID': instance.providerId,
      'taints': instance.taints,
      'unschedulable': instance.unschedulable,
    };

IoK8SApiCoreV1NodeConfigSource _$IoK8SApiCoreV1NodeConfigSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeConfigSource(
      configMap: json['configMap'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapNodeConfigSource.fromJson(
              json['configMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeConfigSourceToJson(
        IoK8SApiCoreV1NodeConfigSource instance) =>
    <String, dynamic>{
      'configMap': instance.configMap,
    };

IoK8SApiCoreV1ConfigMapNodeConfigSource
    _$IoK8SApiCoreV1ConfigMapNodeConfigSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ConfigMapNodeConfigSource(
          kubeletConfigKey: json['kubeletConfigKey'] as String,
          name: json['name'] as String,
          namespace: json['namespace'] as String,
          resourceVersion: json['resourceVersion'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapNodeConfigSourceToJson(
        IoK8SApiCoreV1ConfigMapNodeConfigSource instance) =>
    <String, dynamic>{
      'kubeletConfigKey': instance.kubeletConfigKey,
      'name': instance.name,
      'namespace': instance.namespace,
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };

IoK8SApiCoreV1Taint _$IoK8SApiCoreV1TaintFromJson(Map<String, dynamic> json) =>
    IoK8SApiCoreV1Taint(
      effect: json['effect'] as String,
      key: json['key'] as String,
      timeAdded: json['timeAdded'] == null
          ? null
          : DateTime.parse(json['timeAdded'] as String),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1TaintToJson(
        IoK8SApiCoreV1Taint instance) =>
    <String, dynamic>{
      'effect': instance.effect,
      'key': instance.key,
      'timeAdded': instance.timeAdded?.toIso8601String(),
      'value': instance.value,
    };
