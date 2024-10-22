//
//  Generated code. Do not modify.
//  source: api/storage/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cSIStorageCapacityDescriptor instead')
const CSIStorageCapacity$json = {
  '1': 'CSIStorageCapacity',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'nodeTopology', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'nodeTopology'},
    {'1': 'storageClassName', '3': 3, '4': 1, '5': 9, '10': 'storageClassName'},
    {'1': 'capacity', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'capacity'},
    {'1': 'maximumVolumeSize', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'maximumVolumeSize'},
  ],
};

/// Descriptor for `CSIStorageCapacity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIStorageCapacityDescriptor = $convert.base64Decode(
    'ChJDU0lTdG9yYWdlQ2FwYWNpdHkSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucG'
    'tnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRJQCgxub2RlVG9wb2xvZ3kYAiAB'
    'KAsyLC5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG9yUgxub2RlVG'
    '9wb2xvZ3kSKgoQc3RvcmFnZUNsYXNzTmFtZRgDIAEoCVIQc3RvcmFnZUNsYXNzTmFtZRJDCghj'
    'YXBhY2l0eRgEIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5Ug'
    'hjYXBhY2l0eRJVChFtYXhpbXVtVm9sdW1lU2l6ZRgFIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cu'
    'YXBpLnJlc291cmNlLlF1YW50aXR5UhFtYXhpbXVtVm9sdW1lU2l6ZQ==');

@$core.Deprecated('Use cSIStorageCapacityListDescriptor instead')
const CSIStorageCapacityList$json = {
  '1': 'CSIStorageCapacityList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1alpha1.CSIStorageCapacity', '10': 'items'},
  ],
};

/// Descriptor for `CSIStorageCapacityList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIStorageCapacityListDescriptor = $convert.base64Decode(
    'ChZDU0lTdG9yYWdlQ2FwYWNpdHlMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEj4KBWl0ZW1zGAIgAygLMigu'
    'YXBpLnN0b3JhZ2UudjFhbHBoYTEuQ1NJU3RvcmFnZUNhcGFjaXR5UgVpdGVtcw==');

@$core.Deprecated('Use volumeAttachmentDescriptor instead')
const VolumeAttachment$json = {
  '1': 'VolumeAttachment',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1alpha1.VolumeAttachmentSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.storage.v1alpha1.VolumeAttachmentStatus', '10': 'status'},
  ],
};

/// Descriptor for `VolumeAttachment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentDescriptor = $convert.base64Decode(
    'ChBWb2x1bWVBdHRhY2htZW50EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESPgoEc3BlYxgCIAEoCzIqLmFwaS5z'
    'dG9yYWdlLnYxYWxwaGExLlZvbHVtZUF0dGFjaG1lbnRTcGVjUgRzcGVjEkQKBnN0YXR1cxgDIA'
    'EoCzIsLmFwaS5zdG9yYWdlLnYxYWxwaGExLlZvbHVtZUF0dGFjaG1lbnRTdGF0dXNSBnN0YXR1'
    'cw==');

@$core.Deprecated('Use volumeAttachmentListDescriptor instead')
const VolumeAttachmentList$json = {
  '1': 'VolumeAttachmentList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1alpha1.VolumeAttachment', '10': 'items'},
  ],
};

/// Descriptor for `VolumeAttachmentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentListDescriptor = $convert.base64Decode(
    'ChRWb2x1bWVBdHRhY2htZW50TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI8CgVpdGVtcxgCIAMoCzImLmFw'
    'aS5zdG9yYWdlLnYxYWxwaGExLlZvbHVtZUF0dGFjaG1lbnRSBWl0ZW1z');

@$core.Deprecated('Use volumeAttachmentSourceDescriptor instead')
const VolumeAttachmentSource$json = {
  '1': 'VolumeAttachmentSource',
  '2': [
    {'1': 'persistentVolumeName', '3': 1, '4': 1, '5': 9, '10': 'persistentVolumeName'},
    {'1': 'inlineVolumeSpec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeSpec', '10': 'inlineVolumeSpec'},
  ],
};

/// Descriptor for `VolumeAttachmentSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentSourceDescriptor = $convert.base64Decode(
    'ChZWb2x1bWVBdHRhY2htZW50U291cmNlEjIKFHBlcnNpc3RlbnRWb2x1bWVOYW1lGAEgASgJUh'
    'RwZXJzaXN0ZW50Vm9sdW1lTmFtZRJNChBpbmxpbmVWb2x1bWVTcGVjGAIgASgLMiEuYXBpLmNv'
    'cmUudjEuUGVyc2lzdGVudFZvbHVtZVNwZWNSEGlubGluZVZvbHVtZVNwZWM=');

@$core.Deprecated('Use volumeAttachmentSpecDescriptor instead')
const VolumeAttachmentSpec$json = {
  '1': 'VolumeAttachmentSpec',
  '2': [
    {'1': 'attacher', '3': 1, '4': 1, '5': 9, '10': 'attacher'},
    {'1': 'source', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1alpha1.VolumeAttachmentSource', '10': 'source'},
    {'1': 'nodeName', '3': 3, '4': 1, '5': 9, '10': 'nodeName'},
  ],
};

/// Descriptor for `VolumeAttachmentSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentSpecDescriptor = $convert.base64Decode(
    'ChRWb2x1bWVBdHRhY2htZW50U3BlYxIaCghhdHRhY2hlchgBIAEoCVIIYXR0YWNoZXISRAoGc2'
    '91cmNlGAIgASgLMiwuYXBpLnN0b3JhZ2UudjFhbHBoYTEuVm9sdW1lQXR0YWNobWVudFNvdXJj'
    'ZVIGc291cmNlEhoKCG5vZGVOYW1lGAMgASgJUghub2RlTmFtZQ==');

@$core.Deprecated('Use volumeAttachmentStatusDescriptor instead')
const VolumeAttachmentStatus$json = {
  '1': 'VolumeAttachmentStatus',
  '2': [
    {'1': 'attached', '3': 1, '4': 1, '5': 8, '10': 'attached'},
    {'1': 'attachmentMetadata', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1alpha1.VolumeAttachmentStatus.AttachmentMetadataEntry', '10': 'attachmentMetadata'},
    {'1': 'attachError', '3': 3, '4': 1, '5': 11, '6': '.api.storage.v1alpha1.VolumeError', '10': 'attachError'},
    {'1': 'detachError', '3': 4, '4': 1, '5': 11, '6': '.api.storage.v1alpha1.VolumeError', '10': 'detachError'},
  ],
  '3': [VolumeAttachmentStatus_AttachmentMetadataEntry$json],
};

@$core.Deprecated('Use volumeAttachmentStatusDescriptor instead')
const VolumeAttachmentStatus_AttachmentMetadataEntry$json = {
  '1': 'AttachmentMetadataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `VolumeAttachmentStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentStatusDescriptor = $convert.base64Decode(
    'ChZWb2x1bWVBdHRhY2htZW50U3RhdHVzEhoKCGF0dGFjaGVkGAEgASgIUghhdHRhY2hlZBJ0Ch'
    'JhdHRhY2htZW50TWV0YWRhdGEYAiADKAsyRC5hcGkuc3RvcmFnZS52MWFscGhhMS5Wb2x1bWVB'
    'dHRhY2htZW50U3RhdHVzLkF0dGFjaG1lbnRNZXRhZGF0YUVudHJ5UhJhdHRhY2htZW50TWV0YW'
    'RhdGESQwoLYXR0YWNoRXJyb3IYAyABKAsyIS5hcGkuc3RvcmFnZS52MWFscGhhMS5Wb2x1bWVF'
    'cnJvclILYXR0YWNoRXJyb3ISQwoLZGV0YWNoRXJyb3IYBCABKAsyIS5hcGkuc3RvcmFnZS52MW'
    'FscGhhMS5Wb2x1bWVFcnJvclILZGV0YWNoRXJyb3IaRQoXQXR0YWNobWVudE1ldGFkYXRhRW50'
    'cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use volumeAttributesClassDescriptor instead')
const VolumeAttributesClass$json = {
  '1': 'VolumeAttributesClass',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'driverName', '3': 2, '4': 1, '5': 9, '10': 'driverName'},
    {'1': 'parameters', '3': 3, '4': 3, '5': 11, '6': '.api.storage.v1alpha1.VolumeAttributesClass.ParametersEntry', '10': 'parameters'},
  ],
  '3': [VolumeAttributesClass_ParametersEntry$json],
};

@$core.Deprecated('Use volumeAttributesClassDescriptor instead')
const VolumeAttributesClass_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `VolumeAttributesClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttributesClassDescriptor = $convert.base64Decode(
    'ChVWb2x1bWVBdHRyaWJ1dGVzQ2xhc3MSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcn'
    'kucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIeCgpkcml2ZXJOYW1lGAIg'
    'ASgJUgpkcml2ZXJOYW1lElsKCnBhcmFtZXRlcnMYAyADKAsyOy5hcGkuc3RvcmFnZS52MWFscG'
    'hhMS5Wb2x1bWVBdHRyaWJ1dGVzQ2xhc3MuUGFyYW1ldGVyc0VudHJ5UgpwYXJhbWV0ZXJzGj0K'
    'D1BhcmFtZXRlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdW'
    'U6AjgB');

@$core.Deprecated('Use volumeAttributesClassListDescriptor instead')
const VolumeAttributesClassList$json = {
  '1': 'VolumeAttributesClassList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1alpha1.VolumeAttributesClass', '10': 'items'},
  ],
};

/// Descriptor for `VolumeAttributesClassList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttributesClassListDescriptor = $convert.base64Decode(
    'ChlWb2x1bWVBdHRyaWJ1dGVzQ2xhc3NMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEkEKBWl0ZW1zGAIgAygL'
    'MisuYXBpLnN0b3JhZ2UudjFhbHBoYTEuVm9sdW1lQXR0cmlidXRlc0NsYXNzUgVpdGVtcw==');

@$core.Deprecated('Use volumeErrorDescriptor instead')
const VolumeError$json = {
  '1': 'VolumeError',
  '2': [
    {'1': 'time', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'time'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `VolumeError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeErrorDescriptor = $convert.base64Decode(
    'CgtWb2x1bWVFcnJvchI3CgR0aW1lGAEgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuVGltZVIEdGltZRIYCgdtZXNzYWdlGAIgASgJUgdtZXNzYWdl');

