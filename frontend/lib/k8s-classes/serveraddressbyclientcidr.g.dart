// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'serveraddressbyclientcidr.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Serveraddressbyclientcidr _$ServeraddressbyclientcidrFromJson(
        Map<String, dynamic> json) =>
    Serveraddressbyclientcidr(
      clientCidr: json['clientCIDR'] as String?,
      serverAddress: json['serverAddress'] as String?,
    );

Map<String, dynamic> _$ServeraddressbyclientcidrToJson(
        Serveraddressbyclientcidr instance) =>
    <String, dynamic>{
      'clientCIDR': instance.clientCidr,
      'serverAddress': instance.serverAddress,
    };
