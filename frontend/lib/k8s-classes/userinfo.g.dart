// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userinfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Userinfo _$UserinfoFromJson(Map<String, dynamic> json) => Userinfo(
      extra: (json['extra'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, (e as List<dynamic>?)?.map((e) => e as String?).toList()),
      ),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      uid: json['uid'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$UserinfoToJson(Userinfo instance) => <String, dynamic>{
      'extra': instance.extra,
      'groups': instance.groups,
      'uid': instance.uid,
      'username': instance.username,
    };
