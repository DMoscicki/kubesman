//
//  Generated code. Do not modify.
//  source: api/networking/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use hTTPIngressPathDescriptor instead')
const HTTPIngressPath$json = {
  '1': 'HTTPIngressPath',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'pathType', '3': 3, '4': 1, '5': 9, '10': 'pathType'},
    {'1': 'backend', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1.IngressBackend', '10': 'backend'},
  ],
};

/// Descriptor for `HTTPIngressPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPIngressPathDescriptor = $convert.base64Decode(
    'Cg9IVFRQSW5ncmVzc1BhdGgSEgoEcGF0aBgBIAEoCVIEcGF0aBIaCghwYXRoVHlwZRgDIAEoCV'
    'IIcGF0aFR5cGUSOwoHYmFja2VuZBgCIAEoCzIhLmFwaS5uZXR3b3JraW5nLnYxLkluZ3Jlc3NC'
    'YWNrZW5kUgdiYWNrZW5k');

@$core.Deprecated('Use hTTPIngressRuleValueDescriptor instead')
const HTTPIngressRuleValue$json = {
  '1': 'HTTPIngressRuleValue',
  '2': [
    {'1': 'paths', '3': 1, '4': 3, '5': 11, '6': '.api.networking.v1.HTTPIngressPath', '10': 'paths'},
  ],
};

/// Descriptor for `HTTPIngressRuleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPIngressRuleValueDescriptor = $convert.base64Decode(
    'ChRIVFRQSW5ncmVzc1J1bGVWYWx1ZRI4CgVwYXRocxgBIAMoCzIiLmFwaS5uZXR3b3JraW5nLn'
    'YxLkhUVFBJbmdyZXNzUGF0aFIFcGF0aHM=');

@$core.Deprecated('Use iPBlockDescriptor instead')
const IPBlock$json = {
  '1': 'IPBlock',
  '2': [
    {'1': 'cidr', '3': 1, '4': 1, '5': 9, '10': 'cidr'},
    {'1': 'except', '3': 2, '4': 3, '5': 9, '10': 'except'},
  ],
};

/// Descriptor for `IPBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iPBlockDescriptor = $convert.base64Decode(
    'CgdJUEJsb2NrEhIKBGNpZHIYASABKAlSBGNpZHISFgoGZXhjZXB0GAIgAygJUgZleGNlcHQ=');

@$core.Deprecated('Use ingressDescriptor instead')
const Ingress$json = {
  '1': 'Ingress',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1.IngressSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.networking.v1.IngressStatus', '10': 'status'},
  ],
};

/// Descriptor for `Ingress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressDescriptor = $convert.base64Decode(
    'CgdJbmdyZXNzEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESMgoEc3BlYxgCIAEoCzIeLmFwaS5uZXR3b3JraW5n'
    'LnYxLkluZ3Jlc3NTcGVjUgRzcGVjEjgKBnN0YXR1cxgDIAEoCzIgLmFwaS5uZXR3b3JraW5nLn'
    'YxLkluZ3Jlc3NTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use ingressBackendDescriptor instead')
const IngressBackend$json = {
  '1': 'IngressBackend',
  '2': [
    {'1': 'service', '3': 4, '4': 1, '5': 11, '6': '.api.networking.v1.IngressServiceBackend', '10': 'service'},
    {'1': 'resource', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.TypedLocalObjectReference', '10': 'resource'},
  ],
};

/// Descriptor for `IngressBackend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressBackendDescriptor = $convert.base64Decode(
    'Cg5JbmdyZXNzQmFja2VuZBJCCgdzZXJ2aWNlGAQgASgLMiguYXBpLm5ldHdvcmtpbmcudjEuSW'
    '5ncmVzc1NlcnZpY2VCYWNrZW5kUgdzZXJ2aWNlEkIKCHJlc291cmNlGAMgASgLMiYuYXBpLmNv'
    'cmUudjEuVHlwZWRMb2NhbE9iamVjdFJlZmVyZW5jZVIIcmVzb3VyY2U=');

@$core.Deprecated('Use ingressClassDescriptor instead')
const IngressClass$json = {
  '1': 'IngressClass',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1.IngressClassSpec', '10': 'spec'},
  ],
};

/// Descriptor for `IngressClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressClassDescriptor = $convert.base64Decode(
    'CgxJbmdyZXNzQ2xhc3MSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaX'
    'MubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI3CgRzcGVjGAIgASgLMiMuYXBpLm5ldHdv'
    'cmtpbmcudjEuSW5ncmVzc0NsYXNzU3BlY1IEc3BlYw==');

@$core.Deprecated('Use ingressClassListDescriptor instead')
const IngressClassList$json = {
  '1': 'IngressClassList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1.IngressClass', '10': 'items'},
  ],
};

/// Descriptor for `IngressClassList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressClassListDescriptor = $convert.base64Decode(
    'ChBJbmdyZXNzQ2xhc3NMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjUKBWl0ZW1zGAIgAygLMh8uYXBpLm5l'
    'dHdvcmtpbmcudjEuSW5ncmVzc0NsYXNzUgVpdGVtcw==');

@$core.Deprecated('Use ingressClassParametersReferenceDescriptor instead')
const IngressClassParametersReference$json = {
  '1': 'IngressClassParametersReference',
  '2': [
    {'1': 'aPIGroup', '3': 1, '4': 1, '5': 9, '10': 'aPIGroup'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'scope', '3': 4, '4': 1, '5': 9, '10': 'scope'},
    {'1': 'namespace', '3': 5, '4': 1, '5': 9, '10': 'namespace'},
  ],
};

/// Descriptor for `IngressClassParametersReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressClassParametersReferenceDescriptor = $convert.base64Decode(
    'Ch9JbmdyZXNzQ2xhc3NQYXJhbWV0ZXJzUmVmZXJlbmNlEhoKCGFQSUdyb3VwGAEgASgJUghhUE'
    'lHcm91cBISCgRraW5kGAIgASgJUgRraW5kEhIKBG5hbWUYAyABKAlSBG5hbWUSFAoFc2NvcGUY'
    'BCABKAlSBXNjb3BlEhwKCW5hbWVzcGFjZRgFIAEoCVIJbmFtZXNwYWNl');

@$core.Deprecated('Use ingressClassSpecDescriptor instead')
const IngressClassSpec$json = {
  '1': 'IngressClassSpec',
  '2': [
    {'1': 'controller', '3': 1, '4': 1, '5': 9, '10': 'controller'},
    {'1': 'parameters', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1.IngressClassParametersReference', '10': 'parameters'},
  ],
};

/// Descriptor for `IngressClassSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressClassSpecDescriptor = $convert.base64Decode(
    'ChBJbmdyZXNzQ2xhc3NTcGVjEh4KCmNvbnRyb2xsZXIYASABKAlSCmNvbnRyb2xsZXISUgoKcG'
    'FyYW1ldGVycxgCIAEoCzIyLmFwaS5uZXR3b3JraW5nLnYxLkluZ3Jlc3NDbGFzc1BhcmFtZXRl'
    'cnNSZWZlcmVuY2VSCnBhcmFtZXRlcnM=');

@$core.Deprecated('Use ingressListDescriptor instead')
const IngressList$json = {
  '1': 'IngressList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1.Ingress', '10': 'items'},
  ],
};

/// Descriptor for `IngressList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressListDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRIwCgVpdGVtcxgCIAMoCzIaLmFwaS5uZXR3b3Jr'
    'aW5nLnYxLkluZ3Jlc3NSBWl0ZW1z');

@$core.Deprecated('Use ingressLoadBalancerIngressDescriptor instead')
const IngressLoadBalancerIngress$json = {
  '1': 'IngressLoadBalancerIngress',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'hostname', '3': 2, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'ports', '3': 4, '4': 3, '5': 11, '6': '.api.networking.v1.IngressPortStatus', '10': 'ports'},
  ],
};

/// Descriptor for `IngressLoadBalancerIngress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressLoadBalancerIngressDescriptor = $convert.base64Decode(
    'ChpJbmdyZXNzTG9hZEJhbGFuY2VySW5ncmVzcxIOCgJpcBgBIAEoCVICaXASGgoIaG9zdG5hbW'
    'UYAiABKAlSCGhvc3RuYW1lEjoKBXBvcnRzGAQgAygLMiQuYXBpLm5ldHdvcmtpbmcudjEuSW5n'
    'cmVzc1BvcnRTdGF0dXNSBXBvcnRz');

@$core.Deprecated('Use ingressLoadBalancerStatusDescriptor instead')
const IngressLoadBalancerStatus$json = {
  '1': 'IngressLoadBalancerStatus',
  '2': [
    {'1': 'ingress', '3': 1, '4': 3, '5': 11, '6': '.api.networking.v1.IngressLoadBalancerIngress', '10': 'ingress'},
  ],
};

/// Descriptor for `IngressLoadBalancerStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressLoadBalancerStatusDescriptor = $convert.base64Decode(
    'ChlJbmdyZXNzTG9hZEJhbGFuY2VyU3RhdHVzEkcKB2luZ3Jlc3MYASADKAsyLS5hcGkubmV0d2'
    '9ya2luZy52MS5JbmdyZXNzTG9hZEJhbGFuY2VySW5ncmVzc1IHaW5ncmVzcw==');

@$core.Deprecated('Use ingressPortStatusDescriptor instead')
const IngressPortStatus$json = {
  '1': 'IngressPortStatus',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 5, '10': 'port'},
    {'1': 'protocol', '3': 2, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `IngressPortStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressPortStatusDescriptor = $convert.base64Decode(
    'ChFJbmdyZXNzUG9ydFN0YXR1cxISCgRwb3J0GAEgASgFUgRwb3J0EhoKCHByb3RvY29sGAIgAS'
    'gJUghwcm90b2NvbBIUCgVlcnJvchgDIAEoCVIFZXJyb3I=');

@$core.Deprecated('Use ingressRuleDescriptor instead')
const IngressRule$json = {
  '1': 'IngressRule',
  '2': [
    {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    {'1': 'ingressRuleValue', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1.IngressRuleValue', '10': 'ingressRuleValue'},
  ],
};

/// Descriptor for `IngressRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressRuleDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzUnVsZRISCgRob3N0GAEgASgJUgRob3N0Ek8KEGluZ3Jlc3NSdWxlVmFsdWUYAi'
    'ABKAsyIy5hcGkubmV0d29ya2luZy52MS5JbmdyZXNzUnVsZVZhbHVlUhBpbmdyZXNzUnVsZVZh'
    'bHVl');

@$core.Deprecated('Use ingressRuleValueDescriptor instead')
const IngressRuleValue$json = {
  '1': 'IngressRuleValue',
  '2': [
    {'1': 'http', '3': 1, '4': 1, '5': 11, '6': '.api.networking.v1.HTTPIngressRuleValue', '10': 'http'},
  ],
};

/// Descriptor for `IngressRuleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressRuleValueDescriptor = $convert.base64Decode(
    'ChBJbmdyZXNzUnVsZVZhbHVlEjsKBGh0dHAYASABKAsyJy5hcGkubmV0d29ya2luZy52MS5IVF'
    'RQSW5ncmVzc1J1bGVWYWx1ZVIEaHR0cA==');

@$core.Deprecated('Use ingressServiceBackendDescriptor instead')
const IngressServiceBackend$json = {
  '1': 'IngressServiceBackend',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'port', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1.ServiceBackendPort', '10': 'port'},
  ],
};

/// Descriptor for `IngressServiceBackend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressServiceBackendDescriptor = $convert.base64Decode(
    'ChVJbmdyZXNzU2VydmljZUJhY2tlbmQSEgoEbmFtZRgBIAEoCVIEbmFtZRI5CgRwb3J0GAIgAS'
    'gLMiUuYXBpLm5ldHdvcmtpbmcudjEuU2VydmljZUJhY2tlbmRQb3J0UgRwb3J0');

@$core.Deprecated('Use ingressSpecDescriptor instead')
const IngressSpec$json = {
  '1': 'IngressSpec',
  '2': [
    {'1': 'ingressClassName', '3': 4, '4': 1, '5': 9, '10': 'ingressClassName'},
    {'1': 'defaultBackend', '3': 1, '4': 1, '5': 11, '6': '.api.networking.v1.IngressBackend', '10': 'defaultBackend'},
    {'1': 'tls', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1.IngressTLS', '10': 'tls'},
    {'1': 'rules', '3': 3, '4': 3, '5': 11, '6': '.api.networking.v1.IngressRule', '10': 'rules'},
  ],
};

/// Descriptor for `IngressSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressSpecDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzU3BlYxIqChBpbmdyZXNzQ2xhc3NOYW1lGAQgASgJUhBpbmdyZXNzQ2xhc3NOYW'
    '1lEkkKDmRlZmF1bHRCYWNrZW5kGAEgASgLMiEuYXBpLm5ldHdvcmtpbmcudjEuSW5ncmVzc0Jh'
    'Y2tlbmRSDmRlZmF1bHRCYWNrZW5kEi8KA3RscxgCIAMoCzIdLmFwaS5uZXR3b3JraW5nLnYxLk'
    'luZ3Jlc3NUTFNSA3RscxI0CgVydWxlcxgDIAMoCzIeLmFwaS5uZXR3b3JraW5nLnYxLkluZ3Jl'
    'c3NSdWxlUgVydWxlcw==');

@$core.Deprecated('Use ingressStatusDescriptor instead')
const IngressStatus$json = {
  '1': 'IngressStatus',
  '2': [
    {'1': 'loadBalancer', '3': 1, '4': 1, '5': 11, '6': '.api.networking.v1.IngressLoadBalancerStatus', '10': 'loadBalancer'},
  ],
};

/// Descriptor for `IngressStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressStatusDescriptor = $convert.base64Decode(
    'Cg1JbmdyZXNzU3RhdHVzElAKDGxvYWRCYWxhbmNlchgBIAEoCzIsLmFwaS5uZXR3b3JraW5nLn'
    'YxLkluZ3Jlc3NMb2FkQmFsYW5jZXJTdGF0dXNSDGxvYWRCYWxhbmNlcg==');

@$core.Deprecated('Use ingressTLSDescriptor instead')
const IngressTLS$json = {
  '1': 'IngressTLS',
  '2': [
    {'1': 'hosts', '3': 1, '4': 3, '5': 9, '10': 'hosts'},
    {'1': 'secretName', '3': 2, '4': 1, '5': 9, '10': 'secretName'},
  ],
};

/// Descriptor for `IngressTLS`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressTLSDescriptor = $convert.base64Decode(
    'CgpJbmdyZXNzVExTEhQKBWhvc3RzGAEgAygJUgVob3N0cxIeCgpzZWNyZXROYW1lGAIgASgJUg'
    'pzZWNyZXROYW1l');

@$core.Deprecated('Use networkPolicyDescriptor instead')
const NetworkPolicy$json = {
  '1': 'NetworkPolicy',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1.NetworkPolicySpec', '10': 'spec'},
  ],
};

/// Descriptor for `NetworkPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyDescriptor = $convert.base64Decode(
    'Cg1OZXR3b3JrUG9saWN5EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESOAoEc3BlYxgCIAEoCzIkLmFwaS5uZXR3'
    'b3JraW5nLnYxLk5ldHdvcmtQb2xpY3lTcGVjUgRzcGVj');

@$core.Deprecated('Use networkPolicyEgressRuleDescriptor instead')
const NetworkPolicyEgressRule$json = {
  '1': 'NetworkPolicyEgressRule',
  '2': [
    {'1': 'ports', '3': 1, '4': 3, '5': 11, '6': '.api.networking.v1.NetworkPolicyPort', '10': 'ports'},
    {'1': 'to', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1.NetworkPolicyPeer', '10': 'to'},
  ],
};

/// Descriptor for `NetworkPolicyEgressRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyEgressRuleDescriptor = $convert.base64Decode(
    'ChdOZXR3b3JrUG9saWN5RWdyZXNzUnVsZRI6CgVwb3J0cxgBIAMoCzIkLmFwaS5uZXR3b3JraW'
    '5nLnYxLk5ldHdvcmtQb2xpY3lQb3J0UgVwb3J0cxI0CgJ0bxgCIAMoCzIkLmFwaS5uZXR3b3Jr'
    'aW5nLnYxLk5ldHdvcmtQb2xpY3lQZWVyUgJ0bw==');

@$core.Deprecated('Use networkPolicyIngressRuleDescriptor instead')
const NetworkPolicyIngressRule$json = {
  '1': 'NetworkPolicyIngressRule',
  '2': [
    {'1': 'ports', '3': 1, '4': 3, '5': 11, '6': '.api.networking.v1.NetworkPolicyPort', '10': 'ports'},
    {'1': 'from', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1.NetworkPolicyPeer', '10': 'from'},
  ],
};

/// Descriptor for `NetworkPolicyIngressRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyIngressRuleDescriptor = $convert.base64Decode(
    'ChhOZXR3b3JrUG9saWN5SW5ncmVzc1J1bGUSOgoFcG9ydHMYASADKAsyJC5hcGkubmV0d29ya2'
    'luZy52MS5OZXR3b3JrUG9saWN5UG9ydFIFcG9ydHMSOAoEZnJvbRgCIAMoCzIkLmFwaS5uZXR3'
    'b3JraW5nLnYxLk5ldHdvcmtQb2xpY3lQZWVyUgRmcm9t');

@$core.Deprecated('Use networkPolicyListDescriptor instead')
const NetworkPolicyList$json = {
  '1': 'NetworkPolicyList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1.NetworkPolicy', '10': 'items'},
  ],
};

/// Descriptor for `NetworkPolicyList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyListDescriptor = $convert.base64Decode(
    'ChFOZXR3b3JrUG9saWN5TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI2CgVpdGVtcxgCIAMoCzIgLmFwaS5u'
    'ZXR3b3JraW5nLnYxLk5ldHdvcmtQb2xpY3lSBWl0ZW1z');

@$core.Deprecated('Use networkPolicyPeerDescriptor instead')
const NetworkPolicyPeer$json = {
  '1': 'NetworkPolicyPeer',
  '2': [
    {'1': 'podSelector', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'podSelector'},
    {'1': 'namespaceSelector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'namespaceSelector'},
    {'1': 'ipBlock', '3': 3, '4': 1, '5': 11, '6': '.api.networking.v1.IPBlock', '10': 'ipBlock'},
  ],
};

/// Descriptor for `NetworkPolicyPeer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyPeerDescriptor = $convert.base64Decode(
    'ChFOZXR3b3JrUG9saWN5UGVlchJOCgtwb2RTZWxlY3RvchgBIAEoCzIsLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSC3BvZFNlbGVjdG9yEloKEW5hbWVzcGFj'
    'ZVNlbGVjdG9yGAIgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGFiZWxTZW'
    'xlY3RvclIRbmFtZXNwYWNlU2VsZWN0b3ISNAoHaXBCbG9jaxgDIAEoCzIaLmFwaS5uZXR3b3Jr'
    'aW5nLnYxLklQQmxvY2tSB2lwQmxvY2s=');

@$core.Deprecated('Use networkPolicyPortDescriptor instead')
const NetworkPolicyPort$json = {
  '1': 'NetworkPolicyPort',
  '2': [
    {'1': 'protocol', '3': 1, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'port', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'port'},
    {'1': 'endPort', '3': 3, '4': 1, '5': 5, '10': 'endPort'},
  ],
};

/// Descriptor for `NetworkPolicyPort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyPortDescriptor = $convert.base64Decode(
    'ChFOZXR3b3JrUG9saWN5UG9ydBIaCghwcm90b2NvbBgBIAEoCVIIcHJvdG9jb2wSPQoEcG9ydB'
    'gCIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cudXRpbC5pbnRzdHIuSW50T3JTdHJpbmdSBHBvcnQS'
    'GAoHZW5kUG9ydBgDIAEoBVIHZW5kUG9ydA==');

@$core.Deprecated('Use networkPolicySpecDescriptor instead')
const NetworkPolicySpec$json = {
  '1': 'NetworkPolicySpec',
  '2': [
    {'1': 'podSelector', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'podSelector'},
    {'1': 'ingress', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1.NetworkPolicyIngressRule', '10': 'ingress'},
    {'1': 'egress', '3': 3, '4': 3, '5': 11, '6': '.api.networking.v1.NetworkPolicyEgressRule', '10': 'egress'},
    {'1': 'policyTypes', '3': 4, '4': 3, '5': 9, '10': 'policyTypes'},
  ],
};

/// Descriptor for `NetworkPolicySpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicySpecDescriptor = $convert.base64Decode(
    'ChFOZXR3b3JrUG9saWN5U3BlYxJOCgtwb2RTZWxlY3RvchgBIAEoCzIsLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSC3BvZFNlbGVjdG9yEkUKB2luZ3Jlc3MY'
    'AiADKAsyKy5hcGkubmV0d29ya2luZy52MS5OZXR3b3JrUG9saWN5SW5ncmVzc1J1bGVSB2luZ3'
    'Jlc3MSQgoGZWdyZXNzGAMgAygLMiouYXBpLm5ldHdvcmtpbmcudjEuTmV0d29ya1BvbGljeUVn'
    'cmVzc1J1bGVSBmVncmVzcxIgCgtwb2xpY3lUeXBlcxgEIAMoCVILcG9saWN5VHlwZXM=');

@$core.Deprecated('Use serviceBackendPortDescriptor instead')
const ServiceBackendPort$json = {
  '1': 'ServiceBackendPort',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'number', '3': 2, '4': 1, '5': 5, '10': 'number'},
  ],
};

/// Descriptor for `ServiceBackendPort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceBackendPortDescriptor = $convert.base64Decode(
    'ChJTZXJ2aWNlQmFja2VuZFBvcnQSEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZudW1iZXIYAiABKA'
    'VSBm51bWJlcg==');

