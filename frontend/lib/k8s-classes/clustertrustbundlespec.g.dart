// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clustertrustbundlespec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Clustertrustbundlespec _$ClustertrustbundlespecFromJson(
        Map<String, dynamic> json) =>
    Clustertrustbundlespec(
      signerName: json['signerName'] as String?,
      trustBundle: json['trustBundle'] as String?,
    );

Map<String, dynamic> _$ClustertrustbundlespecToJson(
        Clustertrustbundlespec instance) =>
    <String, dynamic>{
      'signerName': instance.signerName,
      'trustBundle': instance.trustBundle,
    };
