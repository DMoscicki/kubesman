// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hpascalingrules.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hpascalingrules _$HpascalingrulesFromJson(Map<String, dynamic> json) =>
    Hpascalingrules(
      policies: (json['policies'] as List<dynamic>?)
          ?.map((e) => IoK8SApiAutoscalingV2HpaScalingPolicy.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      selectPolicy: json['selectPolicy'] as String?,
      stabilizationWindowSeconds:
          (json['stabilizationWindowSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$HpascalingrulesToJson(Hpascalingrules instance) =>
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
