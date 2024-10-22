//
//  Generated code. Do not modify.
//  source: api/flowcontrol/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use exemptPriorityLevelConfigurationDescriptor instead')
const ExemptPriorityLevelConfiguration$json = {
  '1': 'ExemptPriorityLevelConfiguration',
  '2': [
    {'1': 'nominalConcurrencyShares', '3': 1, '4': 1, '5': 5, '10': 'nominalConcurrencyShares'},
    {'1': 'lendablePercent', '3': 2, '4': 1, '5': 5, '10': 'lendablePercent'},
  ],
};

/// Descriptor for `ExemptPriorityLevelConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exemptPriorityLevelConfigurationDescriptor = $convert.base64Decode(
    'CiBFeGVtcHRQcmlvcml0eUxldmVsQ29uZmlndXJhdGlvbhI6Chhub21pbmFsQ29uY3VycmVuY3'
    'lTaGFyZXMYASABKAVSGG5vbWluYWxDb25jdXJyZW5jeVNoYXJlcxIoCg9sZW5kYWJsZVBlcmNl'
    'bnQYAiABKAVSD2xlbmRhYmxlUGVyY2VudA==');

@$core.Deprecated('Use flowDistinguisherMethodDescriptor instead')
const FlowDistinguisherMethod$json = {
  '1': 'FlowDistinguisherMethod',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `FlowDistinguisherMethod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flowDistinguisherMethodDescriptor = $convert.base64Decode(
    'ChdGbG93RGlzdGluZ3Vpc2hlck1ldGhvZBISCgR0eXBlGAEgASgJUgR0eXBl');

@$core.Deprecated('Use flowSchemaDescriptor instead')
const FlowSchema$json = {
  '1': 'FlowSchema',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.FlowSchemaSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.FlowSchemaStatus', '10': 'status'},
  ],
};

/// Descriptor for `FlowSchema`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flowSchemaDescriptor = $convert.base64Decode(
    'CgpGbG93U2NoZW1hEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESNgoEc3BlYxgCIAEoCzIiLmFwaS5mbG93Y29u'
    'dHJvbC52MS5GbG93U2NoZW1hU3BlY1IEc3BlYxI8CgZzdGF0dXMYAyABKAsyJC5hcGkuZmxvd2'
    'NvbnRyb2wudjEuRmxvd1NjaGVtYVN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use flowSchemaConditionDescriptor instead')
const FlowSchemaCondition$json = {
  '1': 'FlowSchemaCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `FlowSchemaCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flowSchemaConditionDescriptor = $convert.base64Decode(
    'ChNGbG93U2NoZW1hQ29uZGl0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSFgoGc3RhdHVzGAIgAS'
    'gJUgZzdGF0dXMSUwoSbGFzdFRyYW5zaXRpb25UaW1lGAMgASgLMiMuYXBpbWFjaGluZXJ5LnBr'
    'Zy5hcGlzLm1ldGEudjEuVGltZVISbGFzdFRyYW5zaXRpb25UaW1lEhYKBnJlYXNvbhgEIAEoCV'
    'IGcmVhc29uEhgKB21lc3NhZ2UYBSABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use flowSchemaListDescriptor instead')
const FlowSchemaList$json = {
  '1': 'FlowSchemaList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.flowcontrol.v1.FlowSchema', '10': 'items'},
  ],
};

/// Descriptor for `FlowSchemaList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flowSchemaListDescriptor = $convert.base64Decode(
    'Cg5GbG93U2NoZW1hTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI0CgVpdGVtcxgCIAMoCzIeLmFwaS5mbG93'
    'Y29udHJvbC52MS5GbG93U2NoZW1hUgVpdGVtcw==');

@$core.Deprecated('Use flowSchemaSpecDescriptor instead')
const FlowSchemaSpec$json = {
  '1': 'FlowSchemaSpec',
  '2': [
    {'1': 'priorityLevelConfiguration', '3': 1, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.PriorityLevelConfigurationReference', '10': 'priorityLevelConfiguration'},
    {'1': 'matchingPrecedence', '3': 2, '4': 1, '5': 5, '10': 'matchingPrecedence'},
    {'1': 'distinguisherMethod', '3': 3, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.FlowDistinguisherMethod', '10': 'distinguisherMethod'},
    {'1': 'rules', '3': 4, '4': 3, '5': 11, '6': '.api.flowcontrol.v1.PolicyRulesWithSubjects', '10': 'rules'},
  ],
};

/// Descriptor for `FlowSchemaSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flowSchemaSpecDescriptor = $convert.base64Decode(
    'Cg5GbG93U2NoZW1hU3BlYxJ3Chpwcmlvcml0eUxldmVsQ29uZmlndXJhdGlvbhgBIAEoCzI3Lm'
    'FwaS5mbG93Y29udHJvbC52MS5Qcmlvcml0eUxldmVsQ29uZmlndXJhdGlvblJlZmVyZW5jZVIa'
    'cHJpb3JpdHlMZXZlbENvbmZpZ3VyYXRpb24SLgoSbWF0Y2hpbmdQcmVjZWRlbmNlGAIgASgFUh'
    'JtYXRjaGluZ1ByZWNlZGVuY2USXQoTZGlzdGluZ3Vpc2hlck1ldGhvZBgDIAEoCzIrLmFwaS5m'
    'bG93Y29udHJvbC52MS5GbG93RGlzdGluZ3Vpc2hlck1ldGhvZFITZGlzdGluZ3Vpc2hlck1ldG'
    'hvZBJBCgVydWxlcxgEIAMoCzIrLmFwaS5mbG93Y29udHJvbC52MS5Qb2xpY3lSdWxlc1dpdGhT'
    'dWJqZWN0c1IFcnVsZXM=');

@$core.Deprecated('Use flowSchemaStatusDescriptor instead')
const FlowSchemaStatus$json = {
  '1': 'FlowSchemaStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.api.flowcontrol.v1.FlowSchemaCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `FlowSchemaStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flowSchemaStatusDescriptor = $convert.base64Decode(
    'ChBGbG93U2NoZW1hU3RhdHVzEkcKCmNvbmRpdGlvbnMYASADKAsyJy5hcGkuZmxvd2NvbnRyb2'
    'wudjEuRmxvd1NjaGVtYUNvbmRpdGlvblIKY29uZGl0aW9ucw==');

@$core.Deprecated('Use groupSubjectDescriptor instead')
const GroupSubject$json = {
  '1': 'GroupSubject',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `GroupSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupSubjectDescriptor = $convert.base64Decode(
    'CgxHcm91cFN1YmplY3QSEgoEbmFtZRgBIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use limitResponseDescriptor instead')
const LimitResponse$json = {
  '1': 'LimitResponse',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'queuing', '3': 2, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.QueuingConfiguration', '10': 'queuing'},
  ],
};

/// Descriptor for `LimitResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List limitResponseDescriptor = $convert.base64Decode(
    'Cg1MaW1pdFJlc3BvbnNlEhIKBHR5cGUYASABKAlSBHR5cGUSQgoHcXVldWluZxgCIAEoCzIoLm'
    'FwaS5mbG93Y29udHJvbC52MS5RdWV1aW5nQ29uZmlndXJhdGlvblIHcXVldWluZw==');

@$core.Deprecated('Use limitedPriorityLevelConfigurationDescriptor instead')
const LimitedPriorityLevelConfiguration$json = {
  '1': 'LimitedPriorityLevelConfiguration',
  '2': [
    {'1': 'nominalConcurrencyShares', '3': 1, '4': 1, '5': 5, '10': 'nominalConcurrencyShares'},
    {'1': 'limitResponse', '3': 2, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.LimitResponse', '10': 'limitResponse'},
    {'1': 'lendablePercent', '3': 3, '4': 1, '5': 5, '10': 'lendablePercent'},
    {'1': 'borrowingLimitPercent', '3': 4, '4': 1, '5': 5, '10': 'borrowingLimitPercent'},
  ],
};

/// Descriptor for `LimitedPriorityLevelConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List limitedPriorityLevelConfigurationDescriptor = $convert.base64Decode(
    'CiFMaW1pdGVkUHJpb3JpdHlMZXZlbENvbmZpZ3VyYXRpb24SOgoYbm9taW5hbENvbmN1cnJlbm'
    'N5U2hhcmVzGAEgASgFUhhub21pbmFsQ29uY3VycmVuY3lTaGFyZXMSRwoNbGltaXRSZXNwb25z'
    'ZRgCIAEoCzIhLmFwaS5mbG93Y29udHJvbC52MS5MaW1pdFJlc3BvbnNlUg1saW1pdFJlc3Bvbn'
    'NlEigKD2xlbmRhYmxlUGVyY2VudBgDIAEoBVIPbGVuZGFibGVQZXJjZW50EjQKFWJvcnJvd2lu'
    'Z0xpbWl0UGVyY2VudBgEIAEoBVIVYm9ycm93aW5nTGltaXRQZXJjZW50');

@$core.Deprecated('Use nonResourcePolicyRuleDescriptor instead')
const NonResourcePolicyRule$json = {
  '1': 'NonResourcePolicyRule',
  '2': [
    {'1': 'verbs', '3': 1, '4': 3, '5': 9, '10': 'verbs'},
    {'1': 'nonResourceURLs', '3': 6, '4': 3, '5': 9, '10': 'nonResourceURLs'},
  ],
};

/// Descriptor for `NonResourcePolicyRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nonResourcePolicyRuleDescriptor = $convert.base64Decode(
    'ChVOb25SZXNvdXJjZVBvbGljeVJ1bGUSFAoFdmVyYnMYASADKAlSBXZlcmJzEigKD25vblJlc2'
    '91cmNlVVJMcxgGIAMoCVIPbm9uUmVzb3VyY2VVUkxz');

@$core.Deprecated('Use policyRulesWithSubjectsDescriptor instead')
const PolicyRulesWithSubjects$json = {
  '1': 'PolicyRulesWithSubjects',
  '2': [
    {'1': 'subjects', '3': 1, '4': 3, '5': 11, '6': '.api.flowcontrol.v1.Subject', '10': 'subjects'},
    {'1': 'resourceRules', '3': 2, '4': 3, '5': 11, '6': '.api.flowcontrol.v1.ResourcePolicyRule', '10': 'resourceRules'},
    {'1': 'nonResourceRules', '3': 3, '4': 3, '5': 11, '6': '.api.flowcontrol.v1.NonResourcePolicyRule', '10': 'nonResourceRules'},
  ],
};

/// Descriptor for `PolicyRulesWithSubjects`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyRulesWithSubjectsDescriptor = $convert.base64Decode(
    'ChdQb2xpY3lSdWxlc1dpdGhTdWJqZWN0cxI3CghzdWJqZWN0cxgBIAMoCzIbLmFwaS5mbG93Y2'
    '9udHJvbC52MS5TdWJqZWN0UghzdWJqZWN0cxJMCg1yZXNvdXJjZVJ1bGVzGAIgAygLMiYuYXBp'
    'LmZsb3djb250cm9sLnYxLlJlc291cmNlUG9saWN5UnVsZVINcmVzb3VyY2VSdWxlcxJVChBub2'
    '5SZXNvdXJjZVJ1bGVzGAMgAygLMikuYXBpLmZsb3djb250cm9sLnYxLk5vblJlc291cmNlUG9s'
    'aWN5UnVsZVIQbm9uUmVzb3VyY2VSdWxlcw==');

@$core.Deprecated('Use priorityLevelConfigurationDescriptor instead')
const PriorityLevelConfiguration$json = {
  '1': 'PriorityLevelConfiguration',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.PriorityLevelConfigurationSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.PriorityLevelConfigurationStatus', '10': 'status'},
  ],
};

/// Descriptor for `PriorityLevelConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priorityLevelConfigurationDescriptor = $convert.base64Decode(
    'ChpQcmlvcml0eUxldmVsQ29uZmlndXJhdGlvbhJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2'
    'hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkYKBHNwZWMYAiAB'
    'KAsyMi5hcGkuZmxvd2NvbnRyb2wudjEuUHJpb3JpdHlMZXZlbENvbmZpZ3VyYXRpb25TcGVjUg'
    'RzcGVjEkwKBnN0YXR1cxgDIAEoCzI0LmFwaS5mbG93Y29udHJvbC52MS5Qcmlvcml0eUxldmVs'
    'Q29uZmlndXJhdGlvblN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use priorityLevelConfigurationConditionDescriptor instead')
const PriorityLevelConfigurationCondition$json = {
  '1': 'PriorityLevelConfigurationCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PriorityLevelConfigurationCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priorityLevelConfigurationConditionDescriptor = $convert.base64Decode(
    'CiNQcmlvcml0eUxldmVsQ29uZmlndXJhdGlvbkNvbmRpdGlvbhISCgR0eXBlGAEgASgJUgR0eX'
    'BlEhYKBnN0YXR1cxgCIAEoCVIGc3RhdHVzElMKEmxhc3RUcmFuc2l0aW9uVGltZRgDIAEoCzIj'
    'LmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLlRpbWVSEmxhc3RUcmFuc2l0aW9uVGltZR'
    'IWCgZyZWFzb24YBCABKAlSBnJlYXNvbhIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use priorityLevelConfigurationListDescriptor instead')
const PriorityLevelConfigurationList$json = {
  '1': 'PriorityLevelConfigurationList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.flowcontrol.v1.PriorityLevelConfiguration', '10': 'items'},
  ],
};

/// Descriptor for `PriorityLevelConfigurationList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priorityLevelConfigurationListDescriptor = $convert.base64Decode(
    'Ch5Qcmlvcml0eUxldmVsQ29uZmlndXJhdGlvbkxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcG'
    'ltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESRAoFaXRlbXMY'
    'AiADKAsyLi5hcGkuZmxvd2NvbnRyb2wudjEuUHJpb3JpdHlMZXZlbENvbmZpZ3VyYXRpb25SBW'
    'l0ZW1z');

@$core.Deprecated('Use priorityLevelConfigurationReferenceDescriptor instead')
const PriorityLevelConfigurationReference$json = {
  '1': 'PriorityLevelConfigurationReference',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `PriorityLevelConfigurationReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priorityLevelConfigurationReferenceDescriptor = $convert.base64Decode(
    'CiNQcmlvcml0eUxldmVsQ29uZmlndXJhdGlvblJlZmVyZW5jZRISCgRuYW1lGAEgASgJUgRuYW'
    '1l');

@$core.Deprecated('Use priorityLevelConfigurationSpecDescriptor instead')
const PriorityLevelConfigurationSpec$json = {
  '1': 'PriorityLevelConfigurationSpec',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'limited', '3': 2, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.LimitedPriorityLevelConfiguration', '10': 'limited'},
    {'1': 'exempt', '3': 3, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.ExemptPriorityLevelConfiguration', '10': 'exempt'},
  ],
};

/// Descriptor for `PriorityLevelConfigurationSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priorityLevelConfigurationSpecDescriptor = $convert.base64Decode(
    'Ch5Qcmlvcml0eUxldmVsQ29uZmlndXJhdGlvblNwZWMSEgoEdHlwZRgBIAEoCVIEdHlwZRJPCg'
    'dsaW1pdGVkGAIgASgLMjUuYXBpLmZsb3djb250cm9sLnYxLkxpbWl0ZWRQcmlvcml0eUxldmVs'
    'Q29uZmlndXJhdGlvblIHbGltaXRlZBJMCgZleGVtcHQYAyABKAsyNC5hcGkuZmxvd2NvbnRyb2'
    'wudjEuRXhlbXB0UHJpb3JpdHlMZXZlbENvbmZpZ3VyYXRpb25SBmV4ZW1wdA==');

@$core.Deprecated('Use priorityLevelConfigurationStatusDescriptor instead')
const PriorityLevelConfigurationStatus$json = {
  '1': 'PriorityLevelConfigurationStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.api.flowcontrol.v1.PriorityLevelConfigurationCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `PriorityLevelConfigurationStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priorityLevelConfigurationStatusDescriptor = $convert.base64Decode(
    'CiBQcmlvcml0eUxldmVsQ29uZmlndXJhdGlvblN0YXR1cxJXCgpjb25kaXRpb25zGAEgAygLMj'
    'cuYXBpLmZsb3djb250cm9sLnYxLlByaW9yaXR5TGV2ZWxDb25maWd1cmF0aW9uQ29uZGl0aW9u'
    'Ugpjb25kaXRpb25z');

@$core.Deprecated('Use queuingConfigurationDescriptor instead')
const QueuingConfiguration$json = {
  '1': 'QueuingConfiguration',
  '2': [
    {'1': 'queues', '3': 1, '4': 1, '5': 5, '10': 'queues'},
    {'1': 'handSize', '3': 2, '4': 1, '5': 5, '10': 'handSize'},
    {'1': 'queueLengthLimit', '3': 3, '4': 1, '5': 5, '10': 'queueLengthLimit'},
  ],
};

/// Descriptor for `QueuingConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queuingConfigurationDescriptor = $convert.base64Decode(
    'ChRRdWV1aW5nQ29uZmlndXJhdGlvbhIWCgZxdWV1ZXMYASABKAVSBnF1ZXVlcxIaCghoYW5kU2'
    'l6ZRgCIAEoBVIIaGFuZFNpemUSKgoQcXVldWVMZW5ndGhMaW1pdBgDIAEoBVIQcXVldWVMZW5n'
    'dGhMaW1pdA==');

@$core.Deprecated('Use resourcePolicyRuleDescriptor instead')
const ResourcePolicyRule$json = {
  '1': 'ResourcePolicyRule',
  '2': [
    {'1': 'verbs', '3': 1, '4': 3, '5': 9, '10': 'verbs'},
    {'1': 'apiGroups', '3': 2, '4': 3, '5': 9, '10': 'apiGroups'},
    {'1': 'resources', '3': 3, '4': 3, '5': 9, '10': 'resources'},
    {'1': 'clusterScope', '3': 4, '4': 1, '5': 8, '10': 'clusterScope'},
    {'1': 'namespaces', '3': 5, '4': 3, '5': 9, '10': 'namespaces'},
  ],
};

/// Descriptor for `ResourcePolicyRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourcePolicyRuleDescriptor = $convert.base64Decode(
    'ChJSZXNvdXJjZVBvbGljeVJ1bGUSFAoFdmVyYnMYASADKAlSBXZlcmJzEhwKCWFwaUdyb3Vwcx'
    'gCIAMoCVIJYXBpR3JvdXBzEhwKCXJlc291cmNlcxgDIAMoCVIJcmVzb3VyY2VzEiIKDGNsdXN0'
    'ZXJTY29wZRgEIAEoCFIMY2x1c3RlclNjb3BlEh4KCm5hbWVzcGFjZXMYBSADKAlSCm5hbWVzcG'
    'FjZXM=');

@$core.Deprecated('Use serviceAccountSubjectDescriptor instead')
const ServiceAccountSubject$json = {
  '1': 'ServiceAccountSubject',
  '2': [
    {'1': 'namespace', '3': 1, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ServiceAccountSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceAccountSubjectDescriptor = $convert.base64Decode(
    'ChVTZXJ2aWNlQWNjb3VudFN1YmplY3QSHAoJbmFtZXNwYWNlGAEgASgJUgluYW1lc3BhY2USEg'
    'oEbmFtZRgCIAEoCVIEbmFtZQ==');

@$core.Deprecated('Use subjectDescriptor instead')
const Subject$json = {
  '1': 'Subject',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'user', '3': 2, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.UserSubject', '10': 'user'},
    {'1': 'group', '3': 3, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.GroupSubject', '10': 'group'},
    {'1': 'serviceAccount', '3': 4, '4': 1, '5': 11, '6': '.api.flowcontrol.v1.ServiceAccountSubject', '10': 'serviceAccount'},
  ],
};

/// Descriptor for `Subject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectDescriptor = $convert.base64Decode(
    'CgdTdWJqZWN0EhIKBGtpbmQYASABKAlSBGtpbmQSMwoEdXNlchgCIAEoCzIfLmFwaS5mbG93Y2'
    '9udHJvbC52MS5Vc2VyU3ViamVjdFIEdXNlchI2CgVncm91cBgDIAEoCzIgLmFwaS5mbG93Y29u'
    'dHJvbC52MS5Hcm91cFN1YmplY3RSBWdyb3VwElEKDnNlcnZpY2VBY2NvdW50GAQgASgLMikuYX'
    'BpLmZsb3djb250cm9sLnYxLlNlcnZpY2VBY2NvdW50U3ViamVjdFIOc2VydmljZUFjY291bnQ=');

@$core.Deprecated('Use userSubjectDescriptor instead')
const UserSubject$json = {
  '1': 'UserSubject',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `UserSubject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userSubjectDescriptor = $convert.base64Decode(
    'CgtVc2VyU3ViamVjdBISCgRuYW1lGAEgASgJUgRuYW1l');

