//
//  Generated code. Do not modify.
//  source: api/scheduling/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use priorityClassDescriptor instead')
const PriorityClass$json = {
  '1': 'PriorityClass',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
    {'1': 'globalDefault', '3': 3, '4': 1, '5': 8, '10': 'globalDefault'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'preemptionPolicy', '3': 5, '4': 1, '5': 9, '10': 'preemptionPolicy'},
  ],
};

/// Descriptor for `PriorityClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priorityClassDescriptor = $convert.base64Decode(
    'Cg1Qcmlvcml0eUNsYXNzEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESFAoFdmFsdWUYAiABKAVSBXZhbHVlEiQK'
    'DWdsb2JhbERlZmF1bHQYAyABKAhSDWdsb2JhbERlZmF1bHQSIAoLZGVzY3JpcHRpb24YBCABKA'
    'lSC2Rlc2NyaXB0aW9uEioKEHByZWVtcHRpb25Qb2xpY3kYBSABKAlSEHByZWVtcHRpb25Qb2xp'
    'Y3k=');

@$core.Deprecated('Use priorityClassListDescriptor instead')
const PriorityClassList$json = {
  '1': 'PriorityClassList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.scheduling.v1.PriorityClass', '10': 'items'},
  ],
};

/// Descriptor for `PriorityClassList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List priorityClassListDescriptor = $convert.base64Decode(
    'ChFQcmlvcml0eUNsYXNzTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI2CgVpdGVtcxgCIAMoCzIgLmFwaS5z'
    'Y2hlZHVsaW5nLnYxLlByaW9yaXR5Q2xhc3NSBWl0ZW1z');

