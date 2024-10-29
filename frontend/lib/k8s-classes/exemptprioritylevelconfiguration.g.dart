// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exemptprioritylevelconfiguration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Exemptprioritylevelconfiguration _$ExemptprioritylevelconfigurationFromJson(
        Map<String, dynamic> json) =>
    Exemptprioritylevelconfiguration(
      lendablePercent: (json['lendablePercent'] as num?)?.toInt(),
      nominalConcurrencyShares:
          (json['nominalConcurrencyShares'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ExemptprioritylevelconfigurationToJson(
        Exemptprioritylevelconfiguration instance) =>
    <String, dynamic>{
      'lendablePercent': instance.lendablePercent,
      'nominalConcurrencyShares': instance.nominalConcurrencyShares,
    };
