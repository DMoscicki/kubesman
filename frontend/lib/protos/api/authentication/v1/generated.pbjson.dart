//
//  Generated code. Do not modify.
//  source: api/authentication/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use boundObjectReferenceDescriptor instead')
const BoundObjectReference$json = {
  '1': 'BoundObjectReference',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'apiVersion', '3': 2, '4': 1, '5': 9, '10': 'apiVersion'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uID', '3': 4, '4': 1, '5': 9, '10': 'uID'},
  ],
};

/// Descriptor for `BoundObjectReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List boundObjectReferenceDescriptor = $convert.base64Decode(
    'ChRCb3VuZE9iamVjdFJlZmVyZW5jZRISCgRraW5kGAEgASgJUgRraW5kEh4KCmFwaVZlcnNpb2'
    '4YAiABKAlSCmFwaVZlcnNpb24SEgoEbmFtZRgDIAEoCVIEbmFtZRIQCgN1SUQYBCABKAlSA3VJ'
    'RA==');

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
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1.SelfSubjectReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SelfSubjectReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectReviewDescriptor = $convert.base64Decode(
    'ChFTZWxmU3ViamVjdFJldmlldxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkYKBnN0YXR1cxgCIAEoCzIuLmFw'
    'aS5hdXRoZW50aWNhdGlvbi52MS5TZWxmU3ViamVjdFJldmlld1N0YXR1c1IGc3RhdHVz');

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

@$core.Deprecated('Use tokenRequestDescriptor instead')
const TokenRequest$json = {
  '1': 'TokenRequest',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1.TokenRequestSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authentication.v1.TokenRequestStatus', '10': 'status'},
  ],
};

/// Descriptor for `TokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenRequestDescriptor = $convert.base64Decode(
    'CgxUb2tlblJlcXVlc3QSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaX'
    'MubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI7CgRzcGVjGAIgASgLMicuYXBpLmF1dGhl'
    'bnRpY2F0aW9uLnYxLlRva2VuUmVxdWVzdFNwZWNSBHNwZWMSQQoGc3RhdHVzGAMgASgLMikuYX'
    'BpLmF1dGhlbnRpY2F0aW9uLnYxLlRva2VuUmVxdWVzdFN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use tokenRequestSpecDescriptor instead')
const TokenRequestSpec$json = {
  '1': 'TokenRequestSpec',
  '2': [
    {'1': 'audiences', '3': 1, '4': 3, '5': 9, '10': 'audiences'},
    {'1': 'expirationSeconds', '3': 4, '4': 1, '5': 3, '10': 'expirationSeconds'},
    {'1': 'boundObjectRef', '3': 3, '4': 1, '5': 11, '6': '.api.authentication.v1.BoundObjectReference', '10': 'boundObjectRef'},
  ],
};

/// Descriptor for `TokenRequestSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenRequestSpecDescriptor = $convert.base64Decode(
    'ChBUb2tlblJlcXVlc3RTcGVjEhwKCWF1ZGllbmNlcxgBIAMoCVIJYXVkaWVuY2VzEiwKEWV4cG'
    'lyYXRpb25TZWNvbmRzGAQgASgDUhFleHBpcmF0aW9uU2Vjb25kcxJTCg5ib3VuZE9iamVjdFJl'
    'ZhgDIAEoCzIrLmFwaS5hdXRoZW50aWNhdGlvbi52MS5Cb3VuZE9iamVjdFJlZmVyZW5jZVIOYm'
    '91bmRPYmplY3RSZWY=');

@$core.Deprecated('Use tokenRequestStatusDescriptor instead')
const TokenRequestStatus$json = {
  '1': 'TokenRequestStatus',
  '2': [
    {'1': 'token', '3': 1, '4': 1, '5': 9, '10': 'token'},
    {'1': 'expirationTimestamp', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'expirationTimestamp'},
  ],
};

/// Descriptor for `TokenRequestStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenRequestStatusDescriptor = $convert.base64Decode(
    'ChJUb2tlblJlcXVlc3RTdGF0dXMSFAoFdG9rZW4YASABKAlSBXRva2VuElUKE2V4cGlyYXRpb2'
    '5UaW1lc3RhbXAYAiABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhNl'
    'eHBpcmF0aW9uVGltZXN0YW1w');

@$core.Deprecated('Use tokenReviewDescriptor instead')
const TokenReview$json = {
  '1': 'TokenReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1.TokenReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authentication.v1.TokenReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `TokenReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenReviewDescriptor = $convert.base64Decode(
    'CgtUb2tlblJldmlldxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjoKBHNwZWMYAiABKAsyJi5hcGkuYXV0aGVu'
    'dGljYXRpb24udjEuVG9rZW5SZXZpZXdTcGVjUgRzcGVjEkAKBnN0YXR1cxgDIAEoCzIoLmFwaS'
    '5hdXRoZW50aWNhdGlvbi52MS5Ub2tlblJldmlld1N0YXR1c1IGc3RhdHVz');

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
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1.UserInfo', '10': 'user'},
    {'1': 'audiences', '3': 4, '4': 3, '5': 9, '10': 'audiences'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `TokenReviewStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenReviewStatusDescriptor = $convert.base64Decode(
    'ChFUb2tlblJldmlld1N0YXR1cxIkCg1hdXRoZW50aWNhdGVkGAEgASgIUg1hdXRoZW50aWNhdG'
    'VkEjMKBHVzZXIYAiABKAsyHy5hcGkuYXV0aGVudGljYXRpb24udjEuVXNlckluZm9SBHVzZXIS'
    'HAoJYXVkaWVuY2VzGAQgAygJUglhdWRpZW5jZXMSFAoFZXJyb3IYAyABKAlSBWVycm9y');

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo$json = {
  '1': 'UserInfo',
  '2': [
    {'1': 'username', '3': 1, '4': 1, '5': 9, '10': 'username'},
    {'1': 'uid', '3': 2, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'groups', '3': 3, '4': 3, '5': 9, '10': 'groups'},
    {'1': 'extra', '3': 4, '4': 3, '5': 11, '6': '.api.authentication.v1.UserInfo.ExtraEntry', '10': 'extra'},
  ],
  '3': [UserInfo_ExtraEntry$json],
};

@$core.Deprecated('Use userInfoDescriptor instead')
const UserInfo_ExtraEntry$json = {
  '1': 'ExtraEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.api.authentication.v1.ExtraValue', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `UserInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userInfoDescriptor = $convert.base64Decode(
    'CghVc2VySW5mbxIaCgh1c2VybmFtZRgBIAEoCVIIdXNlcm5hbWUSEAoDdWlkGAIgASgJUgN1aW'
    'QSFgoGZ3JvdXBzGAMgAygJUgZncm91cHMSQAoFZXh0cmEYBCADKAsyKi5hcGkuYXV0aGVudGlj'
    'YXRpb24udjEuVXNlckluZm8uRXh0cmFFbnRyeVIFZXh0cmEaWwoKRXh0cmFFbnRyeRIQCgNrZX'
    'kYASABKAlSA2tleRI3CgV2YWx1ZRgCIAEoCzIhLmFwaS5hdXRoZW50aWNhdGlvbi52MS5FeHRy'
    'YVZhbHVlUgV2YWx1ZToCOAE=');

