// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipaddressspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ipaddressspec _$IpaddressspecFromJson(Map<String, dynamic> json) =>
    Ipaddressspec(
      parentRef: IoK8SApiNetworkingV1Alpha1ParentReference.fromJson(
          json['parentRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IpaddressspecToJson(Ipaddressspec instance) =>
    <String, dynamic>{
      'parentRef': instance.parentRef,
    };

IoK8SApiNetworkingV1Alpha1ParentReference
    _$IoK8SApiNetworkingV1Alpha1ParentReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1Alpha1ParentReference(
          group: json['group'] as String?,
          name: json['name'] as String,
          namespace: json['namespace'] as String?,
          resource: json['resource'] as String,
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1Alpha1ParentReferenceToJson(
        IoK8SApiNetworkingV1Alpha1ParentReference instance) =>
    <String, dynamic>{
      'group': instance.group,
      'name': instance.name,
      'namespace': instance.namespace,
      'resource': instance.resource,
    };
