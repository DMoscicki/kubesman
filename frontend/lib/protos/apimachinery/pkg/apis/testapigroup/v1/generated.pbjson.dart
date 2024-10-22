//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/apis/testapigroup/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use carpDescriptor instead')
const Carp$json = {
  '1': 'Carp',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.testapigroup.v1.CarpSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.testapigroup.v1.CarpStatus', '10': 'status'},
  ],
};

/// Descriptor for `Carp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carpDescriptor = $convert.base64Decode(
    'CgRDYXJwEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudj'
    'EuT2JqZWN0TWV0YVIIbWV0YWRhdGESQwoEc3BlYxgCIAEoCzIvLmFwaW1hY2hpbmVyeS5wa2cu'
    'YXBpcy50ZXN0YXBpZ3JvdXAudjEuQ2FycFNwZWNSBHNwZWMSSQoGc3RhdHVzGAMgASgLMjEuYX'
    'BpbWFjaGluZXJ5LnBrZy5hcGlzLnRlc3RhcGlncm91cC52MS5DYXJwU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use carpConditionDescriptor instead')
const CarpCondition$json = {
  '1': 'CarpCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastProbeTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastProbeTime'},
    {'1': 'lastTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CarpCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carpConditionDescriptor = $convert.base64Decode(
    'Cg1DYXJwQ29uZGl0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSFgoGc3RhdHVzGAIgASgJUgZzdG'
    'F0dXMSSQoNbGFzdFByb2JlVGltZRgDIAEoCzIjLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRh'
    'LnYxLlRpbWVSDWxhc3RQcm9iZVRpbWUSUwoSbGFzdFRyYW5zaXRpb25UaW1lGAQgASgLMiMuYX'
    'BpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVISbGFzdFRyYW5zaXRpb25UaW1lEhYK'
    'BnJlYXNvbhgFIAEoCVIGcmVhc29uEhgKB21lc3NhZ2UYBiABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use carpListDescriptor instead')
const CarpList$json = {
  '1': 'CarpList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.testapigroup.v1.Carp', '10': 'items'},
  ],
};

/// Descriptor for `CarpList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carpListDescriptor = $convert.base64Decode(
    'CghDYXJwTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZX'
    'RhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJBCgVpdGVtcxgCIAMoCzIrLmFwaW1hY2hpbmVyeS5w'
    'a2cuYXBpcy50ZXN0YXBpZ3JvdXAudjEuQ2FycFIFaXRlbXM=');

@$core.Deprecated('Use carpSpecDescriptor instead')
const CarpSpec$json = {
  '1': 'CarpSpec',
  '2': [
    {'1': 'restartPolicy', '3': 3, '4': 1, '5': 9, '10': 'restartPolicy'},
    {'1': 'terminationGracePeriodSeconds', '3': 4, '4': 1, '5': 3, '10': 'terminationGracePeriodSeconds'},
    {'1': 'activeDeadlineSeconds', '3': 5, '4': 1, '5': 3, '10': 'activeDeadlineSeconds'},
    {'1': 'nodeSelector', '3': 7, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.testapigroup.v1.CarpSpec.NodeSelectorEntry', '10': 'nodeSelector'},
    {'1': 'serviceAccountName', '3': 8, '4': 1, '5': 9, '10': 'serviceAccountName'},
    {'1': 'serviceAccount', '3': 9, '4': 1, '5': 9, '10': 'serviceAccount'},
    {'1': 'nodeName', '3': 10, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'hostNetwork', '3': 11, '4': 1, '5': 8, '10': 'hostNetwork'},
    {'1': 'hostPID', '3': 12, '4': 1, '5': 8, '10': 'hostPID'},
    {'1': 'hostIPC', '3': 13, '4': 1, '5': 8, '10': 'hostIPC'},
    {'1': 'hostname', '3': 16, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'subdomain', '3': 17, '4': 1, '5': 9, '10': 'subdomain'},
    {'1': 'schedulername', '3': 19, '4': 1, '5': 9, '10': 'schedulername'},
  ],
  '3': [CarpSpec_NodeSelectorEntry$json],
};

@$core.Deprecated('Use carpSpecDescriptor instead')
const CarpSpec_NodeSelectorEntry$json = {
  '1': 'NodeSelectorEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CarpSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carpSpecDescriptor = $convert.base64Decode(
    'CghDYXJwU3BlYxIkCg1yZXN0YXJ0UG9saWN5GAMgASgJUg1yZXN0YXJ0UG9saWN5EkQKHXRlcm'
    '1pbmF0aW9uR3JhY2VQZXJpb2RTZWNvbmRzGAQgASgDUh10ZXJtaW5hdGlvbkdyYWNlUGVyaW9k'
    'U2Vjb25kcxI0ChVhY3RpdmVEZWFkbGluZVNlY29uZHMYBSABKANSFWFjdGl2ZURlYWRsaW5lU2'
    'Vjb25kcxJlCgxub2RlU2VsZWN0b3IYByADKAsyQS5hcGltYWNoaW5lcnkucGtnLmFwaXMudGVz'
    'dGFwaWdyb3VwLnYxLkNhcnBTcGVjLk5vZGVTZWxlY3RvckVudHJ5Ugxub2RlU2VsZWN0b3ISLg'
    'oSc2VydmljZUFjY291bnROYW1lGAggASgJUhJzZXJ2aWNlQWNjb3VudE5hbWUSJgoOc2Vydmlj'
    'ZUFjY291bnQYCSABKAlSDnNlcnZpY2VBY2NvdW50EhoKCG5vZGVOYW1lGAogASgJUghub2RlTm'
    'FtZRIgCgtob3N0TmV0d29yaxgLIAEoCFILaG9zdE5ldHdvcmsSGAoHaG9zdFBJRBgMIAEoCFIH'
    'aG9zdFBJRBIYCgdob3N0SVBDGA0gASgIUgdob3N0SVBDEhoKCGhvc3RuYW1lGBAgASgJUghob3'
    'N0bmFtZRIcCglzdWJkb21haW4YESABKAlSCXN1YmRvbWFpbhIkCg1zY2hlZHVsZXJuYW1lGBMg'
    'ASgJUg1zY2hlZHVsZXJuYW1lGj8KEU5vZGVTZWxlY3RvckVudHJ5EhAKA2tleRgBIAEoCVIDa2'
    'V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use carpStatusDescriptor instead')
const CarpStatus$json = {
  '1': 'CarpStatus',
  '2': [
    {'1': 'phase', '3': 1, '4': 1, '5': 9, '10': 'phase'},
    {'1': 'conditions', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.testapigroup.v1.CarpCondition', '10': 'conditions'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'hostIP', '3': 5, '4': 1, '5': 9, '10': 'hostIP'},
    {'1': 'carpIP', '3': 6, '4': 1, '5': 9, '10': 'carpIP'},
    {'1': 'startTime', '3': 7, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'startTime'},
  ],
};

/// Descriptor for `CarpStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List carpStatusDescriptor = $convert.base64Decode(
    'CgpDYXJwU3RhdHVzEhQKBXBoYXNlGAEgASgJUgVwaGFzZRJUCgpjb25kaXRpb25zGAIgAygLMj'
    'QuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLnRlc3RhcGlncm91cC52MS5DYXJwQ29uZGl0aW9uUgpj'
    'b25kaXRpb25zEhgKB21lc3NhZ2UYAyABKAlSB21lc3NhZ2USFgoGcmVhc29uGAQgASgJUgZyZW'
    'Fzb24SFgoGaG9zdElQGAUgASgJUgZob3N0SVASFgoGY2FycElQGAYgASgJUgZjYXJwSVASQQoJ'
    'c3RhcnRUaW1lGAcgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVIJc3'
    'RhcnRUaW1l');

