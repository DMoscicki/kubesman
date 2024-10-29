// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'poddisruptionbudgetstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Poddisruptionbudgetstatus _$PoddisruptionbudgetstatusFromJson(
        Map<String, dynamic> json) =>
    Poddisruptionbudgetstatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApimachineryPkgApisMetaV1Condition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      currentHealthy: (json['currentHealthy'] as num?)?.toInt(),
      desiredHealthy: (json['desiredHealthy'] as num?)?.toInt(),
      disruptedPods: (json['disruptedPods'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, DateTime.parse(e as String)),
      ),
      disruptionsAllowed: (json['disruptionsAllowed'] as num?)?.toInt(),
      expectedPods: (json['expectedPods'] as num?)?.toInt(),
      observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PoddisruptionbudgetstatusToJson(
        Poddisruptionbudgetstatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'currentHealthy': instance.currentHealthy,
      'desiredHealthy': instance.desiredHealthy,
      'disruptedPods': instance.disruptedPods
          ?.map((k, e) => MapEntry(k, e.toIso8601String())),
      'disruptionsAllowed': instance.disruptionsAllowed,
      'expectedPods': instance.expectedPods,
      'observedGeneration': instance.observedGeneration,
    };

IoK8SApimachineryPkgApisMetaV1Condition
    _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1Condition(
          lastTransitionTime:
              DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String,
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
          reason: json['reason'] as String,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(
        IoK8SApimachineryPkgApisMetaV1Condition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };
