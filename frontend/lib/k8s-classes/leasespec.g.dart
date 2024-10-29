// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leasespec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Leasespec _$LeasespecFromJson(Map<String, dynamic> json) => Leasespec(
      acquireTime: json['acquireTime'] == null
          ? null
          : DateTime.parse(json['acquireTime'] as String),
      holderIdentity: json['holderIdentity'] as String?,
      leaseDurationSeconds: (json['leaseDurationSeconds'] as num?)?.toInt(),
      leaseTransitions: (json['leaseTransitions'] as num?)?.toInt(),
      renewTime: json['renewTime'] == null
          ? null
          : DateTime.parse(json['renewTime'] as String),
    );

Map<String, dynamic> _$LeasespecToJson(Leasespec instance) => <String, dynamic>{
      'acquireTime': instance.acquireTime?.toIso8601String(),
      'holderIdentity': instance.holderIdentity,
      'leaseDurationSeconds': instance.leaseDurationSeconds,
      'leaseTransitions': instance.leaseTransitions,
      'renewTime': instance.renewTime?.toIso8601String(),
    };
