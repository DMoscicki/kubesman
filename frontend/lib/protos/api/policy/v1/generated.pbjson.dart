//
//  Generated code. Do not modify.
//  source: api/policy/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use evictionDescriptor instead')
const Eviction$json = {
  '1': 'Eviction',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'deleteOptions', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.DeleteOptions', '10': 'deleteOptions'},
  ],
};

/// Descriptor for `Eviction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List evictionDescriptor = $convert.base64Decode(
    'CghFdmljdGlvbhJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZX'
    'RhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhElIKDWRlbGV0ZU9wdGlvbnMYAiABKAsyLC5hcGlt'
    'YWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5EZWxldGVPcHRpb25zUg1kZWxldGVPcHRpb25z');

@$core.Deprecated('Use podDisruptionBudgetDescriptor instead')
const PodDisruptionBudget$json = {
  '1': 'PodDisruptionBudget',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.policy.v1.PodDisruptionBudgetSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.policy.v1.PodDisruptionBudgetStatus', '10': 'status'},
  ],
};

/// Descriptor for `PodDisruptionBudget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podDisruptionBudgetDescriptor = $convert.base64Decode(
    'ChNQb2REaXNydXB0aW9uQnVkZ2V0EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5Ln'
    'BrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESOgoEc3BlYxgCIAEoCzImLmFw'
    'aS5wb2xpY3kudjEuUG9kRGlzcnVwdGlvbkJ1ZGdldFNwZWNSBHNwZWMSQAoGc3RhdHVzGAMgAS'
    'gLMiguYXBpLnBvbGljeS52MS5Qb2REaXNydXB0aW9uQnVkZ2V0U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use podDisruptionBudgetListDescriptor instead')
const PodDisruptionBudgetList$json = {
  '1': 'PodDisruptionBudgetList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.policy.v1.PodDisruptionBudget', '10': 'items'},
  ],
};

/// Descriptor for `PodDisruptionBudgetList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podDisruptionBudgetListDescriptor = $convert.base64Decode(
    'ChdQb2REaXNydXB0aW9uQnVkZ2V0TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI4CgVpdGVtcxgCIAMoCzIi'
    'LmFwaS5wb2xpY3kudjEuUG9kRGlzcnVwdGlvbkJ1ZGdldFIFaXRlbXM=');

@$core.Deprecated('Use podDisruptionBudgetSpecDescriptor instead')
const PodDisruptionBudgetSpec$json = {
  '1': 'PodDisruptionBudgetSpec',
  '2': [
    {'1': 'minAvailable', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'minAvailable'},
    {'1': 'selector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'maxUnavailable', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'maxUnavailable'},
    {'1': 'unhealthyPodEvictionPolicy', '3': 4, '4': 1, '5': 9, '10': 'unhealthyPodEvictionPolicy'},
  ],
};

/// Descriptor for `PodDisruptionBudgetSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podDisruptionBudgetSpecDescriptor = $convert.base64Decode(
    'ChdQb2REaXNydXB0aW9uQnVkZ2V0U3BlYxJNCgxtaW5BdmFpbGFibGUYASABKAsyKS5hcGltYW'
    'NoaW5lcnkucGtnLnV0aWwuaW50c3RyLkludE9yU3RyaW5nUgxtaW5BdmFpbGFibGUSSAoIc2Vs'
    'ZWN0b3IYAiABKAsyLC5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG'
    '9yUghzZWxlY3RvchJRCg5tYXhVbmF2YWlsYWJsZRgDIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cu'
    'dXRpbC5pbnRzdHIuSW50T3JTdHJpbmdSDm1heFVuYXZhaWxhYmxlEj4KGnVuaGVhbHRoeVBvZE'
    'V2aWN0aW9uUG9saWN5GAQgASgJUhp1bmhlYWx0aHlQb2RFdmljdGlvblBvbGljeQ==');

@$core.Deprecated('Use podDisruptionBudgetStatusDescriptor instead')
const PodDisruptionBudgetStatus$json = {
  '1': 'PodDisruptionBudgetStatus',
  '2': [
    {'1': 'observedGeneration', '3': 1, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'disruptedPods', '3': 2, '4': 3, '5': 11, '6': '.api.policy.v1.PodDisruptionBudgetStatus.DisruptedPodsEntry', '10': 'disruptedPods'},
    {'1': 'disruptionsAllowed', '3': 3, '4': 1, '5': 5, '10': 'disruptionsAllowed'},
    {'1': 'currentHealthy', '3': 4, '4': 1, '5': 5, '10': 'currentHealthy'},
    {'1': 'desiredHealthy', '3': 5, '4': 1, '5': 5, '10': 'desiredHealthy'},
    {'1': 'expectedPods', '3': 6, '4': 1, '5': 5, '10': 'expectedPods'},
    {'1': 'conditions', '3': 7, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Condition', '10': 'conditions'},
  ],
  '3': [PodDisruptionBudgetStatus_DisruptedPodsEntry$json],
};

@$core.Deprecated('Use podDisruptionBudgetStatusDescriptor instead')
const PodDisruptionBudgetStatus_DisruptedPodsEntry$json = {
  '1': 'DisruptedPodsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PodDisruptionBudgetStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podDisruptionBudgetStatusDescriptor = $convert.base64Decode(
    'ChlQb2REaXNydXB0aW9uQnVkZ2V0U3RhdHVzEi4KEm9ic2VydmVkR2VuZXJhdGlvbhgBIAEoA1'
    'ISb2JzZXJ2ZWRHZW5lcmF0aW9uEmEKDWRpc3J1cHRlZFBvZHMYAiADKAsyOy5hcGkucG9saWN5'
    'LnYxLlBvZERpc3J1cHRpb25CdWRnZXRTdGF0dXMuRGlzcnVwdGVkUG9kc0VudHJ5Ug1kaXNydX'
    'B0ZWRQb2RzEi4KEmRpc3J1cHRpb25zQWxsb3dlZBgDIAEoBVISZGlzcnVwdGlvbnNBbGxvd2Vk'
    'EiYKDmN1cnJlbnRIZWFsdGh5GAQgASgFUg5jdXJyZW50SGVhbHRoeRImCg5kZXNpcmVkSGVhbH'
    'RoeRgFIAEoBVIOZGVzaXJlZEhlYWx0aHkSIgoMZXhwZWN0ZWRQb2RzGAYgASgFUgxleHBlY3Rl'
    'ZFBvZHMSSAoKY29uZGl0aW9ucxgHIAMoCzIoLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLn'
    'YxLkNvbmRpdGlvblIKY29uZGl0aW9ucxplChJEaXNydXB0ZWRQb2RzRW50cnkSEAoDa2V5GAEg'
    'ASgJUgNrZXkSOQoFdmFsdWUYAiABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS'
    '5UaW1lUgV2YWx1ZToCOAE=');

