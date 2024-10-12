// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjectaccessreviewspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subjectaccessreviewspec _$SubjectaccessreviewspecFromJson(
        Map<String, dynamic> json) =>
    Subjectaccessreviewspec(
      extra: (json['extra'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
            k, (e as List<dynamic>?)?.map((e) => e as String?).toList()),
      ),
      groups:
          (json['groups'] as List<dynamic>?)?.map((e) => e as String?).toList(),
      nonResourceAttributes: json['nonResourceAttributes'] == null
          ? null
          : IoK8SApiAuthorizationV1NonResourceAttributes.fromJson(
              json['nonResourceAttributes'] as Map<String, dynamic>),
      resourceAttributes: json['resourceAttributes'] == null
          ? null
          : IoK8SApiAuthorizationV1ResourceAttributes.fromJson(
              json['resourceAttributes'] as Map<String, dynamic>),
      uid: json['uid'] as String?,
      user: json['user'] as String?,
    );

Map<String, dynamic> _$SubjectaccessreviewspecToJson(
        Subjectaccessreviewspec instance) =>
    <String, dynamic>{
      'extra': instance.extra,
      'groups': instance.groups,
      'nonResourceAttributes': instance.nonResourceAttributes,
      'resourceAttributes': instance.resourceAttributes,
      'uid': instance.uid,
      'user': instance.user,
    };

IoK8SApiAuthorizationV1NonResourceAttributes
    _$IoK8SApiAuthorizationV1NonResourceAttributesFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAuthorizationV1NonResourceAttributes(
          path: json['path'] as String?,
          verb: json['verb'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAuthorizationV1NonResourceAttributesToJson(
        IoK8SApiAuthorizationV1NonResourceAttributes instance) =>
    <String, dynamic>{
      'path': instance.path,
      'verb': instance.verb,
    };

IoK8SApiAuthorizationV1ResourceAttributes
    _$IoK8SApiAuthorizationV1ResourceAttributesFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAuthorizationV1ResourceAttributes(
          group: json['group'] as String?,
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          resource: json['resource'] as String?,
          subresource: json['subresource'] as String?,
          verb: json['verb'] as String?,
          version: json['version'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAuthorizationV1ResourceAttributesToJson(
        IoK8SApiAuthorizationV1ResourceAttributes instance) =>
    <String, dynamic>{
      'group': instance.group,
      'name': instance.name,
      'namespace': instance.namespace,
      'resource': instance.resource,
      'subresource': instance.subresource,
      'verb': instance.verb,
      'version': instance.version,
    };
