// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podfailurepolicyrule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podfailurepolicyrule _$PodfailurepolicyruleFromJson(
        Map<String, dynamic> json) =>
    Podfailurepolicyrule(
      action: json['action'] as String?,
      onExitCodes: json['onExitCodes'] == null
          ? null
          : IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement.fromJson(
              json['onExitCodes'] as Map<String, dynamic>),
      onPodConditions: (json['onPodConditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern.fromJson(
                  e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PodfailurepolicyruleToJson(
        Podfailurepolicyrule instance) =>
    <String, dynamic>{
      'action': instance.action,
      'onExitCodes': instance.onExitCodes,
      'onPodConditions': instance.onPodConditions,
    };

IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement
    _$IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement(
          containerName: json['containerName'] as String?,
          ioK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementToJson(
            IoK8SApiBatchV1PodFailurePolicyOnExitCodesRequirement instance) =>
        <String, dynamic>{
          'containerName': instance.containerName,
          'operator': instance
              .ioK8SApiBatchV1PodFailurePolicyOnExitCodesRequirementOperator,
          'values': instance.values,
        };

IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern
    _$IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPatternFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern(
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic>
    _$IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPatternToJson(
            IoK8SApiBatchV1PodFailurePolicyOnPodConditionsPattern instance) =>
        <String, dynamic>{
          'status': instance.status,
          'type': instance.type,
        };
