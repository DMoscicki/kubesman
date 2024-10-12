// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificatesigningrequestspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Certificatesigningrequestspec _$CertificatesigningrequestspecFromJson(
        Map<String, dynamic> json) =>
    Certificatesigningrequestspec(
      expirationSeconds: (json['expirationSeconds'] as num?)?.toInt(),
      extra: (json['extra'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, (e as List<dynamic>?)?.map((e) => e as String?).toList()),
      ),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      request: json['request'] as String?,
      signerName: json['signerName'] as String?,
      uid: json['uid'] as String?,
      usages:
          (json['usages'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$CertificatesigningrequestspecToJson(
        Certificatesigningrequestspec instance) =>
    <String, dynamic>{
      'expirationSeconds': instance.expirationSeconds,
      'extra': instance.extra,
      'groups': instance.groups,
      'request': instance.request,
      'signerName': instance.signerName,
      'uid': instance.uid,
      'usages': instance.usages,
      'username': instance.username,
    };
