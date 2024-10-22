//
//  Generated code. Do not modify.
//  source: api/authorization/v1/generated.proto
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

@$core.Deprecated('Use localSubjectAccessReviewDescriptor instead')
const LocalSubjectAccessReview$json = {
  '1': 'LocalSubjectAccessReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1.SubjectAccessReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authorization.v1.SubjectAccessReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `LocalSubjectAccessReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localSubjectAccessReviewDescriptor = $convert.base64Decode(
    'ChhMb2NhbFN1YmplY3RBY2Nlc3NSZXZpZXcSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW'
    '5lcnkucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRJBCgRzcGVjGAIgASgL'
    'Mi0uYXBpLmF1dGhvcml6YXRpb24udjEuU3ViamVjdEFjY2Vzc1Jldmlld1NwZWNSBHNwZWMSRw'
    'oGc3RhdHVzGAMgASgLMi8uYXBpLmF1dGhvcml6YXRpb24udjEuU3ViamVjdEFjY2Vzc1Jldmll'
    'd1N0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use nonResourceAttributesDescriptor instead')
const NonResourceAttributes$json = {
  '1': 'NonResourceAttributes',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'verb', '3': 2, '4': 1, '5': 9, '10': 'verb'},
  ],
};

/// Descriptor for `NonResourceAttributes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nonResourceAttributesDescriptor = $convert.base64Decode(
    'ChVOb25SZXNvdXJjZUF0dHJpYnV0ZXMSEgoEcGF0aBgBIAEoCVIEcGF0aBISCgR2ZXJiGAIgAS'
    'gJUgR2ZXJi');

@$core.Deprecated('Use nonResourceRuleDescriptor instead')
const NonResourceRule$json = {
  '1': 'NonResourceRule',
  '2': [
    {'1': 'verbs', '3': 1, '4': 3, '5': 9, '10': 'verbs'},
    {'1': 'nonResourceURLs', '3': 2, '4': 3, '5': 9, '10': 'nonResourceURLs'},
  ],
};

/// Descriptor for `NonResourceRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nonResourceRuleDescriptor = $convert.base64Decode(
    'Cg9Ob25SZXNvdXJjZVJ1bGUSFAoFdmVyYnMYASADKAlSBXZlcmJzEigKD25vblJlc291cmNlVV'
    'JMcxgCIAMoCVIPbm9uUmVzb3VyY2VVUkxz');

@$core.Deprecated('Use resourceAttributesDescriptor instead')
const ResourceAttributes$json = {
  '1': 'ResourceAttributes',
  '2': [
    {'1': 'namespace', '3': 1, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'verb', '3': 2, '4': 1, '5': 9, '10': 'verb'},
    {'1': 'group', '3': 3, '4': 1, '5': 9, '10': 'group'},
    {'1': 'version', '3': 4, '4': 1, '5': 9, '10': 'version'},
    {'1': 'resource', '3': 5, '4': 1, '5': 9, '10': 'resource'},
    {'1': 'subresource', '3': 6, '4': 1, '5': 9, '10': 'subresource'},
    {'1': 'name', '3': 7, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ResourceAttributes`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceAttributesDescriptor = $convert.base64Decode(
    'ChJSZXNvdXJjZUF0dHJpYnV0ZXMSHAoJbmFtZXNwYWNlGAEgASgJUgluYW1lc3BhY2USEgoEdm'
    'VyYhgCIAEoCVIEdmVyYhIUCgVncm91cBgDIAEoCVIFZ3JvdXASGAoHdmVyc2lvbhgEIAEoCVIH'
    'dmVyc2lvbhIaCghyZXNvdXJjZRgFIAEoCVIIcmVzb3VyY2USIAoLc3VicmVzb3VyY2UYBiABKA'
    'lSC3N1YnJlc291cmNlEhIKBG5hbWUYByABKAlSBG5hbWU=');

@$core.Deprecated('Use resourceRuleDescriptor instead')
const ResourceRule$json = {
  '1': 'ResourceRule',
  '2': [
    {'1': 'verbs', '3': 1, '4': 3, '5': 9, '10': 'verbs'},
    {'1': 'apiGroups', '3': 2, '4': 3, '5': 9, '10': 'apiGroups'},
    {'1': 'resources', '3': 3, '4': 3, '5': 9, '10': 'resources'},
    {'1': 'resourceNames', '3': 4, '4': 3, '5': 9, '10': 'resourceNames'},
  ],
};

/// Descriptor for `ResourceRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceRuleDescriptor = $convert.base64Decode(
    'CgxSZXNvdXJjZVJ1bGUSFAoFdmVyYnMYASADKAlSBXZlcmJzEhwKCWFwaUdyb3VwcxgCIAMoCV'
    'IJYXBpR3JvdXBzEhwKCXJlc291cmNlcxgDIAMoCVIJcmVzb3VyY2VzEiQKDXJlc291cmNlTmFt'
    'ZXMYBCADKAlSDXJlc291cmNlTmFtZXM=');

@$core.Deprecated('Use selfSubjectAccessReviewDescriptor instead')
const SelfSubjectAccessReview$json = {
  '1': 'SelfSubjectAccessReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1.SelfSubjectAccessReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authorization.v1.SubjectAccessReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SelfSubjectAccessReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectAccessReviewDescriptor = $convert.base64Decode(
    'ChdTZWxmU3ViamVjdEFjY2Vzc1JldmlldxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkUKBHNwZWMYAiABKAsy'
    'MS5hcGkuYXV0aG9yaXphdGlvbi52MS5TZWxmU3ViamVjdEFjY2Vzc1Jldmlld1NwZWNSBHNwZW'
    'MSRwoGc3RhdHVzGAMgASgLMi8uYXBpLmF1dGhvcml6YXRpb24udjEuU3ViamVjdEFjY2Vzc1Jl'
    'dmlld1N0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use selfSubjectAccessReviewSpecDescriptor instead')
const SelfSubjectAccessReviewSpec$json = {
  '1': 'SelfSubjectAccessReviewSpec',
  '2': [
    {'1': 'resourceAttributes', '3': 1, '4': 1, '5': 11, '6': '.api.authorization.v1.ResourceAttributes', '10': 'resourceAttributes'},
    {'1': 'nonResourceAttributes', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1.NonResourceAttributes', '10': 'nonResourceAttributes'},
  ],
};

/// Descriptor for `SelfSubjectAccessReviewSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectAccessReviewSpecDescriptor = $convert.base64Decode(
    'ChtTZWxmU3ViamVjdEFjY2Vzc1Jldmlld1NwZWMSWAoScmVzb3VyY2VBdHRyaWJ1dGVzGAEgAS'
    'gLMiguYXBpLmF1dGhvcml6YXRpb24udjEuUmVzb3VyY2VBdHRyaWJ1dGVzUhJyZXNvdXJjZUF0'
    'dHJpYnV0ZXMSYQoVbm9uUmVzb3VyY2VBdHRyaWJ1dGVzGAIgASgLMisuYXBpLmF1dGhvcml6YX'
    'Rpb24udjEuTm9uUmVzb3VyY2VBdHRyaWJ1dGVzUhVub25SZXNvdXJjZUF0dHJpYnV0ZXM=');

@$core.Deprecated('Use selfSubjectRulesReviewDescriptor instead')
const SelfSubjectRulesReview$json = {
  '1': 'SelfSubjectRulesReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1.SelfSubjectRulesReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authorization.v1.SubjectRulesReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SelfSubjectRulesReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectRulesReviewDescriptor = $convert.base64Decode(
    'ChZTZWxmU3ViamVjdFJ1bGVzUmV2aWV3EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESRAoEc3BlYxgCIAEoCzIw'
    'LmFwaS5hdXRob3JpemF0aW9uLnYxLlNlbGZTdWJqZWN0UnVsZXNSZXZpZXdTcGVjUgRzcGVjEk'
    'YKBnN0YXR1cxgDIAEoCzIuLmFwaS5hdXRob3JpemF0aW9uLnYxLlN1YmplY3RSdWxlc1Jldmll'
    'd1N0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use selfSubjectRulesReviewSpecDescriptor instead')
const SelfSubjectRulesReviewSpec$json = {
  '1': 'SelfSubjectRulesReviewSpec',
  '2': [
    {'1': 'namespace', '3': 1, '4': 1, '5': 9, '10': 'namespace'},
  ],
};

/// Descriptor for `SelfSubjectRulesReviewSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectRulesReviewSpecDescriptor = $convert.base64Decode(
    'ChpTZWxmU3ViamVjdFJ1bGVzUmV2aWV3U3BlYxIcCgluYW1lc3BhY2UYASABKAlSCW5hbWVzcG'
    'FjZQ==');

@$core.Deprecated('Use subjectAccessReviewDescriptor instead')
const SubjectAccessReview$json = {
  '1': 'SubjectAccessReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1.SubjectAccessReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authorization.v1.SubjectAccessReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SubjectAccessReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectAccessReviewDescriptor = $convert.base64Decode(
    'ChNTdWJqZWN0QWNjZXNzUmV2aWV3EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5Ln'
    'BrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESQQoEc3BlYxgCIAEoCzItLmFw'
    'aS5hdXRob3JpemF0aW9uLnYxLlN1YmplY3RBY2Nlc3NSZXZpZXdTcGVjUgRzcGVjEkcKBnN0YX'
    'R1cxgDIAEoCzIvLmFwaS5hdXRob3JpemF0aW9uLnYxLlN1YmplY3RBY2Nlc3NSZXZpZXdTdGF0'
    'dXNSBnN0YXR1cw==');

@$core.Deprecated('Use subjectAccessReviewSpecDescriptor instead')
const SubjectAccessReviewSpec$json = {
  '1': 'SubjectAccessReviewSpec',
  '2': [
    {'1': 'resourceAttributes', '3': 1, '4': 1, '5': 11, '6': '.api.authorization.v1.ResourceAttributes', '10': 'resourceAttributes'},
    {'1': 'nonResourceAttributes', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1.NonResourceAttributes', '10': 'nonResourceAttributes'},
    {'1': 'user', '3': 3, '4': 1, '5': 9, '10': 'user'},
    {'1': 'groups', '3': 4, '4': 3, '5': 9, '10': 'groups'},
    {'1': 'extra', '3': 5, '4': 3, '5': 11, '6': '.api.authorization.v1.SubjectAccessReviewSpec.ExtraEntry', '10': 'extra'},
    {'1': 'uid', '3': 6, '4': 1, '5': 9, '10': 'uid'},
  ],
  '3': [SubjectAccessReviewSpec_ExtraEntry$json],
};

@$core.Deprecated('Use subjectAccessReviewSpecDescriptor instead')
const SubjectAccessReviewSpec_ExtraEntry$json = {
  '1': 'ExtraEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1.ExtraValue', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SubjectAccessReviewSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectAccessReviewSpecDescriptor = $convert.base64Decode(
    'ChdTdWJqZWN0QWNjZXNzUmV2aWV3U3BlYxJYChJyZXNvdXJjZUF0dHJpYnV0ZXMYASABKAsyKC'
    '5hcGkuYXV0aG9yaXphdGlvbi52MS5SZXNvdXJjZUF0dHJpYnV0ZXNSEnJlc291cmNlQXR0cmli'
    'dXRlcxJhChVub25SZXNvdXJjZUF0dHJpYnV0ZXMYAiABKAsyKy5hcGkuYXV0aG9yaXphdGlvbi'
    '52MS5Ob25SZXNvdXJjZUF0dHJpYnV0ZXNSFW5vblJlc291cmNlQXR0cmlidXRlcxISCgR1c2Vy'
    'GAMgASgJUgR1c2VyEhYKBmdyb3VwcxgEIAMoCVIGZ3JvdXBzEk4KBWV4dHJhGAUgAygLMjguYX'
    'BpLmF1dGhvcml6YXRpb24udjEuU3ViamVjdEFjY2Vzc1Jldmlld1NwZWMuRXh0cmFFbnRyeVIF'
    'ZXh0cmESEAoDdWlkGAYgASgJUgN1aWQaWgoKRXh0cmFFbnRyeRIQCgNrZXkYASABKAlSA2tleR'
    'I2CgV2YWx1ZRgCIAEoCzIgLmFwaS5hdXRob3JpemF0aW9uLnYxLkV4dHJhVmFsdWVSBXZhbHVl'
    'OgI4AQ==');

@$core.Deprecated('Use subjectAccessReviewStatusDescriptor instead')
const SubjectAccessReviewStatus$json = {
  '1': 'SubjectAccessReviewStatus',
  '2': [
    {'1': 'allowed', '3': 1, '4': 1, '5': 8, '10': 'allowed'},
    {'1': 'denied', '3': 4, '4': 1, '5': 8, '10': 'denied'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'evaluationError', '3': 3, '4': 1, '5': 9, '10': 'evaluationError'},
  ],
};

/// Descriptor for `SubjectAccessReviewStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectAccessReviewStatusDescriptor = $convert.base64Decode(
    'ChlTdWJqZWN0QWNjZXNzUmV2aWV3U3RhdHVzEhgKB2FsbG93ZWQYASABKAhSB2FsbG93ZWQSFg'
    'oGZGVuaWVkGAQgASgIUgZkZW5pZWQSFgoGcmVhc29uGAIgASgJUgZyZWFzb24SKAoPZXZhbHVh'
    'dGlvbkVycm9yGAMgASgJUg9ldmFsdWF0aW9uRXJyb3I=');

@$core.Deprecated('Use subjectRulesReviewStatusDescriptor instead')
const SubjectRulesReviewStatus$json = {
  '1': 'SubjectRulesReviewStatus',
  '2': [
    {'1': 'resourceRules', '3': 1, '4': 3, '5': 11, '6': '.api.authorization.v1.ResourceRule', '10': 'resourceRules'},
    {'1': 'nonResourceRules', '3': 2, '4': 3, '5': 11, '6': '.api.authorization.v1.NonResourceRule', '10': 'nonResourceRules'},
    {'1': 'incomplete', '3': 3, '4': 1, '5': 8, '10': 'incomplete'},
    {'1': 'evaluationError', '3': 4, '4': 1, '5': 9, '10': 'evaluationError'},
  ],
};

/// Descriptor for `SubjectRulesReviewStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectRulesReviewStatusDescriptor = $convert.base64Decode(
    'ChhTdWJqZWN0UnVsZXNSZXZpZXdTdGF0dXMSSAoNcmVzb3VyY2VSdWxlcxgBIAMoCzIiLmFwaS'
    '5hdXRob3JpemF0aW9uLnYxLlJlc291cmNlUnVsZVINcmVzb3VyY2VSdWxlcxJRChBub25SZXNv'
    'dXJjZVJ1bGVzGAIgAygLMiUuYXBpLmF1dGhvcml6YXRpb24udjEuTm9uUmVzb3VyY2VSdWxlUh'
    'Bub25SZXNvdXJjZVJ1bGVzEh4KCmluY29tcGxldGUYAyABKAhSCmluY29tcGxldGUSKAoPZXZh'
    'bHVhdGlvbkVycm9yGAQgASgJUg9ldmFsdWF0aW9uRXJyb3I=');

