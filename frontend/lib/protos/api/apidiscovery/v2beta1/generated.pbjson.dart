//
//  Generated code. Do not modify.
//  source: api/apidiscovery/v2beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aPIGroupDiscoveryDescriptor instead')
const APIGroupDiscovery$json = {
  '1': 'APIGroupDiscovery',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'versions', '3': 2, '4': 3, '5': 11, '6': '.api.apidiscovery.v2beta1.APIVersionDiscovery', '10': 'versions'},
  ],
};

/// Descriptor for `APIGroupDiscovery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIGroupDiscoveryDescriptor = $convert.base64Decode(
    'ChFBUElHcm91cERpc2NvdmVyeRJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkkKCHZlcnNpb25zGAIgAygLMi0u'
    'YXBpLmFwaWRpc2NvdmVyeS52MmJldGExLkFQSVZlcnNpb25EaXNjb3ZlcnlSCHZlcnNpb25z');

@$core.Deprecated('Use aPIGroupDiscoveryListDescriptor instead')
const APIGroupDiscoveryList$json = {
  '1': 'APIGroupDiscoveryList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.apidiscovery.v2beta1.APIGroupDiscovery', '10': 'items'},
  ],
};

/// Descriptor for `APIGroupDiscoveryList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIGroupDiscoveryListDescriptor = $convert.base64Decode(
    'ChVBUElHcm91cERpc2NvdmVyeUxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcn'
    'kucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESQQoFaXRlbXMYAiADKAsyKy5h'
    'cGkuYXBpZGlzY292ZXJ5LnYyYmV0YTEuQVBJR3JvdXBEaXNjb3ZlcnlSBWl0ZW1z');

@$core.Deprecated('Use aPIResourceDiscoveryDescriptor instead')
const APIResourceDiscovery$json = {
  '1': 'APIResourceDiscovery',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 9, '10': 'resource'},
    {'1': 'responseKind', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionKind', '10': 'responseKind'},
    {'1': 'scope', '3': 3, '4': 1, '5': 9, '10': 'scope'},
    {'1': 'singularResource', '3': 4, '4': 1, '5': 9, '10': 'singularResource'},
    {'1': 'verbs', '3': 5, '4': 3, '5': 9, '10': 'verbs'},
    {'1': 'shortNames', '3': 6, '4': 3, '5': 9, '10': 'shortNames'},
    {'1': 'categories', '3': 7, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'subresources', '3': 8, '4': 3, '5': 11, '6': '.api.apidiscovery.v2beta1.APISubresourceDiscovery', '10': 'subresources'},
  ],
};

/// Descriptor for `APIResourceDiscovery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIResourceDiscoveryDescriptor = $convert.base64Decode(
    'ChRBUElSZXNvdXJjZURpc2NvdmVyeRIaCghyZXNvdXJjZRgBIAEoCVIIcmVzb3VyY2USUwoMcm'
    'VzcG9uc2VLaW5kGAIgASgLMi8uYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuR3JvdXBW'
    'ZXJzaW9uS2luZFIMcmVzcG9uc2VLaW5kEhQKBXNjb3BlGAMgASgJUgVzY29wZRIqChBzaW5ndW'
    'xhclJlc291cmNlGAQgASgJUhBzaW5ndWxhclJlc291cmNlEhQKBXZlcmJzGAUgAygJUgV2ZXJi'
    'cxIeCgpzaG9ydE5hbWVzGAYgAygJUgpzaG9ydE5hbWVzEh4KCmNhdGVnb3JpZXMYByADKAlSCm'
    'NhdGVnb3JpZXMSVQoMc3VicmVzb3VyY2VzGAggAygLMjEuYXBpLmFwaWRpc2NvdmVyeS52MmJl'
    'dGExLkFQSVN1YnJlc291cmNlRGlzY292ZXJ5UgxzdWJyZXNvdXJjZXM=');

@$core.Deprecated('Use aPISubresourceDiscoveryDescriptor instead')
const APISubresourceDiscovery$json = {
  '1': 'APISubresourceDiscovery',
  '2': [
    {'1': 'subresource', '3': 1, '4': 1, '5': 9, '10': 'subresource'},
    {'1': 'responseKind', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionKind', '10': 'responseKind'},
    {'1': 'acceptedTypes', '3': 3, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionKind', '10': 'acceptedTypes'},
    {'1': 'verbs', '3': 4, '4': 3, '5': 9, '10': 'verbs'},
  ],
};

/// Descriptor for `APISubresourceDiscovery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPISubresourceDiscoveryDescriptor = $convert.base64Decode(
    'ChdBUElTdWJyZXNvdXJjZURpc2NvdmVyeRIgCgtzdWJyZXNvdXJjZRgBIAEoCVILc3VicmVzb3'
    'VyY2USUwoMcmVzcG9uc2VLaW5kGAIgASgLMi8uYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEu'
    'djEuR3JvdXBWZXJzaW9uS2luZFIMcmVzcG9uc2VLaW5kElUKDWFjY2VwdGVkVHlwZXMYAyADKA'
    'syLy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5Hcm91cFZlcnNpb25LaW5kUg1hY2Nl'
    'cHRlZFR5cGVzEhQKBXZlcmJzGAQgAygJUgV2ZXJicw==');

@$core.Deprecated('Use aPIVersionDiscoveryDescriptor instead')
const APIVersionDiscovery$json = {
  '1': 'APIVersionDiscovery',
  '2': [
    {'1': 'version', '3': 1, '4': 1, '5': 9, '10': 'version'},
    {'1': 'resources', '3': 2, '4': 3, '5': 11, '6': '.api.apidiscovery.v2beta1.APIResourceDiscovery', '10': 'resources'},
    {'1': 'freshness', '3': 3, '4': 1, '5': 9, '10': 'freshness'},
  ],
};

/// Descriptor for `APIVersionDiscovery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIVersionDiscoveryDescriptor = $convert.base64Decode(
    'ChNBUElWZXJzaW9uRGlzY292ZXJ5EhgKB3ZlcnNpb24YASABKAlSB3ZlcnNpb24STAoJcmVzb3'
    'VyY2VzGAIgAygLMi4uYXBpLmFwaWRpc2NvdmVyeS52MmJldGExLkFQSVJlc291cmNlRGlzY292'
    'ZXJ5UglyZXNvdXJjZXMSHAoJZnJlc2huZXNzGAMgASgJUglmcmVzaG5lc3M=');

