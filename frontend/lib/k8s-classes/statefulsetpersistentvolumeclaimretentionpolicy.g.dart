// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'statefulsetpersistentvolumeclaimretentionpolicy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Statefulsetpersistentvolumeclaimretentionpolicy
    _$StatefulsetpersistentvolumeclaimretentionpolicyFromJson(
            Map<String, dynamic> json) =>
        Statefulsetpersistentvolumeclaimretentionpolicy(
          whenDeleted: json['whenDeleted'] as String?,
          whenScaled: json['whenScaled'] as String?,
        );

Map<String, dynamic> _$StatefulsetpersistentvolumeclaimretentionpolicyToJson(
        Statefulsetpersistentvolumeclaimretentionpolicy instance) =>
    <String, dynamic>{
      'whenDeleted': instance.whenDeleted,
      'whenScaled': instance.whenScaled,
    };
