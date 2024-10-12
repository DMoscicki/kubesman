// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifyvolumestatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Modifyvolumestatus _$ModifyvolumestatusFromJson(Map<String, dynamic> json) =>
    Modifyvolumestatus(
      status: json['status'] as String?,
      targetVolumeAttributesClassName:
          json['targetVolumeAttributesClassName'] as String?,
    );

Map<String, dynamic> _$ModifyvolumestatusToJson(Modifyvolumestatus instance) =>
    <String, dynamic>{
      'status': instance.status,
      'targetVolumeAttributesClassName':
          instance.targetVolumeAttributesClassName,
    };
