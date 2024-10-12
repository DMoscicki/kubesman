// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceclassparameterslist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceclassparameterslist _$ResourceclassparameterslistFromJson(
        Map<String, dynamic> json) =>
    Resourceclassparameterslist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiResourceV1Alpha2ResourceClassParameters.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(
          _$ResourceclassparameterslistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ResourceclassparameterslistToJson(
        Resourceclassparameterslist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$ResourceclassparameterslistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$ResourceclassparameterslistKindEnumMap = {
  ResourceclassparameterslistKind.RESOURCE_CLASS_PARAMETERS_LIST:
      'ResourceClassParametersList',
};

IoK8SApiResourceV1Alpha2ResourceClassParameters
    _$IoK8SApiResourceV1Alpha2ResourceClassParametersFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClassParameters(
          apiVersion: json['apiVersion'] as String?,
          filters: (json['filters'] as List<dynamic>?)
              ?.map((e) => IoK8SApiResourceV1Alpha2ResourceFilter.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          generatedFrom: json['generatedFrom'] == null
              ? null
              : IoK8SApiResourceV1Alpha2ResourceClassParametersReference
                  .fromJson(json['generatedFrom'] as Map<String, dynamic>),
          kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
          metadata: json['metadata'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
                  json['metadata'] as Map<String, dynamic>),
          vendorParameters: (json['vendorParameters'] as List<dynamic>?)
              ?.map((e) => IoK8SApiResourceV1Alpha2VendorParameters.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2ResourceClassParametersToJson(
        IoK8SApiResourceV1Alpha2ResourceClassParameters instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'filters': instance.filters,
      'generatedFrom': instance.generatedFrom,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'vendorParameters': instance.vendorParameters,
    };

const _$ItemKindEnumMap = {
  ItemKind.RESOURCE_CLASS_PARAMETERS: 'ResourceClassParameters',
};

IoK8SApiResourceV1Alpha2ResourceFilter
    _$IoK8SApiResourceV1Alpha2ResourceFilterFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceFilter(
          driverName: json['driverName'] as String?,
          namedResources: json['namedResources'] == null
              ? null
              : IoK8SApiResourceV1Alpha2NamedResourcesFilter.fromJson(
                  json['namedResources'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2ResourceFilterToJson(
        IoK8SApiResourceV1Alpha2ResourceFilter instance) =>
    <String, dynamic>{
      'driverName': instance.driverName,
      'namedResources': instance.namedResources,
    };

IoK8SApiResourceV1Alpha2NamedResourcesFilter
    _$IoK8SApiResourceV1Alpha2NamedResourcesFilterFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesFilter(
          selector: json['selector'] as String,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesFilterToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesFilter instance) =>
    <String, dynamic>{
      'selector': instance.selector,
    };

IoK8SApiResourceV1Alpha2ResourceClassParametersReference
    _$IoK8SApiResourceV1Alpha2ResourceClassParametersReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2ResourceClassParametersReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
          namespace: json['namespace'] as String?,
        );

Map<String,
    dynamic> _$IoK8SApiResourceV1Alpha2ResourceClassParametersReferenceToJson(
        IoK8SApiResourceV1Alpha2ResourceClassParametersReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
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

IoK8SApiResourceV1Alpha2VendorParameters
    _$IoK8SApiResourceV1Alpha2VendorParametersFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2VendorParameters(
          driverName: json['driverName'] as String?,
          parameters: json['parameters'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2VendorParametersToJson(
        IoK8SApiResourceV1Alpha2VendorParameters instance) =>
    <String, dynamic>{
      'driverName': instance.driverName,
      'parameters': instance.parameters,
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
