// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteoptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Deleteoptions _$DeleteoptionsFromJson(Map<String, dynamic> json) =>
    Deleteoptions(
      apiVersion: json['apiVersion'] as String?,
      dryRun:
          (json['dryRun'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      gracePeriodSeconds: (json['gracePeriodSeconds'] as num?)?.toInt(),
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      orphanDependents: json['orphanDependents'] as bool?,
      preconditions: json['preconditions'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1Preconditions.fromJson(
              json['preconditions'] as Map<String, dynamic>),
      propagationPolicy: json['propagationPolicy'] as String?,
    );

Map<String, dynamic> _$DeleteoptionsToJson(Deleteoptions instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'dryRun': instance.dryRun,
      'gracePeriodSeconds': instance.gracePeriodSeconds,
      'kind': _$KindEnumMap[instance.kind],
      'orphanDependents': instance.orphanDependents,
      'preconditions': instance.preconditions,
      'propagationPolicy': instance.propagationPolicy,
    };

const _$KindEnumMap = {
  Kind.DELETE_OPTIONS: 'DeleteOptions',
};

IoK8SApimachineryPkgApisMetaV1Preconditions
    _$IoK8SApimachineryPkgApisMetaV1PreconditionsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1Preconditions(
          resourceVersion: json['resourceVersion'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1PreconditionsToJson(
        IoK8SApimachineryPkgApisMetaV1Preconditions instance) =>
    <String, dynamic>{
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };
