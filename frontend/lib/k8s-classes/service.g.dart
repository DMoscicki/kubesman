// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Service _$ServiceFromJson(Map<String, dynamic> json) => Service(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiCoreV1ServiceSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiCoreV1ServiceStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.SERVICE: 'Service',
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

IoK8SApiCoreV1ServiceSpec _$IoK8SApiCoreV1ServiceSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ServiceSpec(
      allocateLoadBalancerNodePorts:
          json['allocateLoadBalancerNodePorts'] as bool?,
      clusterIp: json['clusterIP'] as String?,
      clusterIPs: (json['clusterIPs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalIPs: (json['externalIPs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      externalName: json['externalName'] as String?,
      externalTrafficPolicy: json['externalTrafficPolicy'] as String?,
      healthCheckNodePort: (json['healthCheckNodePort'] as num?)?.toInt(),
      internalTrafficPolicy: json['internalTrafficPolicy'] as String?,
      ipFamilies: (json['ipFamilies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      ipFamilyPolicy: json['ipFamilyPolicy'] as String?,
      loadBalancerClass: json['loadBalancerClass'] as String?,
      loadBalancerIp: json['loadBalancerIP'] as String?,
      loadBalancerSourceRanges:
          (json['loadBalancerSourceRanges'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1ServicePort.fromJson(e as Map<String, dynamic>))
          .toList(),
      publishNotReadyAddresses: json['publishNotReadyAddresses'] as bool?,
      selector: (json['selector'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      sessionAffinity: json['sessionAffinity'] as String?,
      sessionAffinityConfig: json['sessionAffinityConfig'] == null
          ? null
          : IoK8SApiCoreV1SessionAffinityConfig.fromJson(
              json['sessionAffinityConfig'] as Map<String, dynamic>),
      trafficDistribution: json['trafficDistribution'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$IoK8SApiCoreV1ServiceSpecToJson(
        IoK8SApiCoreV1ServiceSpec instance) =>
    <String, dynamic>{
      'allocateLoadBalancerNodePorts': instance.allocateLoadBalancerNodePorts,
      'clusterIP': instance.clusterIp,
      'clusterIPs': instance.clusterIPs,
      'externalIPs': instance.externalIPs,
      'externalName': instance.externalName,
      'externalTrafficPolicy': instance.externalTrafficPolicy,
      'healthCheckNodePort': instance.healthCheckNodePort,
      'internalTrafficPolicy': instance.internalTrafficPolicy,
      'ipFamilies': instance.ipFamilies,
      'ipFamilyPolicy': instance.ipFamilyPolicy,
      'loadBalancerClass': instance.loadBalancerClass,
      'loadBalancerIP': instance.loadBalancerIp,
      'loadBalancerSourceRanges': instance.loadBalancerSourceRanges,
      'ports': instance.ports,
      'publishNotReadyAddresses': instance.publishNotReadyAddresses,
      'selector': instance.selector,
      'sessionAffinity': instance.sessionAffinity,
      'sessionAffinityConfig': instance.sessionAffinityConfig,
      'trafficDistribution': instance.trafficDistribution,
      'type': instance.type,
    };

IoK8SApiCoreV1ServicePort _$IoK8SApiCoreV1ServicePortFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ServicePort(
      appProtocol: json['appProtocol'] as String?,
      name: json['name'] as String?,
      nodePort: (json['nodePort'] as num?)?.toInt(),
      port: (json['port'] as num).toInt(),
      protocol: json['protocol'] as String?,
      targetPort: json['targetPort'],
    );

Map<String, dynamic> _$IoK8SApiCoreV1ServicePortToJson(
        IoK8SApiCoreV1ServicePort instance) =>
    <String, dynamic>{
      'appProtocol': instance.appProtocol,
      'name': instance.name,
      'nodePort': instance.nodePort,
      'port': instance.port,
      'protocol': instance.protocol,
      'targetPort': instance.targetPort,
    };

IoK8SApiCoreV1SessionAffinityConfig
    _$IoK8SApiCoreV1SessionAffinityConfigFromJson(Map<String, dynamic> json) =>
        IoK8SApiCoreV1SessionAffinityConfig(
          clientIp: json['clientIP'] == null
              ? null
              : IoK8SApiCoreV1ClientIpConfig.fromJson(
                  json['clientIP'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiCoreV1SessionAffinityConfigToJson(
        IoK8SApiCoreV1SessionAffinityConfig instance) =>
    <String, dynamic>{
      'clientIP': instance.clientIp,
    };

IoK8SApiCoreV1ClientIpConfig _$IoK8SApiCoreV1ClientIpConfigFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ClientIpConfig(
      timeoutSeconds: (json['timeoutSeconds'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ClientIpConfigToJson(
        IoK8SApiCoreV1ClientIpConfig instance) =>
    <String, dynamic>{
      'timeoutSeconds': instance.timeoutSeconds,
    };

IoK8SApiCoreV1ServiceStatus _$IoK8SApiCoreV1ServiceStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1ServiceStatus(
      conditions: (json['conditions'] as List<dynamic>?)
          ?.map((e) => IoK8SApimachineryPkgApisMetaV1Condition.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      loadBalancer: json['loadBalancer'] == null
          ? null
          : IoK8SApiCoreV1LoadBalancerStatus.fromJson(
              json['loadBalancer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiCoreV1ServiceStatusToJson(
        IoK8SApiCoreV1ServiceStatus instance) =>
    <String, dynamic>{
      'conditions': instance.conditions,
      'loadBalancer': instance.loadBalancer,
    };

IoK8SApimachineryPkgApisMetaV1Condition
    _$IoK8SApimachineryPkgApisMetaV1ConditionFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1Condition(
          lastTransitionTime:
              DateTime.parse(json['lastTransitionTime'] as String),
          message: json['message'] as String,
          observedGeneration: (json['observedGeneration'] as num?)?.toInt(),
          reason: json['reason'] as String,
          status: json['status'] as String,
          type: json['type'] as String,
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1ConditionToJson(
        IoK8SApimachineryPkgApisMetaV1Condition instance) =>
    <String, dynamic>{
      'lastTransitionTime': instance.lastTransitionTime.toIso8601String(),
      'message': instance.message,
      'observedGeneration': instance.observedGeneration,
      'reason': instance.reason,
      'status': instance.status,
      'type': instance.type,
    };

IoK8SApiCoreV1LoadBalancerStatus _$IoK8SApiCoreV1LoadBalancerStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LoadBalancerStatus(
      ingress: (json['ingress'] as List<dynamic>?)
          ?.map((e) => IoK8SApiCoreV1LoadBalancerIngress.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1LoadBalancerStatusToJson(
        IoK8SApiCoreV1LoadBalancerStatus instance) =>
    <String, dynamic>{
      'ingress': instance.ingress,
    };

IoK8SApiCoreV1LoadBalancerIngress _$IoK8SApiCoreV1LoadBalancerIngressFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1LoadBalancerIngress(
      hostname: json['hostname'] as String?,
      ip: json['ip'] as String?,
      ipMode: json['ipMode'] as String?,
      ports: (json['ports'] as List<dynamic>?)
          ?.map((e) =>
              IoK8SApiCoreV1PortStatus.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiCoreV1LoadBalancerIngressToJson(
        IoK8SApiCoreV1LoadBalancerIngress instance) =>
    <String, dynamic>{
      'hostname': instance.hostname,
      'ip': instance.ip,
      'ipMode': instance.ipMode,
      'ports': instance.ports,
    };

IoK8SApiCoreV1PortStatus _$IoK8SApiCoreV1PortStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiCoreV1PortStatus(
      error: json['error'] as String?,
      port: (json['port'] as num).toInt(),
      protocol: json['protocol'] as String,
    );

Map<String, dynamic> _$IoK8SApiCoreV1PortStatusToJson(
        IoK8SApiCoreV1PortStatus instance) =>
    <String, dynamic>{
      'error': instance.error,
      'port': instance.port,
      'protocol': instance.protocol,
    };
