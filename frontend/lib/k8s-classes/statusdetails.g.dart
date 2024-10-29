// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statusdetails.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statusdetails _$StatusdetailsFromJson(Map<String, dynamic> json) =>
    Statusdetails(
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

Map<String, dynamic> _$StatusdetailsToJson(Statusdetails instance) =>
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
