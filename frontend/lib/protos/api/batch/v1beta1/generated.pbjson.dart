//
//  Generated code. Do not modify.
//  source: api/batch/v1beta1/generated.proto
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
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.batch.v1beta1.CronJobSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.batch.v1beta1.CronJobStatus', '10': 'status'},
  ],
};

/// Descriptor for `CronJob`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cronJobDescriptor = $convert.base64Decode(
    'CgdDcm9uSm9iEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESMgoEc3BlYxgCIAEoCzIeLmFwaS5iYXRjaC52MWJl'
    'dGExLkNyb25Kb2JTcGVjUgRzcGVjEjgKBnN0YXR1cxgDIAEoCzIgLmFwaS5iYXRjaC52MWJldG'
    'ExLkNyb25Kb2JTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use cronJobListDescriptor instead')
const CronJobList$json = {
  '1': 'CronJobList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.batch.v1beta1.CronJob', '10': 'items'},
  ],
};

/// Descriptor for `CronJobList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cronJobListDescriptor = $convert.base64Decode(
    'CgtDcm9uSm9iTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRIwCgVpdGVtcxgCIAMoCzIaLmFwaS5iYXRjaC52'
    'MWJldGExLkNyb25Kb2JSBWl0ZW1z');

@$core.Deprecated('Use cronJobSpecDescriptor instead')
const CronJobSpec$json = {
  '1': 'CronJobSpec',
  '2': [
    {'1': 'schedule', '3': 1, '4': 1, '5': 9, '10': 'schedule'},
    {'1': 'timeZone', '3': 8, '4': 1, '5': 9, '10': 'timeZone'},
    {'1': 'startingDeadlineSeconds', '3': 2, '4': 1, '5': 3, '10': 'startingDeadlineSeconds'},
    {'1': 'concurrencyPolicy', '3': 3, '4': 1, '5': 9, '10': 'concurrencyPolicy'},
    {'1': 'suspend', '3': 4, '4': 1, '5': 8, '10': 'suspend'},
    {'1': 'jobTemplate', '3': 5, '4': 1, '5': 11, '6': '.api.batch.v1beta1.JobTemplateSpec', '10': 'jobTemplate'},
    {'1': 'successfulJobsHistoryLimit', '3': 6, '4': 1, '5': 5, '10': 'successfulJobsHistoryLimit'},
    {'1': 'failedJobsHistoryLimit', '3': 7, '4': 1, '5': 5, '10': 'failedJobsHistoryLimit'},
  ],
};

/// Descriptor for `CronJobSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cronJobSpecDescriptor = $convert.base64Decode(
    'CgtDcm9uSm9iU3BlYxIaCghzY2hlZHVsZRgBIAEoCVIIc2NoZWR1bGUSGgoIdGltZVpvbmUYCC'
    'ABKAlSCHRpbWVab25lEjgKF3N0YXJ0aW5nRGVhZGxpbmVTZWNvbmRzGAIgASgDUhdzdGFydGlu'
    'Z0RlYWRsaW5lU2Vjb25kcxIsChFjb25jdXJyZW5jeVBvbGljeRgDIAEoCVIRY29uY3VycmVuY3'
    'lQb2xpY3kSGAoHc3VzcGVuZBgEIAEoCFIHc3VzcGVuZBJECgtqb2JUZW1wbGF0ZRgFIAEoCzIi'
    'LmFwaS5iYXRjaC52MWJldGExLkpvYlRlbXBsYXRlU3BlY1ILam9iVGVtcGxhdGUSPgoac3VjY2'
    'Vzc2Z1bEpvYnNIaXN0b3J5TGltaXQYBiABKAVSGnN1Y2Nlc3NmdWxKb2JzSGlzdG9yeUxpbWl0'
    'EjYKFmZhaWxlZEpvYnNIaXN0b3J5TGltaXQYByABKAVSFmZhaWxlZEpvYnNIaXN0b3J5TGltaX'
    'Q=');

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

