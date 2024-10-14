// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resourceslice.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Resourceslice _$ResourcesliceFromJson(Map<String, dynamic> json) =>
    Resourceslice(
      apiVersion: json['apiVersion'] as String?,
      driverName: json['driverName'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      namedResources: json['namedResources'] == null
          ? null
          : IoK8SApiResourceV1Alpha2NamedResourcesResources.fromJson(
              json['namedResources'] as Map<String, dynamic>),
      nodeName: json['nodeName'] as String?,
    );

Map<String, dynamic> _$ResourcesliceToJson(Resourceslice instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'driverName': instance.driverName,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'namedResources': instance.namedResources,
      'nodeName': instance.nodeName,
    };

const _$KindEnumMap = {
  Kind.RESOURCE_SLICE: 'ResourceSlice',
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

IoK8SApiResourceV1Alpha2NamedResourcesResources
    _$IoK8SApiResourceV1Alpha2NamedResourcesResourcesFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesResources(
          instances: (json['instances'] as List<dynamic>)
              .map((e) =>
                  IoK8SApiResourceV1Alpha2NamedResourcesInstance.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesResourcesToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesResources instance) =>
    <String, dynamic>{
      'instances': instance.instances,
    };

IoK8SApiResourceV1Alpha2NamedResourcesInstance
    _$IoK8SApiResourceV1Alpha2NamedResourcesInstanceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesInstance(
          attributes: (json['attributes'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiResourceV1Alpha2NamedResourcesAttribute.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesInstanceToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesInstance instance) =>
    <String, dynamic>{
      'attributes': instance.attributes,
      'name': instance.name,
    };

IoK8SApiResourceV1Alpha2NamedResourcesAttribute
    _$IoK8SApiResourceV1Alpha2NamedResourcesAttributeFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesAttribute(
          ioK8SApiResourceV1Alpha2NamedResourcesAttributeBool:
              json['bool'] as bool?,
          ioK8SApiResourceV1Alpha2NamedResourcesAttributeInt:
              (json['int'] as num?)?.toInt(),
          intSlice: json['intSlice'] == null
              ? null
              : IoK8SApiResourceV1Alpha2NamedResourcesIntSlice.fromJson(
                  json['intSlice'] as Map<String, dynamic>),
          name: json['name'] as String,
          quantity: json['quantity'],
          string: json['string'] as String?,
          stringSlice: json['stringSlice'] == null
              ? null
              : IoK8SApiResourceV1Alpha2NamedResourcesStringSlice.fromJson(
                  json['stringSlice'] as Map<String, dynamic>),
          version: json['version'] as String?,
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesAttributeToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesAttribute instance) =>
    <String, dynamic>{
      'bool': instance.ioK8SApiResourceV1Alpha2NamedResourcesAttributeBool,
      'int': instance.ioK8SApiResourceV1Alpha2NamedResourcesAttributeInt,
      'intSlice': instance.intSlice,
      'name': instance.name,
      'quantity': instance.quantity,
      'string': instance.string,
      'stringSlice': instance.stringSlice,
      'version': instance.version,
    };

IoK8SApiResourceV1Alpha2NamedResourcesIntSlice
    _$IoK8SApiResourceV1Alpha2NamedResourcesIntSliceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesIntSlice(
          ints: (json['ints'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesIntSliceToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesIntSlice instance) =>
    <String, dynamic>{
      'ints': instance.ints,
    };

IoK8SApiResourceV1Alpha2NamedResourcesStringSlice
    _$IoK8SApiResourceV1Alpha2NamedResourcesStringSliceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiResourceV1Alpha2NamedResourcesStringSlice(
          strings: (json['strings'] as List<dynamic>)
              .map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiResourceV1Alpha2NamedResourcesStringSliceToJson(
        IoK8SApiResourceV1Alpha2NamedResourcesStringSlice instance) =>
    <String, dynamic>{
      'strings': instance.strings,
    };
