//
//  Generated code. Do not modify.
//  source: api/batch/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cronJobDescriptor instead')
const CronJob$json = {
  '1': 'CronJob',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.batch.v1.CronJobSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.batch.v1.CronJobStatus', '10': 'status'},
  ],
};

/// Descriptor for `CronJob`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cronJobDescriptor = $convert.base64Decode(
    'CgdDcm9uSm9iEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESLQoEc3BlYxgCIAEoCzIZLmFwaS5iYXRjaC52MS5D'
    'cm9uSm9iU3BlY1IEc3BlYxIzCgZzdGF0dXMYAyABKAsyGy5hcGkuYmF0Y2gudjEuQ3JvbkpvYl'
    'N0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use cronJobListDescriptor instead')
const CronJobList$json = {
  '1': 'CronJobList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.batch.v1.CronJob', '10': 'items'},
  ],
};

/// Descriptor for `CronJobList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cronJobListDescriptor = $convert.base64Decode(
    'CgtDcm9uSm9iTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRIrCgVpdGVtcxgCIAMoCzIVLmFwaS5iYXRjaC52'
    'MS5Dcm9uSm9iUgVpdGVtcw==');

@$core.Deprecated('Use cronJobSpecDescriptor instead')
const CronJobSpec$json = {
  '1': 'CronJobSpec',
  '2': [
    {'1': 'schedule', '3': 1, '4': 1, '5': 9, '10': 'schedule'},
    {'1': 'timeZone', '3': 8, '4': 1, '5': 9, '10': 'timeZone'},
    {'1': 'startingDeadlineSeconds', '3': 2, '4': 1, '5': 3, '10': 'startingDeadlineSeconds'},
    {'1': 'concurrencyPolicy', '3': 3, '4': 1, '5': 9, '10': 'concurrencyPolicy'},
    {'1': 'suspend', '3': 4, '4': 1, '5': 8, '10': 'suspend'},
    {'1': 'jobTemplate', '3': 5, '4': 1, '5': 11, '6': '.api.batch.v1.JobTemplateSpec', '10': 'jobTemplate'},
    {'1': 'successfulJobsHistoryLimit', '3': 6, '4': 1, '5': 5, '10': 'successfulJobsHistoryLimit'},
    {'1': 'failedJobsHistoryLimit', '3': 7, '4': 1, '5': 5, '10': 'failedJobsHistoryLimit'},
  ],
};

/// Descriptor for `CronJobSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cronJobSpecDescriptor = $convert.base64Decode(
    'CgtDcm9uSm9iU3BlYxIaCghzY2hlZHVsZRgBIAEoCVIIc2NoZWR1bGUSGgoIdGltZVpvbmUYCC'
    'ABKAlSCHRpbWVab25lEjgKF3N0YXJ0aW5nRGVhZGxpbmVTZWNvbmRzGAIgASgDUhdzdGFydGlu'
    'Z0RlYWRsaW5lU2Vjb25kcxIsChFjb25jdXJyZW5jeVBvbGljeRgDIAEoCVIRY29uY3VycmVuY3'
    'lQb2xpY3kSGAoHc3VzcGVuZBgEIAEoCFIHc3VzcGVuZBI/Cgtqb2JUZW1wbGF0ZRgFIAEoCzId'
    'LmFwaS5iYXRjaC52MS5Kb2JUZW1wbGF0ZVNwZWNSC2pvYlRlbXBsYXRlEj4KGnN1Y2Nlc3NmdW'
    'xKb2JzSGlzdG9yeUxpbWl0GAYgASgFUhpzdWNjZXNzZnVsSm9ic0hpc3RvcnlMaW1pdBI2ChZm'
    'YWlsZWRKb2JzSGlzdG9yeUxpbWl0GAcgASgFUhZmYWlsZWRKb2JzSGlzdG9yeUxpbWl0');

@$core.Deprecated('Use cronJobStatusDescriptor instead')
const CronJobStatus$json = {
  '1': 'CronJobStatus',
  '2': [
    {'1': 'active', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'active'},
    {'1': 'lastScheduleTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastScheduleTime'},
    {'1': 'lastSuccessfulTime', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastSuccessfulTime'},
  ],
};

/// Descriptor for `CronJobStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cronJobStatusDescriptor = $convert.base64Decode(
    'Cg1Dcm9uSm9iU3RhdHVzEjQKBmFjdGl2ZRgBIAMoCzIcLmFwaS5jb3JlLnYxLk9iamVjdFJlZm'
    'VyZW5jZVIGYWN0aXZlEk8KEGxhc3RTY2hlZHVsZVRpbWUYBCABKAsyIy5hcGltYWNoaW5lcnku'
    'cGtnLmFwaXMubWV0YS52MS5UaW1lUhBsYXN0U2NoZWR1bGVUaW1lElMKEmxhc3RTdWNjZXNzZn'
    'VsVGltZRgFIAEoCzIjLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLlRpbWVSEmxhc3RT'
    'dWNjZXNzZnVsVGltZQ==');

@$core.Deprecated('Use jobDescriptor instead')
const Job$json = {
  '1': 'Job',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.batch.v1.JobSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.batch.v1.JobStatus', '10': 'status'},
  ],
};

/// Descriptor for `Job`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobDescriptor = $convert.base64Decode(
    'CgNKb2ISRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS'
    '5PYmplY3RNZXRhUghtZXRhZGF0YRIpCgRzcGVjGAIgASgLMhUuYXBpLmJhdGNoLnYxLkpvYlNw'
    'ZWNSBHNwZWMSLwoGc3RhdHVzGAMgASgLMhcuYXBpLmJhdGNoLnYxLkpvYlN0YXR1c1IGc3RhdH'
    'Vz');

@$core.Deprecated('Use jobConditionDescriptor instead')
const JobCondition$json = {
  '1': 'JobCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastProbeTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastProbeTime'},
    {'1': 'lastTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `JobCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobConditionDescriptor = $convert.base64Decode(
    'CgxKb2JDb25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCgZzdGF0dXMYAiABKAlSBnN0YX'
    'R1cxJJCg1sYXN0UHJvYmVUaW1lGAMgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEu'
    'djEuVGltZVINbGFzdFByb2JlVGltZRJTChJsYXN0VHJhbnNpdGlvblRpbWUYBCABKAsyIy5hcG'
    'ltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlvblRpbWUSFgoG'
    'cmVhc29uGAUgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgGIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use jobListDescriptor instead')
const JobList$json = {
  '1': 'JobList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.batch.v1.Job', '10': 'items'},
  ],
};

/// Descriptor for `JobList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobListDescriptor = $convert.base64Decode(
    'CgdKb2JMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuTGlzdE1ldGFSCG1ldGFkYXRhEicKBWl0ZW1zGAIgAygLMhEuYXBpLmJhdGNoLnYxLkpv'
    'YlIFaXRlbXM=');

@$core.Deprecated('Use jobSpecDescriptor instead')
const JobSpec$json = {
  '1': 'JobSpec',
  '2': [
    {'1': 'parallelism', '3': 1, '4': 1, '5': 5, '10': 'parallelism'},
    {'1': 'completions', '3': 2, '4': 1, '5': 5, '10': 'completions'},
    {'1': 'activeDeadlineSeconds', '3': 3, '4': 1, '5': 3, '10': 'activeDeadlineSeconds'},
    {'1': 'podFailurePolicy', '3': 11, '4': 1, '5': 11, '6': '.api.batch.v1.PodFailurePolicy', '10': 'podFailurePolicy'},
    {'1': 'successPolicy', '3': 16, '4': 1, '5': 11, '6': '.api.batch.v1.SuccessPolicy', '10': 'successPolicy'},
    {'1': 'backoffLimit', '3': 7, '4': 1, '5': 5, '10': 'backoffLimit'},
    {'1': 'backoffLimitPerIndex', '3': 12, '4': 1, '5': 5, '10': 'backoffLimitPerIndex'},
    {'1': 'maxFailedIndexes', '3': 13, '4': 1, '5': 5, '10': 'maxFailedIndexes'},
    {'1': 'selector', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'manualSelector', '3': 5, '4': 1, '5': 8, '10': 'manualSelector'},
    {'1': 'template', '3': 6, '4': 1, '5': 11, '6': '.api.core.v1.PodTemplateSpec', '10': 'template'},
    {'1': 'ttlSecondsAfterFinished', '3': 8, '4': 1, '5': 5, '10': 'ttlSecondsAfterFinished'},
    {'1': 'completionMode', '3': 9, '4': 1, '5': 9, '10': 'completionMode'},
    {'1': 'suspend', '3': 10, '4': 1, '5': 8, '10': 'suspend'},
    {'1': 'podReplacementPolicy', '3': 14, '4': 1, '5': 9, '10': 'podReplacementPolicy'},
    {'1': 'managedBy', '3': 15, '4': 1, '5': 9, '10': 'managedBy'},
  ],
};

/// Descriptor for `JobSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobSpecDescriptor = $convert.base64Decode(
    'CgdKb2JTcGVjEiAKC3BhcmFsbGVsaXNtGAEgASgFUgtwYXJhbGxlbGlzbRIgCgtjb21wbGV0aW'
    '9ucxgCIAEoBVILY29tcGxldGlvbnMSNAoVYWN0aXZlRGVhZGxpbmVTZWNvbmRzGAMgASgDUhVh'
    'Y3RpdmVEZWFkbGluZVNlY29uZHMSSgoQcG9kRmFpbHVyZVBvbGljeRgLIAEoCzIeLmFwaS5iYX'
    'RjaC52MS5Qb2RGYWlsdXJlUG9saWN5UhBwb2RGYWlsdXJlUG9saWN5EkEKDXN1Y2Nlc3NQb2xp'
    'Y3kYECABKAsyGy5hcGkuYmF0Y2gudjEuU3VjY2Vzc1BvbGljeVINc3VjY2Vzc1BvbGljeRIiCg'
    'xiYWNrb2ZmTGltaXQYByABKAVSDGJhY2tvZmZMaW1pdBIyChRiYWNrb2ZmTGltaXRQZXJJbmRl'
    'eBgMIAEoBVIUYmFja29mZkxpbWl0UGVySW5kZXgSKgoQbWF4RmFpbGVkSW5kZXhlcxgNIAEoBV'
    'IQbWF4RmFpbGVkSW5kZXhlcxJICghzZWxlY3RvchgEIAEoCzIsLmFwaW1hY2hpbmVyeS5wa2cu'
    'YXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSCHNlbGVjdG9yEiYKDm1hbnVhbFNlbGVjdG9yGA'
    'UgASgIUg5tYW51YWxTZWxlY3RvchI4Cgh0ZW1wbGF0ZRgGIAEoCzIcLmFwaS5jb3JlLnYxLlBv'
    'ZFRlbXBsYXRlU3BlY1IIdGVtcGxhdGUSOAoXdHRsU2Vjb25kc0FmdGVyRmluaXNoZWQYCCABKA'
    'VSF3R0bFNlY29uZHNBZnRlckZpbmlzaGVkEiYKDmNvbXBsZXRpb25Nb2RlGAkgASgJUg5jb21w'
    'bGV0aW9uTW9kZRIYCgdzdXNwZW5kGAogASgIUgdzdXNwZW5kEjIKFHBvZFJlcGxhY2VtZW50UG'
    '9saWN5GA4gASgJUhRwb2RSZXBsYWNlbWVudFBvbGljeRIcCgltYW5hZ2VkQnkYDyABKAlSCW1h'
    'bmFnZWRCeQ==');

@$core.Deprecated('Use jobStatusDescriptor instead')
const JobStatus$json = {
  '1': 'JobStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.api.batch.v1.JobCondition', '10': 'conditions'},
    {'1': 'startTime', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'startTime'},
    {'1': 'completionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'completionTime'},
    {'1': 'active', '3': 4, '4': 1, '5': 5, '10': 'active'},
    {'1': 'succeeded', '3': 5, '4': 1, '5': 5, '10': 'succeeded'},
    {'1': 'failed', '3': 6, '4': 1, '5': 5, '10': 'failed'},
    {'1': 'terminating', '3': 11, '4': 1, '5': 5, '10': 'terminating'},
    {'1': 'completedIndexes', '3': 7, '4': 1, '5': 9, '10': 'completedIndexes'},
    {'1': 'failedIndexes', '3': 10, '4': 1, '5': 9, '10': 'failedIndexes'},
    {'1': 'uncountedTerminatedPods', '3': 8, '4': 1, '5': 11, '6': '.api.batch.v1.UncountedTerminatedPods', '10': 'uncountedTerminatedPods'},
    {'1': 'ready', '3': 9, '4': 1, '5': 5, '10': 'ready'},
  ],
};

/// Descriptor for `JobStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobStatusDescriptor = $convert.base64Decode(
    'CglKb2JTdGF0dXMSOgoKY29uZGl0aW9ucxgBIAMoCzIaLmFwaS5iYXRjaC52MS5Kb2JDb25kaX'
    'Rpb25SCmNvbmRpdGlvbnMSQQoJc3RhcnRUaW1lGAIgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy5h'
    'cGlzLm1ldGEudjEuVGltZVIJc3RhcnRUaW1lEksKDmNvbXBsZXRpb25UaW1lGAMgASgLMiMuYX'
    'BpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVIOY29tcGxldGlvblRpbWUSFgoGYWN0'
    'aXZlGAQgASgFUgZhY3RpdmUSHAoJc3VjY2VlZGVkGAUgASgFUglzdWNjZWVkZWQSFgoGZmFpbG'
    'VkGAYgASgFUgZmYWlsZWQSIAoLdGVybWluYXRpbmcYCyABKAVSC3Rlcm1pbmF0aW5nEioKEGNv'
    'bXBsZXRlZEluZGV4ZXMYByABKAlSEGNvbXBsZXRlZEluZGV4ZXMSJAoNZmFpbGVkSW5kZXhlcx'
    'gKIAEoCVINZmFpbGVkSW5kZXhlcxJfChd1bmNvdW50ZWRUZXJtaW5hdGVkUG9kcxgIIAEoCzIl'
    'LmFwaS5iYXRjaC52MS5VbmNvdW50ZWRUZXJtaW5hdGVkUG9kc1IXdW5jb3VudGVkVGVybWluYX'
    'RlZFBvZHMSFAoFcmVhZHkYCSABKAVSBXJlYWR5');

@$core.Deprecated('Use jobTemplateSpecDescriptor instead')
const JobTemplateSpec$json = {
  '1': 'JobTemplateSpec',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.batch.v1.JobSpec', '10': 'spec'},
  ],
};

/// Descriptor for `JobTemplateSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jobTemplateSpecDescriptor = $convert.base64Decode(
    'Cg9Kb2JUZW1wbGF0ZVNwZWMSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIpCgRzcGVjGAIgASgLMhUuYXBpLmJh'
    'dGNoLnYxLkpvYlNwZWNSBHNwZWM=');

@$core.Deprecated('Use podFailurePolicyDescriptor instead')
const PodFailurePolicy$json = {
  '1': 'PodFailurePolicy',
  '2': [
    {'1': 'rules', '3': 1, '4': 3, '5': 11, '6': '.api.batch.v1.PodFailurePolicyRule', '10': 'rules'},
  ],
};

/// Descriptor for `PodFailurePolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podFailurePolicyDescriptor = $convert.base64Decode(
    'ChBQb2RGYWlsdXJlUG9saWN5EjgKBXJ1bGVzGAEgAygLMiIuYXBpLmJhdGNoLnYxLlBvZEZhaW'
    'x1cmVQb2xpY3lSdWxlUgVydWxlcw==');

@$core.Deprecated('Use podFailurePolicyOnExitCodesRequirementDescriptor instead')
const PodFailurePolicyOnExitCodesRequirement$json = {
  '1': 'PodFailurePolicyOnExitCodesRequirement',
  '2': [
    {'1': 'containerName', '3': 1, '4': 1, '5': 9, '10': 'containerName'},
    {'1': 'operator', '3': 2, '4': 1, '5': 9, '10': 'operator'},
    {'1': 'values', '3': 3, '4': 3, '5': 5, '10': 'values'},
  ],
};

/// Descriptor for `PodFailurePolicyOnExitCodesRequirement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podFailurePolicyOnExitCodesRequirementDescriptor = $convert.base64Decode(
    'CiZQb2RGYWlsdXJlUG9saWN5T25FeGl0Q29kZXNSZXF1aXJlbWVudBIkCg1jb250YWluZXJOYW'
    '1lGAEgASgJUg1jb250YWluZXJOYW1lEhoKCG9wZXJhdG9yGAIgASgJUghvcGVyYXRvchIWCgZ2'
    'YWx1ZXMYAyADKAVSBnZhbHVlcw==');

@$core.Deprecated('Use podFailurePolicyOnPodConditionsPatternDescriptor instead')
const PodFailurePolicyOnPodConditionsPattern$json = {
  '1': 'PodFailurePolicyOnPodConditionsPattern',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `PodFailurePolicyOnPodConditionsPattern`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podFailurePolicyOnPodConditionsPatternDescriptor = $convert.base64Decode(
    'CiZQb2RGYWlsdXJlUG9saWN5T25Qb2RDb25kaXRpb25zUGF0dGVybhISCgR0eXBlGAEgASgJUg'
    'R0eXBlEhYKBnN0YXR1cxgCIAEoCVIGc3RhdHVz');

@$core.Deprecated('Use podFailurePolicyRuleDescriptor instead')
const PodFailurePolicyRule$json = {
  '1': 'PodFailurePolicyRule',
  '2': [
    {'1': 'action', '3': 1, '4': 1, '5': 9, '10': 'action'},
    {'1': 'onExitCodes', '3': 2, '4': 1, '5': 11, '6': '.api.batch.v1.PodFailurePolicyOnExitCodesRequirement', '10': 'onExitCodes'},
    {'1': 'onPodConditions', '3': 3, '4': 3, '5': 11, '6': '.api.batch.v1.PodFailurePolicyOnPodConditionsPattern', '10': 'onPodConditions'},
  ],
};

/// Descriptor for `PodFailurePolicyRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podFailurePolicyRuleDescriptor = $convert.base64Decode(
    'ChRQb2RGYWlsdXJlUG9saWN5UnVsZRIWCgZhY3Rpb24YASABKAlSBmFjdGlvbhJWCgtvbkV4aX'
    'RDb2RlcxgCIAEoCzI0LmFwaS5iYXRjaC52MS5Qb2RGYWlsdXJlUG9saWN5T25FeGl0Q29kZXNS'
    'ZXF1aXJlbWVudFILb25FeGl0Q29kZXMSXgoPb25Qb2RDb25kaXRpb25zGAMgAygLMjQuYXBpLm'
    'JhdGNoLnYxLlBvZEZhaWx1cmVQb2xpY3lPblBvZENvbmRpdGlvbnNQYXR0ZXJuUg9vblBvZENv'
    'bmRpdGlvbnM=');

@$core.Deprecated('Use successPolicyDescriptor instead')
const SuccessPolicy$json = {
  '1': 'SuccessPolicy',
  '2': [
    {'1': 'rules', '3': 1, '4': 3, '5': 11, '6': '.api.batch.v1.SuccessPolicyRule', '10': 'rules'},
  ],
};

/// Descriptor for `SuccessPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List successPolicyDescriptor = $convert.base64Decode(
    'Cg1TdWNjZXNzUG9saWN5EjUKBXJ1bGVzGAEgAygLMh8uYXBpLmJhdGNoLnYxLlN1Y2Nlc3NQb2'
    'xpY3lSdWxlUgVydWxlcw==');

@$core.Deprecated('Use successPolicyRuleDescriptor instead')
const SuccessPolicyRule$json = {
  '1': 'SuccessPolicyRule',
  '2': [
    {'1': 'succeededIndexes', '3': 1, '4': 1, '5': 9, '10': 'succeededIndexes'},
    {'1': 'succeededCount', '3': 2, '4': 1, '5': 5, '10': 'succeededCount'},
  ],
};

/// Descriptor for `SuccessPolicyRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List successPolicyRuleDescriptor = $convert.base64Decode(
    'ChFTdWNjZXNzUG9saWN5UnVsZRIqChBzdWNjZWVkZWRJbmRleGVzGAEgASgJUhBzdWNjZWVkZW'
    'RJbmRleGVzEiYKDnN1Y2NlZWRlZENvdW50GAIgASgFUg5zdWNjZWVkZWRDb3VudA==');

@$core.Deprecated('Use uncountedTerminatedPodsDescriptor instead')
const UncountedTerminatedPods$json = {
  '1': 'UncountedTerminatedPods',
  '2': [
    {'1': 'succeeded', '3': 1, '4': 3, '5': 9, '10': 'succeeded'},
    {'1': 'failed', '3': 2, '4': 3, '5': 9, '10': 'failed'},
  ],
};

/// Descriptor for `UncountedTerminatedPods`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List uncountedTerminatedPodsDescriptor = $convert.base64Decode(
    'ChdVbmNvdW50ZWRUZXJtaW5hdGVkUG9kcxIcCglzdWNjZWVkZWQYASADKAlSCXN1Y2NlZWRlZB'
    'IWCgZmYWlsZWQYAiADKAlSBmZhaWxlZA==');

