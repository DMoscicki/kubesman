//
//  Generated code. Do not modify.
//  source: api/coordination/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use leaseDescriptor instead')
const Lease$json = {
  '1': 'Lease',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.coordination.v1beta1.LeaseSpec', '10': 'spec'},
  ],
};

/// Descriptor for `Lease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseDescriptor = $convert.base64Decode(
    'CgVMZWFzZRJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLn'
    'YxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjcKBHNwZWMYAiABKAsyIy5hcGkuY29vcmRpbmF0aW9u'
    'LnYxYmV0YTEuTGVhc2VTcGVjUgRzcGVj');

@$core.Deprecated('Use leaseListDescriptor instead')
const LeaseList$json = {
  '1': 'LeaseList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.coordination.v1beta1.Lease', '10': 'items'},
  ],
};

/// Descriptor for `LeaseList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseListDescriptor = $convert.base64Decode(
    'CglMZWFzZUxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESNQoFaXRlbXMYAiADKAsyHy5hcGkuY29vcmRpbmF0'
    'aW9uLnYxYmV0YTEuTGVhc2VSBWl0ZW1z');

@$core.Deprecated('Use leaseSpecDescriptor instead')
const LeaseSpec$json = {
  '1': 'LeaseSpec',
  '2': [
    {'1': 'holderIdentity', '3': 1, '4': 1, '5': 9, '10': 'holderIdentity'},
    {'1': 'leaseDurationSeconds', '3': 2, '4': 1, '5': 5, '10': 'leaseDurationSeconds'},
    {'1': 'acquireTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.MicroTime', '10': 'acquireTime'},
    {'1': 'renewTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.MicroTime', '10': 'renewTime'},
    {'1': 'leaseTransitions', '3': 5, '4': 1, '5': 5, '10': 'leaseTransitions'},
  ],
};

/// Descriptor for `LeaseSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseSpecDescriptor = $convert.base64Decode(
    'CglMZWFzZVNwZWMSJgoOaG9sZGVySWRlbnRpdHkYASABKAlSDmhvbGRlcklkZW50aXR5EjIKFG'
    'xlYXNlRHVyYXRpb25TZWNvbmRzGAIgASgFUhRsZWFzZUR1cmF0aW9uU2Vjb25kcxJKCgthY3F1'
    'aXJlVGltZRgDIAEoCzIoLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLk1pY3JvVGltZV'
    'ILYWNxdWlyZVRpbWUSRgoJcmVuZXdUaW1lGAQgASgLMiguYXBpbWFjaGluZXJ5LnBrZy5hcGlz'
    'Lm1ldGEudjEuTWljcm9UaW1lUglyZW5ld1RpbWUSKgoQbGVhc2VUcmFuc2l0aW9ucxgFIAEoBV'
    'IQbGVhc2VUcmFuc2l0aW9ucw==');

