// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificatesigningrequestlist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Certificatesigningrequestlist _$CertificatesigningrequestlistFromJson(
        Map<String, dynamic> json) =>
    Certificatesigningrequestlist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCertificatesV1CertificateSigningRequest.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(
          _$CertificatesigningrequestlistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CertificatesigningrequestlistToJson(
        Certificatesigningrequestlist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$CertificatesigningrequestlistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$CertificatesigningrequestlistKindEnumMap = {
  CertificatesigningrequestlistKind.CERTIFICATE_SIGNING_REQUEST_LIST:
      'CertificateSigningRequestList',
};

IoK8SApiCertificatesV1CertificateSigningRequest
    _$IoK8SApiCertificatesV1CertificateSigningRequestFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCertificatesV1CertificateSigningRequest(
          apiVersion: json['apiVersion'] as String?,
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          spec: IoK8SApiCertificatesV1CertificateSigningRequestSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
          status: json['status'] == null
              ? null
              : IoK8SApiCertificatesV1CertificateSigningRequestStatus.fromJson(
                  json['status'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCertificatesV1CertificateSigningRequestToJson(
        IoK8SApiCertificatesV1CertificateSigningRequest instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$ItemKindEnumMap = {
  ItemKind.CERTIFICATE_SIGNING_REQUEST: 'CertificateSigningRequest',
};

IoK8SApimachineryPkgApisMetaV1ObjectMeta
    _$IoK8SApimachineryPkgApisMetaV1ObjectMetaFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ObjectMeta(
          annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
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
              ?.map((e) => e as String)
              .toList(),
          generateName: json['generateName'] as String?,
          generation: (json['generation'] as num?)?.toInt(),
          labels: (json['labels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          managedFields: (json['managedFields'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          ownerReferences: (json['ownerReferences'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1OwnerReference.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          resourceVersion: json['resourceVersion'] as String?,
          selfLink: json['selfLink'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ObjectMetaToJson(
        IoK8SApimachineryPkgApisMetaV1ObjectMeta instance) =>
    <String, dynamic>{
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

IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry
    _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry(
          apiVersion: json['apiVersion'] as String?,
          fieldsType: json['fieldsType'] as String?,
          fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
          manager: json['manager'] as String?,
          operation: json['operation'] as String?,
          subresource: json['subresource'] as String?,
          time: json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryToJson(
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

IoK8SApimachineryPkgApisMetaV1OwnerReference
    _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1OwnerReference(
          apiVersion: json['apiVersion'] as String,
          blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
          controller: json['controller'] as bool?,
          kind: json['kind'] as String,
          name: json['name'] as String,
          uid: json['uid'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceToJson(
        IoK8SApimachineryPkgApisMetaV1OwnerReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

IoK8SApiCertificatesV1CertificateSigningRequestSpec
    _$IoK8SApiCertificatesV1CertificateSigningRequestSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCertificatesV1CertificateSigningRequestSpec(
          expirationSeconds: (json['expirationSeconds'] as num?)?.toInt(),
          extra: (json['extra'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
                k, (e as List<dynamic>).map((e) => e as String).toList()),
          ),
          groups: (json['groups'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          request: json['request'] as String,
          signerName: json['signerName'] as String,
          uid: json['uid'] as String?,
          usages: (json['usages'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          username: json['username'] as String?,
        );

Map<String, dynamic>
    _$IoK8SApiCertificatesV1CertificateSigningRequestSpecToJson(
            IoK8SApiCertificatesV1CertificateSigningRequestSpec instance) =>
        <String, dynamic>{
          'expirationSeconds': instance.expirationSeconds,
          'extra': instance.extra,
          'groups': instance.groups,
          'request': instance.request,
          'signerName': instance.signerName,
          'uid': instance.uid,
          'usages': instance.usages,
          'username': instance.username,
        };

IoK8SApiCertificatesV1CertificateSigningRequestStatus
    _$IoK8SApiCertificatesV1CertificateSigningRequestStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCertificatesV1CertificateSigningRequestStatus(
          certificate: json['certificate'] as String?,
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiCertificatesV1CertificateSigningRequestCondition
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiCertificatesV1CertificateSigningRequestStatusToJson(
            IoK8SApiCertificatesV1CertificateSigningRequestStatus instance) =>
        <String, dynamic>{
          'certificate': instance.certificate,
          'conditions': instance.conditions,
        };

IoK8SApiCertificatesV1CertificateSigningRequestCondition
    _$IoK8SApiCertificatesV1CertificateSigningRequestConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCertificatesV1CertificateSigningRequestCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          lastUpdateTime: json['lastUpdateTime'] == null
              ? null
              : DateTime.parse(json['lastUpdateTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String,
    dynamic> _$IoK8SApiCertificatesV1CertificateSigningRequestConditionToJson(
        IoK8SApiCertificatesV1CertificateSigningRequestCondition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'lastUpdateTime': instance.lastUpdateTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      metadataContinue: json['continue'] as String?,
      remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'continue': instance.metadataContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
