//
//  Generated code. Do not modify.
//  source: api/networking/v1beta1/generated.proto
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
    {'1': 'backend', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1beta1.IngressBackend', '10': 'backend'},
  ],
};

/// Descriptor for `HTTPIngressPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPIngressPathDescriptor = $convert.base64Decode(
    'Cg9IVFRQSW5ncmVzc1BhdGgSEgoEcGF0aBgBIAEoCVIEcGF0aBIaCghwYXRoVHlwZRgDIAEoCV'
    'IIcGF0aFR5cGUSQAoHYmFja2VuZBgCIAEoCzImLmFwaS5uZXR3b3JraW5nLnYxYmV0YTEuSW5n'
    'cmVzc0JhY2tlbmRSB2JhY2tlbmQ=');

@$core.Deprecated('Use hTTPIngressRuleValueDescriptor instead')
const HTTPIngressRuleValue$json = {
  '1': 'HTTPIngressRuleValue',
  '2': [
    {'1': 'paths', '3': 1, '4': 3, '5': 11, '6': '.api.networking.v1beta1.HTTPIngressPath', '10': 'paths'},
  ],
};

/// Descriptor for `HTTPIngressRuleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPIngressRuleValueDescriptor = $convert.base64Decode(
    'ChRIVFRQSW5ncmVzc1J1bGVWYWx1ZRI9CgVwYXRocxgBIAMoCzInLmFwaS5uZXR3b3JraW5nLn'
    'YxYmV0YTEuSFRUUEluZ3Jlc3NQYXRoUgVwYXRocw==');

@$core.Deprecated('Use ingressDescriptor instead')
const Ingress$json = {
  '1': 'Ingress',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1beta1.IngressSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.networking.v1beta1.IngressStatus', '10': 'status'},
  ],
};

/// Descriptor for `Ingress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressDescriptor = $convert.base64Decode(
    'CgdJbmdyZXNzEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESNwoEc3BlYxgCIAEoCzIjLmFwaS5uZXR3b3JraW5n'
    'LnYxYmV0YTEuSW5ncmVzc1NwZWNSBHNwZWMSPQoGc3RhdHVzGAMgASgLMiUuYXBpLm5ldHdvcm'
    'tpbmcudjFiZXRhMS5JbmdyZXNzU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use ingressBackendDescriptor instead')
const IngressBackend$json = {
  '1': 'IngressBackend',
  '2': [
    {'1': 'serviceName', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    {'1': 'servicePort', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'servicePort'},
    {'1': 'resource', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.TypedLocalObjectReference', '10': 'resource'},
  ],
};

/// Descriptor for `IngressBackend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressBackendDescriptor = $convert.base64Decode(
    'Cg5JbmdyZXNzQmFja2VuZBIgCgtzZXJ2aWNlTmFtZRgBIAEoCVILc2VydmljZU5hbWUSSwoLc2'
    'VydmljZVBvcnQYAiABKAsyKS5hcGltYWNoaW5lcnkucGtnLnV0aWwuaW50c3RyLkludE9yU3Ry'
    'aW5nUgtzZXJ2aWNlUG9ydBJCCghyZXNvdXJjZRgDIAEoCzImLmFwaS5jb3JlLnYxLlR5cGVkTG'
    '9jYWxPYmplY3RSZWZlcmVuY2VSCHJlc291cmNl');

@$core.Deprecated('Use ingressClassDescriptor instead')
const IngressClass$json = {
  '1': 'IngressClass',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1beta1.IngressClassSpec', '10': 'spec'},
  ],
};

/// Descriptor for `IngressClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressClassDescriptor = $convert.base64Decode(
    'CgxJbmdyZXNzQ2xhc3MSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaX'
    'MubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI8CgRzcGVjGAIgASgLMiguYXBpLm5ldHdv'
    'cmtpbmcudjFiZXRhMS5JbmdyZXNzQ2xhc3NTcGVjUgRzcGVj');

@$core.Deprecated('Use ingressClassListDescriptor instead')
const IngressClassList$json = {
  '1': 'IngressClassList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1beta1.IngressClass', '10': 'items'},
  ],
};

/// Descriptor for `IngressClassList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressClassListDescriptor = $convert.base64Decode(
    'ChBJbmdyZXNzQ2xhc3NMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjoKBWl0ZW1zGAIgAygLMiQuYXBpLm5l'
    'dHdvcmtpbmcudjFiZXRhMS5JbmdyZXNzQ2xhc3NSBWl0ZW1z');

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
    {'1': 'parameters', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1beta1.IngressClassParametersReference', '10': 'parameters'},
  ],
};

/// Descriptor for `IngressClassSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressClassSpecDescriptor = $convert.base64Decode(
    'ChBJbmdyZXNzQ2xhc3NTcGVjEh4KCmNvbnRyb2xsZXIYASABKAlSCmNvbnRyb2xsZXISVwoKcG'
    'FyYW1ldGVycxgCIAEoCzI3LmFwaS5uZXR3b3JraW5nLnYxYmV0YTEuSW5ncmVzc0NsYXNzUGFy'
    'YW1ldGVyc1JlZmVyZW5jZVIKcGFyYW1ldGVycw==');

@$core.Deprecated('Use ingressListDescriptor instead')
const IngressList$json = {
  '1': 'IngressList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1beta1.Ingress', '10': 'items'},
  ],
};

/// Descriptor for `IngressList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressListDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI1CgVpdGVtcxgCIAMoCzIfLmFwaS5uZXR3b3Jr'
    'aW5nLnYxYmV0YTEuSW5ncmVzc1IFaXRlbXM=');

@$core.Deprecated('Use ingressLoadBalancerIngressDescriptor instead')
const IngressLoadBalancerIngress$json = {
  '1': 'IngressLoadBalancerIngress',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'hostname', '3': 2, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'ports', '3': 4, '4': 3, '5': 11, '6': '.api.networking.v1beta1.IngressPortStatus', '10': 'ports'},
  ],
};

/// Descriptor for `IngressLoadBalancerIngress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressLoadBalancerIngressDescriptor = $convert.base64Decode(
    'ChpJbmdyZXNzTG9hZEJhbGFuY2VySW5ncmVzcxIOCgJpcBgBIAEoCVICaXASGgoIaG9zdG5hbW'
    'UYAiABKAlSCGhvc3RuYW1lEj8KBXBvcnRzGAQgAygLMikuYXBpLm5ldHdvcmtpbmcudjFiZXRh'
    'MS5JbmdyZXNzUG9ydFN0YXR1c1IFcG9ydHM=');

@$core.Deprecated('Use ingressLoadBalancerStatusDescriptor instead')
const IngressLoadBalancerStatus$json = {
  '1': 'IngressLoadBalancerStatus',
  '2': [
    {'1': 'ingress', '3': 1, '4': 3, '5': 11, '6': '.api.networking.v1beta1.IngressLoadBalancerIngress', '10': 'ingress'},
  ],
};

/// Descriptor for `IngressLoadBalancerStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressLoadBalancerStatusDescriptor = $convert.base64Decode(
    'ChlJbmdyZXNzTG9hZEJhbGFuY2VyU3RhdHVzEkwKB2luZ3Jlc3MYASADKAsyMi5hcGkubmV0d2'
    '9ya2luZy52MWJldGExLkluZ3Jlc3NMb2FkQmFsYW5jZXJJbmdyZXNzUgdpbmdyZXNz');

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
    {'1': 'ingressRuleValue', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1beta1.IngressRuleValue', '10': 'ingressRuleValue'},
  ],
};

/// Descriptor for `IngressRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressRuleDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzUnVsZRISCgRob3N0GAEgASgJUgRob3N0ElQKEGluZ3Jlc3NSdWxlVmFsdWUYAi'
    'ABKAsyKC5hcGkubmV0d29ya2luZy52MWJldGExLkluZ3Jlc3NSdWxlVmFsdWVSEGluZ3Jlc3NS'
    'dWxlVmFsdWU=');

@$core.Deprecated('Use ingressRuleValueDescriptor instead')
const IngressRuleValue$json = {
  '1': 'IngressRuleValue',
  '2': [
    {'1': 'http', '3': 1, '4': 1, '5': 11, '6': '.api.networking.v1beta1.HTTPIngressRuleValue', '10': 'http'},
  ],
};

/// Descriptor for `IngressRuleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressRuleValueDescriptor = $convert.base64Decode(
    'ChBJbmdyZXNzUnVsZVZhbHVlEkAKBGh0dHAYASABKAsyLC5hcGkubmV0d29ya2luZy52MWJldG'
    'ExLkhUVFBJbmdyZXNzUnVsZVZhbHVlUgRodHRw');

@$core.Deprecated('Use ingressSpecDescriptor instead')
const IngressSpec$json = {
  '1': 'IngressSpec',
  '2': [
    {'1': 'ingressClassName', '3': 4, '4': 1, '5': 9, '10': 'ingressClassName'},
    {'1': 'backend', '3': 1, '4': 1, '5': 11, '6': '.api.networking.v1beta1.IngressBackend', '10': 'backend'},
    {'1': 'tls', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1beta1.IngressTLS', '10': 'tls'},
    {'1': 'rules', '3': 3, '4': 3, '5': 11, '6': '.api.networking.v1beta1.IngressRule', '10': 'rules'},
  ],
};

/// Descriptor for `IngressSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressSpecDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzU3BlYxIqChBpbmdyZXNzQ2xhc3NOYW1lGAQgASgJUhBpbmdyZXNzQ2xhc3NOYW'
    '1lEkAKB2JhY2tlbmQYASABKAsyJi5hcGkubmV0d29ya2luZy52MWJldGExLkluZ3Jlc3NCYWNr'
    'ZW5kUgdiYWNrZW5kEjQKA3RscxgCIAMoCzIiLmFwaS5uZXR3b3JraW5nLnYxYmV0YTEuSW5ncm'
    'Vzc1RMU1IDdGxzEjkKBXJ1bGVzGAMgAygLMiMuYXBpLm5ldHdvcmtpbmcudjFiZXRhMS5Jbmdy'
    'ZXNzUnVsZVIFcnVsZXM=');

@$core.Deprecated('Use ingressStatusDescriptor instead')
const IngressStatus$json = {
  '1': 'IngressStatus',
  '2': [
    {'1': 'loadBalancer', '3': 1, '4': 1, '5': 11, '6': '.api.networking.v1beta1.IngressLoadBalancerStatus', '10': 'loadBalancer'},
  ],
};

/// Descriptor for `IngressStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressStatusDescriptor = $convert.base64Decode(
    'Cg1JbmdyZXNzU3RhdHVzElUKDGxvYWRCYWxhbmNlchgBIAEoCzIxLmFwaS5uZXR3b3JraW5nLn'
    'YxYmV0YTEuSW5ncmVzc0xvYWRCYWxhbmNlclN0YXR1c1IMbG9hZEJhbGFuY2Vy');

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

