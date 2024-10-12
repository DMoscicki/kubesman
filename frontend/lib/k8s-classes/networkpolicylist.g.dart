// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'networkpolicylist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Networkpolicylist _$NetworkpolicylistFromJson(Map<String, dynamic> json) =>
    Networkpolicylist(
      apiVersion: json['apiVersion'] as String?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => IoK8SApiNetworkingV1NetworkPolicy.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      kind: $enumDecodeNullable(_$NetworkpolicylistKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetworkpolicylistToJson(Networkpolicylist instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'items': instance.items,
      'kind': _$NetworkpolicylistKindEnumMap[instance.kind],
      'metadata': instance.metadata,
    };

const _$NetworkpolicylistKindEnumMap = {
  NetworkpolicylistKind.NETWORK_POLICY_LIST: 'NetworkPolicyList',
};

IoK8SApiNetworkingV1NetworkPolicy _$IoK8SApiNetworkingV1NetworkPolicyFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1NetworkPolicy(
      apiVersion: json['apiVersion'] as String?,
      kind: $enumDecodeNullable(_$ItemKindEnumMap, json['kind']),
      metadata: json['metadata'] == null
          ? null
          : IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(
              json['metadata'] as Map<String, dynamic>),
      spec: json['spec'] == null
          ? null
          : IoK8SApiNetworkingV1NetworkPolicySpec.fromJson(
              json['spec'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1NetworkPolicyToJson(
        IoK8SApiNetworkingV1NetworkPolicy instance) =>
    <String, dynamic>{
      'apiVersion': instance.apiVersion,
      'kind': _$ItemKindEnumMap[instance.kind],
      'metadata': instance.metadata,
      'spec': instance.spec,
    };

const _$ItemKindEnumMap = {
  ItemKind.NETWORK_POLICY: 'NetworkPolicy',
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

IoK8SApiNetworkingV1NetworkPolicySpec
    _$IoK8SApiNetworkingV1NetworkPolicySpecFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1NetworkPolicySpec(
          egress: (json['egress'] as List<dynamic>?)
              ?.map((e) => IoK8SApiNetworkingV1NetworkPolicyEgressRule.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          ingress: (json['ingress'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApiNetworkingV1NetworkPolicyIngressRule.fromJson(
                      e as Map<String, dynamic>))
              .toList(),
          podSelector: IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
              json['podSelector'] as Map<String, dynamic>),
          policyTypes: (json['policyTypes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1NetworkPolicySpecToJson(
        IoK8SApiNetworkingV1NetworkPolicySpec instance) =>
    <String, dynamic>{
      'egress': instance.egress,
      'ingress': instance.ingress,
      'podSelector': instance.podSelector,
      'policyTypes': instance.policyTypes,
    };

IoK8SApiNetworkingV1NetworkPolicyEgressRule
    _$IoK8SApiNetworkingV1NetworkPolicyEgressRuleFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1NetworkPolicyEgressRule(
          ports: (json['ports'] as List<dynamic>?)
              ?.map((e) => IoK8SApiNetworkingV1NetworkPolicyPort.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          to: (json['to'] as List<dynamic>?)
              ?.map((e) => IoK8SApiNetworkingV1NetworkPolicyPeer.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1NetworkPolicyEgressRuleToJson(
        IoK8SApiNetworkingV1NetworkPolicyEgressRule instance) =>
    <String, dynamic>{
      'ports': instance.ports,
      'to': instance.to,
    };

IoK8SApiNetworkingV1NetworkPolicyPort
    _$IoK8SApiNetworkingV1NetworkPolicyPortFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1NetworkPolicyPort(
          endPort: (json['endPort'] as num?)?.toInt(),
          port: json['port'],
          protocol: json['protocol'] as String?,
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1NetworkPolicyPortToJson(
        IoK8SApiNetworkingV1NetworkPolicyPort instance) =>
    <String, dynamic>{
      'endPort': instance.endPort,
      'port': instance.port,
      'protocol': instance.protocol,
    };

IoK8SApiNetworkingV1NetworkPolicyPeer
    _$IoK8SApiNetworkingV1NetworkPolicyPeerFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1NetworkPolicyPeer(
          ipBlock: json['ipBlock'] == null
              ? null
              : IoK8SApiNetworkingV1IpBlock.fromJson(
                  json['ipBlock'] as Map<String, dynamic>),
          namespaceSelector: json['namespaceSelector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['namespaceSelector'] as Map<String, dynamic>),
          podSelector: json['podSelector'] == null
              ? null
              : IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
                  json['podSelector'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1NetworkPolicyPeerToJson(
        IoK8SApiNetworkingV1NetworkPolicyPeer instance) =>
    <String, dynamic>{
      'ipBlock': instance.ipBlock,
      'namespaceSelector': instance.namespaceSelector,
      'podSelector': instance.podSelector,
    };

IoK8SApiNetworkingV1IpBlock _$IoK8SApiNetworkingV1IpBlockFromJson(
        Map<String, dynamic> json) =>
    IoK8SApiNetworkingV1IpBlock(
      cidr: json['cidr'] as String,
      except:
          (json['except'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$IoK8SApiNetworkingV1IpBlockToJson(
        IoK8SApiNetworkingV1IpBlock instance) =>
    <String, dynamic>{
      'cidr': instance.cidr,
      'except': instance.except,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelector
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelector(
          matchExpressions: (json['matchExpressions'] as List<dynamic>?)
              ?.map((e) =>
                  IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
                      .fromJson(e as Map<String, dynamic>))
              .toList(),
          matchLabels: (json['matchLabels'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ),
        );

Map<String, dynamic> _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(
        IoK8SApimachineryPkgApisMetaV1LabelSelector instance) =>
    <String, dynamic>{
      'matchExpressions': instance.matchExpressions,
      'matchLabels': instance.matchLabels,
    };

IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(
            Map<String, dynamic> json) =>
        IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement(
          key: json['key'] as String,
          ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator:
              json['operator'] as String,
          values: (json['values'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
        );

Map<String, dynamic>
    _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(
            IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement instance) =>
        <String, dynamic>{
          'key': instance.key,
          'operator': instance
              .ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
          'values': instance.values,
        };

IoK8SApiNetworkingV1NetworkPolicyIngressRule
    _$IoK8SApiNetworkingV1NetworkPolicyIngressRuleFromJson(
            Map<String, dynamic> json) =>
        IoK8SApiNetworkingV1NetworkPolicyIngressRule(
          from: (json['from'] as List<dynamic>?)
              ?.map((e) => IoK8SApiNetworkingV1NetworkPolicyPeer.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          ports: (json['ports'] as List<dynamic>?)
              ?.map((e) => IoK8SApiNetworkingV1NetworkPolicyPort.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$IoK8SApiNetworkingV1NetworkPolicyIngressRuleToJson(
        IoK8SApiNetworkingV1NetworkPolicyIngressRule instance) =>
    <String, dynamic>{
      'from': instance.from,
      'ports': instance.ports,
    };

Metadata _$MetadataFromJson(Map<String, dynamic> json) => Metadata(
      metadataContinue: json['continue'] as String?,
      remainingItemCount: (json['remainingItemCount'] as num?)?.toInt(),
      resourceVersion: json['resourceVersion'] as String?,
      selfLink: json['selfLink'] as String?,
    );

Map<String, dynamic> _$MetadataToJson(Metadata instance) => <String, dynamic>{
      'continue': instance.metadataContinue,
      'remainingItemCount': instance.remainingItemCount,
      'resourceVersion': instance.resourceVersion,
      'selfLink': instance.selfLink,
    };
