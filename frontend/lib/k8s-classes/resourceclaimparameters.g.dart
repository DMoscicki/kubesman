// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclaimparameters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclaimparameters _$ResourceclaimparametersFromJson(
        Map<String, dynamic> json) =>
    Resourceclaimparameters(
      apiVersion: json['apiVersion'] as String?,
      driverRequests: (json['driverRequests'] as List<dynamic>?)
          ?.map((e) => IoK8SApiResourceV1Alpha2DriverRequests.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      generatedFrom: json['generatedFrom'] == null
          ? null
          : IoK8SApiResourceV1Alpha2ResourceClaimParametersReference.fromJson(
              json['generatedFrom'] as Map<String, dynamic>),
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      shareable: json['shareable'] as bool?,
    );

Map<String, dynamic> _$ResourceclaimparametersToJson(
        Resourceclaimparameters instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'driverRequests': instance.driverRequests,
      'generatedFrom': instance.generatedFrom,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'shareable': instance.shareable,
    };

const _$KindEnumMap = {
  Kind.RESOURCE_CLAIM_PARAMETERS: 'ResourceClaimParameters',
};

IoK8SApiResourceV1Alpha2DriverRequests
    _$IoK8SApiResourceV1Alpha2DriverRequestsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2DriverRequests(
          driverName: json['driverName'] as String?,
          requests: (json['requests'] as List<dynamic>?)
              ?.map((e) => IoK8SApiResourceV1Alpha2ResourceRequest.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          vendorParameters: json['vendorParameters'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2DriverRequestsToJson(
        IoK8SApiResourceV1Alpha2DriverRequests instance) =>
    <String, dynamic>{
      'driverName': instance.driverName,
      'requests': instance.requests,
      'vendorParameters': instance.vendorParameters,
    };

IoK8SApiResourceV1Alpha2ResourceRequest
    _$IoK8SApiResourceV1Alpha2ResourceRequestFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceRequest(
          namedResources: json['namedResources'] == null
              ? null
              : IoK8SApiResourceV1Alpha2NamedResourcesRequest.fromJson(
                  json['namedResources'] as Map<String, dynamic>),
          vendorParameters: json['vendorParameters'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2ResourceRequestToJson(
        IoK8SApiResourceV1Alpha2ResourceRequest instance) =>
    <String, dynamic>{
      'namedResources': instance.namedResources,
      'vendorParameters': instance.vendorParameters,
    };

IoK8SApiResourceV1Alpha2NamedResourcesRequest
    _$IoK8SApiResourceV1Alpha2NamedResourcesRequestFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesRequest(
          selector: json['selector'] as String,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesRequestToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesRequest instance) =>
    <String, dynamic>{
      'selector': instance.selector,
    };

IoK8SApiResourceV1Alpha2ResourceClaimParametersReference
    _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClaimParametersReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String,
    dynamic> _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceToJson(
        IoK8SApiResourceV1Alpha2ResourceClaimParametersReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
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
