// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'limitresponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Limitresponse _$LimitresponseFromJson(Map<String, dynamic> json) =>
    Limitresponse(
      queuing: json['queuing'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3QueuingConfiguration.fromJson(
              json['queuing'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$LimitresponseToJson(Limitresponse instance) =>
    <String, dynamic>{
      'queuing': instance.queuing,
      'type': instance.type,
    };

IoK8SApiFlowcontrolV1Beta3QueuingConfiguration
    _$IoK8SApiFlowcontrolV1Beta3QueuingConfigurationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3QueuingConfiguration(
          handSize: (json['handSize'] as num?)?.toInt(),
          queueLengthLimit: (json['queueLengthLimit'] as num?)?.toInt(),
          queues: (json['queues'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3QueuingConfigurationToJson(
        IoK8SApiFlowcontrolV1Beta3QueuingConfiguration instance) =>
    <String, dynamic>{
      'handSize': instance.handSize,
      'queueLengthLimit': instance.queueLengthLimit,
      'queues': instance.queues,
    };
