// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontalpodautoscalerstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Horizontalpodautoscalerstatus _$HorizontalpodautoscalerstatusFromJson(
        Map<String, dynamic> json) =>
    Horizontalpodautoscalerstatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
      currentMetrics: (json['currentMetrics'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAutoscalingV2MetricStatus.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      currentReplicas: (json['currentReplicas'] as num?)?.toInt(),
      desiredReplicas: (json['desiredReplicas'] as num?)?.toInt(),
      lastScaleTime: json['lastScaleTime'] == null
          ? null
          : DateTime.parse(json['lastScaleTime'] as String),
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HorizontalpodautoscalerstatusToJson(
        Horizontalpodautoscalerstatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'currentMetrics': instance.currentMetrics,
      'currentReplicas': instance.currentReplicas,
      'desiredReplicas': instance.desiredReplicas,
      'lastScaleTime': instance.lastScaleTime?.toIso8601String(),
      'observedGeneration': instance.observedGeneration,
    };

IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition
    _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerConditionToJson(
            IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition instance) =>
        <String, dynamic>{
          'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
          'message': instance.message,
          'reason': instance.reason,
          'status': instance.status,
          'type': instance.type,
        };

IoK8SApiAutoscalingV2MetricStatus _$IoK8SApiAutoscalingV2MetricStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAutoscalingV2MetricStatus(
      containerResource: json['containerResource'] == null
          ? null
          : IoK8SApiAutoscalingV2ContainerResourceMetricStatus.fromJson(
              json['containerResource'] as Map<String, dynamic>),
      ioK8SApiAutoscalingV2MetricStatusExternal: json['external'] == null
          ? null
          : IoK8SApiAutoscalingV2ExternalMetricStatus.fromJson(
              json['external'] as Map<String, dynamic>),
      object: json['object'] == null
          ? null
          : IoK8SApiAutoscalingV2ObjectMetricStatus.fromJson(
              json['object'] as Map<String, dynamic>),
      pods: json['pods'] == null
          ? null
          : IoK8SApiAutoscalingV2PodsMetricStatus.fromJson(
              json['pods'] as Map<String, dynamic>),
      resource: json['resource'] == null
          ? null
          : IoK8SApiAutoscalingV2ResourceMetricStatus.fromJson(
              json['resource'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiAutoscalingV2MetricStatusToJson(
        IoK8SApiAutoscalingV2MetricStatus instance) =>
    <String, dynamic>{
      'containerResource': instance.containerResource,
      'external': instance.ioK8SApiAutoscalingV2MetricStatusExternal,
      'object': instance.object,
      'pods': instance.pods,
      'resource': instance.resource,
      'type': instance.type,
    };

IoK8SApiAutoscalingV2ContainerResourceMetricStatus
    _$IoK8SApiAutoscalingV2ContainerResourceMetricStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2ContainerResourceMetricStatus(
          container: json['container'] as String,
          current: IoK8SApiAutoscalingV2MetricValueStatus.fromJson(
              json['current'] as Map<String, dynamic>),
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2ContainerResourceMetricStatusToJson(
        IoK8SApiAutoscalingV2ContainerResourceMetricStatus instance) =>
    <String, dynamic>{
      'container': instance.container,
      'current': instance.current,
      'name': instance.name,
    };

IoK8SApiAutoscalingV2MetricValueStatus
    _$IoK8SApiAutoscalingV2MetricValueStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2MetricValueStatus(
          averageUtilization: (json['averageUtilization'] as num?)?.toInt(),
          averageValue: json['averageValue'],
          value: json['value'],
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2MetricValueStatusToJson(
        IoK8SApiAutoscalingV2MetricValueStatus instance) =>
    <String, dynamic>{
      'averageUtilization': instance.averageUtilization,
      'averageValue': instance.averageValue,
      'value': instance.value,
    };

IoK8SApiAutoscalingV2ExternalMetricStatus
    _$IoK8SApiAutoscalingV2ExternalMetricStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2ExternalMetricStatus(
          current: IoK8SApiAutoscalingV2MetricValueStatus.fromJson(
              json['current'] as Map<String, dynamic>),
          metric: IoK8SApiAutoscalingV2MetricIdentifier.fromJson(
              json['metric'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2ExternalMetricStatusToJson(
        IoK8SApiAutoscalingV2ExternalMetricStatus instance) =>
    <String, dynamic>{
      'current': instance.current,
      'metric': instance.metric,
    };

IoK8SApiAutoscalingV2MetricIdentifier
    _$IoK8SApiAutoscalingV2MetricIdentifierFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2MetricIdentifier(
          name: json['name'] as String,
          selector: json['selector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['selector'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2MetricIdentifierToJson(
        IoK8SApiAutoscalingV2MetricIdentifier instance) =>
    <String, dynamic>{
      'name': instance.name,
      'selector': instance.selector,
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

IoK8SApiAutoscalingV2ObjectMetricStatus
    _$IoK8SApiAutoscalingV2ObjectMetricStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2ObjectMetricStatus(
          current: IoK8SApiAutoscalingV2MetricValueStatus.fromJson(
              json['current'] as Map<String, dynamic>),
          describedObject:
              IoK8SApiAutoscalingV2CrossVersionObjectReference.fromJson(
                  json['describedObject'] as Map<String, dynamic>),
          metric: IoK8SApiAutoscalingV2MetricIdentifier.fromJson(
              json['metric'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2ObjectMetricStatusToJson(
        IoK8SApiAutoscalingV2ObjectMetricStatus instance) =>
    <String, dynamic>{
      'current': instance.current,
      'describedObject': instance.describedObject,
      'metric': instance.metric,
    };

IoK8SApiAutoscalingV2CrossVersionObjectReference
    _$IoK8SApiAutoscalingV2CrossVersionObjectReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2CrossVersionObjectReference(
          apiVersion: json['apiVersion'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2CrossVersionObjectReferenceToJson(
        IoK8SApiAutoscalingV2CrossVersionObjectReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': instance.kind,
      'name': instance.name,
    };

IoK8SApiAutoscalingV2PodsMetricStatus
    _$IoK8SApiAutoscalingV2PodsMetricStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2PodsMetricStatus(
          current: IoK8SApiAutoscalingV2MetricValueStatus.fromJson(
              json['current'] as Map<String, dynamic>),
          metric: IoK8SApiAutoscalingV2MetricIdentifier.fromJson(
              json['metric'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2PodsMetricStatusToJson(
        IoK8SApiAutoscalingV2PodsMetricStatus instance) =>
    <String, dynamic>{
      'current': instance.current,
      'metric': instance.metric,
    };

IoK8SApiAutoscalingV2ResourceMetricStatus
    _$IoK8SApiAutoscalingV2ResourceMetricStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2ResourceMetricStatus(
          current: IoK8SApiAutoscalingV2MetricValueStatus.fromJson(
              json['current'] as Map<String, dynamic>),
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2ResourceMetricStatusToJson(
        IoK8SApiAutoscalingV2ResourceMetricStatus instance) =>
    <String, dynamic>{
      'current': instance.current,
      'name': instance.name,
    };
