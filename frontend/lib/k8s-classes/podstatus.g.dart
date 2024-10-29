// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'podstatus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Podstatus _$PodstatusFromJson(Map<String, dynamic> json) => Podstatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1PodCondition.fromJson(e as Map<String, dynamic>))
          .toList(),
      containerStatuses: (json['containerStatuses'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ContainerStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      ephemeralContainerStatuses: (json['ephemeralContainerStatuses']
              as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ContainerStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      hostIp: json['hostIP'] as String?,
      hostIPs: (json['hostIPs'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1HostIp.fromJson(e as Map<String, dynamic>))
          .toList(),
      initContainerStatuses: (json['initContainerStatuses'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ContainerStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      nominatedNodeName: json['nominatedNodeName'] as String?,
      phase: json['phase'] as String?,
      podIp: json['podIP'] as String?,
      podIPs: (json['podIPs'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1PodIp.fromJson(e as Map<String, dynamic>))
          .toList(),
      qosClass: json['qosClass'] as String?,
      reason: json['reason'] as String?,
      resize: json['resize'] as String?,
      resourceClaimStatuses: (json['resourceClaimStatuses'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1PodResourceClaimStatus.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      startTime: json['startTime'] == null
          ? null
          : DateTime.parse(json['startTime'] as String),
    );

Map<String, dynamic> _$PodstatusToJson(Podstatus instance) => <String, dynamic>{
      'conditions': instance.conditions,
      'containerStatuses': instance.containerStatuses,
      'ephemeralContainerStatuses': instance.ephemeralContainerStatuses,
      'hostIP': instance.hostIp,
      'hostIPs': instance.hostIPs,
      'initContainerStatuses': instance.initContainerStatuses,
      'message': instance.message,
      'nominatedNodeName': instance.nominatedNodeName,
      'phase': instance.phase,
      'podIP': instance.podIp,
      'podIPs': instance.podIPs,
      'qosClass': instance.qosClass,
      'reason': instance.reason,
      'resize': instance.resize,
      'resourceClaimStatuses': instance.resourceClaimStatuses,
      'startTime': instance.startTime?.toIso8601String(),
    };

IoK8SApiCoreV1PodCondition _$IoK8SApiCoreV1PodConditionFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodCondition(
      lastProbeTime: json['lastProbeTime'] == null
          ? null
          : DateTime.parse(json['lastProbeTime'] as String),
      lastTransitionTime: json['lastTransitionTime'] == null
          ? null
          : DateTime.parse(json['lastTransitionTime'] as String),
      message: json['message'] as String?,
      reason: json['reason'] as String?,
      status: json['status'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodConditionToJson(
        IoK8SApiCoreV1PodCondition instance) =>
    <String, dynamic>{
      'lastProbeTime': instance.lastProbeTime?.toIso8601String(),
      'lastTransitionTime': instance.lastTransitionTime?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiCoreV1ContainerStatus _$IoK8SApiCoreV1ContainerStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ContainerStatus(
      allocatedResources: json['allocatedResources'] as Map<String, dynamic>?,
      containerId: json['containerID'] as String?,
      image: json['image'] as String,
      imageId: json['imageID'] as String,
      lastState: json['lastState'] == null
          ? null
          : IoK8SApiCoreV1ContainerState.fromJson(
              json['lastState'] as Map<String, dynamic>),
      name: json['name'] as String,
      ready: json['ready'] as bool,
      resources: json['resources'] == null
          ? null
          : IoK8SApiCoreV1ResourceRequirements.fromJson(
              json['resources'] as Map<String, dynamic>),
      restartCount: (json['restartCount'] as num).toInt(),
      started: json['started'] as bool?,
      state: json['state'] == null
          ? null
          : IoK8SApiCoreV1ContainerState.fromJson(
              json['state'] as Map<String, dynamic>),
      volumeMounts: (json['volumeMounts'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1VolumeMountStatus.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerStatusToJson(
        IoK8SApiCoreV1ContainerStatus instance) =>
    <String, dynamic>{
      'allocatedResources': instance.allocatedResources,
      'containerID': instance.containerId,
      'image': instance.image,
      'imageID': instance.imageId,
      'lastState': instance.lastState,
      'name': instance.name,
      'ready': instance.ready,
      'resources': instance.resources,
      'restartCount': instance.restartCount,
      'started': instance.started,
      'state': instance.state,
      'volumeMounts': instance.volumeMounts,
    };

IoK8SApiCoreV1ContainerState _$IoK8SApiCoreV1ContainerStateFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ContainerState(
      running: json['running'] == null
          ? null
          : IoK8SApiCoreV1ContainerStateRunning.fromJson(
              json['running'] as Map<String, dynamic>),
      terminated: json['terminated'] == null
          ? null
          : IoK8SApiCoreV1ContainerStateTerminated.fromJson(
              json['terminated'] as Map<String, dynamic>),
      waiting: json['waiting'] == null
          ? null
          : IoK8SApiCoreV1ContainerStateWaiting.fromJson(
              json['waiting'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerStateToJson(
        IoK8SApiCoreV1ContainerState instance) =>
    <String, dynamic>{
      'running': instance.running,
      'terminated': instance.terminated,
      'waiting': instance.waiting,
    };

IoK8SApiCoreV1ContainerStateRunning
    _$IoK8SApiCoreV1ContainerStateRunningFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ContainerStateRunning(
          startedAt: json['startedAt'] == null
              ? null
              : DateTime.parse(json['startedAt'] as String),
        );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerStateRunningToJson(
        IoK8SApiCoreV1ContainerStateRunning instance) =>
    <String, dynamic>{
      'startedAt': instance.startedAt?.toIso8601String(),
    };

IoK8SApiCoreV1ContainerStateTerminated
    _$IoK8SApiCoreV1ContainerStateTerminatedFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1ContainerStateTerminated(
          containerId: json['containerID'] as String?,
          exitCode: (json['exitCode'] as num).toInt(),
          finishedAt: json['finishedAt'] == null
              ? null
              : DateTime.parse(json['finishedAt'] as String),
          message: json['message'] as String?,
          reason: json['reason'] as String?,
          signal: (json['signal'] as num?)?.toInt(),
          startedAt: json['startedAt'] == null
              ? null
              : DateTime.parse(json['startedAt'] as String),
        );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerStateTerminatedToJson(
        IoK8SApiCoreV1ContainerStateTerminated instance) =>
    <String, dynamic>{
      'containerID': instance.containerId,
      'exitCode': instance.exitCode,
      'finishedAt': instance.finishedAt?.toIso8601String(),
      'message': instance.message,
      'reason': instance.reason,
      'signal': instance.signal,
      'startedAt': instance.startedAt?.toIso8601String(),
    };

IoK8SApiCoreV1ContainerStateWaiting
    _$IoK8SApiCoreV1ContainerStateWaitingFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1ContainerStateWaiting(
          message: json['message'] as String?,
          reason: json['reason'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1ContainerStateWaitingToJson(
        IoK8SApiCoreV1ContainerStateWaiting instance) =>
    <String, dynamic>{
      'message': instance.message,
      'reason': instance.reason,
    };

IoK8SApiCoreV1ResourceRequirements _$IoK8SApiCoreV1ResourceRequirementsFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ResourceRequirements(
      claims: (json['claims'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ResourceClaim.fromJson(e as Map<String, dynamic>))
          .toList(),
      limits: json['limits'] as Map<String, dynamic>?,
      requests: json['requests'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceRequirementsToJson(
        IoK8SApiCoreV1ResourceRequirements instance) =>
    <String, dynamic>{
      'claims': instance.claims,
      'limits': instance.limits,
      'requests': instance.requests,
    };

IoK8SApiCoreV1ResourceClaim _$IoK8SApiCoreV1ResourceClaimFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ResourceClaim(
      name: json['name'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ResourceClaimToJson(
        IoK8SApiCoreV1ResourceClaim instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

IoK8SApiCoreV1VolumeMountStatus _$IoK8SApiCoreV1VolumeMountStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1VolumeMountStatus(
      mountPath: json['mountPath'] as String,
      name: json['name'] as String,
      readOnly: json['readOnly'] as bool?,
      recursiveReadOnly: json['recursiveReadOnly'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1VolumeMountStatusToJson(
        IoK8SApiCoreV1VolumeMountStatus instance) =>
    <String, dynamic>{
      'mountPath': instance.mountPath,
      'name': instance.name,
      'readOnly': instance.readOnly,
      'recursiveReadOnly': instance.recursiveReadOnly,
    };

IoK8SApiCoreV1HostIp _$IoK8SApiCoreV1HostIpFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1HostIp(
      ip: json['ip'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1HostIpToJson(
        IoK8SApiCoreV1HostIp instance) =>
    <String, dynamic>{
      'ip': instance.ip,
    };

IoK8SApiCoreV1PodIp _$IoK8SApiCoreV1PodIpFromJson(Map<String, dynamic> json) =>
    IoK8SApiCoreV1PodIp(
      ip: json['ip'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PodIpToJson(
        IoK8SApiCoreV1PodIp instance) =>
    <String, dynamic>{
      'ip': instance.ip,
    };

IoK8SApiCoreV1PodResourceClaimStatus
    _$IoK8SApiCoreV1PodResourceClaimStatusFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1PodResourceClaimStatus(
          name: json['name'] as String,
          resourceClaimName: json['resourceClaimName'] as String?,
        );

Map<String, dynamic> _$IoK8SApiCoreV1PodResourceClaimStatusToJson(
        IoK8SApiCoreV1PodResourceClaimStatus instance) =>
    <String, dynamic>{
      'name': instance.name,
      'resourceClaimName': instance.resourceClaimName,
    };
