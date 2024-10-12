// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tokenreviewstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tokenreviewstatus _$TokenreviewstatusFromJson(Map<String, dynamic> json) =>
    Tokenreviewstatus(
      audiences: (json['audiences'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      authenticated: json['authenticated'] as bool?,
      error: json['error'] as String?,
      user: json['user'] == null
          ? null
          : IoK8SApiAuthenticationV1UserInfo.fromJson(
              json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TokenreviewstatusToJson(Tokenreviewstatus instance) =>
    <String, dynamic>{
      'audiences': instance.audiences,
      'authenticated': instance.authenticated,
      'error': instance.error,
      'user': instance.user,
    };

IoK8SApiAuthenticationV1UserInfo _$IoK8SApiAuthenticationV1UserInfoFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAuthenticationV1UserInfo(
      extra: (json['extra'] as Map<String, dynamic>?)?.map(
        (k, e) =>
            MapEntry(k, (e as List<dynamic>).map((e) => e as String).toList()),
      ),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as String).toList(),
      uid: json['uid'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$IoK8SApiAuthenticationV1UserInfoToJson(
        IoK8SApiAuthenticationV1UserInfo instance) =>
    <String, dynamic>{
      'extra': instance.extra,
      'groups': instance.groups,
      'uid': instance.uid,
      'username': instance.username,
    };
