//
//  Generated code. Do not modify.
//  source: api/storage/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use cSIDriverDescriptor instead')
const CSIDriver$json = {
  '1': 'CSIDriver',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1beta1.CSIDriverSpec', '10': 'spec'},
  ],
};

/// Descriptor for `CSIDriver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIDriverDescriptor = $convert.base64Decode(
    'CglDU0lEcml2ZXISRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI2CgRzcGVjGAIgASgLMiIuYXBpLnN0b3JhZ2Uu'
    'djFiZXRhMS5DU0lEcml2ZXJTcGVjUgRzcGVj');

@$core.Deprecated('Use cSIDriverListDescriptor instead')
const CSIDriverList$json = {
  '1': 'CSIDriverList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1beta1.CSIDriver', '10': 'items'},
  ],
};

/// Descriptor for `CSIDriverList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIDriverListDescriptor = $convert.base64Decode(
    'Cg1DU0lEcml2ZXJMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjQKBWl0ZW1zGAIgAygLMh4uYXBpLnN0b3Jh'
    'Z2UudjFiZXRhMS5DU0lEcml2ZXJSBWl0ZW1z');

@$core.Deprecated('Use cSIDriverSpecDescriptor instead')
const CSIDriverSpec$json = {
  '1': 'CSIDriverSpec',
  '2': [
    {'1': 'attachRequired', '3': 1, '4': 1, '5': 8, '10': 'attachRequired'},
    {'1': 'podInfoOnMount', '3': 2, '4': 1, '5': 8, '10': 'podInfoOnMount'},
    {'1': 'volumeLifecycleModes', '3': 3, '4': 3, '5': 9, '10': 'volumeLifecycleModes'},
    {'1': 'storageCapacity', '3': 4, '4': 1, '5': 8, '10': 'storageCapacity'},
    {'1': 'fsGroupPolicy', '3': 5, '4': 1, '5': 9, '10': 'fsGroupPolicy'},
    {'1': 'tokenRequests', '3': 6, '4': 3, '5': 11, '6': '.api.storage.v1beta1.TokenRequest', '10': 'tokenRequests'},
    {'1': 'requiresRepublish', '3': 7, '4': 1, '5': 8, '10': 'requiresRepublish'},
    {'1': 'seLinuxMount', '3': 8, '4': 1, '5': 8, '10': 'seLinuxMount'},
  ],
};

/// Descriptor for `CSIDriverSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIDriverSpecDescriptor = $convert.base64Decode(
    'Cg1DU0lEcml2ZXJTcGVjEiYKDmF0dGFjaFJlcXVpcmVkGAEgASgIUg5hdHRhY2hSZXF1aXJlZB'
    'ImCg5wb2RJbmZvT25Nb3VudBgCIAEoCFIOcG9kSW5mb09uTW91bnQSMgoUdm9sdW1lTGlmZWN5'
    'Y2xlTW9kZXMYAyADKAlSFHZvbHVtZUxpZmVjeWNsZU1vZGVzEigKD3N0b3JhZ2VDYXBhY2l0eR'
    'gEIAEoCFIPc3RvcmFnZUNhcGFjaXR5EiQKDWZzR3JvdXBQb2xpY3kYBSABKAlSDWZzR3JvdXBQ'
    'b2xpY3kSRwoNdG9rZW5SZXF1ZXN0cxgGIAMoCzIhLmFwaS5zdG9yYWdlLnYxYmV0YTEuVG9rZW'
    '5SZXF1ZXN0Ug10b2tlblJlcXVlc3RzEiwKEXJlcXVpcmVzUmVwdWJsaXNoGAcgASgIUhFyZXF1'
    'aXJlc1JlcHVibGlzaBIiCgxzZUxpbnV4TW91bnQYCCABKAhSDHNlTGludXhNb3VudA==');

@$core.Deprecated('Use cSINodeDescriptor instead')
const CSINode$json = {
  '1': 'CSINode',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1beta1.CSINodeSpec', '10': 'spec'},
  ],
};

/// Descriptor for `CSINode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSINodeDescriptor = $convert.base64Decode(
    'CgdDU0lOb2RlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESNAoEc3BlYxgCIAEoCzIgLmFwaS5zdG9yYWdlLnYx'
    'YmV0YTEuQ1NJTm9kZVNwZWNSBHNwZWM=');

@$core.Deprecated('Use cSINodeDriverDescriptor instead')
const CSINodeDriver$json = {
  '1': 'CSINodeDriver',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'nodeID', '3': 2, '4': 1, '5': 9, '10': 'nodeID'},
    {'1': 'topologyKeys', '3': 3, '4': 3, '5': 9, '10': 'topologyKeys'},
    {'1': 'allocatable', '3': 4, '4': 1, '5': 11, '6': '.api.storage.v1beta1.VolumeNodeResources', '10': 'allocatable'},
  ],
};

/// Descriptor for `CSINodeDriver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSINodeDriverDescriptor = $convert.base64Decode(
    'Cg1DU0lOb2RlRHJpdmVyEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGbm9kZUlEGAIgASgJUgZub2'
    'RlSUQSIgoMdG9wb2xvZ3lLZXlzGAMgAygJUgx0b3BvbG9neUtleXMSSgoLYWxsb2NhdGFibGUY'
    'BCABKAsyKC5hcGkuc3RvcmFnZS52MWJldGExLlZvbHVtZU5vZGVSZXNvdXJjZXNSC2FsbG9jYX'
    'RhYmxl');

@$core.Deprecated('Use cSINodeListDescriptor instead')
const CSINodeList$json = {
  '1': 'CSINodeList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1beta1.CSINode', '10': 'items'},
  ],
};

/// Descriptor for `CSINodeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSINodeListDescriptor = $convert.base64Decode(
    'CgtDU0lOb2RlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRIyCgVpdGVtcxgCIAMoCzIcLmFwaS5zdG9yYWdl'
    'LnYxYmV0YTEuQ1NJTm9kZVIFaXRlbXM=');

@$core.Deprecated('Use cSINodeSpecDescriptor instead')
const CSINodeSpec$json = {
  '1': 'CSINodeSpec',
  '2': [
    {'1': 'drivers', '3': 1, '4': 3, '5': 11, '6': '.api.storage.v1beta1.CSINodeDriver', '10': 'drivers'},
  ],
};

/// Descriptor for `CSINodeSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSINodeSpecDescriptor = $convert.base64Decode(
    'CgtDU0lOb2RlU3BlYxI8Cgdkcml2ZXJzGAEgAygLMiIuYXBpLnN0b3JhZ2UudjFiZXRhMS5DU0'
    'lOb2RlRHJpdmVyUgdkcml2ZXJz');

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
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1beta1.CSIStorageCapacity', '10': 'items'},
  ],
};

/// Descriptor for `CSIStorageCapacityList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIStorageCapacityListDescriptor = $convert.base64Decode(
    'ChZDU0lTdG9yYWdlQ2FwYWNpdHlMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEj0KBWl0ZW1zGAIgAygLMicu'
    'YXBpLnN0b3JhZ2UudjFiZXRhMS5DU0lTdG9yYWdlQ2FwYWNpdHlSBWl0ZW1z');

@$core.Deprecated('Use storageClassDescriptor instead')
const StorageClass$json = {
  '1': 'StorageClass',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'provisioner', '3': 2, '4': 1, '5': 9, '10': 'provisioner'},
    {'1': 'parameters', '3': 3, '4': 3, '5': 11, '6': '.api.storage.v1beta1.StorageClass.ParametersEntry', '10': 'parameters'},
    {'1': 'reclaimPolicy', '3': 4, '4': 1, '5': 9, '10': 'reclaimPolicy'},
    {'1': 'mountOptions', '3': 5, '4': 3, '5': 9, '10': 'mountOptions'},
    {'1': 'allowVolumeExpansion', '3': 6, '4': 1, '5': 8, '10': 'allowVolumeExpansion'},
    {'1': 'volumeBindingMode', '3': 7, '4': 1, '5': 9, '10': 'volumeBindingMode'},
    {'1': 'allowedTopologies', '3': 8, '4': 3, '5': 11, '6': '.api.core.v1.TopologySelectorTerm', '10': 'allowedTopologies'},
  ],
  '3': [StorageClass_ParametersEntry$json],
};

@$core.Deprecated('Use storageClassDescriptor instead')
const StorageClass_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `StorageClass`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageClassDescriptor = $convert.base64Decode(
    'CgxTdG9yYWdlQ2xhc3MSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaX'
    'MubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIgCgtwcm92aXNpb25lchgCIAEoCVILcHJv'
    'dmlzaW9uZXISUQoKcGFyYW1ldGVycxgDIAMoCzIxLmFwaS5zdG9yYWdlLnYxYmV0YTEuU3Rvcm'
    'FnZUNsYXNzLlBhcmFtZXRlcnNFbnRyeVIKcGFyYW1ldGVycxIkCg1yZWNsYWltUG9saWN5GAQg'
    'ASgJUg1yZWNsYWltUG9saWN5EiIKDG1vdW50T3B0aW9ucxgFIAMoCVIMbW91bnRPcHRpb25zEj'
    'IKFGFsbG93Vm9sdW1lRXhwYW5zaW9uGAYgASgIUhRhbGxvd1ZvbHVtZUV4cGFuc2lvbhIsChF2'
    'b2x1bWVCaW5kaW5nTW9kZRgHIAEoCVIRdm9sdW1lQmluZGluZ01vZGUSTwoRYWxsb3dlZFRvcG'
    '9sb2dpZXMYCCADKAsyIS5hcGkuY29yZS52MS5Ub3BvbG9neVNlbGVjdG9yVGVybVIRYWxsb3dl'
    'ZFRvcG9sb2dpZXMaPQoPUGFyYW1ldGVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbH'
    'VlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use storageClassListDescriptor instead')
const StorageClassList$json = {
  '1': 'StorageClassList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1beta1.StorageClass', '10': 'items'},
  ],
};

/// Descriptor for `StorageClassList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageClassListDescriptor = $convert.base64Decode(
    'ChBTdG9yYWdlQ2xhc3NMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjcKBWl0ZW1zGAIgAygLMiEuYXBpLnN0'
    'b3JhZ2UudjFiZXRhMS5TdG9yYWdlQ2xhc3NSBWl0ZW1z');

@$core.Deprecated('Use tokenRequestDescriptor instead')
const TokenRequest$json = {
  '1': 'TokenRequest',
  '2': [
    {'1': 'audience', '3': 1, '4': 1, '5': 9, '10': 'audience'},
    {'1': 'expirationSeconds', '3': 2, '4': 1, '5': 3, '10': 'expirationSeconds'},
  ],
};

/// Descriptor for `TokenRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tokenRequestDescriptor = $convert.base64Decode(
    'CgxUb2tlblJlcXVlc3QSGgoIYXVkaWVuY2UYASABKAlSCGF1ZGllbmNlEiwKEWV4cGlyYXRpb2'
    '5TZWNvbmRzGAIgASgDUhFleHBpcmF0aW9uU2Vjb25kcw==');

@$core.Deprecated('Use volumeAttachmentDescriptor instead')
const VolumeAttachment$json = {
  '1': 'VolumeAttachment',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1beta1.VolumeAttachmentSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.storage.v1beta1.VolumeAttachmentStatus', '10': 'status'},
  ],
};

/// Descriptor for `VolumeAttachment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentDescriptor = $convert.base64Decode(
    'ChBWb2x1bWVBdHRhY2htZW50EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESPQoEc3BlYxgCIAEoCzIpLmFwaS5z'
    'dG9yYWdlLnYxYmV0YTEuVm9sdW1lQXR0YWNobWVudFNwZWNSBHNwZWMSQwoGc3RhdHVzGAMgAS'
    'gLMisuYXBpLnN0b3JhZ2UudjFiZXRhMS5Wb2x1bWVBdHRhY2htZW50U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use volumeAttachmentListDescriptor instead')
const VolumeAttachmentList$json = {
  '1': 'VolumeAttachmentList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1beta1.VolumeAttachment', '10': 'items'},
  ],
};

/// Descriptor for `VolumeAttachmentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentListDescriptor = $convert.base64Decode(
    'ChRWb2x1bWVBdHRhY2htZW50TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI7CgVpdGVtcxgCIAMoCzIlLmFw'
    'aS5zdG9yYWdlLnYxYmV0YTEuVm9sdW1lQXR0YWNobWVudFIFaXRlbXM=');

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
    {'1': 'source', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1beta1.VolumeAttachmentSource', '10': 'source'},
    {'1': 'nodeName', '3': 3, '4': 1, '5': 9, '10': 'nodeName'},
  ],
};

/// Descriptor for `VolumeAttachmentSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentSpecDescriptor = $convert.base64Decode(
    'ChRWb2x1bWVBdHRhY2htZW50U3BlYxIaCghhdHRhY2hlchgBIAEoCVIIYXR0YWNoZXISQwoGc2'
    '91cmNlGAIgASgLMisuYXBpLnN0b3JhZ2UudjFiZXRhMS5Wb2x1bWVBdHRhY2htZW50U291cmNl'
    'UgZzb3VyY2USGgoIbm9kZU5hbWUYAyABKAlSCG5vZGVOYW1l');

@$core.Deprecated('Use volumeAttachmentStatusDescriptor instead')
const VolumeAttachmentStatus$json = {
  '1': 'VolumeAttachmentStatus',
  '2': [
    {'1': 'attached', '3': 1, '4': 1, '5': 8, '10': 'attached'},
    {'1': 'attachmentMetadata', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1beta1.VolumeAttachmentStatus.AttachmentMetadataEntry', '10': 'attachmentMetadata'},
    {'1': 'attachError', '3': 3, '4': 1, '5': 11, '6': '.api.storage.v1beta1.VolumeError', '10': 'attachError'},
    {'1': 'detachError', '3': 4, '4': 1, '5': 11, '6': '.api.storage.v1beta1.VolumeError', '10': 'detachError'},
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
    'ChZWb2x1bWVBdHRhY2htZW50U3RhdHVzEhoKCGF0dGFjaGVkGAEgASgIUghhdHRhY2hlZBJzCh'
    'JhdHRhY2htZW50TWV0YWRhdGEYAiADKAsyQy5hcGkuc3RvcmFnZS52MWJldGExLlZvbHVtZUF0'
    'dGFjaG1lbnRTdGF0dXMuQXR0YWNobWVudE1ldGFkYXRhRW50cnlSEmF0dGFjaG1lbnRNZXRhZG'
    'F0YRJCCgthdHRhY2hFcnJvchgDIAEoCzIgLmFwaS5zdG9yYWdlLnYxYmV0YTEuVm9sdW1lRXJy'
    'b3JSC2F0dGFjaEVycm9yEkIKC2RldGFjaEVycm9yGAQgASgLMiAuYXBpLnN0b3JhZ2UudjFiZX'
    'RhMS5Wb2x1bWVFcnJvclILZGV0YWNoRXJyb3IaRQoXQXR0YWNobWVudE1ldGFkYXRhRW50cnkS'
    'EAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

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

@$core.Deprecated('Use volumeNodeResourcesDescriptor instead')
const VolumeNodeResources$json = {
  '1': 'VolumeNodeResources',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
  ],
};

/// Descriptor for `VolumeNodeResources`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeNodeResourcesDescriptor = $convert.base64Decode(
    'ChNWb2x1bWVOb2RlUmVzb3VyY2VzEhQKBWNvdW50GAEgASgFUgVjb3VudA==');

