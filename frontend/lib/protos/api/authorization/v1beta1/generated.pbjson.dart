//
//  Generated code. Do not modify.
//  source: api/authorization/v1beta1/generated.proto
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
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.SubjectAccessReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.SubjectAccessReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `LocalSubjectAccessReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localSubjectAccessReviewDescriptor = $convert.base64Decode(
    'ChhMb2NhbFN1YmplY3RBY2Nlc3NSZXZpZXcSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW'
    '5lcnkucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRJGCgRzcGVjGAIgASgL'
    'MjIuYXBpLmF1dGhvcml6YXRpb24udjFiZXRhMS5TdWJqZWN0QWNjZXNzUmV2aWV3U3BlY1IEc3'
    'BlYxJMCgZzdGF0dXMYAyABKAsyNC5hcGkuYXV0aG9yaXphdGlvbi52MWJldGExLlN1YmplY3RB'
    'Y2Nlc3NSZXZpZXdTdGF0dXNSBnN0YXR1cw==');

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
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.SelfSubjectAccessReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.SubjectAccessReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SelfSubjectAccessReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectAccessReviewDescriptor = $convert.base64Decode(
    'ChdTZWxmU3ViamVjdEFjY2Vzc1JldmlldxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkoKBHNwZWMYAiABKAsy'
    'Ni5hcGkuYXV0aG9yaXphdGlvbi52MWJldGExLlNlbGZTdWJqZWN0QWNjZXNzUmV2aWV3U3BlY1'
    'IEc3BlYxJMCgZzdGF0dXMYAyABKAsyNC5hcGkuYXV0aG9yaXphdGlvbi52MWJldGExLlN1Ympl'
    'Y3RBY2Nlc3NSZXZpZXdTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use selfSubjectAccessReviewSpecDescriptor instead')
const SelfSubjectAccessReviewSpec$json = {
  '1': 'SelfSubjectAccessReviewSpec',
  '2': [
    {'1': 'resourceAttributes', '3': 1, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.ResourceAttributes', '10': 'resourceAttributes'},
    {'1': 'nonResourceAttributes', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.NonResourceAttributes', '10': 'nonResourceAttributes'},
  ],
};

/// Descriptor for `SelfSubjectAccessReviewSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectAccessReviewSpecDescriptor = $convert.base64Decode(
    'ChtTZWxmU3ViamVjdEFjY2Vzc1Jldmlld1NwZWMSXQoScmVzb3VyY2VBdHRyaWJ1dGVzGAEgAS'
    'gLMi0uYXBpLmF1dGhvcml6YXRpb24udjFiZXRhMS5SZXNvdXJjZUF0dHJpYnV0ZXNSEnJlc291'
    'cmNlQXR0cmlidXRlcxJmChVub25SZXNvdXJjZUF0dHJpYnV0ZXMYAiABKAsyMC5hcGkuYXV0aG'
    '9yaXphdGlvbi52MWJldGExLk5vblJlc291cmNlQXR0cmlidXRlc1IVbm9uUmVzb3VyY2VBdHRy'
    'aWJ1dGVz');

@$core.Deprecated('Use selfSubjectRulesReviewDescriptor instead')
const SelfSubjectRulesReview$json = {
  '1': 'SelfSubjectRulesReview',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.SelfSubjectRulesReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.SubjectRulesReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SelfSubjectRulesReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selfSubjectRulesReviewDescriptor = $convert.base64Decode(
    'ChZTZWxmU3ViamVjdFJ1bGVzUmV2aWV3EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESSQoEc3BlYxgCIAEoCzI1'
    'LmFwaS5hdXRob3JpemF0aW9uLnYxYmV0YTEuU2VsZlN1YmplY3RSdWxlc1Jldmlld1NwZWNSBH'
    'NwZWMSSwoGc3RhdHVzGAMgASgLMjMuYXBpLmF1dGhvcml6YXRpb24udjFiZXRhMS5TdWJqZWN0'
    'UnVsZXNSZXZpZXdTdGF0dXNSBnN0YXR1cw==');

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
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.SubjectAccessReviewSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.SubjectAccessReviewStatus', '10': 'status'},
  ],
};

/// Descriptor for `SubjectAccessReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectAccessReviewDescriptor = $convert.base64Decode(
    'ChNTdWJqZWN0QWNjZXNzUmV2aWV3EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5Ln'
    'BrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESRgoEc3BlYxgCIAEoCzIyLmFw'
    'aS5hdXRob3JpemF0aW9uLnYxYmV0YTEuU3ViamVjdEFjY2Vzc1Jldmlld1NwZWNSBHNwZWMSTA'
    'oGc3RhdHVzGAMgASgLMjQuYXBpLmF1dGhvcml6YXRpb24udjFiZXRhMS5TdWJqZWN0QWNjZXNz'
    'UmV2aWV3U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use subjectAccessReviewSpecDescriptor instead')
const SubjectAccessReviewSpec$json = {
  '1': 'SubjectAccessReviewSpec',
  '2': [
    {'1': 'resourceAttributes', '3': 1, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.ResourceAttributes', '10': 'resourceAttributes'},
    {'1': 'nonResourceAttributes', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.NonResourceAttributes', '10': 'nonResourceAttributes'},
    {'1': 'user', '3': 3, '4': 1, '5': 9, '10': 'user'},
    {'1': 'group', '3': 4, '4': 3, '5': 9, '10': 'group'},
    {'1': 'extra', '3': 5, '4': 3, '5': 11, '6': '.api.authorization.v1beta1.SubjectAccessReviewSpec.ExtraEntry', '10': 'extra'},
    {'1': 'uid', '3': 6, '4': 1, '5': 9, '10': 'uid'},
  ],
  '3': [SubjectAccessReviewSpec_ExtraEntry$json],
};

@$core.Deprecated('Use subjectAccessReviewSpecDescriptor instead')
const SubjectAccessReviewSpec_ExtraEntry$json = {
  '1': 'ExtraEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.api.authorization.v1beta1.ExtraValue', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `SubjectAccessReviewSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectAccessReviewSpecDescriptor = $convert.base64Decode(
    'ChdTdWJqZWN0QWNjZXNzUmV2aWV3U3BlYxJdChJyZXNvdXJjZUF0dHJpYnV0ZXMYASABKAsyLS'
    '5hcGkuYXV0aG9yaXphdGlvbi52MWJldGExLlJlc291cmNlQXR0cmlidXRlc1IScmVzb3VyY2VB'
    'dHRyaWJ1dGVzEmYKFW5vblJlc291cmNlQXR0cmlidXRlcxgCIAEoCzIwLmFwaS5hdXRob3Jpem'
    'F0aW9uLnYxYmV0YTEuTm9uUmVzb3VyY2VBdHRyaWJ1dGVzUhVub25SZXNvdXJjZUF0dHJpYnV0'
    'ZXMSEgoEdXNlchgDIAEoCVIEdXNlchIUCgVncm91cBgEIAMoCVIFZ3JvdXASUwoFZXh0cmEYBS'
    'ADKAsyPS5hcGkuYXV0aG9yaXphdGlvbi52MWJldGExLlN1YmplY3RBY2Nlc3NSZXZpZXdTcGVj'
    'LkV4dHJhRW50cnlSBWV4dHJhEhAKA3VpZBgGIAEoCVIDdWlkGl8KCkV4dHJhRW50cnkSEAoDa2'
    'V5GAEgASgJUgNrZXkSOwoFdmFsdWUYAiABKAsyJS5hcGkuYXV0aG9yaXphdGlvbi52MWJldGEx'
    'LkV4dHJhVmFsdWVSBXZhbHVlOgI4AQ==');

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
    {'1': 'resourceRules', '3': 1, '4': 3, '5': 11, '6': '.api.authorization.v1beta1.ResourceRule', '10': 'resourceRules'},
    {'1': 'nonResourceRules', '3': 2, '4': 3, '5': 11, '6': '.api.authorization.v1beta1.NonResourceRule', '10': 'nonResourceRules'},
    {'1': 'incomplete', '3': 3, '4': 1, '5': 8, '10': 'incomplete'},
    {'1': 'evaluationError', '3': 4, '4': 1, '5': 9, '10': 'evaluationError'},
  ],
};

/// Descriptor for `SubjectRulesReviewStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectRulesReviewStatusDescriptor = $convert.base64Decode(
    'ChhTdWJqZWN0UnVsZXNSZXZpZXdTdGF0dXMSTQoNcmVzb3VyY2VSdWxlcxgBIAMoCzInLmFwaS'
    '5hdXRob3JpemF0aW9uLnYxYmV0YTEuUmVzb3VyY2VSdWxlUg1yZXNvdXJjZVJ1bGVzElYKEG5v'
    'blJlc291cmNlUnVsZXMYAiADKAsyKi5hcGkuYXV0aG9yaXphdGlvbi52MWJldGExLk5vblJlc2'
    '91cmNlUnVsZVIQbm9uUmVzb3VyY2VSdWxlcxIeCgppbmNvbXBsZXRlGAMgASgIUgppbmNvbXBs'
    'ZXRlEigKD2V2YWx1YXRpb25FcnJvchgEIAEoCVIPZXZhbHVhdGlvbkVycm9y');

