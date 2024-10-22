//
//  Generated code. Do not modify.
//  source: api/authentication/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use extraValueDescriptor instead')
const ExtraValue$json = {
  '1': 'ExtraValue',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

/// Descriptor for `ExtraValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extraValueDescriptor = $convert.base64Decode(
    'CgpFeHRyYVZhbHVlEhQKBWl0ZW1zGAEgAygJUgVpdGVtcw==');

@$core.Deprecated('Use selfSubjectReviewDescriptor instead')
const SelfSubjectReview$json = {
  '1': 'SelfSubjectReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1beta1.SelfSubjectReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SelfSubjectReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectReviewDescriptor = $convert.base64Decode(
    'ChFTZWxmU3ViamVjdFJldmlldxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEksKBnN0YXR1cxgCIAEoCzIzLmFw'
    'aS5hdXRoZW50aWNhdGlvbi52MWJldGExLlNlbGZTdWJqZWN0UmV2aWV3U3RhdHVzUgZzdGF0dX'
    'M=');

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

@$core.Deprecated('Use tokenReviewDescriptor instead')
const TokenReview$json = {
  '1': 'TokenReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1beta1.TokenReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authentication.v1beta1.TokenReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `TokenReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenReviewDescriptor = $convert.base64Decode(
    'CgtUb2tlblJldmlldxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEj8KBHNwZWMYAiABKAsyKy5hcGkuYXV0aGVu'
    'dGljYXRpb24udjFiZXRhMS5Ub2tlblJldmlld1NwZWNSBHNwZWMSRQoGc3RhdHVzGAMgASgLMi'
    '0uYXBpLmF1dGhlbnRpY2F0aW9uLnYxYmV0YTEuVG9rZW5SZXZpZXdTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use tokenReviewSpecDescriptor instead')
const TokenReviewSpec$json = {
  '1': 'TokenReviewSpec',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'audiences', '3': 2, '4': 3, '5': 9, '10': 'audiences'},
  ],
};

/// Descriptor for `TokenReviewSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenReviewSpecDescriptor = $convert.base64Decode(
    'Cg9Ub2tlblJldmlld1NwZWMSFAoFdG9rZW4YASABKAlSBXRva2VuEhwKCWF1ZGllbmNlcxgCIA'
    'MoCVIJYXVkaWVuY2Vz');

@$core.Deprecated('Use tokenReviewStatusDescriptor instead')
const TokenReviewStatus$json = {
  '1': 'TokenReviewStatus',
  '2': [
    {'1': 'authenticated', '3': 1, '4': 1, '5': 8, '10': 'authenticated'},
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1beta1.UserInfo', '10': 'user'},
    {'1': 'audiences', '3': 4, '4': 3, '5': 9, '10': 'audiences'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `TokenReviewStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenReviewStatusDescriptor = $convert.base64Decode(
    'ChFUb2tlblJldmlld1N0YXR1cxIkCg1hdXRoZW50aWNhdGVkGAEgASgIUg1hdXRoZW50aWNhdG'
    'VkEjgKBHVzZXIYAiABKAsyJC5hcGkuYXV0aGVudGljYXRpb24udjFiZXRhMS5Vc2VySW5mb1IE'
    'dXNlchIcCglhdWRpZW5jZXMYBCADKAlSCWF1ZGllbmNlcxIUCgVlcnJvchgDIAEoCVIFZXJyb3'
    'I=');

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'groups', '3': 3, '4': 3, '5': 9, '10': 'groups'},
    {'1': 'extra', '3': 4, '4': 3, '5': 11, '6': '.api.authentication.v1beta1.UserInfo.ExtraEntry', '10': 'extra'},
  ],
  '3': [UserInfo_ExtraEntry$json],
};

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo_ExtraEntry$json = {
  '1': 'ExtraEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1beta1.ExtraValue', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSEAoDdWlkGAIgASgJUgN1aW'
    'QSFgoGZ3JvdXBzGAMgAygJUgZncm91cHMSRQoFZXh0cmEYBCADKAsyLy5hcGkuYXV0aGVudGlj'
    'YXRpb24udjFiZXRhMS5Vc2VySW5mby5FeHRyYUVudHJ5UgVleHRyYRpgCgpFeHRyYUVudHJ5Eh'
    'AKA2tleRgBIAEoCVIDa2V5EjwKBXZhbHVlGAIgASgLMiYuYXBpLmF1dGhlbnRpY2F0aW9uLnYx'
    'YmV0YTEuRXh0cmFWYWx1ZVIFdmFsdWU6AjgB');

