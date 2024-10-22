//
//  Generated code. Do not modify.
//  source: api/storage/v1/generated.proto
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
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1.CSIDriverSpec', '10': 'spec'},
  ],
};

/// Descriptor for `CSIDriver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIDriverDescriptor = $convert.base64Decode(
    'CglDU0lEcml2ZXISRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIxCgRzcGVjGAIgASgLMh0uYXBpLnN0b3JhZ2Uu'
    'djEuQ1NJRHJpdmVyU3BlY1IEc3BlYw==');

@$core.Deprecated('Use cSIDriverListDescriptor instead')
const CSIDriverList$json = {
  '1': 'CSIDriverList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1.CSIDriver', '10': 'items'},
  ],
};

/// Descriptor for `CSIDriverList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIDriverListDescriptor = $convert.base64Decode(
    'Cg1DU0lEcml2ZXJMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEi8KBWl0ZW1zGAIgAygLMhkuYXBpLnN0b3Jh'
    'Z2UudjEuQ1NJRHJpdmVyUgVpdGVtcw==');

@$core.Deprecated('Use cSIDriverSpecDescriptor instead')
const CSIDriverSpec$json = {
  '1': 'CSIDriverSpec',
  '2': [
    {'1': 'attachRequired', '3': 1, '4': 1, '5': 8, '10': 'attachRequired'},
    {'1': 'podInfoOnMount', '3': 2, '4': 1, '5': 8, '10': 'podInfoOnMount'},
    {'1': 'volumeLifecycleModes', '3': 3, '4': 3, '5': 9, '10': 'volumeLifecycleModes'},
    {'1': 'storageCapacity', '3': 4, '4': 1, '5': 8, '10': 'storageCapacity'},
    {'1': 'fsGroupPolicy', '3': 5, '4': 1, '5': 9, '10': 'fsGroupPolicy'},
    {'1': 'tokenRequests', '3': 6, '4': 3, '5': 11, '6': '.api.storage.v1.TokenRequest', '10': 'tokenRequests'},
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
    'b2xpY3kSQgoNdG9rZW5SZXF1ZXN0cxgGIAMoCzIcLmFwaS5zdG9yYWdlLnYxLlRva2VuUmVxdW'
    'VzdFINdG9rZW5SZXF1ZXN0cxIsChFyZXF1aXJlc1JlcHVibGlzaBgHIAEoCFIRcmVxdWlyZXNS'
    'ZXB1Ymxpc2gSIgoMc2VMaW51eE1vdW50GAggASgIUgxzZUxpbnV4TW91bnQ=');

@$core.Deprecated('Use cSINodeDescriptor instead')
const CSINode$json = {
  '1': 'CSINode',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1.CSINodeSpec', '10': 'spec'},
  ],
};

/// Descriptor for `CSINode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSINodeDescriptor = $convert.base64Decode(
    'CgdDU0lOb2RlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESLwoEc3BlYxgCIAEoCzIbLmFwaS5zdG9yYWdlLnYx'
    'LkNTSU5vZGVTcGVjUgRzcGVj');

@$core.Deprecated('Use cSINodeDriverDescriptor instead')
const CSINodeDriver$json = {
  '1': 'CSINodeDriver',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'nodeID', '3': 2, '4': 1, '5': 9, '10': 'nodeID'},
    {'1': 'topologyKeys', '3': 3, '4': 3, '5': 9, '10': 'topologyKeys'},
    {'1': 'allocatable', '3': 4, '4': 1, '5': 11, '6': '.api.storage.v1.VolumeNodeResources', '10': 'allocatable'},
  ],
};

/// Descriptor for `CSINodeDriver`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSINodeDriverDescriptor = $convert.base64Decode(
    'Cg1DU0lOb2RlRHJpdmVyEhIKBG5hbWUYASABKAlSBG5hbWUSFgoGbm9kZUlEGAIgASgJUgZub2'
    'RlSUQSIgoMdG9wb2xvZ3lLZXlzGAMgAygJUgx0b3BvbG9neUtleXMSRQoLYWxsb2NhdGFibGUY'
    'BCABKAsyIy5hcGkuc3RvcmFnZS52MS5Wb2x1bWVOb2RlUmVzb3VyY2VzUgthbGxvY2F0YWJsZQ'
    '==');

@$core.Deprecated('Use cSINodeListDescriptor instead')
const CSINodeList$json = {
  '1': 'CSINodeList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1.CSINode', '10': 'items'},
  ],
};

/// Descriptor for `CSINodeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSINodeListDescriptor = $convert.base64Decode(
    'CgtDU0lOb2RlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRItCgVpdGVtcxgCIAMoCzIXLmFwaS5zdG9yYWdl'
    'LnYxLkNTSU5vZGVSBWl0ZW1z');

@$core.Deprecated('Use cSINodeSpecDescriptor instead')
const CSINodeSpec$json = {
  '1': 'CSINodeSpec',
  '2': [
    {'1': 'drivers', '3': 1, '4': 3, '5': 11, '6': '.api.storage.v1.CSINodeDriver', '10': 'drivers'},
  ],
};

/// Descriptor for `CSINodeSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSINodeSpecDescriptor = $convert.base64Decode(
    'CgtDU0lOb2RlU3BlYxI3Cgdkcml2ZXJzGAEgAygLMh0uYXBpLnN0b3JhZ2UudjEuQ1NJTm9kZU'
    'RyaXZlclIHZHJpdmVycw==');

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
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1.CSIStorageCapacity', '10': 'items'},
  ],
};

/// Descriptor for `CSIStorageCapacityList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIStorageCapacityListDescriptor = $convert.base64Decode(
    'ChZDU0lTdG9yYWdlQ2FwYWNpdHlMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjgKBWl0ZW1zGAIgAygLMiIu'
    'YXBpLnN0b3JhZ2UudjEuQ1NJU3RvcmFnZUNhcGFjaXR5UgVpdGVtcw==');

@$core.Deprecated('Use storageClassDescriptor instead')
const StorageClass$json = {
  '1': 'StorageClass',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'provisioner', '3': 2, '4': 1, '5': 9, '10': 'provisioner'},
    {'1': 'parameters', '3': 3, '4': 3, '5': 11, '6': '.api.storage.v1.StorageClass.ParametersEntry', '10': 'parameters'},
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
    'dmlzaW9uZXISTAoKcGFyYW1ldGVycxgDIAMoCzIsLmFwaS5zdG9yYWdlLnYxLlN0b3JhZ2VDbG'
    'Fzcy5QYXJhbWV0ZXJzRW50cnlSCnBhcmFtZXRlcnMSJAoNcmVjbGFpbVBvbGljeRgEIAEoCVIN'
    'cmVjbGFpbVBvbGljeRIiCgxtb3VudE9wdGlvbnMYBSADKAlSDG1vdW50T3B0aW9ucxIyChRhbG'
    'xvd1ZvbHVtZUV4cGFuc2lvbhgGIAEoCFIUYWxsb3dWb2x1bWVFeHBhbnNpb24SLAoRdm9sdW1l'
    'QmluZGluZ01vZGUYByABKAlSEXZvbHVtZUJpbmRpbmdNb2RlEk8KEWFsbG93ZWRUb3BvbG9naW'
    'VzGAggAygLMiEuYXBpLmNvcmUudjEuVG9wb2xvZ3lTZWxlY3RvclRlcm1SEWFsbG93ZWRUb3Bv'
    'bG9naWVzGj0KD1BhcmFtZXRlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIA'
    'EoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use storageClassListDescriptor instead')
const StorageClassList$json = {
  '1': 'StorageClassList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1.StorageClass', '10': 'items'},
  ],
};

/// Descriptor for `StorageClassList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageClassListDescriptor = $convert.base64Decode(
    'ChBTdG9yYWdlQ2xhc3NMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjIKBWl0ZW1zGAIgAygLMhwuYXBpLnN0'
    'b3JhZ2UudjEuU3RvcmFnZUNsYXNzUgVpdGVtcw==');

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
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1.VolumeAttachmentSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.storage.v1.VolumeAttachmentStatus', '10': 'status'},
  ],
};

/// Descriptor for `VolumeAttachment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentDescriptor = $convert.base64Decode(
    'ChBWb2x1bWVBdHRhY2htZW50EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESOAoEc3BlYxgCIAEoCzIkLmFwaS5z'
    'dG9yYWdlLnYxLlZvbHVtZUF0dGFjaG1lbnRTcGVjUgRzcGVjEj4KBnN0YXR1cxgDIAEoCzImLm'
    'FwaS5zdG9yYWdlLnYxLlZvbHVtZUF0dGFjaG1lbnRTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use volumeAttachmentListDescriptor instead')
const VolumeAttachmentList$json = {
  '1': 'VolumeAttachmentList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1.VolumeAttachment', '10': 'items'},
  ],
};

/// Descriptor for `VolumeAttachmentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentListDescriptor = $convert.base64Decode(
    'ChRWb2x1bWVBdHRhY2htZW50TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI2CgVpdGVtcxgCIAMoCzIgLmFw'
    'aS5zdG9yYWdlLnYxLlZvbHVtZUF0dGFjaG1lbnRSBWl0ZW1z');

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
    {'1': 'source', '3': 2, '4': 1, '5': 11, '6': '.api.storage.v1.VolumeAttachmentSource', '10': 'source'},
    {'1': 'nodeName', '3': 3, '4': 1, '5': 9, '10': 'nodeName'},
  ],
};

/// Descriptor for `VolumeAttachmentSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeAttachmentSpecDescriptor = $convert.base64Decode(
    'ChRWb2x1bWVBdHRhY2htZW50U3BlYxIaCghhdHRhY2hlchgBIAEoCVIIYXR0YWNoZXISPgoGc2'
    '91cmNlGAIgASgLMiYuYXBpLnN0b3JhZ2UudjEuVm9sdW1lQXR0YWNobWVudFNvdXJjZVIGc291'
    'cmNlEhoKCG5vZGVOYW1lGAMgASgJUghub2RlTmFtZQ==');

@$core.Deprecated('Use volumeAttachmentStatusDescriptor instead')
const VolumeAttachmentStatus$json = {
  '1': 'VolumeAttachmentStatus',
  '2': [
    {'1': 'attached', '3': 1, '4': 1, '5': 8, '10': 'attached'},
    {'1': 'attachmentMetadata', '3': 2, '4': 3, '5': 11, '6': '.api.storage.v1.VolumeAttachmentStatus.AttachmentMetadataEntry', '10': 'attachmentMetadata'},
    {'1': 'attachError', '3': 3, '4': 1, '5': 11, '6': '.api.storage.v1.VolumeError', '10': 'attachError'},
    {'1': 'detachError', '3': 4, '4': 1, '5': 11, '6': '.api.storage.v1.VolumeError', '10': 'detachError'},
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
    'ChZWb2x1bWVBdHRhY2htZW50U3RhdHVzEhoKCGF0dGFjaGVkGAEgASgIUghhdHRhY2hlZBJuCh'
    'JhdHRhY2htZW50TWV0YWRhdGEYAiADKAsyPi5hcGkuc3RvcmFnZS52MS5Wb2x1bWVBdHRhY2ht'
    'ZW50U3RhdHVzLkF0dGFjaG1lbnRNZXRhZGF0YUVudHJ5UhJhdHRhY2htZW50TWV0YWRhdGESPQ'
    'oLYXR0YWNoRXJyb3IYAyABKAsyGy5hcGkuc3RvcmFnZS52MS5Wb2x1bWVFcnJvclILYXR0YWNo'
    'RXJyb3ISPQoLZGV0YWNoRXJyb3IYBCABKAsyGy5hcGkuc3RvcmFnZS52MS5Wb2x1bWVFcnJvcl'
    'ILZGV0YWNoRXJyb3IaRQoXQXR0YWNobWVudE1ldGFkYXRhRW50cnkSEAoDa2V5GAEgASgJUgNr'
    'ZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

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

