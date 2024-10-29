// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'csinodedriver.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Csinodedriver _$CsinodedriverFromJson(Map<String, dynamic> json) =>
    Csinodedriver(
      allocatable: json['allocatable'] == null
          ? null
          : IoK8SApiStorageV1VolumeNodeResources.fromJson(
              json['allocatable'] as Map<String, dynamic>),
      name: json['name'] as String?,
      nodeId: json['nodeID'] as String?,
      topologyKeys: (json['topologyKeys'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$CsinodedriverToJson(Csinodedriver instance) =>
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
