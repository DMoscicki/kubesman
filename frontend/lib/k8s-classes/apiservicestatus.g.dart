// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apiservicestatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Apiservicestatus _$ApiservicestatusFromJson(Map<String, dynamic> json) =>
    Apiservicestatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition
                  .fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ApiservicestatusToJson(Apiservicestatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
    };

IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition(
          lastTransitionTime: json['lastTransitionTime'] == null
              ? null
              : DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic>
    _$IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceConditionToJson(
            IoK8SKubeAggregatorPkgApisApiregistrationV1ApiServiceCondition
                instance) =>
        <String, dynamic>{
          'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
          'message': instance.message,
          'reason': instance.reason,
          'status': instance.status,
          'type': instance.type,
        };
