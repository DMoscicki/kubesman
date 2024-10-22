//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/apis/meta/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aPIGroupDescriptor instead')
const APIGroup$json = {
  '1': 'APIGroup',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'versions', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionForDiscovery', '10': 'versions'},
    {'1': 'preferredVersion', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionForDiscovery', '10': 'preferredVersion'},
    {'1': 'serverAddressByClientCIDRs', '3': 4, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ServerAddressByClientCIDR', '10': 'serverAddressByClientCIDRs'},
  ],
};

/// Descriptor for `APIGroup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIGroupDescriptor = $convert.base64Decode(
    'CghBUElHcm91cBISCgRuYW1lGAEgASgJUgRuYW1lElMKCHZlcnNpb25zGAIgAygLMjcuYXBpbW'
    'FjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuR3JvdXBWZXJzaW9uRm9yRGlzY292ZXJ5Ugh2ZXJz'
    'aW9ucxJjChBwcmVmZXJyZWRWZXJzaW9uGAMgASgLMjcuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuR3JvdXBWZXJzaW9uRm9yRGlzY292ZXJ5UhBwcmVmZXJyZWRWZXJzaW9uEngKGnNl'
    'cnZlckFkZHJlc3NCeUNsaWVudENJRFJzGAQgAygLMjguYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuU2VydmVyQWRkcmVzc0J5Q2xpZW50Q0lEUlIac2VydmVyQWRkcmVzc0J5Q2xpZW50'
    'Q0lEUnM=');

@$core.Deprecated('Use aPIGroupListDescriptor instead')
const APIGroupList$json = {
  '1': 'APIGroupList',
  '2': [
    {'1': 'groups', '3': 1, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.APIGroup', '10': 'groups'},
  ],
};

/// Descriptor for `APIGroupList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIGroupListDescriptor = $convert.base64Decode(
    'CgxBUElHcm91cExpc3QSPwoGZ3JvdXBzGAEgAygLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuQVBJR3JvdXBSBmdyb3Vwcw==');

@$core.Deprecated('Use aPIResourceDescriptor instead')
const APIResource$json = {
  '1': 'APIResource',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'singularName', '3': 6, '4': 1, '5': 9, '10': 'singularName'},
    {'1': 'namespaced', '3': 2, '4': 1, '5': 8, '10': 'namespaced'},
    {'1': 'group', '3': 8, '4': 1, '5': 9, '10': 'group'},
    {'1': 'version', '3': 9, '4': 1, '5': 9, '10': 'version'},
    {'1': 'kind', '3': 3, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'verbs', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Verbs', '10': 'verbs'},
    {'1': 'shortNames', '3': 5, '4': 3, '5': 9, '10': 'shortNames'},
    {'1': 'categories', '3': 7, '4': 3, '5': 9, '10': 'categories'},
    {'1': 'storageVersionHash', '3': 10, '4': 1, '5': 9, '10': 'storageVersionHash'},
  ],
};

/// Descriptor for `APIResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIResourceDescriptor = $convert.base64Decode(
    'CgtBUElSZXNvdXJjZRISCgRuYW1lGAEgASgJUgRuYW1lEiIKDHNpbmd1bGFyTmFtZRgGIAEoCV'
    'IMc2luZ3VsYXJOYW1lEh4KCm5hbWVzcGFjZWQYAiABKAhSCm5hbWVzcGFjZWQSFAoFZ3JvdXAY'
    'CCABKAlSBWdyb3VwEhgKB3ZlcnNpb24YCSABKAlSB3ZlcnNpb24SEgoEa2luZBgDIAEoCVIEa2'
    'luZBI6CgV2ZXJicxgEIAEoCzIkLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLlZlcmJz'
    'UgV2ZXJicxIeCgpzaG9ydE5hbWVzGAUgAygJUgpzaG9ydE5hbWVzEh4KCmNhdGVnb3JpZXMYBy'
    'ADKAlSCmNhdGVnb3JpZXMSLgoSc3RvcmFnZVZlcnNpb25IYXNoGAogASgJUhJzdG9yYWdlVmVy'
    'c2lvbkhhc2g=');

@$core.Deprecated('Use aPIResourceListDescriptor instead')
const APIResourceList$json = {
  '1': 'APIResourceList',
  '2': [
    {'1': 'groupVersion', '3': 1, '4': 1, '5': 9, '10': 'groupVersion'},
    {'1': 'resources', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.APIResource', '10': 'resources'},
  ],
};

/// Descriptor for `APIResourceList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIResourceListDescriptor = $convert.base64Decode(
    'Cg9BUElSZXNvdXJjZUxpc3QSIgoMZ3JvdXBWZXJzaW9uGAEgASgJUgxncm91cFZlcnNpb24SSA'
    'oJcmVzb3VyY2VzGAIgAygLMiouYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuQVBJUmVz'
    'b3VyY2VSCXJlc291cmNlcw==');

@$core.Deprecated('Use aPIVersionsDescriptor instead')
const APIVersions$json = {
  '1': 'APIVersions',
  '2': [
    {'1': 'versions', '3': 1, '4': 3, '5': 9, '10': 'versions'},
    {'1': 'serverAddressByClientCIDRs', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ServerAddressByClientCIDR', '10': 'serverAddressByClientCIDRs'},
  ],
};

/// Descriptor for `APIVersions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aPIVersionsDescriptor = $convert.base64Decode(
    'CgtBUElWZXJzaW9ucxIaCgh2ZXJzaW9ucxgBIAMoCVIIdmVyc2lvbnMSeAoac2VydmVyQWRkcm'
    'Vzc0J5Q2xpZW50Q0lEUnMYAiADKAsyOC5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5T'
    'ZXJ2ZXJBZGRyZXNzQnlDbGllbnRDSURSUhpzZXJ2ZXJBZGRyZXNzQnlDbGllbnRDSURScw==');

@$core.Deprecated('Use applyOptionsDescriptor instead')
const ApplyOptions$json = {
  '1': 'ApplyOptions',
  '2': [
    {'1': 'dryRun', '3': 1, '4': 3, '5': 9, '10': 'dryRun'},
    {'1': 'force', '3': 2, '4': 1, '5': 8, '10': 'force'},
    {'1': 'fieldManager', '3': 3, '4': 1, '5': 9, '10': 'fieldManager'},
  ],
};

/// Descriptor for `ApplyOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List applyOptionsDescriptor = $convert.base64Decode(
    'CgxBcHBseU9wdGlvbnMSFgoGZHJ5UnVuGAEgAygJUgZkcnlSdW4SFAoFZm9yY2UYAiABKAhSBW'
    'ZvcmNlEiIKDGZpZWxkTWFuYWdlchgDIAEoCVIMZmllbGRNYW5hZ2Vy');

@$core.Deprecated('Use conditionDescriptor instead')
const Condition$json = {
  '1': 'Condition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'observedGeneration', '3': 3, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'lastTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `Condition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conditionDescriptor = $convert.base64Decode(
    'CglDb25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCgZzdGF0dXMYAiABKAlSBnN0YXR1cx'
    'IuChJvYnNlcnZlZEdlbmVyYXRpb24YAyABKANSEm9ic2VydmVkR2VuZXJhdGlvbhJTChJsYXN0'
    'VHJhbnNpdGlvblRpbWUYBCABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW'
    '1lUhJsYXN0VHJhbnNpdGlvblRpbWUSFgoGcmVhc29uGAUgASgJUgZyZWFzb24SGAoHbWVzc2Fn'
    'ZRgGIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use createOptionsDescriptor instead')
const CreateOptions$json = {
  '1': 'CreateOptions',
  '2': [
    {'1': 'dryRun', '3': 1, '4': 3, '5': 9, '10': 'dryRun'},
    {'1': 'fieldManager', '3': 3, '4': 1, '5': 9, '10': 'fieldManager'},
    {'1': 'fieldValidation', '3': 4, '4': 1, '5': 9, '10': 'fieldValidation'},
  ],
};

/// Descriptor for `CreateOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createOptionsDescriptor = $convert.base64Decode(
    'Cg1DcmVhdGVPcHRpb25zEhYKBmRyeVJ1bhgBIAMoCVIGZHJ5UnVuEiIKDGZpZWxkTWFuYWdlch'
    'gDIAEoCVIMZmllbGRNYW5hZ2VyEigKD2ZpZWxkVmFsaWRhdGlvbhgEIAEoCVIPZmllbGRWYWxp'
    'ZGF0aW9u');

@$core.Deprecated('Use deleteOptionsDescriptor instead')
const DeleteOptions$json = {
  '1': 'DeleteOptions',
  '2': [
    {'1': 'gracePeriodSeconds', '3': 1, '4': 1, '5': 3, '10': 'gracePeriodSeconds'},
    {'1': 'preconditions', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Preconditions', '10': 'preconditions'},
    {'1': 'orphanDependents', '3': 3, '4': 1, '5': 8, '10': 'orphanDependents'},
    {'1': 'propagationPolicy', '3': 4, '4': 1, '5': 9, '10': 'propagationPolicy'},
    {'1': 'dryRun', '3': 5, '4': 3, '5': 9, '10': 'dryRun'},
  ],
};

/// Descriptor for `DeleteOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteOptionsDescriptor = $convert.base64Decode(
    'Cg1EZWxldGVPcHRpb25zEi4KEmdyYWNlUGVyaW9kU2Vjb25kcxgBIAEoA1ISZ3JhY2VQZXJpb2'
    'RTZWNvbmRzElIKDXByZWNvbmRpdGlvbnMYAiABKAsyLC5hcGltYWNoaW5lcnkucGtnLmFwaXMu'
    'bWV0YS52MS5QcmVjb25kaXRpb25zUg1wcmVjb25kaXRpb25zEioKEG9ycGhhbkRlcGVuZGVudH'
    'MYAyABKAhSEG9ycGhhbkRlcGVuZGVudHMSLAoRcHJvcGFnYXRpb25Qb2xpY3kYBCABKAlSEXBy'
    'b3BhZ2F0aW9uUG9saWN5EhYKBmRyeVJ1bhgFIAMoCVIGZHJ5UnVu');

@$core.Deprecated('Use durationDescriptor instead')
const Duration$json = {
  '1': 'Duration',
  '2': [
    {'1': 'duration', '3': 1, '4': 1, '5': 3, '10': 'duration'},
  ],
};

/// Descriptor for `Duration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List durationDescriptor = $convert.base64Decode(
    'CghEdXJhdGlvbhIaCghkdXJhdGlvbhgBIAEoA1IIZHVyYXRpb24=');

@$core.Deprecated('Use fieldsV1Descriptor instead')
const FieldsV1$json = {
  '1': 'FieldsV1',
  '2': [
    {'1': 'Raw', '3': 1, '4': 1, '5': 12, '10': 'Raw'},
  ],
};

/// Descriptor for `FieldsV1`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fieldsV1Descriptor = $convert.base64Decode(
    'CghGaWVsZHNWMRIQCgNSYXcYASABKAxSA1Jhdw==');

@$core.Deprecated('Use getOptionsDescriptor instead')
const GetOptions$json = {
  '1': 'GetOptions',
  '2': [
    {'1': 'resourceVersion', '3': 1, '4': 1, '5': 9, '10': 'resourceVersion'},
  ],
};

/// Descriptor for `GetOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getOptionsDescriptor = $convert.base64Decode(
    'CgpHZXRPcHRpb25zEigKD3Jlc291cmNlVmVyc2lvbhgBIAEoCVIPcmVzb3VyY2VWZXJzaW9u');

@$core.Deprecated('Use groupKindDescriptor instead')
const GroupKind$json = {
  '1': 'GroupKind',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
  ],
};

/// Descriptor for `GroupKind`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupKindDescriptor = $convert.base64Decode(
    'CglHcm91cEtpbmQSFAoFZ3JvdXAYASABKAlSBWdyb3VwEhIKBGtpbmQYAiABKAlSBGtpbmQ=');

@$core.Deprecated('Use groupResourceDescriptor instead')
const GroupResource$json = {
  '1': 'GroupResource',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'resource', '3': 2, '4': 1, '5': 9, '10': 'resource'},
  ],
};

/// Descriptor for `GroupResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupResourceDescriptor = $convert.base64Decode(
    'Cg1Hcm91cFJlc291cmNlEhQKBWdyb3VwGAEgASgJUgVncm91cBIaCghyZXNvdXJjZRgCIAEoCV'
    'IIcmVzb3VyY2U=');

@$core.Deprecated('Use groupVersionDescriptor instead')
const GroupVersion$json = {
  '1': 'GroupVersion',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `GroupVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupVersionDescriptor = $convert.base64Decode(
    'CgxHcm91cFZlcnNpb24SFAoFZ3JvdXAYASABKAlSBWdyb3VwEhgKB3ZlcnNpb24YAiABKAlSB3'
    'ZlcnNpb24=');

@$core.Deprecated('Use groupVersionForDiscoveryDescriptor instead')
const GroupVersionForDiscovery$json = {
  '1': 'GroupVersionForDiscovery',
  '2': [
    {'1': 'groupVersion', '3': 1, '4': 1, '5': 9, '10': 'groupVersion'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
  ],
};

/// Descriptor for `GroupVersionForDiscovery`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupVersionForDiscoveryDescriptor = $convert.base64Decode(
    'ChhHcm91cFZlcnNpb25Gb3JEaXNjb3ZlcnkSIgoMZ3JvdXBWZXJzaW9uGAEgASgJUgxncm91cF'
    'ZlcnNpb24SGAoHdmVyc2lvbhgCIAEoCVIHdmVyc2lvbg==');

@$core.Deprecated('Use groupVersionKindDescriptor instead')
const GroupVersionKind$json = {
  '1': 'GroupVersionKind',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'kind', '3': 3, '4': 1, '5': 9, '10': 'kind'},
  ],
};

/// Descriptor for `GroupVersionKind`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupVersionKindDescriptor = $convert.base64Decode(
    'ChBHcm91cFZlcnNpb25LaW5kEhQKBWdyb3VwGAEgASgJUgVncm91cBIYCgd2ZXJzaW9uGAIgAS'
    'gJUgd2ZXJzaW9uEhIKBGtpbmQYAyABKAlSBGtpbmQ=');

@$core.Deprecated('Use groupVersionResourceDescriptor instead')
const GroupVersionResource$json = {
  '1': 'GroupVersionResource',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'resource', '3': 3, '4': 1, '5': 9, '10': 'resource'},
  ],
};

/// Descriptor for `GroupVersionResource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupVersionResourceDescriptor = $convert.base64Decode(
    'ChRHcm91cFZlcnNpb25SZXNvdXJjZRIUCgVncm91cBgBIAEoCVIFZ3JvdXASGAoHdmVyc2lvbh'
    'gCIAEoCVIHdmVyc2lvbhIaCghyZXNvdXJjZRgDIAEoCVIIcmVzb3VyY2U=');

@$core.Deprecated('Use labelSelectorDescriptor instead')
const LabelSelector$json = {
  '1': 'LabelSelector',
  '2': [
    {'1': 'matchLabels', '3': 1, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector.MatchLabelsEntry', '10': 'matchLabels'},
    {'1': 'matchExpressions', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelectorRequirement', '10': 'matchExpressions'},
  ],
  '3': [LabelSelector_MatchLabelsEntry$json],
};

@$core.Deprecated('Use labelSelectorDescriptor instead')
const LabelSelector_MatchLabelsEntry$json = {
  '1': 'MatchLabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `LabelSelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelSelectorDescriptor = $convert.base64Decode(
    'Cg1MYWJlbFNlbGVjdG9yEl8KC21hdGNoTGFiZWxzGAEgAygLMj0uYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuTGFiZWxTZWxlY3Rvci5NYXRjaExhYmVsc0VudHJ5UgttYXRjaExhYmVs'
    'cxJjChBtYXRjaEV4cHJlc3Npb25zGAIgAygLMjcuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuTGFiZWxTZWxlY3RvclJlcXVpcmVtZW50UhBtYXRjaEV4cHJlc3Npb25zGj4KEE1hdGNo'
    'TGFiZWxzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ'
    '==');

@$core.Deprecated('Use labelSelectorRequirementDescriptor instead')
const LabelSelectorRequirement$json = {
  '1': 'LabelSelectorRequirement',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'operator', '3': 2, '4': 1, '5': 9, '10': 'operator'},
    {'1': 'values', '3': 3, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `LabelSelectorRequirement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelSelectorRequirementDescriptor = $convert.base64Decode(
    'ChhMYWJlbFNlbGVjdG9yUmVxdWlyZW1lbnQSEAoDa2V5GAEgASgJUgNrZXkSGgoIb3BlcmF0b3'
    'IYAiABKAlSCG9wZXJhdG9yEhYKBnZhbHVlcxgDIAMoCVIGdmFsdWVz');

@$core.Deprecated('Use list_Descriptor instead')
const List_$json = {
  '1': 'List',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'items'},
  ],
};

/// Descriptor for `List`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List list_Descriptor = $convert.base64Decode(
    'CgRMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudj'
    'EuTGlzdE1ldGFSCG1ldGFkYXRhEjwKBWl0ZW1zGAIgAygLMiYuYXBpbWFjaGluZXJ5LnBrZy5y'
    'dW50aW1lLlJhd0V4dGVuc2lvblIFaXRlbXM=');

@$core.Deprecated('Use listMetaDescriptor instead')
const ListMeta$json = {
  '1': 'ListMeta',
  '2': [
    {'1': 'selfLink', '3': 1, '4': 1, '5': 9, '10': 'selfLink'},
    {'1': 'resourceVersion', '3': 2, '4': 1, '5': 9, '10': 'resourceVersion'},
    {'1': 'continue', '3': 3, '4': 1, '5': 9, '10': 'continue'},
    {'1': 'remainingItemCount', '3': 4, '4': 1, '5': 3, '10': 'remainingItemCount'},
  ],
};

/// Descriptor for `ListMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMetaDescriptor = $convert.base64Decode(
    'CghMaXN0TWV0YRIaCghzZWxmTGluaxgBIAEoCVIIc2VsZkxpbmsSKAoPcmVzb3VyY2VWZXJzaW'
    '9uGAIgASgJUg9yZXNvdXJjZVZlcnNpb24SGgoIY29udGludWUYAyABKAlSCGNvbnRpbnVlEi4K'
    'EnJlbWFpbmluZ0l0ZW1Db3VudBgEIAEoA1IScmVtYWluaW5nSXRlbUNvdW50');

@$core.Deprecated('Use listOptionsDescriptor instead')
const ListOptions$json = {
  '1': 'ListOptions',
  '2': [
    {'1': 'labelSelector', '3': 1, '4': 1, '5': 9, '10': 'labelSelector'},
    {'1': 'fieldSelector', '3': 2, '4': 1, '5': 9, '10': 'fieldSelector'},
    {'1': 'watch', '3': 3, '4': 1, '5': 8, '10': 'watch'},
    {'1': 'allowWatchBookmarks', '3': 9, '4': 1, '5': 8, '10': 'allowWatchBookmarks'},
    {'1': 'resourceVersion', '3': 4, '4': 1, '5': 9, '10': 'resourceVersion'},
    {'1': 'resourceVersionMatch', '3': 10, '4': 1, '5': 9, '10': 'resourceVersionMatch'},
    {'1': 'timeoutSeconds', '3': 5, '4': 1, '5': 3, '10': 'timeoutSeconds'},
    {'1': 'limit', '3': 7, '4': 1, '5': 3, '10': 'limit'},
    {'1': 'continue', '3': 8, '4': 1, '5': 9, '10': 'continue'},
    {'1': 'sendInitialEvents', '3': 11, '4': 1, '5': 8, '10': 'sendInitialEvents'},
  ],
};

/// Descriptor for `ListOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listOptionsDescriptor = $convert.base64Decode(
    'CgtMaXN0T3B0aW9ucxIkCg1sYWJlbFNlbGVjdG9yGAEgASgJUg1sYWJlbFNlbGVjdG9yEiQKDW'
    'ZpZWxkU2VsZWN0b3IYAiABKAlSDWZpZWxkU2VsZWN0b3ISFAoFd2F0Y2gYAyABKAhSBXdhdGNo'
    'EjAKE2FsbG93V2F0Y2hCb29rbWFya3MYCSABKAhSE2FsbG93V2F0Y2hCb29rbWFya3MSKAoPcm'
    'Vzb3VyY2VWZXJzaW9uGAQgASgJUg9yZXNvdXJjZVZlcnNpb24SMgoUcmVzb3VyY2VWZXJzaW9u'
    'TWF0Y2gYCiABKAlSFHJlc291cmNlVmVyc2lvbk1hdGNoEiYKDnRpbWVvdXRTZWNvbmRzGAUgAS'
    'gDUg50aW1lb3V0U2Vjb25kcxIUCgVsaW1pdBgHIAEoA1IFbGltaXQSGgoIY29udGludWUYCCAB'
    'KAlSCGNvbnRpbnVlEiwKEXNlbmRJbml0aWFsRXZlbnRzGAsgASgIUhFzZW5kSW5pdGlhbEV2ZW'
    '50cw==');

@$core.Deprecated('Use managedFieldsEntryDescriptor instead')
const ManagedFieldsEntry$json = {
  '1': 'ManagedFieldsEntry',
  '2': [
    {'1': 'manager', '3': 1, '4': 1, '5': 9, '10': 'manager'},
    {'1': 'operation', '3': 2, '4': 1, '5': 9, '10': 'operation'},
    {'1': 'apiVersion', '3': 3, '4': 1, '5': 9, '10': 'apiVersion'},
    {'1': 'time', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'time'},
    {'1': 'fieldsType', '3': 6, '4': 1, '5': 9, '10': 'fieldsType'},
    {'1': 'fieldsV1', '3': 7, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.FieldsV1', '10': 'fieldsV1'},
    {'1': 'subresource', '3': 8, '4': 1, '5': 9, '10': 'subresource'},
  ],
};

/// Descriptor for `ManagedFieldsEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List managedFieldsEntryDescriptor = $convert.base64Decode(
    'ChJNYW5hZ2VkRmllbGRzRW50cnkSGAoHbWFuYWdlchgBIAEoCVIHbWFuYWdlchIcCglvcGVyYX'
    'Rpb24YAiABKAlSCW9wZXJhdGlvbhIeCgphcGlWZXJzaW9uGAMgASgJUgphcGlWZXJzaW9uEjcK'
    'BHRpbWUYBCABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUgR0aW1lEh'
    '4KCmZpZWxkc1R5cGUYBiABKAlSCmZpZWxkc1R5cGUSQwoIZmllbGRzVjEYByABKAsyJy5hcGlt'
    'YWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5GaWVsZHNWMVIIZmllbGRzVjESIAoLc3VicmVzb3'
    'VyY2UYCCABKAlSC3N1YnJlc291cmNl');

@$core.Deprecated('Use microTimeDescriptor instead')
const MicroTime$json = {
  '1': 'MicroTime',
  '2': [
    {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

/// Descriptor for `MicroTime`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List microTimeDescriptor = $convert.base64Decode(
    'CglNaWNyb1RpbWUSGAoHc2Vjb25kcxgBIAEoA1IHc2Vjb25kcxIUCgVuYW5vcxgCIAEoBVIFbm'
    'Fub3M=');

@$core.Deprecated('Use objectMetaDescriptor instead')
const ObjectMeta$json = {
  '1': 'ObjectMeta',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'generateName', '3': 2, '4': 1, '5': 9, '10': 'generateName'},
    {'1': 'namespace', '3': 3, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'selfLink', '3': 4, '4': 1, '5': 9, '10': 'selfLink'},
    {'1': 'uid', '3': 5, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'resourceVersion', '3': 6, '4': 1, '5': 9, '10': 'resourceVersion'},
    {'1': 'generation', '3': 7, '4': 1, '5': 3, '10': 'generation'},
    {'1': 'creationTimestamp', '3': 8, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'creationTimestamp'},
    {'1': 'deletionTimestamp', '3': 9, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'deletionTimestamp'},
    {'1': 'deletionGracePeriodSeconds', '3': 10, '4': 1, '5': 3, '10': 'deletionGracePeriodSeconds'},
    {'1': 'labels', '3': 11, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta.LabelsEntry', '10': 'labels'},
    {'1': 'annotations', '3': 12, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta.AnnotationsEntry', '10': 'annotations'},
    {'1': 'ownerReferences', '3': 13, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.OwnerReference', '10': 'ownerReferences'},
    {'1': 'finalizers', '3': 14, '4': 3, '5': 9, '10': 'finalizers'},
    {'1': 'managedFields', '3': 17, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ManagedFieldsEntry', '10': 'managedFields'},
  ],
  '3': [ObjectMeta_LabelsEntry$json, ObjectMeta_AnnotationsEntry$json],
};

@$core.Deprecated('Use objectMetaDescriptor instead')
const ObjectMeta_LabelsEntry$json = {
  '1': 'LabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use objectMetaDescriptor instead')
const ObjectMeta_AnnotationsEntry$json = {
  '1': 'AnnotationsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ObjectMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectMetaDescriptor = $convert.base64Decode(
    'CgpPYmplY3RNZXRhEhIKBG5hbWUYASABKAlSBG5hbWUSIgoMZ2VuZXJhdGVOYW1lGAIgASgJUg'
    'xnZW5lcmF0ZU5hbWUSHAoJbmFtZXNwYWNlGAMgASgJUgluYW1lc3BhY2USGgoIc2VsZkxpbmsY'
    'BCABKAlSCHNlbGZMaW5rEhAKA3VpZBgFIAEoCVIDdWlkEigKD3Jlc291cmNlVmVyc2lvbhgGIA'
    'EoCVIPcmVzb3VyY2VWZXJzaW9uEh4KCmdlbmVyYXRpb24YByABKANSCmdlbmVyYXRpb24SUQoR'
    'Y3JlYXRpb25UaW1lc3RhbXAYCCABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS'
    '5UaW1lUhFjcmVhdGlvblRpbWVzdGFtcBJRChFkZWxldGlvblRpbWVzdGFtcBgJIAEoCzIjLmFw'
    'aW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLlRpbWVSEWRlbGV0aW9uVGltZXN0YW1wEj4KGm'
    'RlbGV0aW9uR3JhY2VQZXJpb2RTZWNvbmRzGAogASgDUhpkZWxldGlvbkdyYWNlUGVyaW9kU2Vj'
    'b25kcxJNCgZsYWJlbHMYCyADKAsyNS5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5PYm'
    'plY3RNZXRhLkxhYmVsc0VudHJ5UgZsYWJlbHMSXAoLYW5ub3RhdGlvbnMYDCADKAsyOi5hcGlt'
    'YWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhLkFubm90YXRpb25zRW50cnlSC2'
    'Fubm90YXRpb25zElcKD293bmVyUmVmZXJlbmNlcxgNIAMoCzItLmFwaW1hY2hpbmVyeS5wa2cu'
    'YXBpcy5tZXRhLnYxLk93bmVyUmVmZXJlbmNlUg9vd25lclJlZmVyZW5jZXMSHgoKZmluYWxpem'
    'VycxgOIAMoCVIKZmluYWxpemVycxJXCg1tYW5hZ2VkRmllbGRzGBEgAygLMjEuYXBpbWFjaGlu'
    'ZXJ5LnBrZy5hcGlzLm1ldGEudjEuTWFuYWdlZEZpZWxkc0VudHJ5Ug1tYW5hZ2VkRmllbGRzGj'
    'kKC0xhYmVsc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToC'
    'OAEaPgoQQW5ub3RhdGlvbnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCV'
    'IFdmFsdWU6AjgB');

@$core.Deprecated('Use ownerReferenceDescriptor instead')
const OwnerReference$json = {
  '1': 'OwnerReference',
  '2': [
    {'1': 'apiVersion', '3': 5, '4': 1, '5': 9, '10': 'apiVersion'},
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'controller', '3': 6, '4': 1, '5': 8, '10': 'controller'},
    {'1': 'blockOwnerDeletion', '3': 7, '4': 1, '5': 8, '10': 'blockOwnerDeletion'},
  ],
};

/// Descriptor for `OwnerReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ownerReferenceDescriptor = $convert.base64Decode(
    'Cg5Pd25lclJlZmVyZW5jZRIeCgphcGlWZXJzaW9uGAUgASgJUgphcGlWZXJzaW9uEhIKBGtpbm'
    'QYASABKAlSBGtpbmQSEgoEbmFtZRgDIAEoCVIEbmFtZRIQCgN1aWQYBCABKAlSA3VpZBIeCgpj'
    'b250cm9sbGVyGAYgASgIUgpjb250cm9sbGVyEi4KEmJsb2NrT3duZXJEZWxldGlvbhgHIAEoCF'
    'ISYmxvY2tPd25lckRlbGV0aW9u');

@$core.Deprecated('Use partialObjectMetadataDescriptor instead')
const PartialObjectMetadata$json = {
  '1': 'PartialObjectMetadata',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
  ],
};

/// Descriptor for `PartialObjectMetadata`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partialObjectMetadataDescriptor = $convert.base64Decode(
    'ChVQYXJ0aWFsT2JqZWN0TWV0YWRhdGESRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcn'
    'kucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YQ==');

@$core.Deprecated('Use partialObjectMetadataListDescriptor instead')
const PartialObjectMetadataList$json = {
  '1': 'PartialObjectMetadataList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.PartialObjectMetadata', '10': 'items'},
  ],
};

/// Descriptor for `PartialObjectMetadataList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List partialObjectMetadataListDescriptor = $convert.base64Decode(
    'ChlQYXJ0aWFsT2JqZWN0TWV0YWRhdGFMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEkoKBWl0ZW1zGAIgAygL'
    'MjQuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuUGFydGlhbE9iamVjdE1ldGFkYXRhUg'
    'VpdGVtcw==');

@$core.Deprecated('Use patchDescriptor instead')
const Patch$json = {
  '1': 'Patch',
};

/// Descriptor for `Patch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patchDescriptor = $convert.base64Decode(
    'CgVQYXRjaA==');

@$core.Deprecated('Use patchOptionsDescriptor instead')
const PatchOptions$json = {
  '1': 'PatchOptions',
  '2': [
    {'1': 'dryRun', '3': 1, '4': 3, '5': 9, '10': 'dryRun'},
    {'1': 'force', '3': 2, '4': 1, '5': 8, '10': 'force'},
    {'1': 'fieldManager', '3': 3, '4': 1, '5': 9, '10': 'fieldManager'},
    {'1': 'fieldValidation', '3': 4, '4': 1, '5': 9, '10': 'fieldValidation'},
  ],
};

/// Descriptor for `PatchOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List patchOptionsDescriptor = $convert.base64Decode(
    'CgxQYXRjaE9wdGlvbnMSFgoGZHJ5UnVuGAEgAygJUgZkcnlSdW4SFAoFZm9yY2UYAiABKAhSBW'
    'ZvcmNlEiIKDGZpZWxkTWFuYWdlchgDIAEoCVIMZmllbGRNYW5hZ2VyEigKD2ZpZWxkVmFsaWRh'
    'dGlvbhgEIAEoCVIPZmllbGRWYWxpZGF0aW9u');

@$core.Deprecated('Use preconditionsDescriptor instead')
const Preconditions$json = {
  '1': 'Preconditions',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'resourceVersion', '3': 2, '4': 1, '5': 9, '10': 'resourceVersion'},
  ],
};

/// Descriptor for `Preconditions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preconditionsDescriptor = $convert.base64Decode(
    'Cg1QcmVjb25kaXRpb25zEhAKA3VpZBgBIAEoCVIDdWlkEigKD3Jlc291cmNlVmVyc2lvbhgCIA'
    'EoCVIPcmVzb3VyY2VWZXJzaW9u');

@$core.Deprecated('Use rootPathsDescriptor instead')
const RootPaths$json = {
  '1': 'RootPaths',
  '2': [
    {'1': 'paths', '3': 1, '4': 3, '5': 9, '10': 'paths'},
  ],
};

/// Descriptor for `RootPaths`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rootPathsDescriptor = $convert.base64Decode(
    'CglSb290UGF0aHMSFAoFcGF0aHMYASADKAlSBXBhdGhz');

@$core.Deprecated('Use serverAddressByClientCIDRDescriptor instead')
const ServerAddressByClientCIDR$json = {
  '1': 'ServerAddressByClientCIDR',
  '2': [
    {'1': 'clientCIDR', '3': 1, '4': 1, '5': 9, '10': 'clientCIDR'},
    {'1': 'serverAddress', '3': 2, '4': 1, '5': 9, '10': 'serverAddress'},
  ],
};

/// Descriptor for `ServerAddressByClientCIDR`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverAddressByClientCIDRDescriptor = $convert.base64Decode(
    'ChlTZXJ2ZXJBZGRyZXNzQnlDbGllbnRDSURSEh4KCmNsaWVudENJRFIYASABKAlSCmNsaWVudE'
    'NJRFISJAoNc2VydmVyQWRkcmVzcxgCIAEoCVINc2VydmVyQWRkcmVzcw==');

@$core.Deprecated('Use statusDescriptor instead')
const Status$json = {
  '1': 'Status',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'details', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.StatusDetails', '10': 'details'},
    {'1': 'code', '3': 6, '4': 1, '5': 5, '10': 'code'},
  ],
};

/// Descriptor for `Status`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDescriptor = $convert.base64Decode(
    'CgZTdGF0dXMSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS'
    '52MS5MaXN0TWV0YVIIbWV0YWRhdGESFgoGc3RhdHVzGAIgASgJUgZzdGF0dXMSGAoHbWVzc2Fn'
    'ZRgDIAEoCVIHbWVzc2FnZRIWCgZyZWFzb24YBCABKAlSBnJlYXNvbhJGCgdkZXRhaWxzGAUgAS'
    'gLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuU3RhdHVzRGV0YWlsc1IHZGV0YWls'
    'cxISCgRjb2RlGAYgASgFUgRjb2Rl');

@$core.Deprecated('Use statusCauseDescriptor instead')
const StatusCause$json = {
  '1': 'StatusCause',
  '2': [
    {'1': 'reason', '3': 1, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'field', '3': 3, '4': 1, '5': 9, '10': 'field'},
  ],
};

/// Descriptor for `StatusCause`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusCauseDescriptor = $convert.base64Decode(
    'CgtTdGF0dXNDYXVzZRIWCgZyZWFzb24YASABKAlSBnJlYXNvbhIYCgdtZXNzYWdlGAIgASgJUg'
    'dtZXNzYWdlEhQKBWZpZWxkGAMgASgJUgVmaWVsZA==');

@$core.Deprecated('Use statusDetailsDescriptor instead')
const StatusDetails$json = {
  '1': 'StatusDetails',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'group', '3': 2, '4': 1, '5': 9, '10': 'group'},
    {'1': 'kind', '3': 3, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'uid', '3': 6, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'causes', '3': 4, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.StatusCause', '10': 'causes'},
    {'1': 'retryAfterSeconds', '3': 5, '4': 1, '5': 5, '10': 'retryAfterSeconds'},
  ],
};

/// Descriptor for `StatusDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusDetailsDescriptor = $convert.base64Decode(
    'Cg1TdGF0dXNEZXRhaWxzEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFZ3JvdXAYAiABKAlSBWdyb3'
    'VwEhIKBGtpbmQYAyABKAlSBGtpbmQSEAoDdWlkGAYgASgJUgN1aWQSQgoGY2F1c2VzGAQgAygL'
    'MiouYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuU3RhdHVzQ2F1c2VSBmNhdXNlcxIsCh'
    'FyZXRyeUFmdGVyU2Vjb25kcxgFIAEoBVIRcmV0cnlBZnRlclNlY29uZHM=');

@$core.Deprecated('Use tableOptionsDescriptor instead')
const TableOptions$json = {
  '1': 'TableOptions',
  '2': [
    {'1': 'includeObject', '3': 1, '4': 1, '5': 9, '10': 'includeObject'},
  ],
};

/// Descriptor for `TableOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tableOptionsDescriptor = $convert.base64Decode(
    'CgxUYWJsZU9wdGlvbnMSJAoNaW5jbHVkZU9iamVjdBgBIAEoCVINaW5jbHVkZU9iamVjdA==');

@$core.Deprecated('Use timeDescriptor instead')
const Time$json = {
  '1': 'Time',
  '2': [
    {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

/// Descriptor for `Time`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timeDescriptor = $convert.base64Decode(
    'CgRUaW1lEhgKB3NlY29uZHMYASABKANSB3NlY29uZHMSFAoFbmFub3MYAiABKAVSBW5hbm9z');

@$core.Deprecated('Use timestampDescriptor instead')
const Timestamp$json = {
  '1': 'Timestamp',
  '2': [
    {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
    {'1': 'nanos', '3': 2, '4': 1, '5': 5, '10': 'nanos'},
  ],
};

/// Descriptor for `Timestamp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampDescriptor = $convert.base64Decode(
    'CglUaW1lc3RhbXASGAoHc2Vjb25kcxgBIAEoA1IHc2Vjb25kcxIUCgVuYW5vcxgCIAEoBVIFbm'
    'Fub3M=');

@$core.Deprecated('Use typeMetaDescriptor instead')
const TypeMeta$json = {
  '1': 'TypeMeta',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'apiVersion', '3': 2, '4': 1, '5': 9, '10': 'apiVersion'},
  ],
};

/// Descriptor for `TypeMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeMetaDescriptor = $convert.base64Decode(
    'CghUeXBlTWV0YRISCgRraW5kGAEgASgJUgRraW5kEh4KCmFwaVZlcnNpb24YAiABKAlSCmFwaV'
    'ZlcnNpb24=');

@$core.Deprecated('Use updateOptionsDescriptor instead')
const UpdateOptions$json = {
  '1': 'UpdateOptions',
  '2': [
    {'1': 'dryRun', '3': 1, '4': 3, '5': 9, '10': 'dryRun'},
    {'1': 'fieldManager', '3': 2, '4': 1, '5': 9, '10': 'fieldManager'},
    {'1': 'fieldValidation', '3': 3, '4': 1, '5': 9, '10': 'fieldValidation'},
  ],
};

/// Descriptor for `UpdateOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List updateOptionsDescriptor = $convert.base64Decode(
    'Cg1VcGRhdGVPcHRpb25zEhYKBmRyeVJ1bhgBIAMoCVIGZHJ5UnVuEiIKDGZpZWxkTWFuYWdlch'
    'gCIAEoCVIMZmllbGRNYW5hZ2VyEigKD2ZpZWxkVmFsaWRhdGlvbhgDIAEoCVIPZmllbGRWYWxp'
    'ZGF0aW9u');

@$core.Deprecated('Use verbsDescriptor instead')
const Verbs$json = {
  '1': 'Verbs',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

/// Descriptor for `Verbs`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verbsDescriptor = $convert.base64Decode(
    'CgVWZXJicxIUCgVpdGVtcxgBIAMoCVIFaXRlbXM=');

@$core.Deprecated('Use watchEventDescriptor instead')
const WatchEvent$json = {
  '1': 'WatchEvent',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'object', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'object'},
  ],
};

/// Descriptor for `WatchEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List watchEventDescriptor = $convert.base64Decode(
    'CgpXYXRjaEV2ZW50EhIKBHR5cGUYASABKAlSBHR5cGUSPgoGb2JqZWN0GAIgASgLMiYuYXBpbW'
    'FjaGluZXJ5LnBrZy5ydW50aW1lLlJhd0V4dGVuc2lvblIGb2JqZWN0');

