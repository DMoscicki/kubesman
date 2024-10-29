// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scheduling.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Scheduling _$SchedulingFromJson(Map<String, dynamic> json) => Scheduling(
      nodeSelector: (json['nodeSelector'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      tolerations: (json['tolerations'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1Toleration.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SchedulingToJson(Scheduling instance) =>
    <String, dynamic>{
      'nodeSelector': instance.nodeSelector,
      'tolerations': instance.tolerations,
    };

IoK8SApiCoreV1Toleration _$IoK8SApiCoreV1TolerationFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1Toleration(
      effect: json['effect'] as String?,
      key: json['key'] as String?,
      ioK8SApiCoreV1TolerationOperator: json['operator'] as String?,
      tolerationSeconds: (json['tolerationSeconds'] as num?)?.toInt(),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1TolerationToJson(
        IoK8SApiCoreV1Toleration instance) =>
    <String, dynamic>{
      'effect': instance.effect,
      'key': instance.key,
      'operator': instance.ioK8SApiCoreV1TolerationOperator,
      'tolerationSeconds': instance.tolerationSeconds,
      'value': instance.value,
    };
