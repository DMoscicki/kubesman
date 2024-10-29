// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'networkpolicyspec.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Networkpolicyspec _$NetworkpolicyspecFromJson(Map<String, dynamic> json) =>
    Networkpolicyspec(
      egress: (json['egress'] as List<dynamic>?)
          ?.map((e) => IoK8SApiNetworkingV1NetworkPolicyEgressRule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      ingress: (json['ingress'] as List<dynamic>?)
          ?.map((e) => IoK8SApiNetworkingV1NetworkPolicyIngressRule.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      podSelector: IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(
          json['podSelector'] as Map<String, dynamic>),
      policyTypes: (json['policyTypes'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
    );

Map<String, dynamic> _$NetworkpolicyspecToJson(Networkpolicyspec instance) =>
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
