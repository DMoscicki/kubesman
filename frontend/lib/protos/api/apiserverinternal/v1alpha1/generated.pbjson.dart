//
//  Generated code. Do not modify.
//  source: api/apiserverinternal/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use serverStorageVersionDescriptor instead')
const ServerStorageVersion$json = {
  '1': 'ServerStorageVersion',
  '2': [
    {'1': 'apiServerID', '3': 1, '4': 1, '5': 9, '10': 'apiServerID'},
    {'1': 'encodingVersion', '3': 2, '4': 1, '5': 9, '10': 'encodingVersion'},
    {'1': 'decodableVersions', '3': 3, '4': 3, '5': 9, '10': 'decodableVersions'},
    {'1': 'servedVersions', '3': 4, '4': 3, '5': 9, '10': 'servedVersions'},
  ],
};

/// Descriptor for `ServerStorageVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serverStorageVersionDescriptor = $convert.base64Decode(
    'ChRTZXJ2ZXJTdG9yYWdlVmVyc2lvbhIgCgthcGlTZXJ2ZXJJRBgBIAEoCVILYXBpU2VydmVySU'
    'QSKAoPZW5jb2RpbmdWZXJzaW9uGAIgASgJUg9lbmNvZGluZ1ZlcnNpb24SLAoRZGVjb2RhYmxl'
    'VmVyc2lvbnMYAyADKAlSEWRlY29kYWJsZVZlcnNpb25zEiYKDnNlcnZlZFZlcnNpb25zGAQgAy'
    'gJUg5zZXJ2ZWRWZXJzaW9ucw==');

@$core.Deprecated('Use storageVersionDescriptor instead')
const StorageVersion$json = {
  '1': 'StorageVersion',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.apiserverinternal.v1alpha1.StorageVersionSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.apiserverinternal.v1alpha1.StorageVersionStatus', '10': 'status'},
  ],
};

/// Descriptor for `StorageVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionDescriptor = $convert.base64Decode(
    'Cg5TdG9yYWdlVmVyc2lvbhJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkYKBHNwZWMYAiABKAsyMi5hcGkuYXBp'
    'c2VydmVyaW50ZXJuYWwudjFhbHBoYTEuU3RvcmFnZVZlcnNpb25TcGVjUgRzcGVjEkwKBnN0YX'
    'R1cxgDIAEoCzI0LmFwaS5hcGlzZXJ2ZXJpbnRlcm5hbC52MWFscGhhMS5TdG9yYWdlVmVyc2lv'
    'blN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use storageVersionConditionDescriptor instead')
const StorageVersionCondition$json = {
  '1': 'StorageVersionCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'observedGeneration', '3': 3, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'lastTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `StorageVersionCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionConditionDescriptor = $convert.base64Decode(
    'ChdTdG9yYWdlVmVyc2lvbkNvbmRpdGlvbhISCgR0eXBlGAEgASgJUgR0eXBlEhYKBnN0YXR1cx'
    'gCIAEoCVIGc3RhdHVzEi4KEm9ic2VydmVkR2VuZXJhdGlvbhgDIAEoA1ISb2JzZXJ2ZWRHZW5l'
    'cmF0aW9uElMKEmxhc3RUcmFuc2l0aW9uVGltZRgEIAEoCzIjLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLlRpbWVSEmxhc3RUcmFuc2l0aW9uVGltZRIWCgZyZWFzb24YBSABKAlSBnJl'
    'YXNvbhIYCgdtZXNzYWdlGAYgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use storageVersionListDescriptor instead')
const StorageVersionList$json = {
  '1': 'StorageVersionList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.apiserverinternal.v1alpha1.StorageVersion', '10': 'items'},
  ],
};

/// Descriptor for `StorageVersionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionListDescriptor = $convert.base64Decode(
    'ChJTdG9yYWdlVmVyc2lvbkxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucG'
    'tnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESRAoFaXRlbXMYAiADKAsyLi5hcGku'
    'YXBpc2VydmVyaW50ZXJuYWwudjFhbHBoYTEuU3RvcmFnZVZlcnNpb25SBWl0ZW1z');

@$core.Deprecated('Use storageVersionSpecDescriptor instead')
const StorageVersionSpec$json = {
  '1': 'StorageVersionSpec',
};

/// Descriptor for `StorageVersionSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionSpecDescriptor = $convert.base64Decode(
    'ChJTdG9yYWdlVmVyc2lvblNwZWM=');

@$core.Deprecated('Use storageVersionStatusDescriptor instead')
const StorageVersionStatus$json = {
  '1': 'StorageVersionStatus',
  '2': [
    {'1': 'storageVersions', '3': 1, '4': 3, '5': 11, '6': '.api.apiserverinternal.v1alpha1.ServerStorageVersion', '10': 'storageVersions'},
    {'1': 'commonEncodingVersion', '3': 2, '4': 1, '5': 9, '10': 'commonEncodingVersion'},
    {'1': 'conditions', '3': 3, '4': 3, '5': 11, '6': '.api.apiserverinternal.v1alpha1.StorageVersionCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `StorageVersionStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageVersionStatusDescriptor = $convert.base64Decode(
    'ChRTdG9yYWdlVmVyc2lvblN0YXR1cxJeCg9zdG9yYWdlVmVyc2lvbnMYASADKAsyNC5hcGkuYX'
    'Bpc2VydmVyaW50ZXJuYWwudjFhbHBoYTEuU2VydmVyU3RvcmFnZVZlcnNpb25SD3N0b3JhZ2VW'
    'ZXJzaW9ucxI0ChVjb21tb25FbmNvZGluZ1ZlcnNpb24YAiABKAlSFWNvbW1vbkVuY29kaW5nVm'
    'Vyc2lvbhJXCgpjb25kaXRpb25zGAMgAygLMjcuYXBpLmFwaXNlcnZlcmludGVybmFsLnYxYWxw'
    'aGExLlN0b3JhZ2VWZXJzaW9uQ29uZGl0aW9uUgpjb25kaXRpb25z');

