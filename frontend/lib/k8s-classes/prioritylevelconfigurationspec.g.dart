// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prioritylevelconfigurationspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prioritylevelconfigurationspec _$PrioritylevelconfigurationspecFromJson(
        Map<String, dynamic> json) =>
    Prioritylevelconfigurationspec(
      exempt: json['exempt'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration.fromJson(
              json['exempt'] as Map<String, dynamic>),
      limited: json['limited'] == null
          ? null
          : IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration
              .fromJson(json['limited'] as Map<String, dynamic>),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$PrioritylevelconfigurationspecToJson(
        Prioritylevelconfigurationspec instance) =>
    <String, dynamic>{
      'exempt': instance.exempt,
      'limited': instance.limited,
      'type': instance.type,
    };

IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration
    _$IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfigurationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration(
          lendablePercent: (json['lendablePercent'] as num?)?.toInt(),
          nominalConcurrencyShares:
              (json['nominalConcurrencyShares'] as num?)?.toInt(),
        );

Map<String,
    dynamic> _$IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfigurationToJson(
        IoK8SApiFlowcontrolV1Beta3ExemptPriorityLevelConfiguration instance) =>
    <String, dynamic>{
      'lendablePercent': instance.lendablePercent,
      'nominalConcurrencyShares': instance.nominalConcurrencyShares,
    };

IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration
    _$IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfigurationFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration(
          borrowingLimitPercent:
              (json['borrowingLimitPercent'] as num?)?.toInt(),
          lendablePercent: (json['lendablePercent'] as num?)?.toInt(),
          limitResponse: json['limitResponse'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3LimitResponse.fromJson(
                  json['limitResponse'] as Map<String, dynamic>),
          nominalConcurrencyShares:
              (json['nominalConcurrencyShares'] as num?)?.toInt(),
        );

Map<String, dynamic>
    _$IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfigurationToJson(
            IoK8SApiFlowcontrolV1Beta3LimitedPriorityLevelConfiguration
                instance) =>
        <String, dynamic>{
          'borrowingLimitPercent': instance.borrowingLimitPercent,
          'lendablePercent': instance.lendablePercent,
          'limitResponse': instance.limitResponse,
          'nominalConcurrencyShares': instance.nominalConcurrencyShares,
        };

IoK8SApiFlowcontrolV1Beta3LimitResponse
    _$IoK8SApiFlowcontrolV1Beta3LimitResponseFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiFlowcontrolV1Beta3LimitResponse(
          queuing: json['queuing'] == null
              ? null
              : IoK8SApiFlowcontrolV1Beta3QueuingConfiguration.fromJson(
                  json['queuing'] as Map<String, dynamic>),
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApiFlowcontrolV1Beta3LimitResponseToJson(
        IoK8SApiFlowcontrolV1Beta3LimitResponse instance) =>
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
