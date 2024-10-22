//
//  Generated code. Do not modify.
//  source: api/authentication/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use selfSubjectReviewDescriptor instead')
const SelfSubjectReview$json = {
  '1': 'SelfSubjectReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1alpha1.SelfSubjectReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SelfSubjectReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectReviewDescriptor = $convert.base64Decode(
    'ChFTZWxmU3ViamVjdFJldmlldxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkwKBnN0YXR1cxgCIAEoCzI0LmFw'
    'aS5hdXRoZW50aWNhdGlvbi52MWFscGhhMS5TZWxmU3ViamVjdFJldmlld1N0YXR1c1IGc3RhdH'
    'Vz');

@$core.Deprecated('Use selfSubjectReviewStatusDescriptor instead')
const SelfSubjectReviewStatus$json = {
  '1': 'SelfSubjectReviewStatus',
  '2': [
    {'1': 'userInfo', '3': 1, '4': 1, '5': 11, '6': '.api.authentication.v1.UserInfo', '10': 'userInfo'},
  ],
};

/// Descriptor for `SelfSubjectReviewStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectReviewStatusDescriptor = $convert.base64Decode(
    'ChdTZWxmU3ViamVjdFJldmlld1N0YXR1cxI7Cgh1c2VySW5mbxgBIAEoCzIfLmFwaS5hdXRoZW'
    '50aWNhdGlvbi52MS5Vc2VySW5mb1IIdXNlckluZm8=');

