//
//  Generated code. Do not modify.
//  source: api/extensions/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use daemonSetDescriptor instead')
const DaemonSet$json = {
  '1': 'DaemonSet',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.DaemonSetSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.DaemonSetStatus', '10': 'status'},
  ],
};

/// Descriptor for `DaemonSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List daemonSetDescriptor = $convert.base64Decode(
    'CglEYWVtb25TZXQSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI5CgRzcGVjGAIgASgLMiUuYXBpLmV4dGVuc2lv'
    'bnMudjFiZXRhMS5EYWVtb25TZXRTcGVjUgRzcGVjEj8KBnN0YXR1cxgDIAEoCzInLmFwaS5leH'
    'RlbnNpb25zLnYxYmV0YTEuRGFlbW9uU2V0U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use daemonSetConditionDescriptor instead')
const DaemonSetCondition$json = {
  '1': 'DaemonSetCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DaemonSetCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List daemonSetConditionDescriptor = $convert.base64Decode(
    'ChJEYWVtb25TZXRDb25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCgZzdGF0dXMYAiABKA'
    'lSBnN0YXR1cxJTChJsYXN0VHJhbnNpdGlvblRpbWUYAyABKAsyIy5hcGltYWNoaW5lcnkucGtn'
    'LmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlvblRpbWUSFgoGcmVhc29uGAQgASgJUg'
    'ZyZWFzb24SGAoHbWVzc2FnZRgFIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use daemonSetListDescriptor instead')
const DaemonSetList$json = {
  '1': 'DaemonSetList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.DaemonSet', '10': 'items'},
  ],
};

/// Descriptor for `DaemonSetList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List daemonSetListDescriptor = $convert.base64Decode(
    'Cg1EYWVtb25TZXRMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjcKBWl0ZW1zGAIgAygLMiEuYXBpLmV4dGVu'
    'c2lvbnMudjFiZXRhMS5EYWVtb25TZXRSBWl0ZW1z');

@$core.Deprecated('Use daemonSetSpecDescriptor instead')
const DaemonSetSpec$json = {
  '1': 'DaemonSetSpec',
  '2': [
    {'1': 'selector', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'template', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PodTemplateSpec', '10': 'template'},
    {'1': 'updateStrategy', '3': 3, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.DaemonSetUpdateStrategy', '10': 'updateStrategy'},
    {'1': 'minReadySeconds', '3': 4, '4': 1, '5': 5, '10': 'minReadySeconds'},
    {'1': 'templateGeneration', '3': 5, '4': 1, '5': 3, '10': 'templateGeneration'},
    {'1': 'revisionHistoryLimit', '3': 6, '4': 1, '5': 5, '10': 'revisionHistoryLimit'},
  ],
};

/// Descriptor for `DaemonSetSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List daemonSetSpecDescriptor = $convert.base64Decode(
    'Cg1EYWVtb25TZXRTcGVjEkgKCHNlbGVjdG9yGAEgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuTGFiZWxTZWxlY3RvclIIc2VsZWN0b3ISOAoIdGVtcGxhdGUYAiABKAsyHC5h'
    'cGkuY29yZS52MS5Qb2RUZW1wbGF0ZVNwZWNSCHRlbXBsYXRlElcKDnVwZGF0ZVN0cmF0ZWd5GA'
    'MgASgLMi8uYXBpLmV4dGVuc2lvbnMudjFiZXRhMS5EYWVtb25TZXRVcGRhdGVTdHJhdGVneVIO'
    'dXBkYXRlU3RyYXRlZ3kSKAoPbWluUmVhZHlTZWNvbmRzGAQgASgFUg9taW5SZWFkeVNlY29uZH'
    'MSLgoSdGVtcGxhdGVHZW5lcmF0aW9uGAUgASgDUhJ0ZW1wbGF0ZUdlbmVyYXRpb24SMgoUcmV2'
    'aXNpb25IaXN0b3J5TGltaXQYBiABKAVSFHJldmlzaW9uSGlzdG9yeUxpbWl0');

@$core.Deprecated('Use daemonSetStatusDescriptor instead')
const DaemonSetStatus$json = {
  '1': 'DaemonSetStatus',
  '2': [
    {'1': 'currentNumberScheduled', '3': 1, '4': 1, '5': 5, '10': 'currentNumberScheduled'},
    {'1': 'numberMisscheduled', '3': 2, '4': 1, '5': 5, '10': 'numberMisscheduled'},
    {'1': 'desiredNumberScheduled', '3': 3, '4': 1, '5': 5, '10': 'desiredNumberScheduled'},
    {'1': 'numberReady', '3': 4, '4': 1, '5': 5, '10': 'numberReady'},
    {'1': 'observedGeneration', '3': 5, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'updatedNumberScheduled', '3': 6, '4': 1, '5': 5, '10': 'updatedNumberScheduled'},
    {'1': 'numberAvailable', '3': 7, '4': 1, '5': 5, '10': 'numberAvailable'},
    {'1': 'numberUnavailable', '3': 8, '4': 1, '5': 5, '10': 'numberUnavailable'},
    {'1': 'collisionCount', '3': 9, '4': 1, '5': 5, '10': 'collisionCount'},
    {'1': 'conditions', '3': 10, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.DaemonSetCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `DaemonSetStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List daemonSetStatusDescriptor = $convert.base64Decode(
    'Cg9EYWVtb25TZXRTdGF0dXMSNgoWY3VycmVudE51bWJlclNjaGVkdWxlZBgBIAEoBVIWY3Vycm'
    'VudE51bWJlclNjaGVkdWxlZBIuChJudW1iZXJNaXNzY2hlZHVsZWQYAiABKAVSEm51bWJlck1p'
    'c3NjaGVkdWxlZBI2ChZkZXNpcmVkTnVtYmVyU2NoZWR1bGVkGAMgASgFUhZkZXNpcmVkTnVtYm'
    'VyU2NoZWR1bGVkEiAKC251bWJlclJlYWR5GAQgASgFUgtudW1iZXJSZWFkeRIuChJvYnNlcnZl'
    'ZEdlbmVyYXRpb24YBSABKANSEm9ic2VydmVkR2VuZXJhdGlvbhI2ChZ1cGRhdGVkTnVtYmVyU2'
    'NoZWR1bGVkGAYgASgFUhZ1cGRhdGVkTnVtYmVyU2NoZWR1bGVkEigKD251bWJlckF2YWlsYWJs'
    'ZRgHIAEoBVIPbnVtYmVyQXZhaWxhYmxlEiwKEW51bWJlclVuYXZhaWxhYmxlGAggASgFUhFudW'
    '1iZXJVbmF2YWlsYWJsZRImCg5jb2xsaXNpb25Db3VudBgJIAEoBVIOY29sbGlzaW9uQ291bnQS'
    'SgoKY29uZGl0aW9ucxgKIAMoCzIqLmFwaS5leHRlbnNpb25zLnYxYmV0YTEuRGFlbW9uU2V0Q2'
    '9uZGl0aW9uUgpjb25kaXRpb25z');

@$core.Deprecated('Use daemonSetUpdateStrategyDescriptor instead')
const DaemonSetUpdateStrategy$json = {
  '1': 'DaemonSetUpdateStrategy',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'rollingUpdate', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.RollingUpdateDaemonSet', '10': 'rollingUpdate'},
  ],
};

/// Descriptor for `DaemonSetUpdateStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List daemonSetUpdateStrategyDescriptor = $convert.base64Decode(
    'ChdEYWVtb25TZXRVcGRhdGVTdHJhdGVneRISCgR0eXBlGAEgASgJUgR0eXBlElQKDXJvbGxpbm'
    'dVcGRhdGUYAiABKAsyLi5hcGkuZXh0ZW5zaW9ucy52MWJldGExLlJvbGxpbmdVcGRhdGVEYWVt'
    'b25TZXRSDXJvbGxpbmdVcGRhdGU=');

@$core.Deprecated('Use deploymentDescriptor instead')
const Deployment$json = {
  '1': 'Deployment',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.DeploymentSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.DeploymentStatus', '10': 'status'},
  ],
};

/// Descriptor for `Deployment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentDescriptor = $convert.base64Decode(
    'CgpEZXBsb3ltZW50EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESOgoEc3BlYxgCIAEoCzImLmFwaS5leHRlbnNp'
    'b25zLnYxYmV0YTEuRGVwbG95bWVudFNwZWNSBHNwZWMSQAoGc3RhdHVzGAMgASgLMiguYXBpLm'
    'V4dGVuc2lvbnMudjFiZXRhMS5EZXBsb3ltZW50U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use deploymentConditionDescriptor instead')
const DeploymentCondition$json = {
  '1': 'DeploymentCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastUpdateTime', '3': 6, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastUpdateTime'},
    {'1': 'lastTransitionTime', '3': 7, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DeploymentCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentConditionDescriptor = $convert.base64Decode(
    'ChNEZXBsb3ltZW50Q29uZGl0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSFgoGc3RhdHVzGAIgAS'
    'gJUgZzdGF0dXMSSwoObGFzdFVwZGF0ZVRpbWUYBiABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFw'
    'aXMubWV0YS52MS5UaW1lUg5sYXN0VXBkYXRlVGltZRJTChJsYXN0VHJhbnNpdGlvblRpbWUYBy'
    'ABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlv'
    'blRpbWUSFgoGcmVhc29uGAQgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgFIAEoCVIHbWVzc2FnZQ'
    '==');

@$core.Deprecated('Use deploymentListDescriptor instead')
const DeploymentList$json = {
  '1': 'DeploymentList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.Deployment', '10': 'items'},
  ],
};

/// Descriptor for `DeploymentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentListDescriptor = $convert.base64Decode(
    'Cg5EZXBsb3ltZW50TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI4CgVpdGVtcxgCIAMoCzIiLmFwaS5leHRl'
    'bnNpb25zLnYxYmV0YTEuRGVwbG95bWVudFIFaXRlbXM=');

@$core.Deprecated('Use deploymentRollbackDescriptor instead')
const DeploymentRollback$json = {
  '1': 'DeploymentRollback',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'updatedAnnotations', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.DeploymentRollback.UpdatedAnnotationsEntry', '10': 'updatedAnnotations'},
    {'1': 'rollbackTo', '3': 3, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.RollbackConfig', '10': 'rollbackTo'},
  ],
  '3': [DeploymentRollback_UpdatedAnnotationsEntry$json],
};

@$core.Deprecated('Use deploymentRollbackDescriptor instead')
const DeploymentRollback_UpdatedAnnotationsEntry$json = {
  '1': 'UpdatedAnnotationsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DeploymentRollback`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentRollbackDescriptor = $convert.base64Decode(
    'ChJEZXBsb3ltZW50Um9sbGJhY2sSEgoEbmFtZRgBIAEoCVIEbmFtZRJyChJ1cGRhdGVkQW5ub3'
    'RhdGlvbnMYAiADKAsyQi5hcGkuZXh0ZW5zaW9ucy52MWJldGExLkRlcGxveW1lbnRSb2xsYmFj'
    'ay5VcGRhdGVkQW5ub3RhdGlvbnNFbnRyeVISdXBkYXRlZEFubm90YXRpb25zEkYKCnJvbGxiYW'
    'NrVG8YAyABKAsyJi5hcGkuZXh0ZW5zaW9ucy52MWJldGExLlJvbGxiYWNrQ29uZmlnUgpyb2xs'
    'YmFja1RvGkUKF1VwZGF0ZWRBbm5vdGF0aW9uc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBX'
    'ZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use deploymentSpecDescriptor instead')
const DeploymentSpec$json = {
  '1': 'DeploymentSpec',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'selector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'template', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PodTemplateSpec', '10': 'template'},
    {'1': 'strategy', '3': 4, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.DeploymentStrategy', '10': 'strategy'},
    {'1': 'minReadySeconds', '3': 5, '4': 1, '5': 5, '10': 'minReadySeconds'},
    {'1': 'revisionHistoryLimit', '3': 6, '4': 1, '5': 5, '10': 'revisionHistoryLimit'},
    {'1': 'paused', '3': 7, '4': 1, '5': 8, '10': 'paused'},
    {'1': 'rollbackTo', '3': 8, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.RollbackConfig', '10': 'rollbackTo'},
    {'1': 'progressDeadlineSeconds', '3': 9, '4': 1, '5': 5, '10': 'progressDeadlineSeconds'},
  ],
};

/// Descriptor for `DeploymentSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentSpecDescriptor = $convert.base64Decode(
    'Cg5EZXBsb3ltZW50U3BlYxIaCghyZXBsaWNhcxgBIAEoBVIIcmVwbGljYXMSSAoIc2VsZWN0b3'
    'IYAiABKAsyLC5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG9yUghz'
    'ZWxlY3RvchI4Cgh0ZW1wbGF0ZRgDIAEoCzIcLmFwaS5jb3JlLnYxLlBvZFRlbXBsYXRlU3BlY1'
    'IIdGVtcGxhdGUSRgoIc3RyYXRlZ3kYBCABKAsyKi5hcGkuZXh0ZW5zaW9ucy52MWJldGExLkRl'
    'cGxveW1lbnRTdHJhdGVneVIIc3RyYXRlZ3kSKAoPbWluUmVhZHlTZWNvbmRzGAUgASgFUg9taW'
    '5SZWFkeVNlY29uZHMSMgoUcmV2aXNpb25IaXN0b3J5TGltaXQYBiABKAVSFHJldmlzaW9uSGlz'
    'dG9yeUxpbWl0EhYKBnBhdXNlZBgHIAEoCFIGcGF1c2VkEkYKCnJvbGxiYWNrVG8YCCABKAsyJi'
    '5hcGkuZXh0ZW5zaW9ucy52MWJldGExLlJvbGxiYWNrQ29uZmlnUgpyb2xsYmFja1RvEjgKF3By'
    'b2dyZXNzRGVhZGxpbmVTZWNvbmRzGAkgASgFUhdwcm9ncmVzc0RlYWRsaW5lU2Vjb25kcw==');

@$core.Deprecated('Use deploymentStatusDescriptor instead')
const DeploymentStatus$json = {
  '1': 'DeploymentStatus',
  '2': [
    {'1': 'observedGeneration', '3': 1, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'replicas', '3': 2, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'updatedReplicas', '3': 3, '4': 1, '5': 5, '10': 'updatedReplicas'},
    {'1': 'readyReplicas', '3': 7, '4': 1, '5': 5, '10': 'readyReplicas'},
    {'1': 'availableReplicas', '3': 4, '4': 1, '5': 5, '10': 'availableReplicas'},
    {'1': 'unavailableReplicas', '3': 5, '4': 1, '5': 5, '10': 'unavailableReplicas'},
    {'1': 'conditions', '3': 6, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.DeploymentCondition', '10': 'conditions'},
    {'1': 'collisionCount', '3': 8, '4': 1, '5': 5, '10': 'collisionCount'},
  ],
};

/// Descriptor for `DeploymentStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentStatusDescriptor = $convert.base64Decode(
    'ChBEZXBsb3ltZW50U3RhdHVzEi4KEm9ic2VydmVkR2VuZXJhdGlvbhgBIAEoA1ISb2JzZXJ2ZW'
    'RHZW5lcmF0aW9uEhoKCHJlcGxpY2FzGAIgASgFUghyZXBsaWNhcxIoCg91cGRhdGVkUmVwbGlj'
    'YXMYAyABKAVSD3VwZGF0ZWRSZXBsaWNhcxIkCg1yZWFkeVJlcGxpY2FzGAcgASgFUg1yZWFkeV'
    'JlcGxpY2FzEiwKEWF2YWlsYWJsZVJlcGxpY2FzGAQgASgFUhFhdmFpbGFibGVSZXBsaWNhcxIw'
    'ChN1bmF2YWlsYWJsZVJlcGxpY2FzGAUgASgFUhN1bmF2YWlsYWJsZVJlcGxpY2FzEksKCmNvbm'
    'RpdGlvbnMYBiADKAsyKy5hcGkuZXh0ZW5zaW9ucy52MWJldGExLkRlcGxveW1lbnRDb25kaXRp'
    'b25SCmNvbmRpdGlvbnMSJgoOY29sbGlzaW9uQ291bnQYCCABKAVSDmNvbGxpc2lvbkNvdW50');

@$core.Deprecated('Use deploymentStrategyDescriptor instead')
const DeploymentStrategy$json = {
  '1': 'DeploymentStrategy',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'rollingUpdate', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.RollingUpdateDeployment', '10': 'rollingUpdate'},
  ],
};

/// Descriptor for `DeploymentStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentStrategyDescriptor = $convert.base64Decode(
    'ChJEZXBsb3ltZW50U3RyYXRlZ3kSEgoEdHlwZRgBIAEoCVIEdHlwZRJVCg1yb2xsaW5nVXBkYX'
    'RlGAIgASgLMi8uYXBpLmV4dGVuc2lvbnMudjFiZXRhMS5Sb2xsaW5nVXBkYXRlRGVwbG95bWVu'
    'dFINcm9sbGluZ1VwZGF0ZQ==');

@$core.Deprecated('Use hTTPIngressPathDescriptor instead')
const HTTPIngressPath$json = {
  '1': 'HTTPIngressPath',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'pathType', '3': 3, '4': 1, '5': 9, '10': 'pathType'},
    {'1': 'backend', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.IngressBackend', '10': 'backend'},
  ],
};

/// Descriptor for `HTTPIngressPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPIngressPathDescriptor = $convert.base64Decode(
    'Cg9IVFRQSW5ncmVzc1BhdGgSEgoEcGF0aBgBIAEoCVIEcGF0aBIaCghwYXRoVHlwZRgDIAEoCV'
    'IIcGF0aFR5cGUSQAoHYmFja2VuZBgCIAEoCzImLmFwaS5leHRlbnNpb25zLnYxYmV0YTEuSW5n'
    'cmVzc0JhY2tlbmRSB2JhY2tlbmQ=');

@$core.Deprecated('Use hTTPIngressRuleValueDescriptor instead')
const HTTPIngressRuleValue$json = {
  '1': 'HTTPIngressRuleValue',
  '2': [
    {'1': 'paths', '3': 1, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.HTTPIngressPath', '10': 'paths'},
  ],
};

/// Descriptor for `HTTPIngressRuleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPIngressRuleValueDescriptor = $convert.base64Decode(
    'ChRIVFRQSW5ncmVzc1J1bGVWYWx1ZRI9CgVwYXRocxgBIAMoCzInLmFwaS5leHRlbnNpb25zLn'
    'YxYmV0YTEuSFRUUEluZ3Jlc3NQYXRoUgVwYXRocw==');

@$core.Deprecated('Use iPBlockDescriptor instead')
const IPBlock$json = {
  '1': 'IPBlock',
  '2': [
    {'1': 'cidr', '3': 1, '4': 1, '5': 9, '10': 'cidr'},
    {'1': 'except', '3': 2, '4': 3, '5': 9, '10': 'except'},
  ],
};

/// Descriptor for `IPBlock`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iPBlockDescriptor = $convert.base64Decode(
    'CgdJUEJsb2NrEhIKBGNpZHIYASABKAlSBGNpZHISFgoGZXhjZXB0GAIgAygJUgZleGNlcHQ=');

@$core.Deprecated('Use ingressDescriptor instead')
const Ingress$json = {
  '1': 'Ingress',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.IngressSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.IngressStatus', '10': 'status'},
  ],
};

/// Descriptor for `Ingress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressDescriptor = $convert.base64Decode(
    'CgdJbmdyZXNzEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESNwoEc3BlYxgCIAEoCzIjLmFwaS5leHRlbnNpb25z'
    'LnYxYmV0YTEuSW5ncmVzc1NwZWNSBHNwZWMSPQoGc3RhdHVzGAMgASgLMiUuYXBpLmV4dGVuc2'
    'lvbnMudjFiZXRhMS5JbmdyZXNzU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use ingressBackendDescriptor instead')
const IngressBackend$json = {
  '1': 'IngressBackend',
  '2': [
    {'1': 'serviceName', '3': 1, '4': 1, '5': 9, '10': 'serviceName'},
    {'1': 'servicePort', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'servicePort'},
    {'1': 'resource', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.TypedLocalObjectReference', '10': 'resource'},
  ],
};

/// Descriptor for `IngressBackend`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressBackendDescriptor = $convert.base64Decode(
    'Cg5JbmdyZXNzQmFja2VuZBIgCgtzZXJ2aWNlTmFtZRgBIAEoCVILc2VydmljZU5hbWUSSwoLc2'
    'VydmljZVBvcnQYAiABKAsyKS5hcGltYWNoaW5lcnkucGtnLnV0aWwuaW50c3RyLkludE9yU3Ry'
    'aW5nUgtzZXJ2aWNlUG9ydBJCCghyZXNvdXJjZRgDIAEoCzImLmFwaS5jb3JlLnYxLlR5cGVkTG'
    '9jYWxPYmplY3RSZWZlcmVuY2VSCHJlc291cmNl');

@$core.Deprecated('Use ingressListDescriptor instead')
const IngressList$json = {
  '1': 'IngressList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.Ingress', '10': 'items'},
  ],
};

/// Descriptor for `IngressList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressListDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI1CgVpdGVtcxgCIAMoCzIfLmFwaS5leHRlbnNp'
    'b25zLnYxYmV0YTEuSW5ncmVzc1IFaXRlbXM=');

@$core.Deprecated('Use ingressLoadBalancerIngressDescriptor instead')
const IngressLoadBalancerIngress$json = {
  '1': 'IngressLoadBalancerIngress',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'hostname', '3': 2, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'ports', '3': 4, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.IngressPortStatus', '10': 'ports'},
  ],
};

/// Descriptor for `IngressLoadBalancerIngress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressLoadBalancerIngressDescriptor = $convert.base64Decode(
    'ChpJbmdyZXNzTG9hZEJhbGFuY2VySW5ncmVzcxIOCgJpcBgBIAEoCVICaXASGgoIaG9zdG5hbW'
    'UYAiABKAlSCGhvc3RuYW1lEj8KBXBvcnRzGAQgAygLMikuYXBpLmV4dGVuc2lvbnMudjFiZXRh'
    'MS5JbmdyZXNzUG9ydFN0YXR1c1IFcG9ydHM=');

@$core.Deprecated('Use ingressLoadBalancerStatusDescriptor instead')
const IngressLoadBalancerStatus$json = {
  '1': 'IngressLoadBalancerStatus',
  '2': [
    {'1': 'ingress', '3': 1, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.IngressLoadBalancerIngress', '10': 'ingress'},
  ],
};

/// Descriptor for `IngressLoadBalancerStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressLoadBalancerStatusDescriptor = $convert.base64Decode(
    'ChlJbmdyZXNzTG9hZEJhbGFuY2VyU3RhdHVzEkwKB2luZ3Jlc3MYASADKAsyMi5hcGkuZXh0ZW'
    '5zaW9ucy52MWJldGExLkluZ3Jlc3NMb2FkQmFsYW5jZXJJbmdyZXNzUgdpbmdyZXNz');

@$core.Deprecated('Use ingressPortStatusDescriptor instead')
const IngressPortStatus$json = {
  '1': 'IngressPortStatus',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 5, '10': 'port'},
    {'1': 'protocol', '3': 2, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `IngressPortStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressPortStatusDescriptor = $convert.base64Decode(
    'ChFJbmdyZXNzUG9ydFN0YXR1cxISCgRwb3J0GAEgASgFUgRwb3J0EhoKCHByb3RvY29sGAIgAS'
    'gJUghwcm90b2NvbBIUCgVlcnJvchgDIAEoCVIFZXJyb3I=');

@$core.Deprecated('Use ingressRuleDescriptor instead')
const IngressRule$json = {
  '1': 'IngressRule',
  '2': [
    {'1': 'host', '3': 1, '4': 1, '5': 9, '10': 'host'},
    {'1': 'ingressRuleValue', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.IngressRuleValue', '10': 'ingressRuleValue'},
  ],
};

/// Descriptor for `IngressRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressRuleDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzUnVsZRISCgRob3N0GAEgASgJUgRob3N0ElQKEGluZ3Jlc3NSdWxlVmFsdWUYAi'
    'ABKAsyKC5hcGkuZXh0ZW5zaW9ucy52MWJldGExLkluZ3Jlc3NSdWxlVmFsdWVSEGluZ3Jlc3NS'
    'dWxlVmFsdWU=');

@$core.Deprecated('Use ingressRuleValueDescriptor instead')
const IngressRuleValue$json = {
  '1': 'IngressRuleValue',
  '2': [
    {'1': 'http', '3': 1, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.HTTPIngressRuleValue', '10': 'http'},
  ],
};

/// Descriptor for `IngressRuleValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressRuleValueDescriptor = $convert.base64Decode(
    'ChBJbmdyZXNzUnVsZVZhbHVlEkAKBGh0dHAYASABKAsyLC5hcGkuZXh0ZW5zaW9ucy52MWJldG'
    'ExLkhUVFBJbmdyZXNzUnVsZVZhbHVlUgRodHRw');

@$core.Deprecated('Use ingressSpecDescriptor instead')
const IngressSpec$json = {
  '1': 'IngressSpec',
  '2': [
    {'1': 'ingressClassName', '3': 4, '4': 1, '5': 9, '10': 'ingressClassName'},
    {'1': 'backend', '3': 1, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.IngressBackend', '10': 'backend'},
    {'1': 'tls', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.IngressTLS', '10': 'tls'},
    {'1': 'rules', '3': 3, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.IngressRule', '10': 'rules'},
  ],
};

/// Descriptor for `IngressSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressSpecDescriptor = $convert.base64Decode(
    'CgtJbmdyZXNzU3BlYxIqChBpbmdyZXNzQ2xhc3NOYW1lGAQgASgJUhBpbmdyZXNzQ2xhc3NOYW'
    '1lEkAKB2JhY2tlbmQYASABKAsyJi5hcGkuZXh0ZW5zaW9ucy52MWJldGExLkluZ3Jlc3NCYWNr'
    'ZW5kUgdiYWNrZW5kEjQKA3RscxgCIAMoCzIiLmFwaS5leHRlbnNpb25zLnYxYmV0YTEuSW5ncm'
    'Vzc1RMU1IDdGxzEjkKBXJ1bGVzGAMgAygLMiMuYXBpLmV4dGVuc2lvbnMudjFiZXRhMS5Jbmdy'
    'ZXNzUnVsZVIFcnVsZXM=');

@$core.Deprecated('Use ingressStatusDescriptor instead')
const IngressStatus$json = {
  '1': 'IngressStatus',
  '2': [
    {'1': 'loadBalancer', '3': 1, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.IngressLoadBalancerStatus', '10': 'loadBalancer'},
  ],
};

/// Descriptor for `IngressStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressStatusDescriptor = $convert.base64Decode(
    'Cg1JbmdyZXNzU3RhdHVzElUKDGxvYWRCYWxhbmNlchgBIAEoCzIxLmFwaS5leHRlbnNpb25zLn'
    'YxYmV0YTEuSW5ncmVzc0xvYWRCYWxhbmNlclN0YXR1c1IMbG9hZEJhbGFuY2Vy');

@$core.Deprecated('Use ingressTLSDescriptor instead')
const IngressTLS$json = {
  '1': 'IngressTLS',
  '2': [
    {'1': 'hosts', '3': 1, '4': 3, '5': 9, '10': 'hosts'},
    {'1': 'secretName', '3': 2, '4': 1, '5': 9, '10': 'secretName'},
  ],
};

/// Descriptor for `IngressTLS`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ingressTLSDescriptor = $convert.base64Decode(
    'CgpJbmdyZXNzVExTEhQKBWhvc3RzGAEgAygJUgVob3N0cxIeCgpzZWNyZXROYW1lGAIgASgJUg'
    'pzZWNyZXROYW1l');

@$core.Deprecated('Use networkPolicyDescriptor instead')
const NetworkPolicy$json = {
  '1': 'NetworkPolicy',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.NetworkPolicySpec', '10': 'spec'},
  ],
};

/// Descriptor for `NetworkPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyDescriptor = $convert.base64Decode(
    'Cg1OZXR3b3JrUG9saWN5EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESPQoEc3BlYxgCIAEoCzIpLmFwaS5leHRl'
    'bnNpb25zLnYxYmV0YTEuTmV0d29ya1BvbGljeVNwZWNSBHNwZWM=');

@$core.Deprecated('Use networkPolicyEgressRuleDescriptor instead')
const NetworkPolicyEgressRule$json = {
  '1': 'NetworkPolicyEgressRule',
  '2': [
    {'1': 'ports', '3': 1, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.NetworkPolicyPort', '10': 'ports'},
    {'1': 'to', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.NetworkPolicyPeer', '10': 'to'},
  ],
};

/// Descriptor for `NetworkPolicyEgressRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyEgressRuleDescriptor = $convert.base64Decode(
    'ChdOZXR3b3JrUG9saWN5RWdyZXNzUnVsZRI/CgVwb3J0cxgBIAMoCzIpLmFwaS5leHRlbnNpb2'
    '5zLnYxYmV0YTEuTmV0d29ya1BvbGljeVBvcnRSBXBvcnRzEjkKAnRvGAIgAygLMikuYXBpLmV4'
    'dGVuc2lvbnMudjFiZXRhMS5OZXR3b3JrUG9saWN5UGVlclICdG8=');

@$core.Deprecated('Use networkPolicyIngressRuleDescriptor instead')
const NetworkPolicyIngressRule$json = {
  '1': 'NetworkPolicyIngressRule',
  '2': [
    {'1': 'ports', '3': 1, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.NetworkPolicyPort', '10': 'ports'},
    {'1': 'from', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.NetworkPolicyPeer', '10': 'from'},
  ],
};

/// Descriptor for `NetworkPolicyIngressRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyIngressRuleDescriptor = $convert.base64Decode(
    'ChhOZXR3b3JrUG9saWN5SW5ncmVzc1J1bGUSPwoFcG9ydHMYASADKAsyKS5hcGkuZXh0ZW5zaW'
    '9ucy52MWJldGExLk5ldHdvcmtQb2xpY3lQb3J0UgVwb3J0cxI9CgRmcm9tGAIgAygLMikuYXBp'
    'LmV4dGVuc2lvbnMudjFiZXRhMS5OZXR3b3JrUG9saWN5UGVlclIEZnJvbQ==');

@$core.Deprecated('Use networkPolicyListDescriptor instead')
const NetworkPolicyList$json = {
  '1': 'NetworkPolicyList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.NetworkPolicy', '10': 'items'},
  ],
};

/// Descriptor for `NetworkPolicyList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyListDescriptor = $convert.base64Decode(
    'ChFOZXR3b3JrUG9saWN5TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI7CgVpdGVtcxgCIAMoCzIlLmFwaS5l'
    'eHRlbnNpb25zLnYxYmV0YTEuTmV0d29ya1BvbGljeVIFaXRlbXM=');

@$core.Deprecated('Use networkPolicyPeerDescriptor instead')
const NetworkPolicyPeer$json = {
  '1': 'NetworkPolicyPeer',
  '2': [
    {'1': 'podSelector', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'podSelector'},
    {'1': 'namespaceSelector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'namespaceSelector'},
    {'1': 'ipBlock', '3': 3, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.IPBlock', '10': 'ipBlock'},
  ],
};

/// Descriptor for `NetworkPolicyPeer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyPeerDescriptor = $convert.base64Decode(
    'ChFOZXR3b3JrUG9saWN5UGVlchJOCgtwb2RTZWxlY3RvchgBIAEoCzIsLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSC3BvZFNlbGVjdG9yEloKEW5hbWVzcGFj'
    'ZVNlbGVjdG9yGAIgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGFiZWxTZW'
    'xlY3RvclIRbmFtZXNwYWNlU2VsZWN0b3ISOQoHaXBCbG9jaxgDIAEoCzIfLmFwaS5leHRlbnNp'
    'b25zLnYxYmV0YTEuSVBCbG9ja1IHaXBCbG9jaw==');

@$core.Deprecated('Use networkPolicyPortDescriptor instead')
const NetworkPolicyPort$json = {
  '1': 'NetworkPolicyPort',
  '2': [
    {'1': 'protocol', '3': 1, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'port', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'port'},
    {'1': 'endPort', '3': 3, '4': 1, '5': 5, '10': 'endPort'},
  ],
};

/// Descriptor for `NetworkPolicyPort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicyPortDescriptor = $convert.base64Decode(
    'ChFOZXR3b3JrUG9saWN5UG9ydBIaCghwcm90b2NvbBgBIAEoCVIIcHJvdG9jb2wSPQoEcG9ydB'
    'gCIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cudXRpbC5pbnRzdHIuSW50T3JTdHJpbmdSBHBvcnQS'
    'GAoHZW5kUG9ydBgDIAEoBVIHZW5kUG9ydA==');

@$core.Deprecated('Use networkPolicySpecDescriptor instead')
const NetworkPolicySpec$json = {
  '1': 'NetworkPolicySpec',
  '2': [
    {'1': 'podSelector', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'podSelector'},
    {'1': 'ingress', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.NetworkPolicyIngressRule', '10': 'ingress'},
    {'1': 'egress', '3': 3, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.NetworkPolicyEgressRule', '10': 'egress'},
    {'1': 'policyTypes', '3': 4, '4': 3, '5': 9, '10': 'policyTypes'},
  ],
};

/// Descriptor for `NetworkPolicySpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkPolicySpecDescriptor = $convert.base64Decode(
    'ChFOZXR3b3JrUG9saWN5U3BlYxJOCgtwb2RTZWxlY3RvchgBIAEoCzIsLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSC3BvZFNlbGVjdG9yEkoKB2luZ3Jlc3MY'
    'AiADKAsyMC5hcGkuZXh0ZW5zaW9ucy52MWJldGExLk5ldHdvcmtQb2xpY3lJbmdyZXNzUnVsZV'
    'IHaW5ncmVzcxJHCgZlZ3Jlc3MYAyADKAsyLy5hcGkuZXh0ZW5zaW9ucy52MWJldGExLk5ldHdv'
    'cmtQb2xpY3lFZ3Jlc3NSdWxlUgZlZ3Jlc3MSIAoLcG9saWN5VHlwZXMYBCADKAlSC3BvbGljeV'
    'R5cGVz');

@$core.Deprecated('Use replicaSetDescriptor instead')
const ReplicaSet$json = {
  '1': 'ReplicaSet',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.ReplicaSetSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.ReplicaSetStatus', '10': 'status'},
  ],
};

/// Descriptor for `ReplicaSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicaSetDescriptor = $convert.base64Decode(
    'CgpSZXBsaWNhU2V0EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESOgoEc3BlYxgCIAEoCzImLmFwaS5leHRlbnNp'
    'b25zLnYxYmV0YTEuUmVwbGljYVNldFNwZWNSBHNwZWMSQAoGc3RhdHVzGAMgASgLMiguYXBpLm'
    'V4dGVuc2lvbnMudjFiZXRhMS5SZXBsaWNhU2V0U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use replicaSetConditionDescriptor instead')
const ReplicaSetCondition$json = {
  '1': 'ReplicaSetCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ReplicaSetCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicaSetConditionDescriptor = $convert.base64Decode(
    'ChNSZXBsaWNhU2V0Q29uZGl0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSFgoGc3RhdHVzGAIgAS'
    'gJUgZzdGF0dXMSUwoSbGFzdFRyYW5zaXRpb25UaW1lGAMgASgLMiMuYXBpbWFjaGluZXJ5LnBr'
    'Zy5hcGlzLm1ldGEudjEuVGltZVISbGFzdFRyYW5zaXRpb25UaW1lEhYKBnJlYXNvbhgEIAEoCV'
    'IGcmVhc29uEhgKB21lc3NhZ2UYBSABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use replicaSetListDescriptor instead')
const ReplicaSetList$json = {
  '1': 'ReplicaSetList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.ReplicaSet', '10': 'items'},
  ],
};

/// Descriptor for `ReplicaSetList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicaSetListDescriptor = $convert.base64Decode(
    'Cg5SZXBsaWNhU2V0TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI4CgVpdGVtcxgCIAMoCzIiLmFwaS5leHRl'
    'bnNpb25zLnYxYmV0YTEuUmVwbGljYVNldFIFaXRlbXM=');

@$core.Deprecated('Use replicaSetSpecDescriptor instead')
const ReplicaSetSpec$json = {
  '1': 'ReplicaSetSpec',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'minReadySeconds', '3': 4, '4': 1, '5': 5, '10': 'minReadySeconds'},
    {'1': 'selector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'template', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PodTemplateSpec', '10': 'template'},
  ],
};

/// Descriptor for `ReplicaSetSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicaSetSpecDescriptor = $convert.base64Decode(
    'Cg5SZXBsaWNhU2V0U3BlYxIaCghyZXBsaWNhcxgBIAEoBVIIcmVwbGljYXMSKAoPbWluUmVhZH'
    'lTZWNvbmRzGAQgASgFUg9taW5SZWFkeVNlY29uZHMSSAoIc2VsZWN0b3IYAiABKAsyLC5hcGlt'
    'YWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG9yUghzZWxlY3RvchI4Cgh0ZW'
    '1wbGF0ZRgDIAEoCzIcLmFwaS5jb3JlLnYxLlBvZFRlbXBsYXRlU3BlY1IIdGVtcGxhdGU=');

@$core.Deprecated('Use replicaSetStatusDescriptor instead')
const ReplicaSetStatus$json = {
  '1': 'ReplicaSetStatus',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'fullyLabeledReplicas', '3': 2, '4': 1, '5': 5, '10': 'fullyLabeledReplicas'},
    {'1': 'readyReplicas', '3': 4, '4': 1, '5': 5, '10': 'readyReplicas'},
    {'1': 'availableReplicas', '3': 5, '4': 1, '5': 5, '10': 'availableReplicas'},
    {'1': 'observedGeneration', '3': 3, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'conditions', '3': 6, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.ReplicaSetCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `ReplicaSetStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicaSetStatusDescriptor = $convert.base64Decode(
    'ChBSZXBsaWNhU2V0U3RhdHVzEhoKCHJlcGxpY2FzGAEgASgFUghyZXBsaWNhcxIyChRmdWxseU'
    'xhYmVsZWRSZXBsaWNhcxgCIAEoBVIUZnVsbHlMYWJlbGVkUmVwbGljYXMSJAoNcmVhZHlSZXBs'
    'aWNhcxgEIAEoBVINcmVhZHlSZXBsaWNhcxIsChFhdmFpbGFibGVSZXBsaWNhcxgFIAEoBVIRYX'
    'ZhaWxhYmxlUmVwbGljYXMSLgoSb2JzZXJ2ZWRHZW5lcmF0aW9uGAMgASgDUhJvYnNlcnZlZEdl'
    'bmVyYXRpb24SSwoKY29uZGl0aW9ucxgGIAMoCzIrLmFwaS5leHRlbnNpb25zLnYxYmV0YTEuUm'
    'VwbGljYVNldENvbmRpdGlvblIKY29uZGl0aW9ucw==');

@$core.Deprecated('Use rollbackConfigDescriptor instead')
const RollbackConfig$json = {
  '1': 'RollbackConfig',
  '2': [
    {'1': 'revision', '3': 1, '4': 1, '5': 3, '10': 'revision'},
  ],
};

/// Descriptor for `RollbackConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollbackConfigDescriptor = $convert.base64Decode(
    'Cg5Sb2xsYmFja0NvbmZpZxIaCghyZXZpc2lvbhgBIAEoA1IIcmV2aXNpb24=');

@$core.Deprecated('Use rollingUpdateDaemonSetDescriptor instead')
const RollingUpdateDaemonSet$json = {
  '1': 'RollingUpdateDaemonSet',
  '2': [
    {'1': 'maxUnavailable', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'maxUnavailable'},
    {'1': 'maxSurge', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'maxSurge'},
  ],
};

/// Descriptor for `RollingUpdateDaemonSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollingUpdateDaemonSetDescriptor = $convert.base64Decode(
    'ChZSb2xsaW5nVXBkYXRlRGFlbW9uU2V0ElEKDm1heFVuYXZhaWxhYmxlGAEgASgLMikuYXBpbW'
    'FjaGluZXJ5LnBrZy51dGlsLmludHN0ci5JbnRPclN0cmluZ1IObWF4VW5hdmFpbGFibGUSRQoI'
    'bWF4U3VyZ2UYAiABKAsyKS5hcGltYWNoaW5lcnkucGtnLnV0aWwuaW50c3RyLkludE9yU3RyaW'
    '5nUghtYXhTdXJnZQ==');

@$core.Deprecated('Use rollingUpdateDeploymentDescriptor instead')
const RollingUpdateDeployment$json = {
  '1': 'RollingUpdateDeployment',
  '2': [
    {'1': 'maxUnavailable', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'maxUnavailable'},
    {'1': 'maxSurge', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'maxSurge'},
  ],
};

/// Descriptor for `RollingUpdateDeployment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollingUpdateDeploymentDescriptor = $convert.base64Decode(
    'ChdSb2xsaW5nVXBkYXRlRGVwbG95bWVudBJRCg5tYXhVbmF2YWlsYWJsZRgBIAEoCzIpLmFwaW'
    '1hY2hpbmVyeS5wa2cudXRpbC5pbnRzdHIuSW50T3JTdHJpbmdSDm1heFVuYXZhaWxhYmxlEkUK'
    'CG1heFN1cmdlGAIgASgLMikuYXBpbWFjaGluZXJ5LnBrZy51dGlsLmludHN0ci5JbnRPclN0cm'
    'luZ1IIbWF4U3VyZ2U=');

@$core.Deprecated('Use scaleDescriptor instead')
const Scale$json = {
  '1': 'Scale',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.ScaleSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.extensions.v1beta1.ScaleStatus', '10': 'status'},
  ],
};

/// Descriptor for `Scale`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleDescriptor = $convert.base64Decode(
    'CgVTY2FsZRJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLn'
    'YxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjUKBHNwZWMYAiABKAsyIS5hcGkuZXh0ZW5zaW9ucy52'
    'MWJldGExLlNjYWxlU3BlY1IEc3BlYxI7CgZzdGF0dXMYAyABKAsyIy5hcGkuZXh0ZW5zaW9ucy'
    '52MWJldGExLlNjYWxlU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use scaleSpecDescriptor instead')
const ScaleSpec$json = {
  '1': 'ScaleSpec',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
  ],
};

/// Descriptor for `ScaleSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleSpecDescriptor = $convert.base64Decode(
    'CglTY2FsZVNwZWMSGgoIcmVwbGljYXMYASABKAVSCHJlcGxpY2Fz');

@$core.Deprecated('Use scaleStatusDescriptor instead')
const ScaleStatus$json = {
  '1': 'ScaleStatus',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'selector', '3': 2, '4': 3, '5': 11, '6': '.api.extensions.v1beta1.ScaleStatus.SelectorEntry', '10': 'selector'},
    {'1': 'targetSelector', '3': 3, '4': 1, '5': 9, '10': 'targetSelector'},
  ],
  '3': [ScaleStatus_SelectorEntry$json],
};

@$core.Deprecated('Use scaleStatusDescriptor instead')
const ScaleStatus_SelectorEntry$json = {
  '1': 'SelectorEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ScaleStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleStatusDescriptor = $convert.base64Decode(
    'CgtTY2FsZVN0YXR1cxIaCghyZXBsaWNhcxgBIAEoBVIIcmVwbGljYXMSTQoIc2VsZWN0b3IYAi'
    'ADKAsyMS5hcGkuZXh0ZW5zaW9ucy52MWJldGExLlNjYWxlU3RhdHVzLlNlbGVjdG9yRW50cnlS'
    'CHNlbGVjdG9yEiYKDnRhcmdldFNlbGVjdG9yGAMgASgJUg50YXJnZXRTZWxlY3Rvcho7Cg1TZW'
    'xlY3RvckVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

