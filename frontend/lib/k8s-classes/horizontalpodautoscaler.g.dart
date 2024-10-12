// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontalpodautoscaler.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Horizontalpodautoscaler _$HorizontalpodautoscalerFromJson(
        Map<String, dynamic> json) =>
    Horizontalpodautoscaler(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HorizontalpodautoscalerToJson(
        Horizontalpodautoscaler instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.HORIZONTAL_POD_AUTOSCALER: 'HorizontalPodAutoscaler',
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

IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpec
    _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpec(
          behavior: json['behavior'] == null
              ? null
              : IoK8SApiAutoscalingV2HorizontalPodAutoscalerBehavior.fromJson(
                  json['behavior'] as Map<String, dynamic>),
          maxReplicas: (json['maxReplicas'] as num).toInt(),
          metrics: (json['metrics'] as List<dynamic>?)
              ?.map((e) => IoK8SApiAutoscalingV2MetricSpec.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          minReplicas: (json['minReplicas'] as num?)?.toInt(),
          scaleTargetRef:
              IoK8SApiAutoscalingV2CrossVersionObjectReference.fromJson(
                  json['scaleTargetRef'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpecToJson(
        IoK8SApiAutoscalingV2HorizontalPodAutoscalerSpec instance) =>
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

IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatus
    _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatus(
          conditions: (json['conditions'] as List<dynamic>?)
              ?.map((e) => IoK8SApiAutoscalingV2HorizontalPodAutoscalerCondition
                  .fromJson(e as Map<String, dynamic>))
              .toList(),
          currentMetrics: (json['currentMetrics'] as List<dynamic>?)
              ?.map((e) => IoK8SApiAutoscalingV2MetricStatus.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          currentReplicas: (json['currentReplicas'] as num?)?.toInt(),
          desiredReplicas: (json['desiredReplicas'] as num).toInt(),
          lastScaleTime: json['lastScaleTime'] == null
              ? null
              : DateTime.parse(json['lastScaleTime'] as String),
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatusToJson(
        IoK8SApiAutoscalingV2HorizontalPodAutoscalerStatus instance) =>
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
