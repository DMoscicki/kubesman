//
//  Generated code. Do not modify.
//  source: api/networking/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use iPAddressDescriptor instead')
const IPAddress$json = {
  '1': 'IPAddress',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1alpha1.IPAddressSpec', '10': 'spec'},
  ],
};

/// Descriptor for `IPAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iPAddressDescriptor = $convert.base64Decode(
    'CglJUEFkZHJlc3MSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI6CgRzcGVjGAIgASgLMiYuYXBpLm5ldHdvcmtp'
    'bmcudjFhbHBoYTEuSVBBZGRyZXNzU3BlY1IEc3BlYw==');

@$core.Deprecated('Use iPAddressListDescriptor instead')
const IPAddressList$json = {
  '1': 'IPAddressList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1alpha1.IPAddress', '10': 'items'},
  ],
};

/// Descriptor for `IPAddressList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iPAddressListDescriptor = $convert.base64Decode(
    'Cg1JUEFkZHJlc3NMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjgKBWl0ZW1zGAIgAygLMiIuYXBpLm5ldHdv'
    'cmtpbmcudjFhbHBoYTEuSVBBZGRyZXNzUgVpdGVtcw==');

@$core.Deprecated('Use iPAddressSpecDescriptor instead')
const IPAddressSpec$json = {
  '1': 'IPAddressSpec',
  '2': [
    {'1': 'parentRef', '3': 1, '4': 1, '5': 11, '6': '.api.networking.v1alpha1.ParentReference', '10': 'parentRef'},
  ],
};

/// Descriptor for `IPAddressSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iPAddressSpecDescriptor = $convert.base64Decode(
    'Cg1JUEFkZHJlc3NTcGVjEkYKCXBhcmVudFJlZhgBIAEoCzIoLmFwaS5uZXR3b3JraW5nLnYxYW'
    'xwaGExLlBhcmVudFJlZmVyZW5jZVIJcGFyZW50UmVm');

@$core.Deprecated('Use parentReferenceDescriptor instead')
const ParentReference$json = {
  '1': 'ParentReference',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'resource', '3': 2, '4': 1, '5': 9, '10': 'resource'},
    {'1': 'namespace', '3': 3, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ParentReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List parentReferenceDescriptor = $convert.base64Decode(
    'Cg9QYXJlbnRSZWZlcmVuY2USFAoFZ3JvdXAYASABKAlSBWdyb3VwEhoKCHJlc291cmNlGAIgAS'
    'gJUghyZXNvdXJjZRIcCgluYW1lc3BhY2UYAyABKAlSCW5hbWVzcGFjZRISCgRuYW1lGAQgASgJ'
    'UgRuYW1l');

@$core.Deprecated('Use serviceCIDRDescriptor instead')
const ServiceCIDR$json = {
  '1': 'ServiceCIDR',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.networking.v1alpha1.ServiceCIDRSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.networking.v1alpha1.ServiceCIDRStatus', '10': 'status'},
  ],
};

/// Descriptor for `ServiceCIDR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceCIDRDescriptor = $convert.base64Decode(
    'CgtTZXJ2aWNlQ0lEUhJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjwKBHNwZWMYAiABKAsyKC5hcGkubmV0d29y'
    'a2luZy52MWFscGhhMS5TZXJ2aWNlQ0lEUlNwZWNSBHNwZWMSQgoGc3RhdHVzGAMgASgLMiouYX'
    'BpLm5ldHdvcmtpbmcudjFhbHBoYTEuU2VydmljZUNJRFJTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use serviceCIDRListDescriptor instead')
const ServiceCIDRList$json = {
  '1': 'ServiceCIDRList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.networking.v1alpha1.ServiceCIDR', '10': 'items'},
  ],
};

/// Descriptor for `ServiceCIDRList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceCIDRListDescriptor = $convert.base64Decode(
    'Cg9TZXJ2aWNlQ0lEUkxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESOgoFaXRlbXMYAiADKAsyJC5hcGkubmV0'
    'd29ya2luZy52MWFscGhhMS5TZXJ2aWNlQ0lEUlIFaXRlbXM=');

@$core.Deprecated('Use serviceCIDRSpecDescriptor instead')
const ServiceCIDRSpec$json = {
  '1': 'ServiceCIDRSpec',
  '2': [
    {'1': 'cidrs', '3': 1, '4': 3, '5': 9, '10': 'cidrs'},
  ],
};

/// Descriptor for `ServiceCIDRSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceCIDRSpecDescriptor = $convert.base64Decode(
    'Cg9TZXJ2aWNlQ0lEUlNwZWMSFAoFY2lkcnMYASADKAlSBWNpZHJz');

@$core.Deprecated('Use serviceCIDRStatusDescriptor instead')
const ServiceCIDRStatus$json = {
  '1': 'ServiceCIDRStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Condition', '10': 'conditions'},
  ],
};

/// Descriptor for `ServiceCIDRStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceCIDRStatusDescriptor = $convert.base64Decode(
    'ChFTZXJ2aWNlQ0lEUlN0YXR1cxJICgpjb25kaXRpb25zGAEgAygLMiguYXBpbWFjaGluZXJ5Ln'
    'BrZy5hcGlzLm1ldGEudjEuQ29uZGl0aW9uUgpjb25kaXRpb25z');

