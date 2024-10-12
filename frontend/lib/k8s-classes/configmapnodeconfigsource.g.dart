// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configmapnodeconfigsource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Configmapnodeconfigsource _$ConfigmapnodeconfigsourceFromJson(
        Map<String, dynamic> json) =>
    Configmapnodeconfigsource(
      kubeletConfigKey: json['kubeletConfigKey'] as String?,
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      resourceVersion: json['resourceVersion'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$ConfigmapnodeconfigsourceToJson(
        Configmapnodeconfigsource instance) =>
    <String, dynamic>{
      'kubeletConfigKey': instance.kubeletConfigKey,
      'name': instance.name,
      'namespace': instance.namespace,
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };
