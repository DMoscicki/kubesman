//
//  Generated code. Do not modify.
//  source: api/imagepolicy/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use imageReviewDescriptor instead')
const ImageReview$json = {
  '1': 'ImageReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.imagepolicy.v1alpha1.ImageReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.imagepolicy.v1alpha1.ImageReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `ImageReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageReviewDescriptor = $convert.base64Decode(
    'CgtJbWFnZVJldmlldxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEj0KBHNwZWMYAiABKAsyKS5hcGkuaW1hZ2Vw'
    'b2xpY3kudjFhbHBoYTEuSW1hZ2VSZXZpZXdTcGVjUgRzcGVjEkMKBnN0YXR1cxgDIAEoCzIrLm'
    'FwaS5pbWFnZXBvbGljeS52MWFscGhhMS5JbWFnZVJldmlld1N0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use imageReviewContainerSpecDescriptor instead')
const ImageReviewContainerSpec$json = {
  '1': 'ImageReviewContainerSpec',
  '2': [
    {'1': 'image', '3': 1, '4': 1, '5': 9, '10': 'image'},
  ],
};

/// Descriptor for `ImageReviewContainerSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageReviewContainerSpecDescriptor = $convert.base64Decode(
    'ChhJbWFnZVJldmlld0NvbnRhaW5lclNwZWMSFAoFaW1hZ2UYASABKAlSBWltYWdl');

@$core.Deprecated('Use imageReviewSpecDescriptor instead')
const ImageReviewSpec$json = {
  '1': 'ImageReviewSpec',
  '2': [
    {'1': 'containers', '3': 1, '4': 3, '5': 11, '6': '.api.imagepolicy.v1alpha1.ImageReviewContainerSpec', '10': 'containers'},
    {'1': 'annotations', '3': 2, '4': 3, '5': 11, '6': '.api.imagepolicy.v1alpha1.ImageReviewSpec.AnnotationsEntry', '10': 'annotations'},
    {'1': 'namespace', '3': 3, '4': 1, '5': 9, '10': 'namespace'},
  ],
  '3': [ImageReviewSpec_AnnotationsEntry$json],
};

@$core.Deprecated('Use imageReviewSpecDescriptor instead')
const ImageReviewSpec_AnnotationsEntry$json = {
  '1': 'AnnotationsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ImageReviewSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageReviewSpecDescriptor = $convert.base64Decode(
    'Cg9JbWFnZVJldmlld1NwZWMSUgoKY29udGFpbmVycxgBIAMoCzIyLmFwaS5pbWFnZXBvbGljeS'
    '52MWFscGhhMS5JbWFnZVJldmlld0NvbnRhaW5lclNwZWNSCmNvbnRhaW5lcnMSXAoLYW5ub3Rh'
    'dGlvbnMYAiADKAsyOi5hcGkuaW1hZ2Vwb2xpY3kudjFhbHBoYTEuSW1hZ2VSZXZpZXdTcGVjLk'
    'Fubm90YXRpb25zRW50cnlSC2Fubm90YXRpb25zEhwKCW5hbWVzcGFjZRgDIAEoCVIJbmFtZXNw'
    'YWNlGj4KEEFubm90YXRpb25zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA'
    'lSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use imageReviewStatusDescriptor instead')
const ImageReviewStatus$json = {
  '1': 'ImageReviewStatus',
  '2': [
    {'1': 'allowed', '3': 1, '4': 1, '5': 8, '10': 'allowed'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'auditAnnotations', '3': 3, '4': 3, '5': 11, '6': '.api.imagepolicy.v1alpha1.ImageReviewStatus.AuditAnnotationsEntry', '10': 'auditAnnotations'},
  ],
  '3': [ImageReviewStatus_AuditAnnotationsEntry$json],
};

@$core.Deprecated('Use imageReviewStatusDescriptor instead')
const ImageReviewStatus_AuditAnnotationsEntry$json = {
  '1': 'AuditAnnotationsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ImageReviewStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List imageReviewStatusDescriptor = $convert.base64Decode(
    'ChFJbWFnZVJldmlld1N0YXR1cxIYCgdhbGxvd2VkGAEgASgIUgdhbGxvd2VkEhYKBnJlYXNvbh'
    'gCIAEoCVIGcmVhc29uEm0KEGF1ZGl0QW5ub3RhdGlvbnMYAyADKAsyQS5hcGkuaW1hZ2Vwb2xp'
    'Y3kudjFhbHBoYTEuSW1hZ2VSZXZpZXdTdGF0dXMuQXVkaXRBbm5vdGF0aW9uc0VudHJ5UhBhdW'
    'RpdEFubm90YXRpb25zGkMKFUF1ZGl0QW5ub3RhdGlvbnNFbnRyeRIQCgNrZXkYASABKAlSA2tl'
    'eRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

