// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ipblock.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ipblock _$IpblockFromJson(Map<String, dynamic> json) => Ipblock(
      cidr: json['cidr'] as String?,
      except:
          (json['except'] as List<dynamic>?)?.map((e) => e as String?).toList(),
    );

Map<String, dynamic> _$IpblockToJson(Ipblock instance) => <String, dynamic>{
      'cidr': instance.cidr,
      'except': instance.except,
    };
