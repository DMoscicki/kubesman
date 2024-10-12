// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectedvolumesource.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Projectedvolumesource _$ProjectedvolumesourceFromJson(
        Map<String, dynamic> json) =>
    Projectedvolumesource(
      defaultMode: (json['defaultMode'] as num?)?.toInt(),
      sources: (json['sources'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1VolumeProjection.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProjectedvolumesourceToJson(
        Projectedvolumesource instance) =>
    <String, dynamic>{
      'defaultMode': instance.defaultMode,
      'sources': instance.sources,
    };

IoK8SApiCoreV1VolumeProjection _$IoK8SApiCoreV1VolumeProjectionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1VolumeProjection(
      clusterTrustBundle: json['clusterTrustBundle'] == null
          ? null
          : IoK8SApiCoreV1ClusterTrustBundleProjection.fromJson(
              json['clusterTrustBundle'] as Map<String, dynamic>),
      configMap: json['configMap'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapProjection.fromJson(
              json['configMap'] as Map<String, dynamic>),
      downwardApi: json['downwardAPI'] == null
          ? null
          : IoK8SApiCoreV1DownwardApiProjection.fromJson(
              json['downwardAPI'] as Map<String, dynamic>),
      secret: json['secret'] == null
          ? null
          : IoK8SApiCoreV1SecretProjection.fromJson(
              json['secret'] as Map<String, dynamic>),
      serviceAccountToken: json['serviceAccountToken'] == null
          ? null
          : IoK8SApiCoreV1ServiceAccountTokenProjection.fromJson(
              json['serviceAccountToken'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeProjectionToJson(
        IoK8SApiCoreV1VolumeProjection instance) =>
    <String, dynamic>{
      'clusterTrustBundle': instance.clusterTrustBundle,
      'configMap': instance.configMap,
      'downwardAPI': instance.downwardApi,
      'secret': instance.secret,
      'serviceAccountToken': instance.serviceAccountToken,
    };

IoK8SApiCoreV1ClusterTrustBundleProjection
    _$IoK8SApiCoreV1ClusterTrustBundleProjectionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ClusterTrustBundleProjection(
          labelSelector: json['labelSelector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['labelSelector'] as Map<String, dynamic>),
          name: json['name'] as String?,
          optional: json['optional'] as bool?,
          path: json['path'] as String,
          signerName: json['signerName'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ClusterTrustBundleProjectionToJson(
        IoK8SApiCoreV1ClusterTrustBundleProjection instance) =>
    <String, dynamic>{
      'labelSelector': instance.labelSelector,
      'name': instance.name,
      'optional': instance.optional,
      'path': instance.path,
      'signerName': instance.signerName,
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

IoK8SApiCoreV1ConfigMapProjection _$IoK8SApiCoreV1ConfigMapProjectionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ConfigMapProjection(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1KeyToPath.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapProjectionToJson(
        IoK8SApiCoreV1ConfigMapProjection instance) =>
    <String, dynamic>{
      'items': instance.items,
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1KeyToPath _$IoK8SApiCoreV1KeyToPathFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1KeyToPath(
      key: json['key'] as String,
      mode: (json['mode'] as num?)?.toInt(),
      path: json['path'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1KeyToPathToJson(
        IoK8SApiCoreV1KeyToPath instance) =>
    <String, dynamic>{
      'key': instance.key,
      'mode': instance.mode,
      'path': instance.path,
    };

IoK8SApiCoreV1DownwardApiProjection
    _$IoK8SApiCoreV1DownwardApiProjectionFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1DownwardApiProjection(
          items: (json['items'] as List<dynamic>?)
              ?.map((e) => IoK8SApiCoreV1DownwardApiVolumeFile.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiCoreV1DownwardApiProjectionToJson(
        IoK8SApiCoreV1DownwardApiProjection instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

IoK8SApiCoreV1DownwardApiVolumeFile
    _$IoK8SApiCoreV1DownwardApiVolumeFileFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1DownwardApiVolumeFile(
          fieldRef: json['fieldRef'] == null
              ? null
              : IoK8SApiCoreV1ObjectFieldSelector.fromJson(
                  json['fieldRef'] as Map<String, dynamic>),
          mode: (json['mode'] as num?)?.toInt(),
          path: json['path'] as String,
          resourceFieldRef: json['resourceFieldRef'] == null
              ? null
              : IoK8SApiCoreV1ResourceFieldSelector.fromJson(
                  json['resourceFieldRef'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCoreV1DownwardApiVolumeFileToJson(
        IoK8SApiCoreV1DownwardApiVolumeFile instance) =>
    <String, dynamic>{
      'fieldRef': instance.fieldRef,
      'mode': instance.mode,
      'path': instance.path,
      'resourceFieldRef': instance.resourceFieldRef,
    };

IoK8SApiCoreV1ObjectFieldSelector _$IoK8SApiCoreV1ObjectFieldSelectorFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ObjectFieldSelector(
      apiVersion: json['apiVersion'] as String?,
      fieldPath: json['fieldPath'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ObjectFieldSelectorToJson(
        IoK8SApiCoreV1ObjectFieldSelector instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldPath': instance.fieldPath,
    };

IoK8SApiCoreV1ResourceFieldSelector
    _$IoK8SApiCoreV1ResourceFieldSelectorFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ResourceFieldSelector(
          containerName: json['containerName'] as String?,
          divisor: json['divisor'],
          resource: json['resource'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceFieldSelectorToJson(
        IoK8SApiCoreV1ResourceFieldSelector instance) =>
    <String, dynamic>{
      'containerName': instance.containerName,
      'divisor': instance.divisor,
      'resource': instance.resource,
    };

IoK8SApiCoreV1SecretProjection _$IoK8SApiCoreV1SecretProjectionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1SecretProjection(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1KeyToPath.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      optional: json['optional'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1SecretProjectionToJson(
        IoK8SApiCoreV1SecretProjection instance) =>
    <String, dynamic>{
      'items': instance.items,
      'name': instance.name,
      'optional': instance.optional,
    };

IoK8SApiCoreV1ServiceAccountTokenProjection
    _$IoK8SApiCoreV1ServiceAccountTokenProjectionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ServiceAccountTokenProjection(
          audience: json['audience'] as String?,
          expirationSeconds: (json['expirationSeconds'] as num?)?.toInt(),
          path: json['path'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ServiceAccountTokenProjectionToJson(
        IoK8SApiCoreV1ServiceAccountTokenProjection instance) =>
    <String, dynamic>{
      'audience': instance.audience,
      'expirationSeconds': instance.expirationSeconds,
      'path': instance.path,
    };
