// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selinuxoptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Selinuxoptions _$SelinuxoptionsFromJson(Map<String, dynamic> json) =>
    Selinuxoptions(
      level: json['level'] as String?,
      role: json['role'] as String?,
      type: json['type'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$SelinuxoptionsToJson(Selinuxoptions instance) =>
    <String, dynamic>{
      'level': instance.level,
      'role': instance.role,
      'type': instance.type,
      'user': instance.user,
    };
