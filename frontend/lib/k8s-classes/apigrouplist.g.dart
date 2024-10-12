// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apigrouplist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apigrouplist _$ApigrouplistFromJson(Map<String, dynamic> json) => Apigrouplist(
      apiVersion: json['apiVersion'] as String?,
      groups: (json['groups'] as List<dynamic>?)
          ?.map((e) => IoK8SApimachineryPkgApisMetaV1ApiGroup.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$ApigrouplistKindEnumMap, json['kind']),
    );

Map<String, dynamic> _$ApigrouplistToJson(Apigrouplist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'groups': instance.groups,
      'kind': _$ApigrouplistKindEnumMap[instance.kind],
    };

const _$ApigrouplistKindEnumMap = {
  ApigrouplistKind.API_GROUP_LIST: 'APIGroupList',
};

IoK8SApimachineryPkgApisMetaV1ApiGroup
    _$IoK8SApimachineryPkgApisMetaV1ApiGroupFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ApiGroup(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$GroupKindEnumMap, json['kind']),
          name: json['name'] as String,
          preferredVersion: json['preferredVersion'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery.fromJson(
                  json['preferredVersion'] as Map<String, dynamic>),
          serverAddressByClientCidRs:
              (json['serverAddressByClientCIDRs'] as List<dynamic>?)
                  ?.map((e) =>
                      IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr
                          .fromJson(e as Map<String, dynamic>))
                  .toList(),
          versions: (json['versions'] as List<dynamic>)
              .map((e) => IoK8SApimachineryPkgApisMetaV1GroupVersionForDiscovery
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ApiGroupToJson(
        IoK8SApimachineryPkgApisMetaV1ApiGroup instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$GroupKindEnumMap[instance.kind],
      'name': instance.name,
      'preferredVersion': instance.preferredVersion,
      'serverAddressByClientCIDRs': instance.serverAddressByClientCidRs,
      'versions': instance.versions,
    };

const _$GroupKindEnumMap = {
  GroupKind.API_GROUP: 'APIGroup',
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
