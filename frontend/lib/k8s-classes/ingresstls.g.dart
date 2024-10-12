// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingresstls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingresstls _$IngresstlsFromJson(Map<String, dynamic> json) => Ingresstls(
      hosts:
          (json['hosts'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      secretName: json['secretName'] as String?,
    );

Map<String, dynamic> _$IngresstlsToJson(Ingresstls instance) =>
    <String, dynamic>{
      'hosts': instance.hosts,
      'secretName': instance.secretName,
    };
