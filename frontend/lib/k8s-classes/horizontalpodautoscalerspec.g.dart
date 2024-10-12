// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontalpodautoscalerspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Horizontalpodautoscalerspec _$HorizontalpodautoscalerspecFromJson(
        Map<String, dynamic> json) =>
    Horizontalpodautoscalerspec(
      behavior: json['behavior'] == null
          ? null
          : IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior.fromJson(
              json['behavior'] as Map<String, dynamic>),
      maxReplicas: (json['maxReplicas'] as num?)?.toInt(),
      metrics: (json['metrics'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAutoscalingV2MetricSpec.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      minReplicas: (json['minReplicas'] as num?)?.toInt(),
      scaleTargetRef: IoK8SApiAutoscalingV2CrossVersionObjectReference.fromJson(
          json['scaleTargetRef'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HorizontalpodautoscalerspecToJson(
        Horizontalpodautoscalerspec instance) =>
    <String, dynamic>{
      'behavior': instance.behavior,
      'maxReplicas': instance.maxReplicas,
      'metrics': instance.metrics,
      'minReplicas': instance.minReplicas,
      'scaleTargetRef': instance.scaleTargetRef,
    };

IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior
    _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehaviorFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior(
          scaleDown: json['scaleDown'] == null
              ? null
              : IoK8SApiAutoscalingV2HpaScalingRules.fromJson(
                  json['scaleDown'] as Map<String, dynamic>),
          scaleUp: json['scaleUp'] == null
              ? null
              : IoK8SApiAutoscalingV2HpaScalingRules.fromJson(
                  json['scaleUp'] as Map<String, dynamic>),
        );

Map<String, dynamic>
    _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehaviorToJson(
            IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior instance) =>
        <String, dynamic>{
          'scaleDown': instance.scaleDown,
          'scaleUp': instance.scaleUp,
        };

IoK8SApiAutoscalingV2HpaScalingRules
    _$IoK8SApiAutoscalingV2HpaScalingRulesFromJson(Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2HpaScalingRules(
          policies: (json['policies'] as List<dynamic>?)
              ?.map((e) => IoK8SApiAutoscalingV2HpaScalingPolicy.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          selectPolicy: json['selectPolicy'] as String?,
          stabilizationWindowSeconds:
              (json['stabilizationWindowSeconds'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2HpaScalingRulesToJson(
        IoK8SApiAutoscalingV2HpaScalingRules instance) =>
    <String, dynamic>{
      'policies': instance.policies,
      'selectPolicy': instance.selectPolicy,
      'stabilizationWindowSeconds': instance.stabilizationWindowSeconds,
    };

IoK8SApiAutoscalingV2HpaScalingPolicy
    _$IoK8SApiAutoscalingV2HpaScalingPolicyFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2HpaScalingPolicy(
          periodSeconds: (json['periodSeconds'] as num).toInt(),
          type: json['type'] as String,
          value: (json['value'] as num).toInt(),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2HpaScalingPolicyToJson(
        IoK8SApiAutoscalingV2HpaScalingPolicy instance) =>
    <String, dynamic>{
      'periodSeconds': instance.periodSeconds,
      'type': instance.type,
      'value': instance.value,
    };

IoK8SApiAutoscalingV2MetricSpec _$IoK8SApiAutoscalingV2MetricSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAutoscalingV2MetricSpec(
      containerResource: json['containerResource'] == null
          ? null
          : IoK8SApiAutoscalingV2ContainerResourceMetricSource.fromJson(
              json['containerResource'] as Map<String, dynamic>),
      ioK8SApiAutoscalingV2MetricSpecExternal: json['external'] == null
          ? null
          : IoK8SApiAutoscalingV2ExternalMetricSource.fromJson(
              json['external'] as Map<String, dynamic>),
      object: json['object'] == null
          ? null
          : IoK8SApiAutoscalingV2ObjectMetricSource.fromJson(
              json['object'] as Map<String, dynamic>),
      pods: json['pods'] == null
          ? null
          : IoK8SApiAutoscalingV2PodsMetricSource.fromJson(
              json['pods'] as Map<String, dynamic>),
      resource: json['resource'] == null
          ? null
          : IoK8SApiAutoscalingV2ResourceMetricSource.fromJson(
              json['resource'] as Map<String, dynamic>),
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiAutoscalingV2MetricSpecToJson(
        IoK8SApiAutoscalingV2MetricSpec instance) =>
    <String, dynamic>{
      'containerResource': instance.containerResource,
      'external': instance.ioK8SApiAutoscalingV2MetricSpecExternal,
      'object': instance.object,
      'pods': instance.pods,
      'resource': instance.resource,
      'type': instance.type,
    };

IoK8SApiAutoscalingV2ContainerResourceMetricSource
    _$IoK8SApiAutoscalingV2ContainerResourceMetricSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2ContainerResourceMetricSource(
          container: json['container'] as String,
          name: json['name'] as String,
          target: IoK8SApiAutoscalingV2MetricTarget.fromJson(
              json['target'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2ContainerResourceMetricSourceToJson(
        IoK8SApiAutoscalingV2ContainerResourceMetricSource instance) =>
    <String, dynamic>{
      'container': instance.container,
      'name': instance.name,
      'target': instance.target,
    };

IoK8SApiAutoscalingV2MetricTarget _$IoK8SApiAutoscalingV2MetricTargetFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiAutoscalingV2MetricTarget(
      averageUtilization: (json['averageUtilization'] as num?)?.toInt(),
      averageValue: json['averageValue'],
      type: json['type'] as String,
      value: json['value'],
    );

Map<String, dynamic> _$IoK8SApiAutoscalingV2MetricTargetToJson(
        IoK8SApiAutoscalingV2MetricTarget instance) =>
    <String, dynamic>{
      'averageUtilization': instance.averageUtilization,
      'averageValue': instance.averageValue,
      'type': instance.type,
      'value': instance.value,
    };

IoK8SApiAutoscalingV2ExternalMetricSource
    _$IoK8SApiAutoscalingV2ExternalMetricSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2ExternalMetricSource(
          metric: IoK8SApiAutoscalingV2MetricIdentifier.fromJson(
              json['metric'] as Map<String, dynamic>),
          target: IoK8SApiAutoscalingV2MetricTarget.fromJson(
              json['target'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2ExternalMetricSourceToJson(
        IoK8SApiAutoscalingV2ExternalMetricSource instance) =>
    <String, dynamic>{
      'metric': instance.metric,
      'target': instance.target,
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

IoK8SApiAutoscalingV2ObjectMetricSource
    _$IoK8SApiAutoscalingV2ObjectMetricSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2ObjectMetricSource(
          describedObject:
              IoK8SApiAutoscalingV2CrossVersionObjectReference.fromJson(
                  json['describedObject'] as Map<String, dynamic>),
          metric: IoK8SApiAutoscalingV2MetricIdentifier.fromJson(
              json['metric'] as Map<String, dynamic>),
          target: IoK8SApiAutoscalingV2MetricTarget.fromJson(
              json['target'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2ObjectMetricSourceToJson(
        IoK8SApiAutoscalingV2ObjectMetricSource instance) =>
    <String, dynamic>{
      'describedObject': instance.describedObject,
      'metric': instance.metric,
      'target': instance.target,
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

IoK8SApiAutoscalingV2PodsMetricSource
    _$IoK8SApiAutoscalingV2PodsMetricSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2PodsMetricSource(
          metric: IoK8SApiAutoscalingV2MetricIdentifier.fromJson(
              json['metric'] as Map<String, dynamic>),
          target: IoK8SApiAutoscalingV2MetricTarget.fromJson(
              json['target'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2PodsMetricSourceToJson(
        IoK8SApiAutoscalingV2PodsMetricSource instance) =>
    <String, dynamic>{
      'metric': instance.metric,
      'target': instance.target,
    };

IoK8SApiAutoscalingV2ResourceMetricSource
    _$IoK8SApiAutoscalingV2ResourceMetricSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2ResourceMetricSource(
          name: json['name'] as String,
          target: IoK8SApiAutoscalingV2MetricTarget.fromJson(
              json['target'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2ResourceMetricSourceToJson(
        IoK8SApiAutoscalingV2ResourceMetricSource instance) =>
    <String, dynamic>{
      'name': instance.name,
      'target': instance.target,
    };
