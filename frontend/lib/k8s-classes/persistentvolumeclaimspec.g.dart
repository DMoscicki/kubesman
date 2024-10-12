// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistentvolumeclaimspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Persistentvolumeclaimspec _$PersistentvolumeclaimspecFromJson(
        Map<String, dynamic> json) =>
    Persistentvolumeclaimspec(
      accessModes: (json['accessModes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      dataSource: json['dataSource'] == null
          ? null
          : IoK8SApiCoreV1TypedLocalObjectReference.fromJson(
              json['dataSource'] as Map<String, dynamic>),
      dataSourceRef: json['dataSourceRef'] == null
          ? null
          : IoK8SApiCoreV1TypedObjectReference.fromJson(
              json['dataSourceRef'] as Map<String, dynamic>),
      resources: json['resources'] == null
          ? null
          : IoK8SApiCoreV1VolumeResourceRequirements.fromJson(
              json['resources'] as Map<String, dynamic>),
      selector: json['selector'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['selector'] as Map<String, dynamic>),
      storageClassName: json['storageClassName'] as String?,
      volumeAttributesClassName: json['volumeAttributesClassName'] as String?,
      volumeMode: json['volumeMode'] as String?,
      volumeName: json['volumeName'] as String?,
    );

Map<String, dynamic> _$PersistentvolumeclaimspecToJson(
        Persistentvolumeclaimspec instance) =>
    <String, dynamic>{
      'accessModes': instance.accessModes,
      'dataSource': instance.dataSource,
      'dataSourceRef': instance.dataSourceRef,
      'resources': instance.resources,
      'selector': instance.selector,
      'storageClassName': instance.storageClassName,
      'volumeAttributesClassName': instance.volumeAttributesClassName,
      'volumeMode': instance.volumeMode,
      'volumeName': instance.volumeName,
    };

IoK8SApiCoreV1TypedLocalObjectReference
    _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1TypedLocalObjectReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(
        IoK8SApiCoreV1TypedLocalObjectReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };

IoK8SApiCoreV1TypedObjectReference _$IoK8SApiCoreV1TypedObjectReferenceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1TypedObjectReference(
      apiGroup: json['apiGroup'] as String?,
      kind: json['kind'] as String,
      name: json['name'] as String,
      namespace: json['namespace'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1TypedObjectReferenceToJson(
        IoK8SApiCoreV1TypedObjectReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
      'namespace': instance.namespace,
    };

IoK8SApiCoreV1VolumeResourceRequirements
    _$IoK8SApiCoreV1VolumeResourceRequirementsFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1VolumeResourceRequirements(
          limits: json['limits'] as Map<String, dynamic>?,
          requests: json['requests'] as Map<String, dynamic>?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeResourceRequirementsToJson(
        IoK8SApiCoreV1VolumeResourceRequirements instance) =>
    <String, dynamic>{
      'limits': instance.limits,
      'requests': instance.requests,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelector
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelector(
          matchExpressions: (json['matchExpressions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          matchLabels: (json['matchLabels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(
        IoK8SApimachineryPkgApisMetaV1LabelSelector instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchLabels': instance.matchLabels,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement(
          key: json['key'] as String,
          ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(
            IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement instance) =>
        <String, dynamic>{
          'key': instance.key,
          'operator': instance
              .ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
          'values': instance.values,
        };
