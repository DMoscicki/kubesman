// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localsubjectaccessreview.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Localsubjectaccessreview _$LocalsubjectaccessreviewFromJson(
        Map<String, dynamic> json) =>
    Localsubjectaccessreview(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      spec: IoK8SApiAuthorizationV1SubjectAccessReviewSpec.fromJson(
          json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiAuthorizationV1SubjectAccessReviewStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LocalsubjectaccessreviewToJson(
        Localsubjectaccessreview instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.LOCAL_SUBJECT_ACCESS_REVIEW: 'LocalSubjectAccessReview',
};

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      creationTimestamp: json['creationTimestamp'] == null
          ? null
          : DateTime.parse(json['creationTimestamp'] as String),
      deletionGracePeriodSeconds:
          (json['deletionGracePeriodSeconds'] as num?)?.toInt(),
      deletionTimestamp: json['deletionTimestamp'] == null
          ? null
          : DateTime.parse(json['deletionTimestamp'] as String),
      finalizers: (json['finalizers'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      generateName: json['generateName'] as String?,
      generation: (json['generation'] as num?)?.toInt(),
      labels: (json['labels'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      managedFields: (json['managedFields'] as List<dynamic>?)
          ?.map((e) =>
              ManagedfieldsentryMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      ownerReferences: (json['ownerReferences'] as List<dynamic>?)
          ?.map((e) => OwnerreferenceMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'annotations': instance.annotations,
      'creationTimestamp': instance.creationTimestamp?.toIso8601String(),
      'deletionGracePeriodSeconds': instance.deletionGracePeriodSeconds,
      'deletionTimestamp': instance.deletionTimestamp?.toIso8601String(),
      'finalizers': instance.finalizers,
      'generateName': instance.generateName,
      'generation': instance.generation,
      'labels': instance.labels,
      'managedFields': instance.managedFields,
      'name': instance.name,
      'namespace': instance.namespace,
      'ownerReferences': instance.ownerReferences,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
      'uid': instance.uid,
    };

ManagedfieldsentryMetaV1 _$ManagedfieldsentryMetaV1FromJson(
        Map<String, dynamic> json) =>
    ManagedfieldsentryMetaV1(
      apiVersion: json['apiVersion'] as String?,
      fieldsType: json['fieldsType'] as String?,
      fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
      manager: json['manager'] as String?,
      operation: json['operation'] as String?,
      subresource: json['subresource'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$ManagedfieldsentryMetaV1ToJson(
        ManagedfieldsentryMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

OwnerreferenceMetaV1 _$OwnerreferenceMetaV1FromJson(
        Map<String, dynamic> json) =>
    OwnerreferenceMetaV1(
      apiVersion: json['apiVersion'] as String?,
      blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
      controller: json['controller'] as bool?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$OwnerreferenceMetaV1ToJson(
        OwnerreferenceMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

IoK8SApiAuthorizationV1SubjectAccessReviewSpec
    _$IoK8SApiAuthorizationV1SubjectAccessReviewSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAuthorizationV1SubjectAccessReviewSpec(
          extra: (json['extra'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ),
          groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
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

Map<String, dynamic> _$IoK8SApiAuthorizationV1SubjectAccessReviewSpecToJson(
        IoK8SApiAuthorizationV1SubjectAccessReviewSpec instance) =>
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

IoK8SApiAuthorizationV1SubjectAccessReviewStatus
    _$IoK8SApiAuthorizationV1SubjectAccessReviewStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAuthorizationV1SubjectAccessReviewStatus(
          allowed: json['allowed'] as bool,
          denied: json['denied'] as bool?,
          evaluationError: json['evaluationError'] as String?,
          reason: json['reason'] as String?,
        );

Map<String, dynamic> _$IoK8SApiAuthorizationV1SubjectAccessReviewStatusToJson(
        IoK8SApiAuthorizationV1SubjectAccessReviewStatus instance) =>
    <String, dynamic>{
      'allowed': instance.allowed,
      'denied': instance.denied,
      'evaluationError': instance.evaluationError,
      'reason': instance.reason,
    };
