// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Node _$NodeFromJson(Map<String, dynamic> json) => Node(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiCoreV1NodeSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiCoreV1NodeStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodeToJson(Node instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.NODE: 'Node',
};

IoK8SApimachineryPkgApisMetaV1ObjectMeta
    _$IoK8SApimachineryPkgApisMetaV1ObjectMetaFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ObjectMeta(
          annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          creationTimestamp: json['creationTimestamp'] == null
              ? null
              : DateTime.parse(json['creationTimestamp'] as String),
          deletionGracePeriodSeconds:
              (json['deletionGracePeriodSeconds'] as num?)?.toInt(),
          deletionTimestamp: json['deletionTimestamp'] == null
              ? null
              : DateTime.parse(json['deletionTimestamp'] as String),
          finalizers: (json['finalizers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          generateName: json['generateName'] as String?,
          generation: (json['generation'] as num?)?.toInt(),
          labels: (json['labels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
          managedFields: (json['managedFields'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          name: json['name'] as String?,
          namespace: json['namespace'] as String?,
          ownerReferences: (json['ownerReferences'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1OwnerReference.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          resourceVersion: json['resourceVersion'] as String?,
          selfLink: json['selfLink'] as String?,
          uid: json['uid'] as String?,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ObjectMetaToJson(
        IoK8SApimachineryPkgApisMetaV1ObjectMeta instance) =>
    <String, dynamic>{
      'annotations': instance.annotations,
      'creationTimestamp': instance.creationTimestamp?.toIso8601String(),
      'deletionGracePeriodSeconds': instance.deletionGracePeriodSeconds,
      'deletionTimestamp': instance.deletionTimestamp?.toIso8601String(),
      'finalizers': instance.finalizers,
      'generateName': instance.generateName,
      'generation': instance.generation,
      'labels': instance.labels,
      'managedFields': instance.managedFields,
      'name': instance.name,
      'namespace': instance.namespace,
      'ownerReferences': instance.ownerReferences,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
      'uid': instance.uid,
    };

IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry
    _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry(
          apiVersion: json['apiVersion'] as String?,
          fieldsType: json['fieldsType'] as String?,
          fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
          manager: json['manager'] as String?,
          operation: json['operation'] as String?,
          subresource: json['subresource'] as String?,
          time: json['time'] == null
              ? null
              : DateTime.parse(json['time'] as String),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryToJson(
        IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

IoK8SApimachineryPkgApisMetaV1OwnerReference
    _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1OwnerReference(
          apiVersion: json['apiVersion'] as String,
          blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
          controller: json['controller'] as bool?,
          kind: json['kind'] as String,
          name: json['name'] as String,
          uid: json['uid'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceToJson(
        IoK8SApimachineryPkgApisMetaV1OwnerReference instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

IoK8SApiCoreV1NodeSpec _$IoK8SApiCoreV1NodeSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeSpec(
      configSource: json['configSource'] == null
          ? null
          : IoK8SApiCoreV1NodeConfigSource.fromJson(
              json['configSource'] as Map<String, dynamic>),
      externalId: json['externalID'] as String?,
      podCidr: json['podCIDR'] as String?,
      podCidRs: (json['podCIDRs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      providerId: json['providerID'] as String?,
      taints: (json['taints'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1Taint.fromJson(e as Map<String, dynamic>))
          .toList(),
      unschedulable: json['unschedulable'] as bool?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeSpecToJson(
        IoK8SApiCoreV1NodeSpec instance) =>
    <String, dynamic>{
      'configSource': instance.configSource,
      'externalID': instance.externalId,
      'podCIDR': instance.podCidr,
      'podCIDRs': instance.podCidRs,
      'providerID': instance.providerId,
      'taints': instance.taints,
      'unschedulable': instance.unschedulable,
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

IoK8SApiCoreV1Taint _$IoK8SApiCoreV1TaintFromJson(Map<String, dynamic> json) =>
    IoK8SApiCoreV1Taint(
      effect: json['effect'] as String,
      key: json['key'] as String,
      timeAdded: json['timeAdded'] == null
          ? null
          : DateTime.parse(json['timeAdded'] as String),
      value: json['value'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1TaintToJson(
        IoK8SApiCoreV1Taint instance) =>
    <String, dynamic>{
      'effect': instance.effect,
      'key': instance.key,
      'timeAdded': instance.timeAdded?.toIso8601String(),
      'value': instance.value,
    };

IoK8SApiCoreV1NodeStatus _$IoK8SApiCoreV1NodeStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1NodeStatus(
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
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1NodeStatusToJson(
        IoK8SApiCoreV1NodeStatus instance) =>
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
