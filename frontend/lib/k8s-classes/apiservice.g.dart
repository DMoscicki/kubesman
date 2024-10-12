// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiservice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apiservice _$ApiserviceFromJson(Map<String, dynamic> json) => Apiservice(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatus
              .fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiserviceToJson(Apiservice instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.API_SERVICE: 'APIService',
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

IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpec
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpec(
          caBundle: json['caBundle'] as String?,
          group: json['group'] as String?,
          groupPriorityMinimum: (json['groupPriorityMinimum'] as num).toInt(),
          insecureSkipTlsVerify: json['insecureSkipTLSVerify'] as bool?,
          service: json['service'] == null
              ? null
              : IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference
                  .fromJson(json['service'] as Map<String, dynamic>),
          version: json['version'] as String?,
          versionPriority: (json['versionPriority'] as num).toInt(),
        );

Map<String,
    dynamic> _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpecToJson(
        IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceSpec instance) =>
    <String, dynamic>{
      'caBundle': instance.caBundle,
      'group': instance.group,
      'groupPriorityMinimum': instance.groupPriorityMinimum,
      'insecureSkipTLSVerify': instance.insecureSkipTlsVerify,
      'service': instance.service,
      'version': instance.version,
      'versionPriority': instance.versionPriority,
    };

IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference(
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          port: (json['port'] as num?)?.toInt(),
        );

Map<String, dynamic>
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReferenceToJson(
            IoK8SKubeAggregatorPkgApisApiregistrationV1ServiceReference
                instance) =>
        <String, dynamic>{
          'name': instance.name,
          'namespace': instance.namespace,
          'port': instance.port,
        };

IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatus
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatus(
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatusToJson(
            IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceStatus
                instance) =>
        <String, dynamic>{
          'conditions': instance.conditions,
        };

IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic>
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceConditionToJson(
            IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition
                instance) =>
        <String, dynamic>{
          'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
          'message': instance.message,
          'reason': instance.reason,
          'status': instance.status,
          'type': instance.type,
        };
