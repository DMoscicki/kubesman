// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingress.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingress _$IngressFromJson(Map<String, dynamic> json) => Ingress(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$KindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiNetworkingV1IngressSpec.fromJson(
              json['spec'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : IoK8SApiNetworkingV1IngressStatus.fromJson(
              json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IngressToJson(Ingress instance) => <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$KindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
      'status': instance.status,
    };

const _$KindEnumMap = {
  Kind.INGRESS: 'Ingress',
};

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      annotations: (json['annotations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
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
          ?.map((e) => e as String?)
          .toList(),
      generateName: json['generateName'] as String?,
      generation: (json['generation'] as num?)?.toInt(),
      labels: (json['labels'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String?),
      ),
      managedFields: (json['managedFields'] as List<dynamic>?)
          ?.map((e) =>
              ManagedfieldsentryMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String?,
      namespace: json['namespace'] as String?,
      ownerReferences: (json['ownerReferences'] as List<dynamic>?)
          ?.map((e) => OwnerreferenceMetaV1.fromJson(e as Map<String, dynamic>))
          .toList(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
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

ManagedfieldsentryMetaV1 _$ManagedfieldsentryMetaV1FromJson(
        Map<String, dynamic> json) =>
    ManagedfieldsentryMetaV1(
      apiVersion: json['apiVersion'] as String?,
      fieldsType: json['fieldsType'] as String?,
      fieldsV1: json['fieldsV1'] as Map<String, dynamic>?,
      manager: json['manager'] as String?,
      operation: json['operation'] as String?,
      subresource: json['subresource'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
    );

Map<String, dynamic> _$ManagedfieldsentryMetaV1ToJson(
        ManagedfieldsentryMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'fieldsType': instance.fieldsType,
      'fieldsV1': instance.fieldsV1,
      'manager': instance.manager,
      'operation': instance.operation,
      'subresource': instance.subresource,
      'time': instance.time?.toIso8601String(),
    };

OwnerreferenceMetaV1 _$OwnerreferenceMetaV1FromJson(
        Map<String, dynamic> json) =>
    OwnerreferenceMetaV1(
      apiVersion: json['apiVersion'] as String?,
      blockOwnerDeletion: json['blockOwnerDeletion'] as bool?,
      controller: json['controller'] as bool?,
      kind: json['kind'] as String?,
      name: json['name'] as String?,
      uid: json['uid'] as String?,
    );

Map<String, dynamic> _$OwnerreferenceMetaV1ToJson(
        OwnerreferenceMetaV1 instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'blockOwnerDeletion': instance.blockOwnerDeletion,
      'controller': instance.controller,
      'kind': instance.kind,
      'name': instance.name,
      'uid': instance.uid,
    };

IoK8SApiNetworkingV1IngressSpec _$IoK8SApiNetworkingV1IngressSpecFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1IngressSpec(
      defaultBackend: json['defaultBackend'] == null
          ? null
          : IoK8SApiNetworkingV1IngressBackend.fromJson(
              json['defaultBackend'] as Map<String, dynamic>),
      ingressClassName: json['ingressClassName'] as String?,
      rules: (json['rules'] as List<dynamic>?)
          ?.map((e) => IoK8SApiNetworkingV1IngressRule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      tls: (json['tls'] as List<dynamic>?)
          ?.map((e) => IoK8SApiNetworkingV1IngressTls.fromJson(
              e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressSpecToJson(
        IoK8SApiNetworkingV1IngressSpec instance) =>
    <String, dynamic>{
      'defaultBackend': instance.defaultBackend,
      'ingressClassName': instance.ingressClassName,
      'rules': instance.rules,
      'tls': instance.tls,
    };

IoK8SApiNetworkingV1IngressBackend _$IoK8SApiNetworkingV1IngressBackendFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1IngressBackend(
      resource: json['resource'] == null
          ? null
          : IoK8SApiCoreV1TypedLocalObjectReference.fromJson(
              json['resource'] as Map<String, dynamic>),
      service: json['service'] == null
          ? null
          : IoK8SApiNetworkingV1IngressServiceBackend.fromJson(
              json['service'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressBackendToJson(
        IoK8SApiNetworkingV1IngressBackend instance) =>
    <String, dynamic>{
      'resource': instance.resource,
      'service': instance.service,
    };

IoK8SApiCoreV1TypedLocalObjectReference
    _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiCoreV1TypedLocalObjectReference(
          apiGroup: json['apiGroup'] as String?,
          kind: json['kind'] as String,
          name: json['name'] as String,
        );

Map<String, dynamic> _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(
        IoK8SApiCoreV1TypedLocalObjectReference instance) =>
    <String, dynamic>{
      'apiGroup': instance.apiGroup,
      'kind': instance.kind,
      'name': instance.name,
    };

IoK8SApiNetworkingV1IngressServiceBackend
    _$IoK8SApiNetworkingV1IngressServiceBackendFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressServiceBackend(
          name: json['name'] as String,
          port: json['port'] == null
              ? null
              : IoK8SApiNetworkingV1ServiceBackendPort.fromJson(
                  json['port'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressServiceBackendToJson(
        IoK8SApiNetworkingV1IngressServiceBackend instance) =>
    <String, dynamic>{
      'name': instance.name,
      'port': instance.port,
    };

IoK8SApiNetworkingV1ServiceBackendPort
    _$IoK8SApiNetworkingV1ServiceBackendPortFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1ServiceBackendPort(
          name: json['name'] as String?,
          number: (json['number'] as num?)?.toInt(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1ServiceBackendPortToJson(
        IoK8SApiNetworkingV1ServiceBackendPort instance) =>
    <String, dynamic>{
      'name': instance.name,
      'number': instance.number,
    };

IoK8SApiNetworkingV1IngressRule _$IoK8SApiNetworkingV1IngressRuleFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1IngressRule(
      host: json['host'] as String?,
      http: json['http'] == null
          ? null
          : IoK8SApiNetworkingV1HttpIngressRuleValue.fromJson(
              json['http'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressRuleToJson(
        IoK8SApiNetworkingV1IngressRule instance) =>
    <String, dynamic>{
      'host': instance.host,
      'http': instance.http,
    };

IoK8SApiNetworkingV1HttpIngressRuleValue
    _$IoK8SApiNetworkingV1HttpIngressRuleValueFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1HttpIngressRuleValue(
          paths: (json['paths'] as List<dynamic>)
              .map((e) => IoK8SApiNetworkingV1HttpIngressPath.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1HttpIngressRuleValueToJson(
        IoK8SApiNetworkingV1HttpIngressRuleValue instance) =>
    <String, dynamic>{
      'paths': instance.paths,
    };

IoK8SApiNetworkingV1HttpIngressPath
    _$IoK8SApiNetworkingV1HttpIngressPathFromJson(Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1HttpIngressPath(
          backend: IoK8SApiNetworkingV1IngressBackend.fromJson(
              json['backend'] as Map<String, dynamic>),
          path: json['path'] as String?,
          pathType: json['pathType'] as String,
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1HttpIngressPathToJson(
        IoK8SApiNetworkingV1HttpIngressPath instance) =>
    <String, dynamic>{
      'backend': instance.backend,
      'path': instance.path,
      'pathType': instance.pathType,
    };

IoK8SApiNetworkingV1IngressTls _$IoK8SApiNetworkingV1IngressTlsFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1IngressTls(
      hosts:
          (json['hosts'] as List<dynamic>?)?.map((e) => e as String).toList(),
      secretName: json['secretName'] as String?,
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressTlsToJson(
        IoK8SApiNetworkingV1IngressTls instance) =>
    <String, dynamic>{
      'hosts': instance.hosts,
      'secretName': instance.secretName,
    };

IoK8SApiNetworkingV1IngressStatus _$IoK8SApiNetworkingV1IngressStatusFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1IngressStatus(
      loadBalancer: json['loadBalancer'] == null
          ? null
          : IoK8SApiNetworkingV1IngressLoadBalancerStatus.fromJson(
              json['loadBalancer'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressStatusToJson(
        IoK8SApiNetworkingV1IngressStatus instance) =>
    <String, dynamic>{
      'loadBalancer': instance.loadBalancer,
    };

IoK8SApiNetworkingV1IngressLoadBalancerStatus
    _$IoK8SApiNetworkingV1IngressLoadBalancerStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressLoadBalancerStatus(
          ingress: (json['ingress'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiNetworkingV1IngressLoadBalancerIngress.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressLoadBalancerStatusToJson(
        IoK8SApiNetworkingV1IngressLoadBalancerStatus instance) =>
    <String, dynamic>{
      'ingress': instance.ingress,
    };

IoK8SApiNetworkingV1IngressLoadBalancerIngress
    _$IoK8SApiNetworkingV1IngressLoadBalancerIngressFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressLoadBalancerIngress(
          hostname: json['hostname'] as String?,
          ip: json['ip'] as String?,
          ports: (json['ports'] as List<dynamic>?)
              ?.map((e) => IoK8SApiNetworkingV1IngressPortStatus.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressLoadBalancerIngressToJson(
        IoK8SApiNetworkingV1IngressLoadBalancerIngress instance) =>
    <String, dynamic>{
      'hostname': instance.hostname,
      'ip': instance.ip,
      'ports': instance.ports,
    };

IoK8SApiNetworkingV1IngressPortStatus
    _$IoK8SApiNetworkingV1IngressPortStatusFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1IngressPortStatus(
          error: json['error'] as String?,
          port: (json['port'] as num).toInt(),
          protocol: json['protocol'] as String,
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1IngressPortStatusToJson(
        IoK8SApiNetworkingV1IngressPortStatus instance) =>
    <String, dynamic>{
      'error': instance.error,
      'port': instance.port,
      'protocol': instance.protocol,
    };
