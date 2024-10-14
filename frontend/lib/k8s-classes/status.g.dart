// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Status _$StatusFromJson(Map<String, dynamic> json) => Status(
      apiVersion: json['apiVersion'] as String?,
      code: (json['code'] as num?)?.toInt(),
      details: json['details'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1StatusDetails.fromJson(
              json['details'] as Map<String, dynamic>),
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      message: json['message'] as String?,
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ListMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      reason: json['reason'] as String?,
      status: json['status'] as String?,
    );

Map<String, dynamic> _$StatusToJson(Status instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'code': instance.code,
      'details': instance.details,
      'kind': _$KindEnumMap[instance.kind],
      'message': instance.message,
      'metadata': instance.metadata,
      'reason': instance.reason,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.STATUS: 'Status',
};

IoK8SApimachineryPkgApisMetaV1StatusDetails
    _$IoK8SApimachineryPkgApisMetaV1StatusDetailsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1StatusDetails(
          causes: (json['causes'] as List<dynamic>?)
              ?.map((e) => IoK8SApimachineryPkgApisMetaV1StatusCause.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          group: json['group'] as String?,
          kind: json['kind'] as String?,
          name: json['name'] as String?,
          retryAfterSeconds: (json['retryAfterSeconds'] as num?)?.toInt(),
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1StatusDetailsToJson(
        IoK8SApimachineryPkgApisMetaV1StatusDetails instance) =>
    <String, dynamic>{
      'causes': instance.causes,
      'group': instance.group,
      'kind': instance.kind,
      'name': instance.name,
      'retryAfterSeconds': instance.retryAfterSeconds,
      'uid': instance.uid,
    };

IoK8SApimachineryPkgApisMetaV1StatusCause
    _$IoK8SApimachineryPkgApisMetaV1StatusCauseFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1StatusCause(
          field: json['field'] as String?,
          message: json['message'] as String?,
          reason: json['reason'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1StatusCauseToJson(
        IoK8SApimachineryPkgApisMetaV1StatusCause instance) =>
    <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
      'reason': instance.reason,
    };

IoK8SApimachineryPkgApisMetaV1ListMeta
    _$IoK8SApimachineryPkgApisMetaV1ListMetaFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ListMeta(
          ioK8SApimachineryPkgApisMetaV1ListMetaContinue:
              json['continue'] as String?,
          remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
          resourceVersion: json['resourceVersion'] as String?,
          selfLink: json['selfLink'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ListMetaToJson(
        IoK8SApimachineryPkgApisMetaV1ListMeta instance) =>
    <String, dynamic>{
      'continue': instance.ioK8SApimachineryPkgApisMetaV1ListMetaContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
