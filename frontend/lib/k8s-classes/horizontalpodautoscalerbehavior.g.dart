// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'horizontalpodautoscalerbehavior.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Horizontalpodautoscalerbehavior _$HorizontalpodautoscalerbehaviorFromJson(
        Map<String, dynamic> json) =>
    Horizontalpodautoscalerbehavior(
      scaleDown: json['scaleDown'] == null
          ? null
          : IoK8SApiAutoscalingV2HpaScalingRules.fromJson(
              json['scaleDown'] as Map<String, dynamic>),
      scaleUp: json['scaleUp'] == null
          ? null
          : IoK8SApiAutoscalingV2HpaScalingRules.fromJson(
              json['scaleUp'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HorizontalpodautoscalerbehaviorToJson(
        Horizontalpodautoscalerbehavior instance) =>
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
