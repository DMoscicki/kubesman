//
//  Generated code. Do not modify.
//  source: api/resource/v1alpha2/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use allocationResultDescriptor instead')
const AllocationResult$json = {
  '1': 'AllocationResult',
  '2': [
    {'1': 'resourceHandles', '3': 1, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceHandle', '10': 'resourceHandles'},
    {'1': 'availableOnNodes', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.NodeSelector', '10': 'availableOnNodes'},
    {'1': 'shareable', '3': 3, '4': 1, '5': 8, '10': 'shareable'},
  ],
};

/// Descriptor for `AllocationResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allocationResultDescriptor = $convert.base64Decode(
    'ChBBbGxvY2F0aW9uUmVzdWx0Ek8KD3Jlc291cmNlSGFuZGxlcxgBIAMoCzIlLmFwaS5yZXNvdX'
    'JjZS52MWFscGhhMi5SZXNvdXJjZUhhbmRsZVIPcmVzb3VyY2VIYW5kbGVzEkUKEGF2YWlsYWJs'
    'ZU9uTm9kZXMYAiABKAsyGS5hcGkuY29yZS52MS5Ob2RlU2VsZWN0b3JSEGF2YWlsYWJsZU9uTm'
    '9kZXMSHAoJc2hhcmVhYmxlGAMgASgIUglzaGFyZWFibGU=');

@$core.Deprecated('Use allocationResultModelDescriptor instead')
const AllocationResultModel$json = {
  '1': 'AllocationResultModel',
  '2': [
    {'1': 'namedResources', '3': 1, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesAllocationResult', '10': 'namedResources'},
  ],
};

/// Descriptor for `AllocationResultModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List allocationResultModelDescriptor = $convert.base64Decode(
    'ChVBbGxvY2F0aW9uUmVzdWx0TW9kZWwSXQoObmFtZWRSZXNvdXJjZXMYASABKAsyNS5hcGkucm'
    'Vzb3VyY2UudjFhbHBoYTIuTmFtZWRSZXNvdXJjZXNBbGxvY2F0aW9uUmVzdWx0Ug5uYW1lZFJl'
    'c291cmNlcw==');

@$core.Deprecated('Use driverAllocationResultDescriptor instead')
const DriverAllocationResult$json = {
  '1': 'DriverAllocationResult',
  '2': [
    {'1': 'vendorRequestParameters', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'vendorRequestParameters'},
    {'1': 'allocationResultModel', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.AllocationResultModel', '10': 'allocationResultModel'},
  ],
};

/// Descriptor for `DriverAllocationResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List driverAllocationResultDescriptor = $convert.base64Decode(
    'ChZEcml2ZXJBbGxvY2F0aW9uUmVzdWx0EmAKF3ZlbmRvclJlcXVlc3RQYXJhbWV0ZXJzGAEgAS'
    'gLMiYuYXBpbWFjaGluZXJ5LnBrZy5ydW50aW1lLlJhd0V4dGVuc2lvblIXdmVuZG9yUmVxdWVz'
    'dFBhcmFtZXRlcnMSYgoVYWxsb2NhdGlvblJlc3VsdE1vZGVsGAIgASgLMiwuYXBpLnJlc291cm'
    'NlLnYxYWxwaGEyLkFsbG9jYXRpb25SZXN1bHRNb2RlbFIVYWxsb2NhdGlvblJlc3VsdE1vZGVs');

@$core.Deprecated('Use driverRequestsDescriptor instead')
const DriverRequests$json = {
  '1': 'DriverRequests',
  '2': [
    {'1': 'driverName', '3': 1, '4': 1, '5': 9, '10': 'driverName'},
    {'1': 'vendorParameters', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'vendorParameters'},
    {'1': 'requests', '3': 3, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceRequest', '10': 'requests'},
  ],
};

/// Descriptor for `DriverRequests`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List driverRequestsDescriptor = $convert.base64Decode(
    'Cg5Ecml2ZXJSZXF1ZXN0cxIeCgpkcml2ZXJOYW1lGAEgASgJUgpkcml2ZXJOYW1lElIKEHZlbm'
    'RvclBhcmFtZXRlcnMYAiABKAsyJi5hcGltYWNoaW5lcnkucGtnLnJ1bnRpbWUuUmF3RXh0ZW5z'
    'aW9uUhB2ZW5kb3JQYXJhbWV0ZXJzEkIKCHJlcXVlc3RzGAMgAygLMiYuYXBpLnJlc291cmNlLn'
    'YxYWxwaGEyLlJlc291cmNlUmVxdWVzdFIIcmVxdWVzdHM=');

@$core.Deprecated('Use namedResourcesAllocationResultDescriptor instead')
const NamedResourcesAllocationResult$json = {
  '1': 'NamedResourcesAllocationResult',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `NamedResourcesAllocationResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesAllocationResultDescriptor = $convert.base64Decode(
    'Ch5OYW1lZFJlc291cmNlc0FsbG9jYXRpb25SZXN1bHQSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use namedResourcesAttributeDescriptor instead')
const NamedResourcesAttribute$json = {
  '1': 'NamedResourcesAttribute',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'attributeValue', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesAttributeValue', '10': 'attributeValue'},
  ],
};

/// Descriptor for `NamedResourcesAttribute`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesAttributeDescriptor = $convert.base64Decode(
    'ChdOYW1lZFJlc291cmNlc0F0dHJpYnV0ZRISCgRuYW1lGAEgASgJUgRuYW1lElsKDmF0dHJpYn'
    'V0ZVZhbHVlGAIgASgLMjMuYXBpLnJlc291cmNlLnYxYWxwaGEyLk5hbWVkUmVzb3VyY2VzQXR0'
    'cmlidXRlVmFsdWVSDmF0dHJpYnV0ZVZhbHVl');

@$core.Deprecated('Use namedResourcesAttributeValueDescriptor instead')
const NamedResourcesAttributeValue$json = {
  '1': 'NamedResourcesAttributeValue',
  '2': [
    {'1': 'quantity', '3': 6, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'quantity'},
    {'1': 'bool', '3': 2, '4': 1, '5': 8, '10': 'bool'},
    {'1': 'int', '3': 7, '4': 1, '5': 3, '10': 'int'},
    {'1': 'intSlice', '3': 8, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesIntSlice', '10': 'intSlice'},
    {'1': 'string', '3': 5, '4': 1, '5': 9, '10': 'string'},
    {'1': 'stringSlice', '3': 9, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesStringSlice', '10': 'stringSlice'},
    {'1': 'version', '3': 10, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `NamedResourcesAttributeValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesAttributeValueDescriptor = $convert.base64Decode(
    'ChxOYW1lZFJlc291cmNlc0F0dHJpYnV0ZVZhbHVlEkMKCHF1YW50aXR5GAYgASgLMicuYXBpbW'
    'FjaGluZXJ5LnBrZy5hcGkucmVzb3VyY2UuUXVhbnRpdHlSCHF1YW50aXR5EhIKBGJvb2wYAiAB'
    'KAhSBGJvb2wSEAoDaW50GAcgASgDUgNpbnQSSQoIaW50U2xpY2UYCCABKAsyLS5hcGkucmVzb3'
    'VyY2UudjFhbHBoYTIuTmFtZWRSZXNvdXJjZXNJbnRTbGljZVIIaW50U2xpY2USFgoGc3RyaW5n'
    'GAUgASgJUgZzdHJpbmcSUgoLc3RyaW5nU2xpY2UYCSABKAsyMC5hcGkucmVzb3VyY2UudjFhbH'
    'BoYTIuTmFtZWRSZXNvdXJjZXNTdHJpbmdTbGljZVILc3RyaW5nU2xpY2USGAoHdmVyc2lvbhgK'
    'IAEoCVIHdmVyc2lvbg==');

@$core.Deprecated('Use namedResourcesFilterDescriptor instead')
const NamedResourcesFilter$json = {
  '1': 'NamedResourcesFilter',
  '2': [
    {'1': 'selector', '3': 1, '4': 1, '5': 9, '10': 'selector'},
  ],
};

/// Descriptor for `NamedResourcesFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesFilterDescriptor = $convert.base64Decode(
    'ChROYW1lZFJlc291cmNlc0ZpbHRlchIaCghzZWxlY3RvchgBIAEoCVIIc2VsZWN0b3I=');

@$core.Deprecated('Use namedResourcesInstanceDescriptor instead')
const NamedResourcesInstance$json = {
  '1': 'NamedResourcesInstance',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'attributes', '3': 2, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesAttribute', '10': 'attributes'},
  ],
};

/// Descriptor for `NamedResourcesInstance`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesInstanceDescriptor = $convert.base64Decode(
    'ChZOYW1lZFJlc291cmNlc0luc3RhbmNlEhIKBG5hbWUYASABKAlSBG5hbWUSTgoKYXR0cmlidX'
    'RlcxgCIAMoCzIuLmFwaS5yZXNvdXJjZS52MWFscGhhMi5OYW1lZFJlc291cmNlc0F0dHJpYnV0'
    'ZVIKYXR0cmlidXRlcw==');

@$core.Deprecated('Use namedResourcesIntSliceDescriptor instead')
const NamedResourcesIntSlice$json = {
  '1': 'NamedResourcesIntSlice',
  '2': [
    {'1': 'ints', '3': 1, '4': 3, '5': 3, '10': 'ints'},
  ],
};

/// Descriptor for `NamedResourcesIntSlice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesIntSliceDescriptor = $convert.base64Decode(
    'ChZOYW1lZFJlc291cmNlc0ludFNsaWNlEhIKBGludHMYASADKANSBGludHM=');

@$core.Deprecated('Use namedResourcesRequestDescriptor instead')
const NamedResourcesRequest$json = {
  '1': 'NamedResourcesRequest',
  '2': [
    {'1': 'selector', '3': 1, '4': 1, '5': 9, '10': 'selector'},
  ],
};

/// Descriptor for `NamedResourcesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesRequestDescriptor = $convert.base64Decode(
    'ChVOYW1lZFJlc291cmNlc1JlcXVlc3QSGgoIc2VsZWN0b3IYASABKAlSCHNlbGVjdG9y');

@$core.Deprecated('Use namedResourcesResourcesDescriptor instead')
const NamedResourcesResources$json = {
  '1': 'NamedResourcesResources',
  '2': [
    {'1': 'instances', '3': 1, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesInstance', '10': 'instances'},
  ],
};

/// Descriptor for `NamedResourcesResources`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesResourcesDescriptor = $convert.base64Decode(
    'ChdOYW1lZFJlc291cmNlc1Jlc291cmNlcxJLCglpbnN0YW5jZXMYASADKAsyLS5hcGkucmVzb3'
    'VyY2UudjFhbHBoYTIuTmFtZWRSZXNvdXJjZXNJbnN0YW5jZVIJaW5zdGFuY2Vz');

@$core.Deprecated('Use namedResourcesStringSliceDescriptor instead')
const NamedResourcesStringSlice$json = {
  '1': 'NamedResourcesStringSlice',
  '2': [
    {'1': 'strings', '3': 1, '4': 3, '5': 9, '10': 'strings'},
  ],
};

/// Descriptor for `NamedResourcesStringSlice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedResourcesStringSliceDescriptor = $convert.base64Decode(
    'ChlOYW1lZFJlc291cmNlc1N0cmluZ1NsaWNlEhgKB3N0cmluZ3MYASADKAlSB3N0cmluZ3M=');

@$core.Deprecated('Use podSchedulingContextDescriptor instead')
const PodSchedulingContext$json = {
  '1': 'PodSchedulingContext',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.PodSchedulingContextSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.PodSchedulingContextStatus', '10': 'status'},
  ],
};

/// Descriptor for `PodSchedulingContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podSchedulingContextDescriptor = $convert.base64Decode(
    'ChRQb2RTY2hlZHVsaW5nQ29udGV4dBJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkMKBHNwZWMYAiABKAsyLy5h'
    'cGkucmVzb3VyY2UudjFhbHBoYTIuUG9kU2NoZWR1bGluZ0NvbnRleHRTcGVjUgRzcGVjEkkKBn'
    'N0YXR1cxgDIAEoCzIxLmFwaS5yZXNvdXJjZS52MWFscGhhMi5Qb2RTY2hlZHVsaW5nQ29udGV4'
    'dFN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use podSchedulingContextListDescriptor instead')
const PodSchedulingContextList$json = {
  '1': 'PodSchedulingContextList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.PodSchedulingContext', '10': 'items'},
  ],
};

/// Descriptor for `PodSchedulingContextList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podSchedulingContextListDescriptor = $convert.base64Decode(
    'ChhQb2RTY2hlZHVsaW5nQ29udGV4dExpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW'
    '5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESQQoFaXRlbXMYAiADKAsy'
    'Ky5hcGkucmVzb3VyY2UudjFhbHBoYTIuUG9kU2NoZWR1bGluZ0NvbnRleHRSBWl0ZW1z');

@$core.Deprecated('Use podSchedulingContextSpecDescriptor instead')
const PodSchedulingContextSpec$json = {
  '1': 'PodSchedulingContextSpec',
  '2': [
    {'1': 'selectedNode', '3': 1, '4': 1, '5': 9, '10': 'selectedNode'},
    {'1': 'potentialNodes', '3': 2, '4': 3, '5': 9, '10': 'potentialNodes'},
  ],
};

/// Descriptor for `PodSchedulingContextSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podSchedulingContextSpecDescriptor = $convert.base64Decode(
    'ChhQb2RTY2hlZHVsaW5nQ29udGV4dFNwZWMSIgoMc2VsZWN0ZWROb2RlGAEgASgJUgxzZWxlY3'
    'RlZE5vZGUSJgoOcG90ZW50aWFsTm9kZXMYAiADKAlSDnBvdGVudGlhbE5vZGVz');

@$core.Deprecated('Use podSchedulingContextStatusDescriptor instead')
const PodSchedulingContextStatus$json = {
  '1': 'PodSchedulingContextStatus',
  '2': [
    {'1': 'resourceClaims', '3': 1, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimSchedulingStatus', '10': 'resourceClaims'},
  ],
};

/// Descriptor for `PodSchedulingContextStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podSchedulingContextStatusDescriptor = $convert.base64Decode(
    'ChpQb2RTY2hlZHVsaW5nQ29udGV4dFN0YXR1cxJcCg5yZXNvdXJjZUNsYWltcxgBIAMoCzI0Lm'
    'FwaS5yZXNvdXJjZS52MWFscGhhMi5SZXNvdXJjZUNsYWltU2NoZWR1bGluZ1N0YXR1c1IOcmVz'
    'b3VyY2VDbGFpbXM=');

@$core.Deprecated('Use resourceClaimDescriptor instead')
const ResourceClaim$json = {
  '1': 'ResourceClaim',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimStatus', '10': 'status'},
  ],
};

/// Descriptor for `ResourceClaim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimDescriptor = $convert.base64Decode(
    'Cg1SZXNvdXJjZUNsYWltEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESPAoEc3BlYxgCIAEoCzIoLmFwaS5yZXNv'
    'dXJjZS52MWFscGhhMi5SZXNvdXJjZUNsYWltU3BlY1IEc3BlYxJCCgZzdGF0dXMYAyABKAsyKi'
    '5hcGkucmVzb3VyY2UudjFhbHBoYTIuUmVzb3VyY2VDbGFpbVN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use resourceClaimConsumerReferenceDescriptor instead')
const ResourceClaimConsumerReference$json = {
  '1': 'ResourceClaimConsumerReference',
  '2': [
    {'1': 'apiGroup', '3': 1, '4': 1, '5': 9, '10': 'apiGroup'},
    {'1': 'resource', '3': 3, '4': 1, '5': 9, '10': 'resource'},
    {'1': 'name', '3': 4, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uid', '3': 5, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `ResourceClaimConsumerReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimConsumerReferenceDescriptor = $convert.base64Decode(
    'Ch5SZXNvdXJjZUNsYWltQ29uc3VtZXJSZWZlcmVuY2USGgoIYXBpR3JvdXAYASABKAlSCGFwaU'
    'dyb3VwEhoKCHJlc291cmNlGAMgASgJUghyZXNvdXJjZRISCgRuYW1lGAQgASgJUgRuYW1lEhAK'
    'A3VpZBgFIAEoCVIDdWlk');

@$core.Deprecated('Use resourceClaimListDescriptor instead')
const ResourceClaimList$json = {
  '1': 'ResourceClaimList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaim', '10': 'items'},
  ],
};

/// Descriptor for `ResourceClaimList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimListDescriptor = $convert.base64Decode(
    'ChFSZXNvdXJjZUNsYWltTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI6CgVpdGVtcxgCIAMoCzIkLmFwaS5y'
    'ZXNvdXJjZS52MWFscGhhMi5SZXNvdXJjZUNsYWltUgVpdGVtcw==');

@$core.Deprecated('Use resourceClaimParametersDescriptor instead')
const ResourceClaimParameters$json = {
  '1': 'ResourceClaimParameters',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'generatedFrom', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimParametersReference', '10': 'generatedFrom'},
    {'1': 'shareable', '3': 3, '4': 1, '5': 8, '10': 'shareable'},
    {'1': 'driverRequests', '3': 4, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.DriverRequests', '10': 'driverRequests'},
  ],
};

/// Descriptor for `ResourceClaimParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimParametersDescriptor = $convert.base64Decode(
    'ChdSZXNvdXJjZUNsYWltUGFyYW1ldGVycxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEl0KDWdlbmVyYXRlZEZy'
    'b20YAiABKAsyNy5hcGkucmVzb3VyY2UudjFhbHBoYTIuUmVzb3VyY2VDbGFpbVBhcmFtZXRlcn'
    'NSZWZlcmVuY2VSDWdlbmVyYXRlZEZyb20SHAoJc2hhcmVhYmxlGAMgASgIUglzaGFyZWFibGUS'
    'TQoOZHJpdmVyUmVxdWVzdHMYBCADKAsyJS5hcGkucmVzb3VyY2UudjFhbHBoYTIuRHJpdmVyUm'
    'VxdWVzdHNSDmRyaXZlclJlcXVlc3Rz');

@$core.Deprecated('Use resourceClaimParametersListDescriptor instead')
const ResourceClaimParametersList$json = {
  '1': 'ResourceClaimParametersList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimParameters', '10': 'items'},
  ],
};

/// Descriptor for `ResourceClaimParametersList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimParametersListDescriptor = $convert.base64Decode(
    'ChtSZXNvdXJjZUNsYWltUGFyYW1ldGVyc0xpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYW'
    'NoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESRAoFaXRlbXMYAiAD'
    'KAsyLi5hcGkucmVzb3VyY2UudjFhbHBoYTIuUmVzb3VyY2VDbGFpbVBhcmFtZXRlcnNSBWl0ZW'
    '1z');

@$core.Deprecated('Use resourceClaimParametersReferenceDescriptor instead')
const ResourceClaimParametersReference$json = {
  '1': 'ResourceClaimParametersReference',
  '2': [
    {'1': 'apiGroup', '3': 1, '4': 1, '5': 9, '10': 'apiGroup'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ResourceClaimParametersReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimParametersReferenceDescriptor = $convert.base64Decode(
    'CiBSZXNvdXJjZUNsYWltUGFyYW1ldGVyc1JlZmVyZW5jZRIaCghhcGlHcm91cBgBIAEoCVIIYX'
    'BpR3JvdXASEgoEa2luZBgCIAEoCVIEa2luZBISCgRuYW1lGAMgASgJUgRuYW1l');

@$core.Deprecated('Use resourceClaimSchedulingStatusDescriptor instead')
const ResourceClaimSchedulingStatus$json = {
  '1': 'ResourceClaimSchedulingStatus',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'unsuitableNodes', '3': 2, '4': 3, '5': 9, '10': 'unsuitableNodes'},
  ],
};

/// Descriptor for `ResourceClaimSchedulingStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimSchedulingStatusDescriptor = $convert.base64Decode(
    'Ch1SZXNvdXJjZUNsYWltU2NoZWR1bGluZ1N0YXR1cxISCgRuYW1lGAEgASgJUgRuYW1lEigKD3'
    'Vuc3VpdGFibGVOb2RlcxgCIAMoCVIPdW5zdWl0YWJsZU5vZGVz');

@$core.Deprecated('Use resourceClaimSpecDescriptor instead')
const ResourceClaimSpec$json = {
  '1': 'ResourceClaimSpec',
  '2': [
    {'1': 'resourceClassName', '3': 1, '4': 1, '5': 9, '10': 'resourceClassName'},
    {'1': 'parametersRef', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimParametersReference', '10': 'parametersRef'},
    {'1': 'allocationMode', '3': 3, '4': 1, '5': 9, '10': 'allocationMode'},
  ],
};

/// Descriptor for `ResourceClaimSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimSpecDescriptor = $convert.base64Decode(
    'ChFSZXNvdXJjZUNsYWltU3BlYxIsChFyZXNvdXJjZUNsYXNzTmFtZRgBIAEoCVIRcmVzb3VyY2'
    'VDbGFzc05hbWUSXQoNcGFyYW1ldGVyc1JlZhgCIAEoCzI3LmFwaS5yZXNvdXJjZS52MWFscGhh'
    'Mi5SZXNvdXJjZUNsYWltUGFyYW1ldGVyc1JlZmVyZW5jZVINcGFyYW1ldGVyc1JlZhImCg5hbG'
    'xvY2F0aW9uTW9kZRgDIAEoCVIOYWxsb2NhdGlvbk1vZGU=');

@$core.Deprecated('Use resourceClaimStatusDescriptor instead')
const ResourceClaimStatus$json = {
  '1': 'ResourceClaimStatus',
  '2': [
    {'1': 'driverName', '3': 1, '4': 1, '5': 9, '10': 'driverName'},
    {'1': 'allocation', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.AllocationResult', '10': 'allocation'},
    {'1': 'reservedFor', '3': 3, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimConsumerReference', '10': 'reservedFor'},
    {'1': 'deallocationRequested', '3': 4, '4': 1, '5': 8, '10': 'deallocationRequested'},
  ],
};

/// Descriptor for `ResourceClaimStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimStatusDescriptor = $convert.base64Decode(
    'ChNSZXNvdXJjZUNsYWltU3RhdHVzEh4KCmRyaXZlck5hbWUYASABKAlSCmRyaXZlck5hbWUSRw'
    'oKYWxsb2NhdGlvbhgCIAEoCzInLmFwaS5yZXNvdXJjZS52MWFscGhhMi5BbGxvY2F0aW9uUmVz'
    'dWx0UgphbGxvY2F0aW9uElcKC3Jlc2VydmVkRm9yGAMgAygLMjUuYXBpLnJlc291cmNlLnYxYW'
    'xwaGEyLlJlc291cmNlQ2xhaW1Db25zdW1lclJlZmVyZW5jZVILcmVzZXJ2ZWRGb3ISNAoVZGVh'
    'bGxvY2F0aW9uUmVxdWVzdGVkGAQgASgIUhVkZWFsbG9jYXRpb25SZXF1ZXN0ZWQ=');

@$core.Deprecated('Use resourceClaimTemplateDescriptor instead')
const ResourceClaimTemplate$json = {
  '1': 'ResourceClaimTemplate',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimTemplateSpec', '10': 'spec'},
  ],
};

/// Descriptor for `ResourceClaimTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimTemplateDescriptor = $convert.base64Decode(
    'ChVSZXNvdXJjZUNsYWltVGVtcGxhdGUSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcn'
    'kucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRJECgRzcGVjGAIgASgLMjAu'
    'YXBpLnJlc291cmNlLnYxYWxwaGEyLlJlc291cmNlQ2xhaW1UZW1wbGF0ZVNwZWNSBHNwZWM=');

@$core.Deprecated('Use resourceClaimTemplateListDescriptor instead')
const ResourceClaimTemplateList$json = {
  '1': 'ResourceClaimTemplateList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimTemplate', '10': 'items'},
  ],
};

/// Descriptor for `ResourceClaimTemplateList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimTemplateListDescriptor = $convert.base64Decode(
    'ChlSZXNvdXJjZUNsYWltVGVtcGxhdGVMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEkIKBWl0ZW1zGAIgAygL'
    'MiwuYXBpLnJlc291cmNlLnYxYWxwaGEyLlJlc291cmNlQ2xhaW1UZW1wbGF0ZVIFaXRlbXM=');

@$core.Deprecated('Use resourceClaimTemplateSpecDescriptor instead')
const ResourceClaimTemplateSpec$json = {
  '1': 'ResourceClaimTemplateSpec',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceClaimSpec', '10': 'spec'},
  ],
};

/// Descriptor for `ResourceClaimTemplateSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimTemplateSpecDescriptor = $convert.base64Decode(
    'ChlSZXNvdXJjZUNsYWltVGVtcGxhdGVTcGVjEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESPAoEc3BlYxgCIAEo'
    'CzIoLmFwaS5yZXNvdXJjZS52MWFscGhhMi5SZXNvdXJjZUNsYWltU3BlY1IEc3BlYw==');

@$core.Deprecated('Use resourceClassDescriptor instead')
const ResourceClass$json = {
  '1': 'ResourceClass',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'driverName', '3': 2, '4': 1, '5': 9, '10': 'driverName'},
    {'1': 'parametersRef', '3': 3, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceClassParametersReference', '10': 'parametersRef'},
    {'1': 'suitableNodes', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.NodeSelector', '10': 'suitableNodes'},
    {'1': 'structuredParameters', '3': 5, '4': 1, '5': 8, '10': 'structuredParameters'},
  ],
};

/// Descriptor for `ResourceClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClassDescriptor = $convert.base64Decode(
    'Cg1SZXNvdXJjZUNsYXNzEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESHgoKZHJpdmVyTmFtZRgCIAEoCVIKZHJp'
    'dmVyTmFtZRJdCg1wYXJhbWV0ZXJzUmVmGAMgASgLMjcuYXBpLnJlc291cmNlLnYxYWxwaGEyLl'
    'Jlc291cmNlQ2xhc3NQYXJhbWV0ZXJzUmVmZXJlbmNlUg1wYXJhbWV0ZXJzUmVmEj8KDXN1aXRh'
    'YmxlTm9kZXMYBCABKAsyGS5hcGkuY29yZS52MS5Ob2RlU2VsZWN0b3JSDXN1aXRhYmxlTm9kZX'
    'MSMgoUc3RydWN0dXJlZFBhcmFtZXRlcnMYBSABKAhSFHN0cnVjdHVyZWRQYXJhbWV0ZXJz');

@$core.Deprecated('Use resourceClassListDescriptor instead')
const ResourceClassList$json = {
  '1': 'ResourceClassList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceClass', '10': 'items'},
  ],
};

/// Descriptor for `ResourceClassList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClassListDescriptor = $convert.base64Decode(
    'ChFSZXNvdXJjZUNsYXNzTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI6CgVpdGVtcxgCIAMoCzIkLmFwaS5y'
    'ZXNvdXJjZS52MWFscGhhMi5SZXNvdXJjZUNsYXNzUgVpdGVtcw==');

@$core.Deprecated('Use resourceClassParametersDescriptor instead')
const ResourceClassParameters$json = {
  '1': 'ResourceClassParameters',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'generatedFrom', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceClassParametersReference', '10': 'generatedFrom'},
    {'1': 'vendorParameters', '3': 3, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.VendorParameters', '10': 'vendorParameters'},
    {'1': 'filters', '3': 4, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceFilter', '10': 'filters'},
  ],
};

/// Descriptor for `ResourceClassParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClassParametersDescriptor = $convert.base64Decode(
    'ChdSZXNvdXJjZUNsYXNzUGFyYW1ldGVycxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEl0KDWdlbmVyYXRlZEZy'
    'b20YAiABKAsyNy5hcGkucmVzb3VyY2UudjFhbHBoYTIuUmVzb3VyY2VDbGFzc1BhcmFtZXRlcn'
    'NSZWZlcmVuY2VSDWdlbmVyYXRlZEZyb20SUwoQdmVuZG9yUGFyYW1ldGVycxgDIAMoCzInLmFw'
    'aS5yZXNvdXJjZS52MWFscGhhMi5WZW5kb3JQYXJhbWV0ZXJzUhB2ZW5kb3JQYXJhbWV0ZXJzEj'
    '8KB2ZpbHRlcnMYBCADKAsyJS5hcGkucmVzb3VyY2UudjFhbHBoYTIuUmVzb3VyY2VGaWx0ZXJS'
    'B2ZpbHRlcnM=');

@$core.Deprecated('Use resourceClassParametersListDescriptor instead')
const ResourceClassParametersList$json = {
  '1': 'ResourceClassParametersList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceClassParameters', '10': 'items'},
  ],
};

/// Descriptor for `ResourceClassParametersList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClassParametersListDescriptor = $convert.base64Decode(
    'ChtSZXNvdXJjZUNsYXNzUGFyYW1ldGVyc0xpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYW'
    'NoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESRAoFaXRlbXMYAiAD'
    'KAsyLi5hcGkucmVzb3VyY2UudjFhbHBoYTIuUmVzb3VyY2VDbGFzc1BhcmFtZXRlcnNSBWl0ZW'
    '1z');

@$core.Deprecated('Use resourceClassParametersReferenceDescriptor instead')
const ResourceClassParametersReference$json = {
  '1': 'ResourceClassParametersReference',
  '2': [
    {'1': 'apiGroup', '3': 1, '4': 1, '5': 9, '10': 'apiGroup'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'namespace', '3': 4, '4': 1, '5': 9, '10': 'namespace'},
  ],
};

/// Descriptor for `ResourceClassParametersReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClassParametersReferenceDescriptor = $convert.base64Decode(
    'CiBSZXNvdXJjZUNsYXNzUGFyYW1ldGVyc1JlZmVyZW5jZRIaCghhcGlHcm91cBgBIAEoCVIIYX'
    'BpR3JvdXASEgoEa2luZBgCIAEoCVIEa2luZBISCgRuYW1lGAMgASgJUgRuYW1lEhwKCW5hbWVz'
    'cGFjZRgEIAEoCVIJbmFtZXNwYWNl');

@$core.Deprecated('Use resourceFilterDescriptor instead')
const ResourceFilter$json = {
  '1': 'ResourceFilter',
  '2': [
    {'1': 'driverName', '3': 1, '4': 1, '5': 9, '10': 'driverName'},
    {'1': 'resourceFilterModel', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceFilterModel', '10': 'resourceFilterModel'},
  ],
};

/// Descriptor for `ResourceFilter`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceFilterDescriptor = $convert.base64Decode(
    'Cg5SZXNvdXJjZUZpbHRlchIeCgpkcml2ZXJOYW1lGAEgASgJUgpkcml2ZXJOYW1lElwKE3Jlc2'
    '91cmNlRmlsdGVyTW9kZWwYAiABKAsyKi5hcGkucmVzb3VyY2UudjFhbHBoYTIuUmVzb3VyY2VG'
    'aWx0ZXJNb2RlbFITcmVzb3VyY2VGaWx0ZXJNb2RlbA==');

@$core.Deprecated('Use resourceFilterModelDescriptor instead')
const ResourceFilterModel$json = {
  '1': 'ResourceFilterModel',
  '2': [
    {'1': 'namedResources', '3': 1, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesFilter', '10': 'namedResources'},
  ],
};

/// Descriptor for `ResourceFilterModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceFilterModelDescriptor = $convert.base64Decode(
    'ChNSZXNvdXJjZUZpbHRlck1vZGVsElMKDm5hbWVkUmVzb3VyY2VzGAEgASgLMisuYXBpLnJlc2'
    '91cmNlLnYxYWxwaGEyLk5hbWVkUmVzb3VyY2VzRmlsdGVyUg5uYW1lZFJlc291cmNlcw==');

@$core.Deprecated('Use resourceHandleDescriptor instead')
const ResourceHandle$json = {
  '1': 'ResourceHandle',
  '2': [
    {'1': 'driverName', '3': 1, '4': 1, '5': 9, '10': 'driverName'},
    {'1': 'data', '3': 2, '4': 1, '5': 9, '10': 'data'},
    {'1': 'structuredData', '3': 5, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.StructuredResourceHandle', '10': 'structuredData'},
  ],
};

/// Descriptor for `ResourceHandle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceHandleDescriptor = $convert.base64Decode(
    'Cg5SZXNvdXJjZUhhbmRsZRIeCgpkcml2ZXJOYW1lGAEgASgJUgpkcml2ZXJOYW1lEhIKBGRhdG'
    'EYAiABKAlSBGRhdGESVwoOc3RydWN0dXJlZERhdGEYBSABKAsyLy5hcGkucmVzb3VyY2UudjFh'
    'bHBoYTIuU3RydWN0dXJlZFJlc291cmNlSGFuZGxlUg5zdHJ1Y3R1cmVkRGF0YQ==');

@$core.Deprecated('Use resourceModelDescriptor instead')
const ResourceModel$json = {
  '1': 'ResourceModel',
  '2': [
    {'1': 'namedResources', '3': 1, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesResources', '10': 'namedResources'},
  ],
};

/// Descriptor for `ResourceModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceModelDescriptor = $convert.base64Decode(
    'Cg1SZXNvdXJjZU1vZGVsElYKDm5hbWVkUmVzb3VyY2VzGAEgASgLMi4uYXBpLnJlc291cmNlLn'
    'YxYWxwaGEyLk5hbWVkUmVzb3VyY2VzUmVzb3VyY2VzUg5uYW1lZFJlc291cmNlcw==');

@$core.Deprecated('Use resourceRequestDescriptor instead')
const ResourceRequest$json = {
  '1': 'ResourceRequest',
  '2': [
    {'1': 'vendorParameters', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'vendorParameters'},
    {'1': 'resourceRequestModel', '3': 2, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceRequestModel', '10': 'resourceRequestModel'},
  ],
};

/// Descriptor for `ResourceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceRequestDescriptor = $convert.base64Decode(
    'Cg9SZXNvdXJjZVJlcXVlc3QSUgoQdmVuZG9yUGFyYW1ldGVycxgBIAEoCzImLmFwaW1hY2hpbm'
    'VyeS5wa2cucnVudGltZS5SYXdFeHRlbnNpb25SEHZlbmRvclBhcmFtZXRlcnMSXwoUcmVzb3Vy'
    'Y2VSZXF1ZXN0TW9kZWwYAiABKAsyKy5hcGkucmVzb3VyY2UudjFhbHBoYTIuUmVzb3VyY2VSZX'
    'F1ZXN0TW9kZWxSFHJlc291cmNlUmVxdWVzdE1vZGVs');

@$core.Deprecated('Use resourceRequestModelDescriptor instead')
const ResourceRequestModel$json = {
  '1': 'ResourceRequestModel',
  '2': [
    {'1': 'namedResources', '3': 1, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.NamedResourcesRequest', '10': 'namedResources'},
  ],
};

/// Descriptor for `ResourceRequestModel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceRequestModelDescriptor = $convert.base64Decode(
    'ChRSZXNvdXJjZVJlcXVlc3RNb2RlbBJUCg5uYW1lZFJlc291cmNlcxgBIAEoCzIsLmFwaS5yZX'
    'NvdXJjZS52MWFscGhhMi5OYW1lZFJlc291cmNlc1JlcXVlc3RSDm5hbWVkUmVzb3VyY2Vz');

@$core.Deprecated('Use resourceSliceDescriptor instead')
const ResourceSlice$json = {
  '1': 'ResourceSlice',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'nodeName', '3': 2, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'driverName', '3': 3, '4': 1, '5': 9, '10': 'driverName'},
    {'1': 'resourceModel', '3': 4, '4': 1, '5': 11, '6': '.api.resource.v1alpha2.ResourceModel', '10': 'resourceModel'},
  ],
};

/// Descriptor for `ResourceSlice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceSliceDescriptor = $convert.base64Decode(
    'Cg1SZXNvdXJjZVNsaWNlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESGgoIbm9kZU5hbWUYAiABKAlSCG5vZGVO'
    'YW1lEh4KCmRyaXZlck5hbWUYAyABKAlSCmRyaXZlck5hbWUSSgoNcmVzb3VyY2VNb2RlbBgEIA'
    'EoCzIkLmFwaS5yZXNvdXJjZS52MWFscGhhMi5SZXNvdXJjZU1vZGVsUg1yZXNvdXJjZU1vZGVs');

@$core.Deprecated('Use resourceSliceListDescriptor instead')
const ResourceSliceList$json = {
  '1': 'ResourceSliceList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.ResourceSlice', '10': 'items'},
  ],
};

/// Descriptor for `ResourceSliceList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceSliceListDescriptor = $convert.base64Decode(
    'ChFSZXNvdXJjZVNsaWNlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI6CgVpdGVtcxgCIAMoCzIkLmFwaS5y'
    'ZXNvdXJjZS52MWFscGhhMi5SZXNvdXJjZVNsaWNlUgVpdGVtcw==');

@$core.Deprecated('Use structuredResourceHandleDescriptor instead')
const StructuredResourceHandle$json = {
  '1': 'StructuredResourceHandle',
  '2': [
    {'1': 'vendorClassParameters', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'vendorClassParameters'},
    {'1': 'vendorClaimParameters', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'vendorClaimParameters'},
    {'1': 'nodeName', '3': 4, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'results', '3': 5, '4': 3, '5': 11, '6': '.api.resource.v1alpha2.DriverAllocationResult', '10': 'results'},
  ],
};

/// Descriptor for `StructuredResourceHandle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List structuredResourceHandleDescriptor = $convert.base64Decode(
    'ChhTdHJ1Y3R1cmVkUmVzb3VyY2VIYW5kbGUSXAoVdmVuZG9yQ2xhc3NQYXJhbWV0ZXJzGAEgAS'
    'gLMiYuYXBpbWFjaGluZXJ5LnBrZy5ydW50aW1lLlJhd0V4dGVuc2lvblIVdmVuZG9yQ2xhc3NQ'
    'YXJhbWV0ZXJzElwKFXZlbmRvckNsYWltUGFyYW1ldGVycxgCIAEoCzImLmFwaW1hY2hpbmVyeS'
    '5wa2cucnVudGltZS5SYXdFeHRlbnNpb25SFXZlbmRvckNsYWltUGFyYW1ldGVycxIaCghub2Rl'
    'TmFtZRgEIAEoCVIIbm9kZU5hbWUSRwoHcmVzdWx0cxgFIAMoCzItLmFwaS5yZXNvdXJjZS52MW'
    'FscGhhMi5Ecml2ZXJBbGxvY2F0aW9uUmVzdWx0UgdyZXN1bHRz');

@$core.Deprecated('Use vendorParametersDescriptor instead')
const VendorParameters$json = {
  '1': 'VendorParameters',
  '2': [
    {'1': 'driverName', '3': 1, '4': 1, '5': 9, '10': 'driverName'},
    {'1': 'parameters', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'parameters'},
  ],
};

/// Descriptor for `VendorParameters`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vendorParametersDescriptor = $convert.base64Decode(
    'ChBWZW5kb3JQYXJhbWV0ZXJzEh4KCmRyaXZlck5hbWUYASABKAlSCmRyaXZlck5hbWUSRgoKcG'
    'FyYW1ldGVycxgCIAEoCzImLmFwaW1hY2hpbmVyeS5wa2cucnVudGltZS5SYXdFeHRlbnNpb25S'
    'CnBhcmFtZXRlcnM=');

