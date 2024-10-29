// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificatesigningrequestcondition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Certificatesigningrequestcondition _$CertificatesigningrequestconditionFromJson(
        Map<String, dynamic> json) =>
    Certificatesigningrequestcondition(
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      lastUpdateTime: json['lastUpdateTime'] == null
          ? null
          : DateTime.parse(json['lastUpdateTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$CertificatesigningrequestconditionToJson(
        Certificatesigningrequestcondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
