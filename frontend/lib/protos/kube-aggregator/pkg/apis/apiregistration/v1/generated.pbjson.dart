//
//  Generated code. Do not modify.
//  source: kube-aggregator/pkg/apis/apiregistration/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aPIServiceDescriptor instead')
const APIService$json = {
  '1': 'APIService',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.kube_aggregator.pkg.apis.apiregistration.v1.APIServiceSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.kube_aggregator.pkg.apis.apiregistration.v1.APIServiceStatus', '10': 'status'},
  ],
};

/// Descriptor for `APIService`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIServiceDescriptor = $convert.base64Decode(
    'CgpBUElTZXJ2aWNlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESTwoEc3BlYxgCIAEoCzI7Lmt1YmVfYWdncmVn'
    'YXRvci5wa2cuYXBpcy5hcGlyZWdpc3RyYXRpb24udjEuQVBJU2VydmljZVNwZWNSBHNwZWMSVQ'
    'oGc3RhdHVzGAMgASgLMj0ua3ViZV9hZ2dyZWdhdG9yLnBrZy5hcGlzLmFwaXJlZ2lzdHJhdGlv'
    'bi52MS5BUElTZXJ2aWNlU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use aPIServiceConditionDescriptor instead')
const APIServiceCondition$json = {
  '1': 'APIServiceCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `APIServiceCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIServiceConditionDescriptor = $convert.base64Decode(
    'ChNBUElTZXJ2aWNlQ29uZGl0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSFgoGc3RhdHVzGAIgAS'
    'gJUgZzdGF0dXMSUwoSbGFzdFRyYW5zaXRpb25UaW1lGAMgASgLMiMuYXBpbWFjaGluZXJ5LnBr'
    'Zy5hcGlzLm1ldGEudjEuVGltZVISbGFzdFRyYW5zaXRpb25UaW1lEhYKBnJlYXNvbhgEIAEoCV'
    'IGcmVhc29uEhgKB21lc3NhZ2UYBSABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use aPIServiceListDescriptor instead')
const APIServiceList$json = {
  '1': 'APIServiceList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.kube_aggregator.pkg.apis.apiregistration.v1.APIService', '10': 'items'},
  ],
};

/// Descriptor for `APIServiceList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIServiceListDescriptor = $convert.base64Decode(
    'Cg5BUElTZXJ2aWNlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJNCgVpdGVtcxgCIAMoCzI3Lmt1YmVfYWdn'
    'cmVnYXRvci5wa2cuYXBpcy5hcGlyZWdpc3RyYXRpb24udjEuQVBJU2VydmljZVIFaXRlbXM=');

@$core.Deprecated('Use aPIServiceSpecDescriptor instead')
const APIServiceSpec$json = {
  '1': 'APIServiceSpec',
  '2': [
    {'1': 'service', '3': 1, '4': 1, '5': 11, '6': '.kube_aggregator.pkg.apis.apiregistration.v1.ServiceReference', '10': 'service'},
    {'1': 'group', '3': 2, '4': 1, '5': 9, '10': 'group'},
    {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    {'1': 'insecureSkipTLSVerify', '3': 4, '4': 1, '5': 8, '10': 'insecureSkipTLSVerify'},
    {'1': 'caBundle', '3': 5, '4': 1, '5': 12, '10': 'caBundle'},
    {'1': 'groupPriorityMinimum', '3': 7, '4': 1, '5': 5, '10': 'groupPriorityMinimum'},
    {'1': 'versionPriority', '3': 8, '4': 1, '5': 5, '10': 'versionPriority'},
  ],
};

/// Descriptor for `APIServiceSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIServiceSpecDescriptor = $convert.base64Decode(
    'Cg5BUElTZXJ2aWNlU3BlYxJXCgdzZXJ2aWNlGAEgASgLMj0ua3ViZV9hZ2dyZWdhdG9yLnBrZy'
    '5hcGlzLmFwaXJlZ2lzdHJhdGlvbi52MS5TZXJ2aWNlUmVmZXJlbmNlUgdzZXJ2aWNlEhQKBWdy'
    'b3VwGAIgASgJUgVncm91cBIYCgd2ZXJzaW9uGAMgASgJUgd2ZXJzaW9uEjQKFWluc2VjdXJlU2'
    'tpcFRMU1ZlcmlmeRgEIAEoCFIVaW5zZWN1cmVTa2lwVExTVmVyaWZ5EhoKCGNhQnVuZGxlGAUg'
    'ASgMUghjYUJ1bmRsZRIyChRncm91cFByaW9yaXR5TWluaW11bRgHIAEoBVIUZ3JvdXBQcmlvcm'
    'l0eU1pbmltdW0SKAoPdmVyc2lvblByaW9yaXR5GAggASgFUg92ZXJzaW9uUHJpb3JpdHk=');

@$core.Deprecated('Use aPIServiceStatusDescriptor instead')
const APIServiceStatus$json = {
  '1': 'APIServiceStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.kube_aggregator.pkg.apis.apiregistration.v1.APIServiceCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `APIServiceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIServiceStatusDescriptor = $convert.base64Decode(
    'ChBBUElTZXJ2aWNlU3RhdHVzEmAKCmNvbmRpdGlvbnMYASADKAsyQC5rdWJlX2FnZ3JlZ2F0b3'
    'IucGtnLmFwaXMuYXBpcmVnaXN0cmF0aW9uLnYxLkFQSVNlcnZpY2VDb25kaXRpb25SCmNvbmRp'
    'dGlvbnM=');

@$core.Deprecated('Use serviceReferenceDescriptor instead')
const ServiceReference$json = {
  '1': 'ServiceReference',
  '2': [
    {'1': 'namespace', '3': 1, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'port', '3': 3, '4': 1, '5': 5, '10': 'port'},
  ],
};

/// Descriptor for `ServiceReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceReferenceDescriptor = $convert.base64Decode(
    'ChBTZXJ2aWNlUmVmZXJlbmNlEhwKCW5hbWVzcGFjZRgBIAEoCVIJbmFtZXNwYWNlEhIKBG5hbW'
    'UYAiABKAlSBG5hbWUSEgoEcG9ydBgDIAEoBVIEcG9ydA==');

