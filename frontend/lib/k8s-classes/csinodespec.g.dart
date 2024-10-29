// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csinodespec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Csinodespec _$CsinodespecFromJson(Map<String, dynamic> json) => Csinodespec(
      drivers: (json['drivers'] as List<dynamic>?)
          ?.map((e) => IoK8SApiStorageV1CsiNodeDriver.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CsinodespecToJson(Csinodespec instance) =>
    <String, dynamic>{
      'drivers': instance.drivers,
    };

IoK8SApiStorageV1CsiNodeDriver _$IoK8SApiStorageV1CsiNodeDriverFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiStorageV1CsiNodeDriver(
      allocatable: json['allocatable'] == null
          ? null
          : IoK8SApiStorageV1VolumeNodeResources.fromJson(
              json['allocatable'] as Map<String, dynamic>),
      name: json['name'] as String,
      nodeId: json['nodeID'] as String,
      topologyKeys: (json['topologyKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiStorageV1CsiNodeDriverToJson(
        IoK8SApiStorageV1CsiNodeDriver instance) =>
    <String, dynamic>{
      'allocatable': instance.allocatable,
      'name': instance.name,
      'nodeID': instance.nodeId,
      'topologyKeys': instance.topologyKeys,
    };

IoK8SApiStorageV1VolumeNodeResources
    _$IoK8SApiStorageV1VolumeNodeResourcesFromJson(Map<String, dynamic> json) =>
        IoK8SApiStorageV1VolumeNodeResources(
          count: (json['count'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiStorageV1VolumeNodeResourcesToJson(
        IoK8SApiStorageV1VolumeNodeResources instance) =>
    <String, dynamic>{
      'count': instance.count,
    };
