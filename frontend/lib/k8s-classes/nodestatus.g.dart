// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nodestatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Nodestatus _$NodestatusFromJson(Map<String, dynamic> json) => Nodestatus(
      addresses: (json['addresses'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1NodeAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      allocatable: json['allocatable'] as Map<String, dynamic>?,
      capacity: json['capacity'] as Map<String, dynamic>?,
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1NodeCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      config: json['config'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigStatus.fromJson(
              json['config'] as Map<String, dynamic>),
      daemonEndpoints: json['daemonEndpoints'] == null
          ? null
          : IoK8SApiCoreV1NodeDaemonEndpoints.fromJson(
              json['daemonEndpoints'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ContainerImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      nodeInfo: json['nodeInfo'] == null
          ? null
          : IoK8SApiCoreV1NodeSystemInfo.fromJson(
              json['nodeInfo'] as Map<String, dynamic>),
      phase: json['phase'] as String?,
      runtimeHandlers: (json['runtimeHandlers'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1NodeRuntimeHandler.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      volumesAttached: (json['volumesAttached'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1AttachedVolume.fromJson(e as Map<String, dynamic>))
          .toList(),
      volumesInUse: (json['volumesInUse'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$NodestatusToJson(Nodestatus instance) =>
    <String, dynamic>{
      'addresses': instance.addresses,
      'allocatable': instance.allocatable,
      'capacity': instance.capacity,
      'conditions': instance.conditions,
      'config': instance.config,
      'daemonEndpoints': instance.daemonEndpoints,
      'images': instance.images,
      'nodeInfo': instance.nodeInfo,
      'phase': instance.phase,
      'runtimeHandlers': instance.runtimeHandlers,
      'volumesAttached': instance.volumesAttached,
      'volumesInUse': instance.volumesInUse,
    };

IoK8SApiCoreV1NodeAddress _$IoK8SApiCoreV1NodeAddressFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeAddress(
      address: json['address'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeAddressToJson(
        IoK8SApiCoreV1NodeAddress instance) =>
    <String, dynamic>{
      'address': instance.address,
      'type': instance.type,
    };

IoK8SApiCoreV1NodeCondition _$IoK8SApiCoreV1NodeConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeCondition(
      lastHeartbeatTime: json['lastHeartbeatTime'] == null
          ? null
          : DateTime.parse(json['lastHeartbeatTime'] as String),
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeConditionToJson(
        IoK8SApiCoreV1NodeCondition instance) =>
    <String, dynamic>{
      'lastHeartbeatTime': instance.lastHeartbeatTime?.toIso8601String(),
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiCoreV1NodeConfigStatus _$IoK8SApiCoreV1NodeConfigStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeConfigStatus(
      active: json['active'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigSource.fromJson(
              json['active'] as Map<String, dynamic>),
      assigned: json['assigned'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigSource.fromJson(
              json['assigned'] as Map<String, dynamic>),
      error: json['error'] as String?,
      lastKnownGood: json['lastKnownGood'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigSource.fromJson(
              json['lastKnownGood'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeConfigStatusToJson(
        IoK8SApiCoreV1NodeConfigStatus instance) =>
    <String, dynamic>{
      'active': instance.active,
      'assigned': instance.assigned,
      'error': instance.error,
      'lastKnownGood': instance.lastKnownGood,
    };

IoK8SApiCoreV1NodeConfigSource _$IoK8SApiCoreV1NodeConfigSourceFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeConfigSource(
      configMap: json['configMap'] == null
          ? null
          : IoK8SApiCoreV1ConfigMapNodeConfigSource.fromJson(
              json['configMap'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeConfigSourceToJson(
        IoK8SApiCoreV1NodeConfigSource instance) =>
    <String, dynamic>{
      'configMap': instance.configMap,
    };

IoK8SApiCoreV1ConfigMapNodeConfigSource
    _$IoK8SApiCoreV1ConfigMapNodeConfigSourceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ConfigMapNodeConfigSource(
          kubeletConfigKey: json['kubeletConfigKey'] as String,
          name: json['name'] as String,
          namespace: json['namespace'] as String,
          resourceVersion: json['resourceVersion'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ConfigMapNodeConfigSourceToJson(
        IoK8SApiCoreV1ConfigMapNodeConfigSource instance) =>
    <String, dynamic>{
      'kubeletConfigKey': instance.kubeletConfigKey,
      'name': instance.name,
      'namespace': instance.namespace,
      'resourceVersion': instance.resourceVersion,
      'uid': instance.uid,
    };

IoK8SApiCoreV1NodeDaemonEndpoints _$IoK8SApiCoreV1NodeDaemonEndpointsFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeDaemonEndpoints(
      kubeletEndpoint: json['kubeletEndpoint'] == null
          ? null
          : IoK8SApiCoreV1DaemonEndpoint.fromJson(
              json['kubeletEndpoint'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeDaemonEndpointsToJson(
        IoK8SApiCoreV1NodeDaemonEndpoints instance) =>
    <String, dynamic>{
      'kubeletEndpoint': instance.kubeletEndpoint,
    };

IoK8SApiCoreV1DaemonEndpoint _$IoK8SApiCoreV1DaemonEndpointFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1DaemonEndpoint(
      port: (json['Port'] as num).toInt(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1DaemonEndpointToJson(
        IoK8SApiCoreV1DaemonEndpoint instance) =>
    <String, dynamic>{
      'Port': instance.port,
    };

IoK8SApiCoreV1ContainerImage _$IoK8SApiCoreV1ContainerImageFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ContainerImage(
      names:
          (json['names'] as List<dynamic>?)?.map((e) => e as String).toList(),
      sizeBytes: (json['sizeBytes'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerImageToJson(
        IoK8SApiCoreV1ContainerImage instance) =>
    <String, dynamic>{
      'names': instance.names,
      'sizeBytes': instance.sizeBytes,
    };

IoK8SApiCoreV1NodeSystemInfo _$IoK8SApiCoreV1NodeSystemInfoFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeSystemInfo(
      architecture: json['architecture'] as String,
      bootId: json['bootID'] as String,
      containerRuntimeVersion: json['containerRuntimeVersion'] as String,
      kernelVersion: json['kernelVersion'] as String,
      kubeletVersion: json['kubeletVersion'] as String,
      kubeProxyVersion: json['kubeProxyVersion'] as String,
      machineId: json['machineID'] as String,
      operatingSystem: json['operatingSystem'] as String,
      osImage: json['osImage'] as String,
      systemUuid: json['systemUUID'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSystemInfoToJson(
        IoK8SApiCoreV1NodeSystemInfo instance) =>
    <String, dynamic>{
      'architecture': instance.architecture,
      'bootID': instance.bootId,
      'containerRuntimeVersion': instance.containerRuntimeVersion,
      'kernelVersion': instance.kernelVersion,
      'kubeletVersion': instance.kubeletVersion,
      'kubeProxyVersion': instance.kubeProxyVersion,
      'machineID': instance.machineId,
      'operatingSystem': instance.operatingSystem,
      'osImage': instance.osImage,
      'systemUUID': instance.systemUuid,
    };

IoK8SApiCoreV1NodeRuntimeHandler _$IoK8SApiCoreV1NodeRuntimeHandlerFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeRuntimeHandler(
      features: json['features'] == null
          ? null
          : IoK8SApiCoreV1NodeRuntimeHandlerFeatures.fromJson(
              json['features'] as Map<String, dynamic>),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeRuntimeHandlerToJson(
        IoK8SApiCoreV1NodeRuntimeHandler instance) =>
    <String, dynamic>{
      'features': instance.features,
      'name': instance.name,
    };

IoK8SApiCoreV1NodeRuntimeHandlerFeatures
    _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1NodeRuntimeHandlerFeatures(
          recursiveReadOnlyMounts: json['recursiveReadOnlyMounts'] as bool?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1NodeRuntimeHandlerFeaturesToJson(
        IoK8SApiCoreV1NodeRuntimeHandlerFeatures instance) =>
    <String, dynamic>{
      'recursiveReadOnlyMounts': instance.recursiveReadOnlyMounts,
    };

IoK8SApiCoreV1AttachedVolume _$IoK8SApiCoreV1AttachedVolumeFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1AttachedVolume(
      devicePath: json['devicePath'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1AttachedVolumeToJson(
        IoK8SApiCoreV1AttachedVolume instance) =>
    <String, dynamic>{
      'devicePath': instance.devicePath,
      'name': instance.name,
    };
