// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'selfsubjectreviewstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Selfsubjectreviewstatus _$SelfsubjectreviewstatusFromJson(
        Map<String, dynamic> json) =>
    Selfsubjectreviewstatus(
      userInfo: json['userInfo'] == null
          ? null
          : IoK8SApiAuthenticationV1UserInfo.fromJson(
              json['userInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SelfsubjectreviewstatusToJson(
        Selfsubjectreviewstatus instance) =>
    <String, dynamic>{
      'userInfo': instance.userInfo,
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
