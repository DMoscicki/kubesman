// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apigroup.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apigroup _$ApigroupFromJson(Map<String, dynamic> json) => Apigroup(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      name: json['name'] as String?,
      preferredVersion: json['preferredVersion'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery.fromJson(
              json['preferredVersion'] as Map<String, dynamic>),
      serverAddressByClientCidRs: (json['serverAddressByClientCIDRs']
              as List<dynamic>?)
          ?.map((e) =>
              IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      versions: (json['versions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApigroupToJson(Apigroup instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'name': instance.name,
      'preferredVersion': instance.preferredVersion,
      'serverAddressByClientCIDRs': instance.serverAddressByClientCidRs,
      'versions': instance.versions,
    };

const _$KindEnumMap = {
  Kind.API_GROUP: 'APIGroup',
};

IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery
    _$IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscoveryFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery(
          groupVersion: json['groupVersion'] as String,
          version: json['version'] as String,
        );

Map<String, dynamic>
    _$IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscoveryToJson(
            IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery instance) =>
        <String, dynamic>{
          'groupVersion': instance.groupVersion,
          'version': instance.version,
        };

IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr
    _$IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidrFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr(
          clientCidr: json['clientCIDR'] as String,
          serverAddress: json['serverAddress'] as String,
        );

Map<String, dynamic>
    _$IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidrToJson(
            IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr instance) =>
        <String, dynamic>{
          'clientCIDR': instance.clientCidr,
          'serverAddress': instance.serverAddress,
        };
