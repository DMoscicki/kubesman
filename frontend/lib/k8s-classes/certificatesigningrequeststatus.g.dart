// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificatesigningrequeststatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Certificatesigningrequeststatus _$CertificatesigningrequeststatusFromJson(
        Map<String, dynamic> json) =>
    Certificatesigningrequeststatus(
      certificate: json['certificate'] as String?,
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCertificatesV1CertificateSigningRequestCondition.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CertificatesigningrequeststatusToJson(
        Certificatesigningrequeststatus instance) =>
    <String, dynamic>{
      'certificate': instance.certificate,
      'conditions': instance.conditions,
    };

IoK8SApiCertificatesV1CertificateSigningRequestCondition
    _$IoK8SApiCertificatesV1CertificateSigningRequestConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCertificatesV1CertificateSigningRequestCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          lastUpdateTime: json['lastUpdateTime'] == null
              ? null
              : DateTime.parse(json['lastUpdateTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String,
    dynamic> _$IoK8SApiCertificatesV1CertificateSigningRequestConditionToJson(
        IoK8SApiCertificatesV1CertificateSigningRequestCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
