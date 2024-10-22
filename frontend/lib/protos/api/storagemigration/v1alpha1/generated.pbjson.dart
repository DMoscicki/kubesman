//
//  Generated code. Do not modify.
//  source: api/storagemigration/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

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

@$core.Deprecated('Use migrationConditionDescriptor instead')
const MigrationCondition$json = {
  '1': 'MigrationCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastUpdateTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastUpdateTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `MigrationCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List migrationConditionDescriptor = $convert.base64Decode(
    'ChJNaWdyYXRpb25Db25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCgZzdGF0dXMYAiABKA'
    'lSBnN0YXR1cxJLCg5sYXN0VXBkYXRlVGltZRgDIAEoCzIjLmFwaW1hY2hpbmVyeS5wa2cuYXBp'
    'cy5tZXRhLnYxLlRpbWVSDmxhc3RVcGRhdGVUaW1lEhYKBnJlYXNvbhgEIAEoCVIGcmVhc29uEh'
    'gKB21lc3NhZ2UYBSABKAlSB21lc3NhZ2U=');

@$core.Deprecated('Use storageVersionMigrationDescriptor instead')
const StorageVersionMigration$json = {
  '1': 'StorageVersionMigration',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.storagemigration.v1alpha1.StorageVersionMigrationSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.storagemigration.v1alpha1.StorageVersionMigrationStatus', '10': 'status'},
  ],
};

/// Descriptor for `StorageVersionMigration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionMigrationDescriptor = $convert.base64Decode(
    'ChdTdG9yYWdlVmVyc2lvbk1pZ3JhdGlvbhJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEk4KBHNwZWMYAiABKAsy'
    'Oi5hcGkuc3RvcmFnZW1pZ3JhdGlvbi52MWFscGhhMS5TdG9yYWdlVmVyc2lvbk1pZ3JhdGlvbl'
    'NwZWNSBHNwZWMSVAoGc3RhdHVzGAMgASgLMjwuYXBpLnN0b3JhZ2VtaWdyYXRpb24udjFhbHBo'
    'YTEuU3RvcmFnZVZlcnNpb25NaWdyYXRpb25TdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use storageVersionMigrationListDescriptor instead')
const StorageVersionMigrationList$json = {
  '1': 'StorageVersionMigrationList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storagemigration.v1alpha1.StorageVersionMigration', '10': 'items'},
  ],
};

/// Descriptor for `StorageVersionMigrationList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionMigrationListDescriptor = $convert.base64Decode(
    'ChtTdG9yYWdlVmVyc2lvbk1pZ3JhdGlvbkxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYW'
    'NoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESTAoFaXRlbXMYAiAD'
    'KAsyNi5hcGkuc3RvcmFnZW1pZ3JhdGlvbi52MWFscGhhMS5TdG9yYWdlVmVyc2lvbk1pZ3JhdG'
    'lvblIFaXRlbXM=');

@$core.Deprecated('Use storageVersionMigrationSpecDescriptor instead')
const StorageVersionMigrationSpec$json = {
  '1': 'StorageVersionMigrationSpec',
  '2': [
    {'1': 'resource', '3': 1, '4': 1, '5': 11, '6': '.api.storagemigration.v1alpha1.GroupVersionResource', '10': 'resource'},
    {'1': 'continueToken', '3': 2, '4': 1, '5': 9, '10': 'continueToken'},
  ],
};

/// Descriptor for `StorageVersionMigrationSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionMigrationSpecDescriptor = $convert.base64Decode(
    'ChtTdG9yYWdlVmVyc2lvbk1pZ3JhdGlvblNwZWMSTwoIcmVzb3VyY2UYASABKAsyMy5hcGkuc3'
    'RvcmFnZW1pZ3JhdGlvbi52MWFscGhhMS5Hcm91cFZlcnNpb25SZXNvdXJjZVIIcmVzb3VyY2US'
    'JAoNY29udGludWVUb2tlbhgCIAEoCVINY29udGludWVUb2tlbg==');

@$core.Deprecated('Use storageVersionMigrationStatusDescriptor instead')
const StorageVersionMigrationStatus$json = {
  '1': 'StorageVersionMigrationStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.api.storagemigration.v1alpha1.MigrationCondition', '10': 'conditions'},
    {'1': 'resourceVersion', '3': 2, '4': 1, '5': 9, '10': 'resourceVersion'},
  ],
};

/// Descriptor for `StorageVersionMigrationStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionMigrationStatusDescriptor = $convert.base64Decode(
    'Ch1TdG9yYWdlVmVyc2lvbk1pZ3JhdGlvblN0YXR1cxJRCgpjb25kaXRpb25zGAEgAygLMjEuYX'
    'BpLnN0b3JhZ2VtaWdyYXRpb24udjFhbHBoYTEuTWlncmF0aW9uQ29uZGl0aW9uUgpjb25kaXRp'
    'b25zEigKD3Jlc291cmNlVmVyc2lvbhgCIAEoCVIPcmVzb3VyY2VWZXJzaW9u');

