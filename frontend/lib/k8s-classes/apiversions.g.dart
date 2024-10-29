// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiversions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apiversions _$ApiversionsFromJson(Map<String, dynamic> json) => Apiversions(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      serverAddressByClientCidRs: (json['serverAddressByClientCIDRs']
              as List<dynamic>?)
          ?.map((e) =>
              IoK8SApimachineryPkgApisMetaV1ServerAddressByClientCidr.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      versions: (json['versions'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$ApiversionsToJson(Apiversions instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'serverAddressByClientCIDRs': instance.serverAddressByClientCidRs,
      'versions': instance.versions,
    };

const _$KindEnumMap = {
  Kind.API_VERSIONS: 'APIVersions',
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
