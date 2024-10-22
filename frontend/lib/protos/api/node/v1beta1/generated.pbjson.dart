//
//  Generated code. Do not modify.
//  source: api/node/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use overheadDescriptor instead')
const Overhead$json = {
  '1': 'Overhead',
  '2': [
    {'1': 'podFixed', '3': 1, '4': 3, '5': 11, '6': '.api.node.v1beta1.Overhead.PodFixedEntry', '10': 'podFixed'},
  ],
  '3': [Overhead_PodFixedEntry$json],
};

@$core.Deprecated('Use overheadDescriptor instead')
const Overhead_PodFixedEntry$json = {
  '1': 'PodFixedEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Overhead`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List overheadDescriptor = $convert.base64Decode(
    'CghPdmVyaGVhZBJECghwb2RGaXhlZBgBIAMoCzIoLmFwaS5ub2RlLnYxYmV0YTEuT3ZlcmhlYW'
    'QuUG9kRml4ZWRFbnRyeVIIcG9kRml4ZWQaZAoNUG9kRml4ZWRFbnRyeRIQCgNrZXkYASABKAlS'
    'A2tleRI9CgV2YWx1ZRgCIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW'
    '50aXR5UgV2YWx1ZToCOAE=');

@$core.Deprecated('Use runtimeClassDescriptor instead')
const RuntimeClass$json = {
  '1': 'RuntimeClass',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'handler', '3': 2, '4': 1, '5': 9, '10': 'handler'},
    {'1': 'overhead', '3': 3, '4': 1, '5': 11, '6': '.api.node.v1beta1.Overhead', '10': 'overhead'},
    {'1': 'scheduling', '3': 4, '4': 1, '5': 11, '6': '.api.node.v1beta1.Scheduling', '10': 'scheduling'},
  ],
};

/// Descriptor for `RuntimeClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runtimeClassDescriptor = $convert.base64Decode(
    'CgxSdW50aW1lQ2xhc3MSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaX'
    'MubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIYCgdoYW5kbGVyGAIgASgJUgdoYW5kbGVy'
    'EjYKCG92ZXJoZWFkGAMgASgLMhouYXBpLm5vZGUudjFiZXRhMS5PdmVyaGVhZFIIb3ZlcmhlYW'
    'QSPAoKc2NoZWR1bGluZxgEIAEoCzIcLmFwaS5ub2RlLnYxYmV0YTEuU2NoZWR1bGluZ1IKc2No'
    'ZWR1bGluZw==');

@$core.Deprecated('Use runtimeClassListDescriptor instead')
const RuntimeClassList$json = {
  '1': 'RuntimeClassList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.node.v1beta1.RuntimeClass', '10': 'items'},
  ],
};

/// Descriptor for `RuntimeClassList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List runtimeClassListDescriptor = $convert.base64Decode(
    'ChBSdW50aW1lQ2xhc3NMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjQKBWl0ZW1zGAIgAygLMh4uYXBpLm5v'
    'ZGUudjFiZXRhMS5SdW50aW1lQ2xhc3NSBWl0ZW1z');

@$core.Deprecated('Use schedulingDescriptor instead')
const Scheduling$json = {
  '1': 'Scheduling',
  '2': [
    {'1': 'nodeSelector', '3': 1, '4': 3, '5': 11, '6': '.api.node.v1beta1.Scheduling.NodeSelectorEntry', '10': 'nodeSelector'},
    {'1': 'tolerations', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Toleration', '10': 'tolerations'},
  ],
  '3': [Scheduling_NodeSelectorEntry$json],
};

@$core.Deprecated('Use schedulingDescriptor instead')
const Scheduling_NodeSelectorEntry$json = {
  '1': 'NodeSelectorEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Scheduling`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List schedulingDescriptor = $convert.base64Decode(
    'CgpTY2hlZHVsaW5nElIKDG5vZGVTZWxlY3RvchgBIAMoCzIuLmFwaS5ub2RlLnYxYmV0YTEuU2'
    'NoZWR1bGluZy5Ob2RlU2VsZWN0b3JFbnRyeVIMbm9kZVNlbGVjdG9yEjkKC3RvbGVyYXRpb25z'
    'GAIgAygLMhcuYXBpLmNvcmUudjEuVG9sZXJhdGlvblILdG9sZXJhdGlvbnMaPwoRTm9kZVNlbG'
    'VjdG9yRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

