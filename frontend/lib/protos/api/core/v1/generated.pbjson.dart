//
//  Generated code. Do not modify.
//  source: api/core/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aWSElasticBlockStoreVolumeSourceDescriptor instead')
const AWSElasticBlockStoreVolumeSource$json = {
  '1': 'AWSElasticBlockStoreVolumeSource',
  '2': [
    {'1': 'volumeID', '3': 1, '4': 1, '5': 9, '10': 'volumeID'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'partition', '3': 3, '4': 1, '5': 5, '10': 'partition'},
    {'1': 'readOnly', '3': 4, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `AWSElasticBlockStoreVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aWSElasticBlockStoreVolumeSourceDescriptor = $convert.base64Decode(
    'CiBBV1NFbGFzdGljQmxvY2tTdG9yZVZvbHVtZVNvdXJjZRIaCgh2b2x1bWVJRBgBIAEoCVIIdm'
    '9sdW1lSUQSFgoGZnNUeXBlGAIgASgJUgZmc1R5cGUSHAoJcGFydGl0aW9uGAMgASgFUglwYXJ0'
    'aXRpb24SGgoIcmVhZE9ubHkYBCABKAhSCHJlYWRPbmx5');

@$core.Deprecated('Use affinityDescriptor instead')
const Affinity$json = {
  '1': 'Affinity',
  '2': [
    {'1': 'nodeAffinity', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.NodeAffinity', '10': 'nodeAffinity'},
    {'1': 'podAffinity', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PodAffinity', '10': 'podAffinity'},
    {'1': 'podAntiAffinity', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PodAntiAffinity', '10': 'podAntiAffinity'},
  ],
};

/// Descriptor for `Affinity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List affinityDescriptor = $convert.base64Decode(
    'CghBZmZpbml0eRI9Cgxub2RlQWZmaW5pdHkYASABKAsyGS5hcGkuY29yZS52MS5Ob2RlQWZmaW'
    '5pdHlSDG5vZGVBZmZpbml0eRI6Cgtwb2RBZmZpbml0eRgCIAEoCzIYLmFwaS5jb3JlLnYxLlBv'
    'ZEFmZmluaXR5Ugtwb2RBZmZpbml0eRJGCg9wb2RBbnRpQWZmaW5pdHkYAyABKAsyHC5hcGkuY2'
    '9yZS52MS5Qb2RBbnRpQWZmaW5pdHlSD3BvZEFudGlBZmZpbml0eQ==');

@$core.Deprecated('Use appArmorProfileDescriptor instead')
const AppArmorProfile$json = {
  '1': 'AppArmorProfile',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'localhostProfile', '3': 2, '4': 1, '5': 9, '10': 'localhostProfile'},
  ],
};

/// Descriptor for `AppArmorProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List appArmorProfileDescriptor = $convert.base64Decode(
    'Cg9BcHBBcm1vclByb2ZpbGUSEgoEdHlwZRgBIAEoCVIEdHlwZRIqChBsb2NhbGhvc3RQcm9maW'
    'xlGAIgASgJUhBsb2NhbGhvc3RQcm9maWxl');

@$core.Deprecated('Use attachedVolumeDescriptor instead')
const AttachedVolume$json = {
  '1': 'AttachedVolume',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'devicePath', '3': 2, '4': 1, '5': 9, '10': 'devicePath'},
  ],
};

/// Descriptor for `AttachedVolume`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List attachedVolumeDescriptor = $convert.base64Decode(
    'Cg5BdHRhY2hlZFZvbHVtZRISCgRuYW1lGAEgASgJUgRuYW1lEh4KCmRldmljZVBhdGgYAiABKA'
    'lSCmRldmljZVBhdGg=');

@$core.Deprecated('Use avoidPodsDescriptor instead')
const AvoidPods$json = {
  '1': 'AvoidPods',
  '2': [
    {'1': 'preferAvoidPods', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.PreferAvoidPodsEntry', '10': 'preferAvoidPods'},
  ],
};

/// Descriptor for `AvoidPods`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List avoidPodsDescriptor = $convert.base64Decode(
    'CglBdm9pZFBvZHMSSwoPcHJlZmVyQXZvaWRQb2RzGAEgAygLMiEuYXBpLmNvcmUudjEuUHJlZm'
    'VyQXZvaWRQb2RzRW50cnlSD3ByZWZlckF2b2lkUG9kcw==');

@$core.Deprecated('Use azureDiskVolumeSourceDescriptor instead')
const AzureDiskVolumeSource$json = {
  '1': 'AzureDiskVolumeSource',
  '2': [
    {'1': 'diskName', '3': 1, '4': 1, '5': 9, '10': 'diskName'},
    {'1': 'diskURI', '3': 2, '4': 1, '5': 9, '10': 'diskURI'},
    {'1': 'cachingMode', '3': 3, '4': 1, '5': 9, '10': 'cachingMode'},
    {'1': 'fsType', '3': 4, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 5, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'kind', '3': 6, '4': 1, '5': 9, '10': 'kind'},
  ],
};

/// Descriptor for `AzureDiskVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List azureDiskVolumeSourceDescriptor = $convert.base64Decode(
    'ChVBenVyZURpc2tWb2x1bWVTb3VyY2USGgoIZGlza05hbWUYASABKAlSCGRpc2tOYW1lEhgKB2'
    'Rpc2tVUkkYAiABKAlSB2Rpc2tVUkkSIAoLY2FjaGluZ01vZGUYAyABKAlSC2NhY2hpbmdNb2Rl'
    'EhYKBmZzVHlwZRgEIAEoCVIGZnNUeXBlEhoKCHJlYWRPbmx5GAUgASgIUghyZWFkT25seRISCg'
    'RraW5kGAYgASgJUgRraW5k');

@$core.Deprecated('Use azureFilePersistentVolumeSourceDescriptor instead')
const AzureFilePersistentVolumeSource$json = {
  '1': 'AzureFilePersistentVolumeSource',
  '2': [
    {'1': 'secretName', '3': 1, '4': 1, '5': 9, '10': 'secretName'},
    {'1': 'shareName', '3': 2, '4': 1, '5': 9, '10': 'shareName'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'secretNamespace', '3': 4, '4': 1, '5': 9, '10': 'secretNamespace'},
  ],
};

/// Descriptor for `AzureFilePersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List azureFilePersistentVolumeSourceDescriptor = $convert.base64Decode(
    'Ch9BenVyZUZpbGVQZXJzaXN0ZW50Vm9sdW1lU291cmNlEh4KCnNlY3JldE5hbWUYASABKAlSCn'
    'NlY3JldE5hbWUSHAoJc2hhcmVOYW1lGAIgASgJUglzaGFyZU5hbWUSGgoIcmVhZE9ubHkYAyAB'
    'KAhSCHJlYWRPbmx5EigKD3NlY3JldE5hbWVzcGFjZRgEIAEoCVIPc2VjcmV0TmFtZXNwYWNl');

@$core.Deprecated('Use azureFileVolumeSourceDescriptor instead')
const AzureFileVolumeSource$json = {
  '1': 'AzureFileVolumeSource',
  '2': [
    {'1': 'secretName', '3': 1, '4': 1, '5': 9, '10': 'secretName'},
    {'1': 'shareName', '3': 2, '4': 1, '5': 9, '10': 'shareName'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `AzureFileVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List azureFileVolumeSourceDescriptor = $convert.base64Decode(
    'ChVBenVyZUZpbGVWb2x1bWVTb3VyY2USHgoKc2VjcmV0TmFtZRgBIAEoCVIKc2VjcmV0TmFtZR'
    'IcCglzaGFyZU5hbWUYAiABKAlSCXNoYXJlTmFtZRIaCghyZWFkT25seRgDIAEoCFIIcmVhZE9u'
    'bHk=');

@$core.Deprecated('Use bindingDescriptor instead')
const Binding$json = {
  '1': 'Binding',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'target'},
  ],
};

/// Descriptor for `Binding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bindingDescriptor = $convert.base64Decode(
    'CgdCaW5kaW5nEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESNAoGdGFyZ2V0GAIgASgLMhwuYXBpLmNvcmUudjEu'
    'T2JqZWN0UmVmZXJlbmNlUgZ0YXJnZXQ=');

@$core.Deprecated('Use cSIPersistentVolumeSourceDescriptor instead')
const CSIPersistentVolumeSource$json = {
  '1': 'CSIPersistentVolumeSource',
  '2': [
    {'1': 'driver', '3': 1, '4': 1, '5': 9, '10': 'driver'},
    {'1': 'volumeHandle', '3': 2, '4': 1, '5': 9, '10': 'volumeHandle'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'fsType', '3': 4, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'volumeAttributes', '3': 5, '4': 3, '5': 11, '6': '.api.core.v1.CSIPersistentVolumeSource.VolumeAttributesEntry', '10': 'volumeAttributes'},
    {'1': 'controllerPublishSecretRef', '3': 6, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'controllerPublishSecretRef'},
    {'1': 'nodeStageSecretRef', '3': 7, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'nodeStageSecretRef'},
    {'1': 'nodePublishSecretRef', '3': 8, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'nodePublishSecretRef'},
    {'1': 'controllerExpandSecretRef', '3': 9, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'controllerExpandSecretRef'},
    {'1': 'nodeExpandSecretRef', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'nodeExpandSecretRef'},
  ],
  '3': [CSIPersistentVolumeSource_VolumeAttributesEntry$json],
};

@$core.Deprecated('Use cSIPersistentVolumeSourceDescriptor instead')
const CSIPersistentVolumeSource_VolumeAttributesEntry$json = {
  '1': 'VolumeAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CSIPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'ChlDU0lQZXJzaXN0ZW50Vm9sdW1lU291cmNlEhYKBmRyaXZlchgBIAEoCVIGZHJpdmVyEiIKDH'
    'ZvbHVtZUhhbmRsZRgCIAEoCVIMdm9sdW1lSGFuZGxlEhoKCHJlYWRPbmx5GAMgASgIUghyZWFk'
    'T25seRIWCgZmc1R5cGUYBCABKAlSBmZzVHlwZRJoChB2b2x1bWVBdHRyaWJ1dGVzGAUgAygLMj'
    'wuYXBpLmNvcmUudjEuQ1NJUGVyc2lzdGVudFZvbHVtZVNvdXJjZS5Wb2x1bWVBdHRyaWJ1dGVz'
    'RW50cnlSEHZvbHVtZUF0dHJpYnV0ZXMSXAoaY29udHJvbGxlclB1Ymxpc2hTZWNyZXRSZWYYBi'
    'ABKAsyHC5hcGkuY29yZS52MS5TZWNyZXRSZWZlcmVuY2VSGmNvbnRyb2xsZXJQdWJsaXNoU2Vj'
    'cmV0UmVmEkwKEm5vZGVTdGFnZVNlY3JldFJlZhgHIAEoCzIcLmFwaS5jb3JlLnYxLlNlY3JldF'
    'JlZmVyZW5jZVISbm9kZVN0YWdlU2VjcmV0UmVmElAKFG5vZGVQdWJsaXNoU2VjcmV0UmVmGAgg'
    'ASgLMhwuYXBpLmNvcmUudjEuU2VjcmV0UmVmZXJlbmNlUhRub2RlUHVibGlzaFNlY3JldFJlZh'
    'JaChljb250cm9sbGVyRXhwYW5kU2VjcmV0UmVmGAkgASgLMhwuYXBpLmNvcmUudjEuU2VjcmV0'
    'UmVmZXJlbmNlUhljb250cm9sbGVyRXhwYW5kU2VjcmV0UmVmEk4KE25vZGVFeHBhbmRTZWNyZX'
    'RSZWYYCiABKAsyHC5hcGkuY29yZS52MS5TZWNyZXRSZWZlcmVuY2VSE25vZGVFeHBhbmRTZWNy'
    'ZXRSZWYaQwoVVm9sdW1lQXR0cmlidXRlc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbH'
    'VlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use cSIVolumeSourceDescriptor instead')
const CSIVolumeSource$json = {
  '1': 'CSIVolumeSource',
  '2': [
    {'1': 'driver', '3': 1, '4': 1, '5': 9, '10': 'driver'},
    {'1': 'readOnly', '3': 2, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'fsType', '3': 3, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'volumeAttributes', '3': 4, '4': 3, '5': 11, '6': '.api.core.v1.CSIVolumeSource.VolumeAttributesEntry', '10': 'volumeAttributes'},
    {'1': 'nodePublishSecretRef', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'nodePublishSecretRef'},
  ],
  '3': [CSIVolumeSource_VolumeAttributesEntry$json],
};

@$core.Deprecated('Use cSIVolumeSourceDescriptor instead')
const CSIVolumeSource_VolumeAttributesEntry$json = {
  '1': 'VolumeAttributesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CSIVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cSIVolumeSourceDescriptor = $convert.base64Decode(
    'Cg9DU0lWb2x1bWVTb3VyY2USFgoGZHJpdmVyGAEgASgJUgZkcml2ZXISGgoIcmVhZE9ubHkYAi'
    'ABKAhSCHJlYWRPbmx5EhYKBmZzVHlwZRgDIAEoCVIGZnNUeXBlEl4KEHZvbHVtZUF0dHJpYnV0'
    'ZXMYBCADKAsyMi5hcGkuY29yZS52MS5DU0lWb2x1bWVTb3VyY2UuVm9sdW1lQXR0cmlidXRlc0'
    'VudHJ5UhB2b2x1bWVBdHRyaWJ1dGVzElUKFG5vZGVQdWJsaXNoU2VjcmV0UmVmGAUgASgLMiEu'
    'YXBpLmNvcmUudjEuTG9jYWxPYmplY3RSZWZlcmVuY2VSFG5vZGVQdWJsaXNoU2VjcmV0UmVmGk'
    'MKFVZvbHVtZUF0dHJpYnV0ZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEo'
    'CVIFdmFsdWU6AjgB');

@$core.Deprecated('Use capabilitiesDescriptor instead')
const Capabilities$json = {
  '1': 'Capabilities',
  '2': [
    {'1': 'add', '3': 1, '4': 3, '5': 9, '10': 'add'},
    {'1': 'drop', '3': 2, '4': 3, '5': 9, '10': 'drop'},
  ],
};

/// Descriptor for `Capabilities`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List capabilitiesDescriptor = $convert.base64Decode(
    'CgxDYXBhYmlsaXRpZXMSEAoDYWRkGAEgAygJUgNhZGQSEgoEZHJvcBgCIAMoCVIEZHJvcA==');

@$core.Deprecated('Use cephFSPersistentVolumeSourceDescriptor instead')
const CephFSPersistentVolumeSource$json = {
  '1': 'CephFSPersistentVolumeSource',
  '2': [
    {'1': 'monitors', '3': 1, '4': 3, '5': 9, '10': 'monitors'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'user', '3': 3, '4': 1, '5': 9, '10': 'user'},
    {'1': 'secretFile', '3': 4, '4': 1, '5': 9, '10': 'secretFile'},
    {'1': 'secretRef', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'secretRef'},
    {'1': 'readOnly', '3': 6, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `CephFSPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cephFSPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'ChxDZXBoRlNQZXJzaXN0ZW50Vm9sdW1lU291cmNlEhoKCG1vbml0b3JzGAEgAygJUghtb25pdG'
    '9ycxISCgRwYXRoGAIgASgJUgRwYXRoEhIKBHVzZXIYAyABKAlSBHVzZXISHgoKc2VjcmV0Rmls'
    'ZRgEIAEoCVIKc2VjcmV0RmlsZRI6CglzZWNyZXRSZWYYBSABKAsyHC5hcGkuY29yZS52MS5TZW'
    'NyZXRSZWZlcmVuY2VSCXNlY3JldFJlZhIaCghyZWFkT25seRgGIAEoCFIIcmVhZE9ubHk=');

@$core.Deprecated('Use cephFSVolumeSourceDescriptor instead')
const CephFSVolumeSource$json = {
  '1': 'CephFSVolumeSource',
  '2': [
    {'1': 'monitors', '3': 1, '4': 3, '5': 9, '10': 'monitors'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'user', '3': 3, '4': 1, '5': 9, '10': 'user'},
    {'1': 'secretFile', '3': 4, '4': 1, '5': 9, '10': 'secretFile'},
    {'1': 'secretRef', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'secretRef'},
    {'1': 'readOnly', '3': 6, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `CephFSVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cephFSVolumeSourceDescriptor = $convert.base64Decode(
    'ChJDZXBoRlNWb2x1bWVTb3VyY2USGgoIbW9uaXRvcnMYASADKAlSCG1vbml0b3JzEhIKBHBhdG'
    'gYAiABKAlSBHBhdGgSEgoEdXNlchgDIAEoCVIEdXNlchIeCgpzZWNyZXRGaWxlGAQgASgJUgpz'
    'ZWNyZXRGaWxlEj8KCXNlY3JldFJlZhgFIAEoCzIhLmFwaS5jb3JlLnYxLkxvY2FsT2JqZWN0Um'
    'VmZXJlbmNlUglzZWNyZXRSZWYSGgoIcmVhZE9ubHkYBiABKAhSCHJlYWRPbmx5');

@$core.Deprecated('Use cinderPersistentVolumeSourceDescriptor instead')
const CinderPersistentVolumeSource$json = {
  '1': 'CinderPersistentVolumeSource',
  '2': [
    {'1': 'volumeID', '3': 1, '4': 1, '5': 9, '10': 'volumeID'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'secretRef', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'secretRef'},
  ],
};

/// Descriptor for `CinderPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cinderPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'ChxDaW5kZXJQZXJzaXN0ZW50Vm9sdW1lU291cmNlEhoKCHZvbHVtZUlEGAEgASgJUgh2b2x1bW'
    'VJRBIWCgZmc1R5cGUYAiABKAlSBmZzVHlwZRIaCghyZWFkT25seRgDIAEoCFIIcmVhZE9ubHkS'
    'OgoJc2VjcmV0UmVmGAQgASgLMhwuYXBpLmNvcmUudjEuU2VjcmV0UmVmZXJlbmNlUglzZWNyZX'
    'RSZWY=');

@$core.Deprecated('Use cinderVolumeSourceDescriptor instead')
const CinderVolumeSource$json = {
  '1': 'CinderVolumeSource',
  '2': [
    {'1': 'volumeID', '3': 1, '4': 1, '5': 9, '10': 'volumeID'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'secretRef', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'secretRef'},
  ],
};

/// Descriptor for `CinderVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List cinderVolumeSourceDescriptor = $convert.base64Decode(
    'ChJDaW5kZXJWb2x1bWVTb3VyY2USGgoIdm9sdW1lSUQYASABKAlSCHZvbHVtZUlEEhYKBmZzVH'
    'lwZRgCIAEoCVIGZnNUeXBlEhoKCHJlYWRPbmx5GAMgASgIUghyZWFkT25seRI/CglzZWNyZXRS'
    'ZWYYBCABKAsyIS5hcGkuY29yZS52MS5Mb2NhbE9iamVjdFJlZmVyZW5jZVIJc2VjcmV0UmVm');

@$core.Deprecated('Use claimSourceDescriptor instead')
const ClaimSource$json = {
  '1': 'ClaimSource',
  '2': [
    {'1': 'resourceClaimName', '3': 1, '4': 1, '5': 9, '10': 'resourceClaimName'},
    {'1': 'resourceClaimTemplateName', '3': 2, '4': 1, '5': 9, '10': 'resourceClaimTemplateName'},
  ],
};

/// Descriptor for `ClaimSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List claimSourceDescriptor = $convert.base64Decode(
    'CgtDbGFpbVNvdXJjZRIsChFyZXNvdXJjZUNsYWltTmFtZRgBIAEoCVIRcmVzb3VyY2VDbGFpbU'
    '5hbWUSPAoZcmVzb3VyY2VDbGFpbVRlbXBsYXRlTmFtZRgCIAEoCVIZcmVzb3VyY2VDbGFpbVRl'
    'bXBsYXRlTmFtZQ==');

@$core.Deprecated('Use clientIPConfigDescriptor instead')
const ClientIPConfig$json = {
  '1': 'ClientIPConfig',
  '2': [
    {'1': 'timeoutSeconds', '3': 1, '4': 1, '5': 5, '10': 'timeoutSeconds'},
  ],
};

/// Descriptor for `ClientIPConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clientIPConfigDescriptor = $convert.base64Decode(
    'Cg5DbGllbnRJUENvbmZpZxImCg50aW1lb3V0U2Vjb25kcxgBIAEoBVIOdGltZW91dFNlY29uZH'
    'M=');

@$core.Deprecated('Use clusterTrustBundleProjectionDescriptor instead')
const ClusterTrustBundleProjection$json = {
  '1': 'ClusterTrustBundleProjection',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'signerName', '3': 2, '4': 1, '5': 9, '10': 'signerName'},
    {'1': 'labelSelector', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'labelSelector'},
    {'1': 'optional', '3': 5, '4': 1, '5': 8, '10': 'optional'},
    {'1': 'path', '3': 4, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `ClusterTrustBundleProjection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterTrustBundleProjectionDescriptor = $convert.base64Decode(
    'ChxDbHVzdGVyVHJ1c3RCdW5kbGVQcm9qZWN0aW9uEhIKBG5hbWUYASABKAlSBG5hbWUSHgoKc2'
    'lnbmVyTmFtZRgCIAEoCVIKc2lnbmVyTmFtZRJSCg1sYWJlbFNlbGVjdG9yGAMgASgLMiwuYXBp'
    'bWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGFiZWxTZWxlY3RvclINbGFiZWxTZWxlY3Rvch'
    'IaCghvcHRpb25hbBgFIAEoCFIIb3B0aW9uYWwSEgoEcGF0aBgEIAEoCVIEcGF0aA==');

@$core.Deprecated('Use componentConditionDescriptor instead')
const ComponentCondition$json = {
  '1': 'ComponentCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `ComponentCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentConditionDescriptor = $convert.base64Decode(
    'ChJDb21wb25lbnRDb25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCgZzdGF0dXMYAiABKA'
    'lSBnN0YXR1cxIYCgdtZXNzYWdlGAMgASgJUgdtZXNzYWdlEhQKBWVycm9yGAQgASgJUgVlcnJv'
    'cg==');

@$core.Deprecated('Use componentStatusDescriptor instead')
const ComponentStatus$json = {
  '1': 'ComponentStatus',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'conditions', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ComponentCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `ComponentStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentStatusDescriptor = $convert.base64Decode(
    'Cg9Db21wb25lbnRTdGF0dXMSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI/Cgpjb25kaXRpb25zGAIgAygLMh8u'
    'YXBpLmNvcmUudjEuQ29tcG9uZW50Q29uZGl0aW9uUgpjb25kaXRpb25z');

@$core.Deprecated('Use componentStatusListDescriptor instead')
const ComponentStatusList$json = {
  '1': 'ComponentStatusList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ComponentStatus', '10': 'items'},
  ],
};

/// Descriptor for `ComponentStatusList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List componentStatusListDescriptor = $convert.base64Decode(
    'ChNDb21wb25lbnRTdGF0dXNMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5Ln'
    'BrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjIKBWl0ZW1zGAIgAygLMhwuYXBp'
    'LmNvcmUudjEuQ29tcG9uZW50U3RhdHVzUgVpdGVtcw==');

@$core.Deprecated('Use configMapDescriptor instead')
const ConfigMap$json = {
  '1': 'ConfigMap',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'immutable', '3': 4, '4': 1, '5': 8, '10': 'immutable'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ConfigMap.DataEntry', '10': 'data'},
    {'1': 'binaryData', '3': 3, '4': 3, '5': 11, '6': '.api.core.v1.ConfigMap.BinaryDataEntry', '10': 'binaryData'},
  ],
  '3': [ConfigMap_DataEntry$json, ConfigMap_BinaryDataEntry$json],
};

@$core.Deprecated('Use configMapDescriptor instead')
const ConfigMap_DataEntry$json = {
  '1': 'DataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use configMapDescriptor instead')
const ConfigMap_BinaryDataEntry$json = {
  '1': 'BinaryDataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ConfigMap`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configMapDescriptor = $convert.base64Decode(
    'CglDb25maWdNYXASRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIcCglpbW11dGFibGUYBCABKAhSCWltbXV0YWJs'
    'ZRI0CgRkYXRhGAIgAygLMiAuYXBpLmNvcmUudjEuQ29uZmlnTWFwLkRhdGFFbnRyeVIEZGF0YR'
    'JGCgpiaW5hcnlEYXRhGAMgAygLMiYuYXBpLmNvcmUudjEuQ29uZmlnTWFwLkJpbmFyeURhdGFF'
    'bnRyeVIKYmluYXJ5RGF0YRo3CglEYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdW'
    'UYAiABKAlSBXZhbHVlOgI4ARo9Cg9CaW5hcnlEYXRhRW50cnkSEAoDa2V5GAEgASgJUgNrZXkS'
    'FAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use configMapEnvSourceDescriptor instead')
const ConfigMapEnvSource$json = {
  '1': 'ConfigMapEnvSource',
  '2': [
    {'1': 'localObjectReference', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'localObjectReference'},
    {'1': 'optional', '3': 2, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `ConfigMapEnvSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configMapEnvSourceDescriptor = $convert.base64Decode(
    'ChJDb25maWdNYXBFbnZTb3VyY2USVQoUbG9jYWxPYmplY3RSZWZlcmVuY2UYASABKAsyIS5hcG'
    'kuY29yZS52MS5Mb2NhbE9iamVjdFJlZmVyZW5jZVIUbG9jYWxPYmplY3RSZWZlcmVuY2USGgoI'
    'b3B0aW9uYWwYAiABKAhSCG9wdGlvbmFs');

@$core.Deprecated('Use configMapKeySelectorDescriptor instead')
const ConfigMapKeySelector$json = {
  '1': 'ConfigMapKeySelector',
  '2': [
    {'1': 'localObjectReference', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'localObjectReference'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'optional', '3': 3, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `ConfigMapKeySelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configMapKeySelectorDescriptor = $convert.base64Decode(
    'ChRDb25maWdNYXBLZXlTZWxlY3RvchJVChRsb2NhbE9iamVjdFJlZmVyZW5jZRgBIAEoCzIhLm'
    'FwaS5jb3JlLnYxLkxvY2FsT2JqZWN0UmVmZXJlbmNlUhRsb2NhbE9iamVjdFJlZmVyZW5jZRIQ'
    'CgNrZXkYAiABKAlSA2tleRIaCghvcHRpb25hbBgDIAEoCFIIb3B0aW9uYWw=');

@$core.Deprecated('Use configMapListDescriptor instead')
const ConfigMapList$json = {
  '1': 'ConfigMapList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ConfigMap', '10': 'items'},
  ],
};

/// Descriptor for `ConfigMapList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configMapListDescriptor = $convert.base64Decode(
    'Cg1Db25maWdNYXBMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEiwKBWl0ZW1zGAIgAygLMhYuYXBpLmNvcmUu'
    'djEuQ29uZmlnTWFwUgVpdGVtcw==');

@$core.Deprecated('Use configMapNodeConfigSourceDescriptor instead')
const ConfigMapNodeConfigSource$json = {
  '1': 'ConfigMapNodeConfigSource',
  '2': [
    {'1': 'namespace', '3': 1, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uid', '3': 3, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'resourceVersion', '3': 4, '4': 1, '5': 9, '10': 'resourceVersion'},
    {'1': 'kubeletConfigKey', '3': 5, '4': 1, '5': 9, '10': 'kubeletConfigKey'},
  ],
};

/// Descriptor for `ConfigMapNodeConfigSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configMapNodeConfigSourceDescriptor = $convert.base64Decode(
    'ChlDb25maWdNYXBOb2RlQ29uZmlnU291cmNlEhwKCW5hbWVzcGFjZRgBIAEoCVIJbmFtZXNwYW'
    'NlEhIKBG5hbWUYAiABKAlSBG5hbWUSEAoDdWlkGAMgASgJUgN1aWQSKAoPcmVzb3VyY2VWZXJz'
    'aW9uGAQgASgJUg9yZXNvdXJjZVZlcnNpb24SKgoQa3ViZWxldENvbmZpZ0tleRgFIAEoCVIQa3'
    'ViZWxldENvbmZpZ0tleQ==');

@$core.Deprecated('Use configMapProjectionDescriptor instead')
const ConfigMapProjection$json = {
  '1': 'ConfigMapProjection',
  '2': [
    {'1': 'localObjectReference', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'localObjectReference'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.KeyToPath', '10': 'items'},
    {'1': 'optional', '3': 4, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `ConfigMapProjection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configMapProjectionDescriptor = $convert.base64Decode(
    'ChNDb25maWdNYXBQcm9qZWN0aW9uElUKFGxvY2FsT2JqZWN0UmVmZXJlbmNlGAEgASgLMiEuYX'
    'BpLmNvcmUudjEuTG9jYWxPYmplY3RSZWZlcmVuY2VSFGxvY2FsT2JqZWN0UmVmZXJlbmNlEiwK'
    'BWl0ZW1zGAIgAygLMhYuYXBpLmNvcmUudjEuS2V5VG9QYXRoUgVpdGVtcxIaCghvcHRpb25hbB'
    'gEIAEoCFIIb3B0aW9uYWw=');

@$core.Deprecated('Use configMapVolumeSourceDescriptor instead')
const ConfigMapVolumeSource$json = {
  '1': 'ConfigMapVolumeSource',
  '2': [
    {'1': 'localObjectReference', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'localObjectReference'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.KeyToPath', '10': 'items'},
    {'1': 'defaultMode', '3': 3, '4': 1, '5': 5, '10': 'defaultMode'},
    {'1': 'optional', '3': 4, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `ConfigMapVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List configMapVolumeSourceDescriptor = $convert.base64Decode(
    'ChVDb25maWdNYXBWb2x1bWVTb3VyY2USVQoUbG9jYWxPYmplY3RSZWZlcmVuY2UYASABKAsyIS'
    '5hcGkuY29yZS52MS5Mb2NhbE9iamVjdFJlZmVyZW5jZVIUbG9jYWxPYmplY3RSZWZlcmVuY2US'
    'LAoFaXRlbXMYAiADKAsyFi5hcGkuY29yZS52MS5LZXlUb1BhdGhSBWl0ZW1zEiAKC2RlZmF1bH'
    'RNb2RlGAMgASgFUgtkZWZhdWx0TW9kZRIaCghvcHRpb25hbBgEIAEoCFIIb3B0aW9uYWw=');

@$core.Deprecated('Use containerDescriptor instead')
const Container$json = {
  '1': 'Container',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 2, '4': 1, '5': 9, '10': 'image'},
    {'1': 'command', '3': 3, '4': 3, '5': 9, '10': 'command'},
    {'1': 'args', '3': 4, '4': 3, '5': 9, '10': 'args'},
    {'1': 'workingDir', '3': 5, '4': 1, '5': 9, '10': 'workingDir'},
    {'1': 'ports', '3': 6, '4': 3, '5': 11, '6': '.api.core.v1.ContainerPort', '10': 'ports'},
    {'1': 'envFrom', '3': 19, '4': 3, '5': 11, '6': '.api.core.v1.EnvFromSource', '10': 'envFrom'},
    {'1': 'env', '3': 7, '4': 3, '5': 11, '6': '.api.core.v1.EnvVar', '10': 'env'},
    {'1': 'resources', '3': 8, '4': 1, '5': 11, '6': '.api.core.v1.ResourceRequirements', '10': 'resources'},
    {'1': 'resizePolicy', '3': 23, '4': 3, '5': 11, '6': '.api.core.v1.ContainerResizePolicy', '10': 'resizePolicy'},
    {'1': 'restartPolicy', '3': 24, '4': 1, '5': 9, '10': 'restartPolicy'},
    {'1': 'volumeMounts', '3': 9, '4': 3, '5': 11, '6': '.api.core.v1.VolumeMount', '10': 'volumeMounts'},
    {'1': 'volumeDevices', '3': 21, '4': 3, '5': 11, '6': '.api.core.v1.VolumeDevice', '10': 'volumeDevices'},
    {'1': 'livenessProbe', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.Probe', '10': 'livenessProbe'},
    {'1': 'readinessProbe', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.Probe', '10': 'readinessProbe'},
    {'1': 'startupProbe', '3': 22, '4': 1, '5': 11, '6': '.api.core.v1.Probe', '10': 'startupProbe'},
    {'1': 'lifecycle', '3': 12, '4': 1, '5': 11, '6': '.api.core.v1.Lifecycle', '10': 'lifecycle'},
    {'1': 'terminationMessagePath', '3': 13, '4': 1, '5': 9, '10': 'terminationMessagePath'},
    {'1': 'terminationMessagePolicy', '3': 20, '4': 1, '5': 9, '10': 'terminationMessagePolicy'},
    {'1': 'imagePullPolicy', '3': 14, '4': 1, '5': 9, '10': 'imagePullPolicy'},
    {'1': 'securityContext', '3': 15, '4': 1, '5': 11, '6': '.api.core.v1.SecurityContext', '10': 'securityContext'},
    {'1': 'stdin', '3': 16, '4': 1, '5': 8, '10': 'stdin'},
    {'1': 'stdinOnce', '3': 17, '4': 1, '5': 8, '10': 'stdinOnce'},
    {'1': 'tty', '3': 18, '4': 1, '5': 8, '10': 'tty'},
  ],
};

/// Descriptor for `Container`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerDescriptor = $convert.base64Decode(
    'CglDb250YWluZXISEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVpbWFnZRgCIAEoCVIFaW1hZ2USGA'
    'oHY29tbWFuZBgDIAMoCVIHY29tbWFuZBISCgRhcmdzGAQgAygJUgRhcmdzEh4KCndvcmtpbmdE'
    'aXIYBSABKAlSCndvcmtpbmdEaXISMAoFcG9ydHMYBiADKAsyGi5hcGkuY29yZS52MS5Db250YW'
    'luZXJQb3J0UgVwb3J0cxI0CgdlbnZGcm9tGBMgAygLMhouYXBpLmNvcmUudjEuRW52RnJvbVNv'
    'dXJjZVIHZW52RnJvbRIlCgNlbnYYByADKAsyEy5hcGkuY29yZS52MS5FbnZWYXJSA2VudhI/Cg'
    'lyZXNvdXJjZXMYCCABKAsyIS5hcGkuY29yZS52MS5SZXNvdXJjZVJlcXVpcmVtZW50c1IJcmVz'
    'b3VyY2VzEkYKDHJlc2l6ZVBvbGljeRgXIAMoCzIiLmFwaS5jb3JlLnYxLkNvbnRhaW5lclJlc2'
    'l6ZVBvbGljeVIMcmVzaXplUG9saWN5EiQKDXJlc3RhcnRQb2xpY3kYGCABKAlSDXJlc3RhcnRQ'
    'b2xpY3kSPAoMdm9sdW1lTW91bnRzGAkgAygLMhguYXBpLmNvcmUudjEuVm9sdW1lTW91bnRSDH'
    'ZvbHVtZU1vdW50cxI/Cg12b2x1bWVEZXZpY2VzGBUgAygLMhkuYXBpLmNvcmUudjEuVm9sdW1l'
    'RGV2aWNlUg12b2x1bWVEZXZpY2VzEjgKDWxpdmVuZXNzUHJvYmUYCiABKAsyEi5hcGkuY29yZS'
    '52MS5Qcm9iZVINbGl2ZW5lc3NQcm9iZRI6Cg5yZWFkaW5lc3NQcm9iZRgLIAEoCzISLmFwaS5j'
    'b3JlLnYxLlByb2JlUg5yZWFkaW5lc3NQcm9iZRI2CgxzdGFydHVwUHJvYmUYFiABKAsyEi5hcG'
    'kuY29yZS52MS5Qcm9iZVIMc3RhcnR1cFByb2JlEjQKCWxpZmVjeWNsZRgMIAEoCzIWLmFwaS5j'
    'b3JlLnYxLkxpZmVjeWNsZVIJbGlmZWN5Y2xlEjYKFnRlcm1pbmF0aW9uTWVzc2FnZVBhdGgYDS'
    'ABKAlSFnRlcm1pbmF0aW9uTWVzc2FnZVBhdGgSOgoYdGVybWluYXRpb25NZXNzYWdlUG9saWN5'
    'GBQgASgJUhh0ZXJtaW5hdGlvbk1lc3NhZ2VQb2xpY3kSKAoPaW1hZ2VQdWxsUG9saWN5GA4gAS'
    'gJUg9pbWFnZVB1bGxQb2xpY3kSRgoPc2VjdXJpdHlDb250ZXh0GA8gASgLMhwuYXBpLmNvcmUu'
    'djEuU2VjdXJpdHlDb250ZXh0Ug9zZWN1cml0eUNvbnRleHQSFAoFc3RkaW4YECABKAhSBXN0ZG'
    'luEhwKCXN0ZGluT25jZRgRIAEoCFIJc3RkaW5PbmNlEhAKA3R0eRgSIAEoCFIDdHR5');

@$core.Deprecated('Use containerImageDescriptor instead')
const ContainerImage$json = {
  '1': 'ContainerImage',
  '2': [
    {'1': 'names', '3': 1, '4': 3, '5': 9, '10': 'names'},
    {'1': 'sizeBytes', '3': 2, '4': 1, '5': 3, '10': 'sizeBytes'},
  ],
};

/// Descriptor for `ContainerImage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerImageDescriptor = $convert.base64Decode(
    'Cg5Db250YWluZXJJbWFnZRIUCgVuYW1lcxgBIAMoCVIFbmFtZXMSHAoJc2l6ZUJ5dGVzGAIgAS'
    'gDUglzaXplQnl0ZXM=');

@$core.Deprecated('Use containerPortDescriptor instead')
const ContainerPort$json = {
  '1': 'ContainerPort',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'hostPort', '3': 2, '4': 1, '5': 5, '10': 'hostPort'},
    {'1': 'containerPort', '3': 3, '4': 1, '5': 5, '10': 'containerPort'},
    {'1': 'protocol', '3': 4, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'hostIP', '3': 5, '4': 1, '5': 9, '10': 'hostIP'},
  ],
};

/// Descriptor for `ContainerPort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerPortDescriptor = $convert.base64Decode(
    'Cg1Db250YWluZXJQb3J0EhIKBG5hbWUYASABKAlSBG5hbWUSGgoIaG9zdFBvcnQYAiABKAVSCG'
    'hvc3RQb3J0EiQKDWNvbnRhaW5lclBvcnQYAyABKAVSDWNvbnRhaW5lclBvcnQSGgoIcHJvdG9j'
    'b2wYBCABKAlSCHByb3RvY29sEhYKBmhvc3RJUBgFIAEoCVIGaG9zdElQ');

@$core.Deprecated('Use containerResizePolicyDescriptor instead')
const ContainerResizePolicy$json = {
  '1': 'ContainerResizePolicy',
  '2': [
    {'1': 'resourceName', '3': 1, '4': 1, '5': 9, '10': 'resourceName'},
    {'1': 'restartPolicy', '3': 2, '4': 1, '5': 9, '10': 'restartPolicy'},
  ],
};

/// Descriptor for `ContainerResizePolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerResizePolicyDescriptor = $convert.base64Decode(
    'ChVDb250YWluZXJSZXNpemVQb2xpY3kSIgoMcmVzb3VyY2VOYW1lGAEgASgJUgxyZXNvdXJjZU'
    '5hbWUSJAoNcmVzdGFydFBvbGljeRgCIAEoCVINcmVzdGFydFBvbGljeQ==');

@$core.Deprecated('Use containerStateDescriptor instead')
const ContainerState$json = {
  '1': 'ContainerState',
  '2': [
    {'1': 'waiting', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.ContainerStateWaiting', '10': 'waiting'},
    {'1': 'running', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ContainerStateRunning', '10': 'running'},
    {'1': 'terminated', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ContainerStateTerminated', '10': 'terminated'},
  ],
};

/// Descriptor for `ContainerState`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerStateDescriptor = $convert.base64Decode(
    'Cg5Db250YWluZXJTdGF0ZRI8Cgd3YWl0aW5nGAEgASgLMiIuYXBpLmNvcmUudjEuQ29udGFpbm'
    'VyU3RhdGVXYWl0aW5nUgd3YWl0aW5nEjwKB3J1bm5pbmcYAiABKAsyIi5hcGkuY29yZS52MS5D'
    'b250YWluZXJTdGF0ZVJ1bm5pbmdSB3J1bm5pbmcSRQoKdGVybWluYXRlZBgDIAEoCzIlLmFwaS'
    '5jb3JlLnYxLkNvbnRhaW5lclN0YXRlVGVybWluYXRlZFIKdGVybWluYXRlZA==');

@$core.Deprecated('Use containerStateRunningDescriptor instead')
const ContainerStateRunning$json = {
  '1': 'ContainerStateRunning',
  '2': [
    {'1': 'startedAt', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'startedAt'},
  ],
};

/// Descriptor for `ContainerStateRunning`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerStateRunningDescriptor = $convert.base64Decode(
    'ChVDb250YWluZXJTdGF0ZVJ1bm5pbmcSQQoJc3RhcnRlZEF0GAEgASgLMiMuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuVGltZVIJc3RhcnRlZEF0');

@$core.Deprecated('Use containerStateTerminatedDescriptor instead')
const ContainerStateTerminated$json = {
  '1': 'ContainerStateTerminated',
  '2': [
    {'1': 'exitCode', '3': 1, '4': 1, '5': 5, '10': 'exitCode'},
    {'1': 'signal', '3': 2, '4': 1, '5': 5, '10': 'signal'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    {'1': 'startedAt', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'startedAt'},
    {'1': 'finishedAt', '3': 6, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'finishedAt'},
    {'1': 'containerID', '3': 7, '4': 1, '5': 9, '10': 'containerID'},
  ],
};

/// Descriptor for `ContainerStateTerminated`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerStateTerminatedDescriptor = $convert.base64Decode(
    'ChhDb250YWluZXJTdGF0ZVRlcm1pbmF0ZWQSGgoIZXhpdENvZGUYASABKAVSCGV4aXRDb2RlEh'
    'YKBnNpZ25hbBgCIAEoBVIGc2lnbmFsEhYKBnJlYXNvbhgDIAEoCVIGcmVhc29uEhgKB21lc3Nh'
    'Z2UYBCABKAlSB21lc3NhZ2USQQoJc3RhcnRlZEF0GAUgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuVGltZVIJc3RhcnRlZEF0EkMKCmZpbmlzaGVkQXQYBiABKAsyIy5hcGlt'
    'YWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUgpmaW5pc2hlZEF0EiAKC2NvbnRhaW5lck'
    'lEGAcgASgJUgtjb250YWluZXJJRA==');

@$core.Deprecated('Use containerStateWaitingDescriptor instead')
const ContainerStateWaiting$json = {
  '1': 'ContainerStateWaiting',
  '2': [
    {'1': 'reason', '3': 1, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ContainerStateWaiting`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerStateWaitingDescriptor = $convert.base64Decode(
    'ChVDb250YWluZXJTdGF0ZVdhaXRpbmcSFgoGcmVhc29uGAEgASgJUgZyZWFzb24SGAoHbWVzc2'
    'FnZRgCIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use containerStatusDescriptor instead')
const ContainerStatus$json = {
  '1': 'ContainerStatus',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'state', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ContainerState', '10': 'state'},
    {'1': 'lastState', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ContainerState', '10': 'lastState'},
    {'1': 'ready', '3': 4, '4': 1, '5': 8, '10': 'ready'},
    {'1': 'restartCount', '3': 5, '4': 1, '5': 5, '10': 'restartCount'},
    {'1': 'image', '3': 6, '4': 1, '5': 9, '10': 'image'},
    {'1': 'imageID', '3': 7, '4': 1, '5': 9, '10': 'imageID'},
    {'1': 'containerID', '3': 8, '4': 1, '5': 9, '10': 'containerID'},
    {'1': 'started', '3': 9, '4': 1, '5': 8, '10': 'started'},
    {'1': 'allocatedResources', '3': 10, '4': 3, '5': 11, '6': '.api.core.v1.ContainerStatus.AllocatedResourcesEntry', '10': 'allocatedResources'},
    {'1': 'resources', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.ResourceRequirements', '10': 'resources'},
    {'1': 'volumeMounts', '3': 12, '4': 3, '5': 11, '6': '.api.core.v1.VolumeMountStatus', '10': 'volumeMounts'},
  ],
  '3': [ContainerStatus_AllocatedResourcesEntry$json],
};

@$core.Deprecated('Use containerStatusDescriptor instead')
const ContainerStatus_AllocatedResourcesEntry$json = {
  '1': 'AllocatedResourcesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ContainerStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerStatusDescriptor = $convert.base64Decode(
    'Cg9Db250YWluZXJTdGF0dXMSEgoEbmFtZRgBIAEoCVIEbmFtZRIxCgVzdGF0ZRgCIAEoCzIbLm'
    'FwaS5jb3JlLnYxLkNvbnRhaW5lclN0YXRlUgVzdGF0ZRI5CglsYXN0U3RhdGUYAyABKAsyGy5h'
    'cGkuY29yZS52MS5Db250YWluZXJTdGF0ZVIJbGFzdFN0YXRlEhQKBXJlYWR5GAQgASgIUgVyZW'
    'FkeRIiCgxyZXN0YXJ0Q291bnQYBSABKAVSDHJlc3RhcnRDb3VudBIUCgVpbWFnZRgGIAEoCVIF'
    'aW1hZ2USGAoHaW1hZ2VJRBgHIAEoCVIHaW1hZ2VJRBIgCgtjb250YWluZXJJRBgIIAEoCVILY2'
    '9udGFpbmVySUQSGAoHc3RhcnRlZBgJIAEoCFIHc3RhcnRlZBJkChJhbGxvY2F0ZWRSZXNvdXJj'
    'ZXMYCiADKAsyNC5hcGkuY29yZS52MS5Db250YWluZXJTdGF0dXMuQWxsb2NhdGVkUmVzb3VyY2'
    'VzRW50cnlSEmFsbG9jYXRlZFJlc291cmNlcxI/CglyZXNvdXJjZXMYCyABKAsyIS5hcGkuY29y'
    'ZS52MS5SZXNvdXJjZVJlcXVpcmVtZW50c1IJcmVzb3VyY2VzEkIKDHZvbHVtZU1vdW50cxgMIA'
    'MoCzIeLmFwaS5jb3JlLnYxLlZvbHVtZU1vdW50U3RhdHVzUgx2b2x1bWVNb3VudHMabgoXQWxs'
    'b2NhdGVkUmVzb3VyY2VzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFsdWUYAiABKAsyJy'
    '5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIFdmFsdWU6AjgB');

@$core.Deprecated('Use daemonEndpointDescriptor instead')
const DaemonEndpoint$json = {
  '1': 'DaemonEndpoint',
  '2': [
    {'1': 'Port', '3': 1, '4': 1, '5': 5, '10': 'Port'},
  ],
};

/// Descriptor for `DaemonEndpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List daemonEndpointDescriptor = $convert.base64Decode(
    'Cg5EYWVtb25FbmRwb2ludBISCgRQb3J0GAEgASgFUgRQb3J0');

@$core.Deprecated('Use downwardAPIProjectionDescriptor instead')
const DownwardAPIProjection$json = {
  '1': 'DownwardAPIProjection',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.DownwardAPIVolumeFile', '10': 'items'},
  ],
};

/// Descriptor for `DownwardAPIProjection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downwardAPIProjectionDescriptor = $convert.base64Decode(
    'ChVEb3dud2FyZEFQSVByb2plY3Rpb24SOAoFaXRlbXMYASADKAsyIi5hcGkuY29yZS52MS5Eb3'
    'dud2FyZEFQSVZvbHVtZUZpbGVSBWl0ZW1z');

@$core.Deprecated('Use downwardAPIVolumeFileDescriptor instead')
const DownwardAPIVolumeFile$json = {
  '1': 'DownwardAPIVolumeFile',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'fieldRef', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ObjectFieldSelector', '10': 'fieldRef'},
    {'1': 'resourceFieldRef', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ResourceFieldSelector', '10': 'resourceFieldRef'},
    {'1': 'mode', '3': 4, '4': 1, '5': 5, '10': 'mode'},
  ],
};

/// Descriptor for `DownwardAPIVolumeFile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downwardAPIVolumeFileDescriptor = $convert.base64Decode(
    'ChVEb3dud2FyZEFQSVZvbHVtZUZpbGUSEgoEcGF0aBgBIAEoCVIEcGF0aBI8CghmaWVsZFJlZh'
    'gCIAEoCzIgLmFwaS5jb3JlLnYxLk9iamVjdEZpZWxkU2VsZWN0b3JSCGZpZWxkUmVmEk4KEHJl'
    'c291cmNlRmllbGRSZWYYAyABKAsyIi5hcGkuY29yZS52MS5SZXNvdXJjZUZpZWxkU2VsZWN0b3'
    'JSEHJlc291cmNlRmllbGRSZWYSEgoEbW9kZRgEIAEoBVIEbW9kZQ==');

@$core.Deprecated('Use downwardAPIVolumeSourceDescriptor instead')
const DownwardAPIVolumeSource$json = {
  '1': 'DownwardAPIVolumeSource',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.DownwardAPIVolumeFile', '10': 'items'},
    {'1': 'defaultMode', '3': 2, '4': 1, '5': 5, '10': 'defaultMode'},
  ],
};

/// Descriptor for `DownwardAPIVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List downwardAPIVolumeSourceDescriptor = $convert.base64Decode(
    'ChdEb3dud2FyZEFQSVZvbHVtZVNvdXJjZRI4CgVpdGVtcxgBIAMoCzIiLmFwaS5jb3JlLnYxLk'
    'Rvd253YXJkQVBJVm9sdW1lRmlsZVIFaXRlbXMSIAoLZGVmYXVsdE1vZGUYAiABKAVSC2RlZmF1'
    'bHRNb2Rl');

@$core.Deprecated('Use emptyDirVolumeSourceDescriptor instead')
const EmptyDirVolumeSource$json = {
  '1': 'EmptyDirVolumeSource',
  '2': [
    {'1': 'medium', '3': 1, '4': 1, '5': 9, '10': 'medium'},
    {'1': 'sizeLimit', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'sizeLimit'},
  ],
};

/// Descriptor for `EmptyDirVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDirVolumeSourceDescriptor = $convert.base64Decode(
    'ChRFbXB0eURpclZvbHVtZVNvdXJjZRIWCgZtZWRpdW0YASABKAlSBm1lZGl1bRJFCglzaXplTG'
    'ltaXQYAiABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIJc2l6'
    'ZUxpbWl0');

@$core.Deprecated('Use endpointAddressDescriptor instead')
const EndpointAddress$json = {
  '1': 'EndpointAddress',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'hostname', '3': 3, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'nodeName', '3': 4, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'targetRef', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'targetRef'},
  ],
};

/// Descriptor for `EndpointAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointAddressDescriptor = $convert.base64Decode(
    'Cg9FbmRwb2ludEFkZHJlc3MSDgoCaXAYASABKAlSAmlwEhoKCGhvc3RuYW1lGAMgASgJUghob3'
    'N0bmFtZRIaCghub2RlTmFtZRgEIAEoCVIIbm9kZU5hbWUSOgoJdGFyZ2V0UmVmGAIgASgLMhwu'
    'YXBpLmNvcmUudjEuT2JqZWN0UmVmZXJlbmNlUgl0YXJnZXRSZWY=');

@$core.Deprecated('Use endpointPortDescriptor instead')
const EndpointPort$json = {
  '1': 'EndpointPort',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'port', '3': 2, '4': 1, '5': 5, '10': 'port'},
    {'1': 'protocol', '3': 3, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'appProtocol', '3': 4, '4': 1, '5': 9, '10': 'appProtocol'},
  ],
};

/// Descriptor for `EndpointPort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointPortDescriptor = $convert.base64Decode(
    'CgxFbmRwb2ludFBvcnQSEgoEbmFtZRgBIAEoCVIEbmFtZRISCgRwb3J0GAIgASgFUgRwb3J0Eh'
    'oKCHByb3RvY29sGAMgASgJUghwcm90b2NvbBIgCgthcHBQcm90b2NvbBgEIAEoCVILYXBwUHJv'
    'dG9jb2w=');

@$core.Deprecated('Use endpointSubsetDescriptor instead')
const EndpointSubset$json = {
  '1': 'EndpointSubset',
  '2': [
    {'1': 'addresses', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.EndpointAddress', '10': 'addresses'},
    {'1': 'notReadyAddresses', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.EndpointAddress', '10': 'notReadyAddresses'},
    {'1': 'ports', '3': 3, '4': 3, '5': 11, '6': '.api.core.v1.EndpointPort', '10': 'ports'},
  ],
};

/// Descriptor for `EndpointSubset`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointSubsetDescriptor = $convert.base64Decode(
    'Cg5FbmRwb2ludFN1YnNldBI6CglhZGRyZXNzZXMYASADKAsyHC5hcGkuY29yZS52MS5FbmRwb2'
    'ludEFkZHJlc3NSCWFkZHJlc3NlcxJKChFub3RSZWFkeUFkZHJlc3NlcxgCIAMoCzIcLmFwaS5j'
    'b3JlLnYxLkVuZHBvaW50QWRkcmVzc1IRbm90UmVhZHlBZGRyZXNzZXMSLwoFcG9ydHMYAyADKA'
    'syGS5hcGkuY29yZS52MS5FbmRwb2ludFBvcnRSBXBvcnRz');

@$core.Deprecated('Use endpointsDescriptor instead')
const Endpoints$json = {
  '1': 'Endpoints',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'subsets', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.EndpointSubset', '10': 'subsets'},
  ],
};

/// Descriptor for `Endpoints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointsDescriptor = $convert.base64Decode(
    'CglFbmRwb2ludHMSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI1CgdzdWJzZXRzGAIgAygLMhsuYXBpLmNvcmUu'
    'djEuRW5kcG9pbnRTdWJzZXRSB3N1YnNldHM=');

@$core.Deprecated('Use endpointsListDescriptor instead')
const EndpointsList$json = {
  '1': 'EndpointsList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Endpoints', '10': 'items'},
  ],
};

/// Descriptor for `EndpointsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointsListDescriptor = $convert.base64Decode(
    'Cg1FbmRwb2ludHNMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEiwKBWl0ZW1zGAIgAygLMhYuYXBpLmNvcmUu'
    'djEuRW5kcG9pbnRzUgVpdGVtcw==');

@$core.Deprecated('Use envFromSourceDescriptor instead')
const EnvFromSource$json = {
  '1': 'EnvFromSource',
  '2': [
    {'1': 'prefix', '3': 1, '4': 1, '5': 9, '10': 'prefix'},
    {'1': 'configMapRef', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ConfigMapEnvSource', '10': 'configMapRef'},
    {'1': 'secretRef', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.SecretEnvSource', '10': 'secretRef'},
  ],
};

/// Descriptor for `EnvFromSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List envFromSourceDescriptor = $convert.base64Decode(
    'Cg1FbnZGcm9tU291cmNlEhYKBnByZWZpeBgBIAEoCVIGcHJlZml4EkMKDGNvbmZpZ01hcFJlZh'
    'gCIAEoCzIfLmFwaS5jb3JlLnYxLkNvbmZpZ01hcEVudlNvdXJjZVIMY29uZmlnTWFwUmVmEjoK'
    'CXNlY3JldFJlZhgDIAEoCzIcLmFwaS5jb3JlLnYxLlNlY3JldEVudlNvdXJjZVIJc2VjcmV0Um'
    'Vm');

@$core.Deprecated('Use envVarDescriptor instead')
const EnvVar$json = {
  '1': 'EnvVar',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'valueFrom', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.EnvVarSource', '10': 'valueFrom'},
  ],
};

/// Descriptor for `EnvVar`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List envVarDescriptor = $convert.base64Decode(
    'CgZFbnZWYXISEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUSNwoJdm'
    'FsdWVGcm9tGAMgASgLMhkuYXBpLmNvcmUudjEuRW52VmFyU291cmNlUgl2YWx1ZUZyb20=');

@$core.Deprecated('Use envVarSourceDescriptor instead')
const EnvVarSource$json = {
  '1': 'EnvVarSource',
  '2': [
    {'1': 'fieldRef', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.ObjectFieldSelector', '10': 'fieldRef'},
    {'1': 'resourceFieldRef', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ResourceFieldSelector', '10': 'resourceFieldRef'},
    {'1': 'configMapKeyRef', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ConfigMapKeySelector', '10': 'configMapKeyRef'},
    {'1': 'secretKeyRef', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.SecretKeySelector', '10': 'secretKeyRef'},
  ],
};

/// Descriptor for `EnvVarSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List envVarSourceDescriptor = $convert.base64Decode(
    'CgxFbnZWYXJTb3VyY2USPAoIZmllbGRSZWYYASABKAsyIC5hcGkuY29yZS52MS5PYmplY3RGaW'
    'VsZFNlbGVjdG9yUghmaWVsZFJlZhJOChByZXNvdXJjZUZpZWxkUmVmGAIgASgLMiIuYXBpLmNv'
    'cmUudjEuUmVzb3VyY2VGaWVsZFNlbGVjdG9yUhByZXNvdXJjZUZpZWxkUmVmEksKD2NvbmZpZ0'
    '1hcEtleVJlZhgDIAEoCzIhLmFwaS5jb3JlLnYxLkNvbmZpZ01hcEtleVNlbGVjdG9yUg9jb25m'
    'aWdNYXBLZXlSZWYSQgoMc2VjcmV0S2V5UmVmGAQgASgLMh4uYXBpLmNvcmUudjEuU2VjcmV0S2'
    'V5U2VsZWN0b3JSDHNlY3JldEtleVJlZg==');

@$core.Deprecated('Use ephemeralContainerDescriptor instead')
const EphemeralContainer$json = {
  '1': 'EphemeralContainer',
  '2': [
    {'1': 'ephemeralContainerCommon', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.EphemeralContainerCommon', '10': 'ephemeralContainerCommon'},
    {'1': 'targetContainerName', '3': 2, '4': 1, '5': 9, '10': 'targetContainerName'},
  ],
};

/// Descriptor for `EphemeralContainer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ephemeralContainerDescriptor = $convert.base64Decode(
    'ChJFcGhlbWVyYWxDb250YWluZXISYQoYZXBoZW1lcmFsQ29udGFpbmVyQ29tbW9uGAEgASgLMi'
    'UuYXBpLmNvcmUudjEuRXBoZW1lcmFsQ29udGFpbmVyQ29tbW9uUhhlcGhlbWVyYWxDb250YWlu'
    'ZXJDb21tb24SMAoTdGFyZ2V0Q29udGFpbmVyTmFtZRgCIAEoCVITdGFyZ2V0Q29udGFpbmVyTm'
    'FtZQ==');

@$core.Deprecated('Use ephemeralContainerCommonDescriptor instead')
const EphemeralContainerCommon$json = {
  '1': 'EphemeralContainerCommon',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'image', '3': 2, '4': 1, '5': 9, '10': 'image'},
    {'1': 'command', '3': 3, '4': 3, '5': 9, '10': 'command'},
    {'1': 'args', '3': 4, '4': 3, '5': 9, '10': 'args'},
    {'1': 'workingDir', '3': 5, '4': 1, '5': 9, '10': 'workingDir'},
    {'1': 'ports', '3': 6, '4': 3, '5': 11, '6': '.api.core.v1.ContainerPort', '10': 'ports'},
    {'1': 'envFrom', '3': 19, '4': 3, '5': 11, '6': '.api.core.v1.EnvFromSource', '10': 'envFrom'},
    {'1': 'env', '3': 7, '4': 3, '5': 11, '6': '.api.core.v1.EnvVar', '10': 'env'},
    {'1': 'resources', '3': 8, '4': 1, '5': 11, '6': '.api.core.v1.ResourceRequirements', '10': 'resources'},
    {'1': 'resizePolicy', '3': 23, '4': 3, '5': 11, '6': '.api.core.v1.ContainerResizePolicy', '10': 'resizePolicy'},
    {'1': 'restartPolicy', '3': 24, '4': 1, '5': 9, '10': 'restartPolicy'},
    {'1': 'volumeMounts', '3': 9, '4': 3, '5': 11, '6': '.api.core.v1.VolumeMount', '10': 'volumeMounts'},
    {'1': 'volumeDevices', '3': 21, '4': 3, '5': 11, '6': '.api.core.v1.VolumeDevice', '10': 'volumeDevices'},
    {'1': 'livenessProbe', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.Probe', '10': 'livenessProbe'},
    {'1': 'readinessProbe', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.Probe', '10': 'readinessProbe'},
    {'1': 'startupProbe', '3': 22, '4': 1, '5': 11, '6': '.api.core.v1.Probe', '10': 'startupProbe'},
    {'1': 'lifecycle', '3': 12, '4': 1, '5': 11, '6': '.api.core.v1.Lifecycle', '10': 'lifecycle'},
    {'1': 'terminationMessagePath', '3': 13, '4': 1, '5': 9, '10': 'terminationMessagePath'},
    {'1': 'terminationMessagePolicy', '3': 20, '4': 1, '5': 9, '10': 'terminationMessagePolicy'},
    {'1': 'imagePullPolicy', '3': 14, '4': 1, '5': 9, '10': 'imagePullPolicy'},
    {'1': 'securityContext', '3': 15, '4': 1, '5': 11, '6': '.api.core.v1.SecurityContext', '10': 'securityContext'},
    {'1': 'stdin', '3': 16, '4': 1, '5': 8, '10': 'stdin'},
    {'1': 'stdinOnce', '3': 17, '4': 1, '5': 8, '10': 'stdinOnce'},
    {'1': 'tty', '3': 18, '4': 1, '5': 8, '10': 'tty'},
  ],
};

/// Descriptor for `EphemeralContainerCommon`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ephemeralContainerCommonDescriptor = $convert.base64Decode(
    'ChhFcGhlbWVyYWxDb250YWluZXJDb21tb24SEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgVpbWFnZR'
    'gCIAEoCVIFaW1hZ2USGAoHY29tbWFuZBgDIAMoCVIHY29tbWFuZBISCgRhcmdzGAQgAygJUgRh'
    'cmdzEh4KCndvcmtpbmdEaXIYBSABKAlSCndvcmtpbmdEaXISMAoFcG9ydHMYBiADKAsyGi5hcG'
    'kuY29yZS52MS5Db250YWluZXJQb3J0UgVwb3J0cxI0CgdlbnZGcm9tGBMgAygLMhouYXBpLmNv'
    'cmUudjEuRW52RnJvbVNvdXJjZVIHZW52RnJvbRIlCgNlbnYYByADKAsyEy5hcGkuY29yZS52MS'
    '5FbnZWYXJSA2VudhI/CglyZXNvdXJjZXMYCCABKAsyIS5hcGkuY29yZS52MS5SZXNvdXJjZVJl'
    'cXVpcmVtZW50c1IJcmVzb3VyY2VzEkYKDHJlc2l6ZVBvbGljeRgXIAMoCzIiLmFwaS5jb3JlLn'
    'YxLkNvbnRhaW5lclJlc2l6ZVBvbGljeVIMcmVzaXplUG9saWN5EiQKDXJlc3RhcnRQb2xpY3kY'
    'GCABKAlSDXJlc3RhcnRQb2xpY3kSPAoMdm9sdW1lTW91bnRzGAkgAygLMhguYXBpLmNvcmUudj'
    'EuVm9sdW1lTW91bnRSDHZvbHVtZU1vdW50cxI/Cg12b2x1bWVEZXZpY2VzGBUgAygLMhkuYXBp'
    'LmNvcmUudjEuVm9sdW1lRGV2aWNlUg12b2x1bWVEZXZpY2VzEjgKDWxpdmVuZXNzUHJvYmUYCi'
    'ABKAsyEi5hcGkuY29yZS52MS5Qcm9iZVINbGl2ZW5lc3NQcm9iZRI6Cg5yZWFkaW5lc3NQcm9i'
    'ZRgLIAEoCzISLmFwaS5jb3JlLnYxLlByb2JlUg5yZWFkaW5lc3NQcm9iZRI2CgxzdGFydHVwUH'
    'JvYmUYFiABKAsyEi5hcGkuY29yZS52MS5Qcm9iZVIMc3RhcnR1cFByb2JlEjQKCWxpZmVjeWNs'
    'ZRgMIAEoCzIWLmFwaS5jb3JlLnYxLkxpZmVjeWNsZVIJbGlmZWN5Y2xlEjYKFnRlcm1pbmF0aW'
    '9uTWVzc2FnZVBhdGgYDSABKAlSFnRlcm1pbmF0aW9uTWVzc2FnZVBhdGgSOgoYdGVybWluYXRp'
    'b25NZXNzYWdlUG9saWN5GBQgASgJUhh0ZXJtaW5hdGlvbk1lc3NhZ2VQb2xpY3kSKAoPaW1hZ2'
    'VQdWxsUG9saWN5GA4gASgJUg9pbWFnZVB1bGxQb2xpY3kSRgoPc2VjdXJpdHlDb250ZXh0GA8g'
    'ASgLMhwuYXBpLmNvcmUudjEuU2VjdXJpdHlDb250ZXh0Ug9zZWN1cml0eUNvbnRleHQSFAoFc3'
    'RkaW4YECABKAhSBXN0ZGluEhwKCXN0ZGluT25jZRgRIAEoCFIJc3RkaW5PbmNlEhAKA3R0eRgS'
    'IAEoCFIDdHR5');

@$core.Deprecated('Use ephemeralVolumeSourceDescriptor instead')
const EphemeralVolumeSource$json = {
  '1': 'EphemeralVolumeSource',
  '2': [
    {'1': 'volumeClaimTemplate', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimTemplate', '10': 'volumeClaimTemplate'},
  ],
};

/// Descriptor for `EphemeralVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ephemeralVolumeSourceDescriptor = $convert.base64Decode(
    'ChVFcGhlbWVyYWxWb2x1bWVTb3VyY2USXAoTdm9sdW1lQ2xhaW1UZW1wbGF0ZRgBIAEoCzIqLm'
    'FwaS5jb3JlLnYxLlBlcnNpc3RlbnRWb2x1bWVDbGFpbVRlbXBsYXRlUhN2b2x1bWVDbGFpbVRl'
    'bXBsYXRl');

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'involvedObject', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'involvedObject'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
    {'1': 'source', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.EventSource', '10': 'source'},
    {'1': 'firstTimestamp', '3': 6, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'firstTimestamp'},
    {'1': 'lastTimestamp', '3': 7, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTimestamp'},
    {'1': 'count', '3': 8, '4': 1, '5': 5, '10': 'count'},
    {'1': 'type', '3': 9, '4': 1, '5': 9, '10': 'type'},
    {'1': 'eventTime', '3': 10, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.MicroTime', '10': 'eventTime'},
    {'1': 'series', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.EventSeries', '10': 'series'},
    {'1': 'action', '3': 12, '4': 1, '5': 9, '10': 'action'},
    {'1': 'related', '3': 13, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'related'},
    {'1': 'reportingComponent', '3': 14, '4': 1, '5': 9, '10': 'reportingComponent'},
    {'1': 'reportingInstance', '3': 15, '4': 1, '5': 9, '10': 'reportingInstance'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLn'
    'YxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkQKDmludm9sdmVkT2JqZWN0GAIgASgLMhwuYXBpLmNv'
    'cmUudjEuT2JqZWN0UmVmZXJlbmNlUg5pbnZvbHZlZE9iamVjdBIWCgZyZWFzb24YAyABKAlSBn'
    'JlYXNvbhIYCgdtZXNzYWdlGAQgASgJUgdtZXNzYWdlEjAKBnNvdXJjZRgFIAEoCzIYLmFwaS5j'
    'b3JlLnYxLkV2ZW50U291cmNlUgZzb3VyY2USSwoOZmlyc3RUaW1lc3RhbXAYBiABKAsyIy5hcG'
    'ltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUg5maXJzdFRpbWVzdGFtcBJJCg1sYXN0'
    'VGltZXN0YW1wGAcgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVINbG'
    'FzdFRpbWVzdGFtcBIUCgVjb3VudBgIIAEoBVIFY291bnQSEgoEdHlwZRgJIAEoCVIEdHlwZRJG'
    'CglldmVudFRpbWUYCiABKAsyKC5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5NaWNyb1'
    'RpbWVSCWV2ZW50VGltZRIwCgZzZXJpZXMYCyABKAsyGC5hcGkuY29yZS52MS5FdmVudFNlcmll'
    'c1IGc2VyaWVzEhYKBmFjdGlvbhgMIAEoCVIGYWN0aW9uEjYKB3JlbGF0ZWQYDSABKAsyHC5hcG'
    'kuY29yZS52MS5PYmplY3RSZWZlcmVuY2VSB3JlbGF0ZWQSLgoScmVwb3J0aW5nQ29tcG9uZW50'
    'GA4gASgJUhJyZXBvcnRpbmdDb21wb25lbnQSLAoRcmVwb3J0aW5nSW5zdGFuY2UYDyABKAlSEX'
    'JlcG9ydGluZ0luc3RhbmNl');

@$core.Deprecated('Use eventListDescriptor instead')
const EventList$json = {
  '1': 'EventList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Event', '10': 'items'},
  ],
};

/// Descriptor for `EventList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventListDescriptor = $convert.base64Decode(
    'CglFdmVudExpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESKAoFaXRlbXMYAiADKAsyEi5hcGkuY29yZS52MS5F'
    'dmVudFIFaXRlbXM=');

@$core.Deprecated('Use eventSeriesDescriptor instead')
const EventSeries$json = {
  '1': 'EventSeries',
  '2': [
    {'1': 'count', '3': 1, '4': 1, '5': 5, '10': 'count'},
    {'1': 'lastObservedTime', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.MicroTime', '10': 'lastObservedTime'},
  ],
};

/// Descriptor for `EventSeries`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventSeriesDescriptor = $convert.base64Decode(
    'CgtFdmVudFNlcmllcxIUCgVjb3VudBgBIAEoBVIFY291bnQSVAoQbGFzdE9ic2VydmVkVGltZR'
    'gCIAEoCzIoLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLk1pY3JvVGltZVIQbGFzdE9i'
    'c2VydmVkVGltZQ==');

@$core.Deprecated('Use eventSourceDescriptor instead')
const EventSource$json = {
  '1': 'EventSource',
  '2': [
    {'1': 'component', '3': 1, '4': 1, '5': 9, '10': 'component'},
    {'1': 'host', '3': 2, '4': 1, '5': 9, '10': 'host'},
  ],
};

/// Descriptor for `EventSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventSourceDescriptor = $convert.base64Decode(
    'CgtFdmVudFNvdXJjZRIcCgljb21wb25lbnQYASABKAlSCWNvbXBvbmVudBISCgRob3N0GAIgAS'
    'gJUgRob3N0');

@$core.Deprecated('Use execActionDescriptor instead')
const ExecAction$json = {
  '1': 'ExecAction',
  '2': [
    {'1': 'command', '3': 1, '4': 3, '5': 9, '10': 'command'},
  ],
};

/// Descriptor for `ExecAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List execActionDescriptor = $convert.base64Decode(
    'CgpFeGVjQWN0aW9uEhgKB2NvbW1hbmQYASADKAlSB2NvbW1hbmQ=');

@$core.Deprecated('Use fCVolumeSourceDescriptor instead')
const FCVolumeSource$json = {
  '1': 'FCVolumeSource',
  '2': [
    {'1': 'targetWWNs', '3': 1, '4': 3, '5': 9, '10': 'targetWWNs'},
    {'1': 'lun', '3': 2, '4': 1, '5': 5, '10': 'lun'},
    {'1': 'fsType', '3': 3, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 4, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'wwids', '3': 5, '4': 3, '5': 9, '10': 'wwids'},
  ],
};

/// Descriptor for `FCVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fCVolumeSourceDescriptor = $convert.base64Decode(
    'Cg5GQ1ZvbHVtZVNvdXJjZRIeCgp0YXJnZXRXV05zGAEgAygJUgp0YXJnZXRXV05zEhAKA2x1bh'
    'gCIAEoBVIDbHVuEhYKBmZzVHlwZRgDIAEoCVIGZnNUeXBlEhoKCHJlYWRPbmx5GAQgASgIUghy'
    'ZWFkT25seRIUCgV3d2lkcxgFIAMoCVIFd3dpZHM=');

@$core.Deprecated('Use flexPersistentVolumeSourceDescriptor instead')
const FlexPersistentVolumeSource$json = {
  '1': 'FlexPersistentVolumeSource',
  '2': [
    {'1': 'driver', '3': 1, '4': 1, '5': 9, '10': 'driver'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'secretRef', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'secretRef'},
    {'1': 'readOnly', '3': 4, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'options', '3': 5, '4': 3, '5': 11, '6': '.api.core.v1.FlexPersistentVolumeSource.OptionsEntry', '10': 'options'},
  ],
  '3': [FlexPersistentVolumeSource_OptionsEntry$json],
};

@$core.Deprecated('Use flexPersistentVolumeSourceDescriptor instead')
const FlexPersistentVolumeSource_OptionsEntry$json = {
  '1': 'OptionsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FlexPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flexPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'ChpGbGV4UGVyc2lzdGVudFZvbHVtZVNvdXJjZRIWCgZkcml2ZXIYASABKAlSBmRyaXZlchIWCg'
    'Zmc1R5cGUYAiABKAlSBmZzVHlwZRI6CglzZWNyZXRSZWYYAyABKAsyHC5hcGkuY29yZS52MS5T'
    'ZWNyZXRSZWZlcmVuY2VSCXNlY3JldFJlZhIaCghyZWFkT25seRgEIAEoCFIIcmVhZE9ubHkSTg'
    'oHb3B0aW9ucxgFIAMoCzI0LmFwaS5jb3JlLnYxLkZsZXhQZXJzaXN0ZW50Vm9sdW1lU291cmNl'
    'Lk9wdGlvbnNFbnRyeVIHb3B0aW9ucxo6CgxPcHRpb25zRW50cnkSEAoDa2V5GAEgASgJUgNrZX'
    'kSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use flexVolumeSourceDescriptor instead')
const FlexVolumeSource$json = {
  '1': 'FlexVolumeSource',
  '2': [
    {'1': 'driver', '3': 1, '4': 1, '5': 9, '10': 'driver'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'secretRef', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'secretRef'},
    {'1': 'readOnly', '3': 4, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'options', '3': 5, '4': 3, '5': 11, '6': '.api.core.v1.FlexVolumeSource.OptionsEntry', '10': 'options'},
  ],
  '3': [FlexVolumeSource_OptionsEntry$json],
};

@$core.Deprecated('Use flexVolumeSourceDescriptor instead')
const FlexVolumeSource_OptionsEntry$json = {
  '1': 'OptionsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `FlexVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flexVolumeSourceDescriptor = $convert.base64Decode(
    'ChBGbGV4Vm9sdW1lU291cmNlEhYKBmRyaXZlchgBIAEoCVIGZHJpdmVyEhYKBmZzVHlwZRgCIA'
    'EoCVIGZnNUeXBlEj8KCXNlY3JldFJlZhgDIAEoCzIhLmFwaS5jb3JlLnYxLkxvY2FsT2JqZWN0'
    'UmVmZXJlbmNlUglzZWNyZXRSZWYSGgoIcmVhZE9ubHkYBCABKAhSCHJlYWRPbmx5EkQKB29wdG'
    'lvbnMYBSADKAsyKi5hcGkuY29yZS52MS5GbGV4Vm9sdW1lU291cmNlLk9wdGlvbnNFbnRyeVIH'
    'b3B0aW9ucxo6CgxPcHRpb25zRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKA'
    'lSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use flockerVolumeSourceDescriptor instead')
const FlockerVolumeSource$json = {
  '1': 'FlockerVolumeSource',
  '2': [
    {'1': 'datasetName', '3': 1, '4': 1, '5': 9, '10': 'datasetName'},
    {'1': 'datasetUUID', '3': 2, '4': 1, '5': 9, '10': 'datasetUUID'},
  ],
};

/// Descriptor for `FlockerVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List flockerVolumeSourceDescriptor = $convert.base64Decode(
    'ChNGbG9ja2VyVm9sdW1lU291cmNlEiAKC2RhdGFzZXROYW1lGAEgASgJUgtkYXRhc2V0TmFtZR'
    'IgCgtkYXRhc2V0VVVJRBgCIAEoCVILZGF0YXNldFVVSUQ=');

@$core.Deprecated('Use gCEPersistentDiskVolumeSourceDescriptor instead')
const GCEPersistentDiskVolumeSource$json = {
  '1': 'GCEPersistentDiskVolumeSource',
  '2': [
    {'1': 'pdName', '3': 1, '4': 1, '5': 9, '10': 'pdName'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'partition', '3': 3, '4': 1, '5': 5, '10': 'partition'},
    {'1': 'readOnly', '3': 4, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `GCEPersistentDiskVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gCEPersistentDiskVolumeSourceDescriptor = $convert.base64Decode(
    'Ch1HQ0VQZXJzaXN0ZW50RGlza1ZvbHVtZVNvdXJjZRIWCgZwZE5hbWUYASABKAlSBnBkTmFtZR'
    'IWCgZmc1R5cGUYAiABKAlSBmZzVHlwZRIcCglwYXJ0aXRpb24YAyABKAVSCXBhcnRpdGlvbhIa'
    'CghyZWFkT25seRgEIAEoCFIIcmVhZE9ubHk=');

@$core.Deprecated('Use gRPCActionDescriptor instead')
const GRPCAction$json = {
  '1': 'GRPCAction',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 5, '10': 'port'},
    {'1': 'service', '3': 2, '4': 1, '5': 9, '10': 'service'},
  ],
};

/// Descriptor for `GRPCAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gRPCActionDescriptor = $convert.base64Decode(
    'CgpHUlBDQWN0aW9uEhIKBHBvcnQYASABKAVSBHBvcnQSGAoHc2VydmljZRgCIAEoCVIHc2Vydm'
    'ljZQ==');

@$core.Deprecated('Use gitRepoVolumeSourceDescriptor instead')
const GitRepoVolumeSource$json = {
  '1': 'GitRepoVolumeSource',
  '2': [
    {'1': 'repository', '3': 1, '4': 1, '5': 9, '10': 'repository'},
    {'1': 'revision', '3': 2, '4': 1, '5': 9, '10': 'revision'},
    {'1': 'directory', '3': 3, '4': 1, '5': 9, '10': 'directory'},
  ],
};

/// Descriptor for `GitRepoVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List gitRepoVolumeSourceDescriptor = $convert.base64Decode(
    'ChNHaXRSZXBvVm9sdW1lU291cmNlEh4KCnJlcG9zaXRvcnkYASABKAlSCnJlcG9zaXRvcnkSGg'
    'oIcmV2aXNpb24YAiABKAlSCHJldmlzaW9uEhwKCWRpcmVjdG9yeRgDIAEoCVIJZGlyZWN0b3J5');

@$core.Deprecated('Use glusterfsPersistentVolumeSourceDescriptor instead')
const GlusterfsPersistentVolumeSource$json = {
  '1': 'GlusterfsPersistentVolumeSource',
  '2': [
    {'1': 'endpoints', '3': 1, '4': 1, '5': 9, '10': 'endpoints'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'endpointsNamespace', '3': 4, '4': 1, '5': 9, '10': 'endpointsNamespace'},
  ],
};

/// Descriptor for `GlusterfsPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List glusterfsPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'Ch9HbHVzdGVyZnNQZXJzaXN0ZW50Vm9sdW1lU291cmNlEhwKCWVuZHBvaW50cxgBIAEoCVIJZW'
    '5kcG9pbnRzEhIKBHBhdGgYAiABKAlSBHBhdGgSGgoIcmVhZE9ubHkYAyABKAhSCHJlYWRPbmx5'
    'Ei4KEmVuZHBvaW50c05hbWVzcGFjZRgEIAEoCVISZW5kcG9pbnRzTmFtZXNwYWNl');

@$core.Deprecated('Use glusterfsVolumeSourceDescriptor instead')
const GlusterfsVolumeSource$json = {
  '1': 'GlusterfsVolumeSource',
  '2': [
    {'1': 'endpoints', '3': 1, '4': 1, '5': 9, '10': 'endpoints'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `GlusterfsVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List glusterfsVolumeSourceDescriptor = $convert.base64Decode(
    'ChVHbHVzdGVyZnNWb2x1bWVTb3VyY2USHAoJZW5kcG9pbnRzGAEgASgJUgllbmRwb2ludHMSEg'
    'oEcGF0aBgCIAEoCVIEcGF0aBIaCghyZWFkT25seRgDIAEoCFIIcmVhZE9ubHk=');

@$core.Deprecated('Use hTTPGetActionDescriptor instead')
const HTTPGetAction$json = {
  '1': 'HTTPGetAction',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'port', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'port'},
    {'1': 'host', '3': 3, '4': 1, '5': 9, '10': 'host'},
    {'1': 'scheme', '3': 4, '4': 1, '5': 9, '10': 'scheme'},
    {'1': 'httpHeaders', '3': 5, '4': 3, '5': 11, '6': '.api.core.v1.HTTPHeader', '10': 'httpHeaders'},
  ],
};

/// Descriptor for `HTTPGetAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPGetActionDescriptor = $convert.base64Decode(
    'Cg1IVFRQR2V0QWN0aW9uEhIKBHBhdGgYASABKAlSBHBhdGgSPQoEcG9ydBgCIAEoCzIpLmFwaW'
    '1hY2hpbmVyeS5wa2cudXRpbC5pbnRzdHIuSW50T3JTdHJpbmdSBHBvcnQSEgoEaG9zdBgDIAEo'
    'CVIEaG9zdBIWCgZzY2hlbWUYBCABKAlSBnNjaGVtZRI5CgtodHRwSGVhZGVycxgFIAMoCzIXLm'
    'FwaS5jb3JlLnYxLkhUVFBIZWFkZXJSC2h0dHBIZWFkZXJz');

@$core.Deprecated('Use hTTPHeaderDescriptor instead')
const HTTPHeader$json = {
  '1': 'HTTPHeader',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `HTTPHeader`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTTPHeaderDescriptor = $convert.base64Decode(
    'CgpIVFRQSGVhZGVyEhIKBG5hbWUYASABKAlSBG5hbWUSFAoFdmFsdWUYAiABKAlSBXZhbHVl');

@$core.Deprecated('Use hostAliasDescriptor instead')
const HostAlias$json = {
  '1': 'HostAlias',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'hostnames', '3': 2, '4': 3, '5': 9, '10': 'hostnames'},
  ],
};

/// Descriptor for `HostAlias`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hostAliasDescriptor = $convert.base64Decode(
    'CglIb3N0QWxpYXMSDgoCaXAYASABKAlSAmlwEhwKCWhvc3RuYW1lcxgCIAMoCVIJaG9zdG5hbW'
    'Vz');

@$core.Deprecated('Use hostIPDescriptor instead')
const HostIP$json = {
  '1': 'HostIP',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `HostIP`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hostIPDescriptor = $convert.base64Decode(
    'CgZIb3N0SVASDgoCaXAYASABKAlSAmlw');

@$core.Deprecated('Use hostPathVolumeSourceDescriptor instead')
const HostPathVolumeSource$json = {
  '1': 'HostPathVolumeSource',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
  ],
};

/// Descriptor for `HostPathVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hostPathVolumeSourceDescriptor = $convert.base64Decode(
    'ChRIb3N0UGF0aFZvbHVtZVNvdXJjZRISCgRwYXRoGAEgASgJUgRwYXRoEhIKBHR5cGUYAiABKA'
    'lSBHR5cGU=');

@$core.Deprecated('Use iSCSIPersistentVolumeSourceDescriptor instead')
const ISCSIPersistentVolumeSource$json = {
  '1': 'ISCSIPersistentVolumeSource',
  '2': [
    {'1': 'targetPortal', '3': 1, '4': 1, '5': 9, '10': 'targetPortal'},
    {'1': 'iqn', '3': 2, '4': 1, '5': 9, '10': 'iqn'},
    {'1': 'lun', '3': 3, '4': 1, '5': 5, '10': 'lun'},
    {'1': 'iscsiInterface', '3': 4, '4': 1, '5': 9, '10': 'iscsiInterface'},
    {'1': 'fsType', '3': 5, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 6, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'portals', '3': 7, '4': 3, '5': 9, '10': 'portals'},
    {'1': 'chapAuthDiscovery', '3': 8, '4': 1, '5': 8, '10': 'chapAuthDiscovery'},
    {'1': 'chapAuthSession', '3': 11, '4': 1, '5': 8, '10': 'chapAuthSession'},
    {'1': 'secretRef', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'secretRef'},
    {'1': 'initiatorName', '3': 12, '4': 1, '5': 9, '10': 'initiatorName'},
  ],
};

/// Descriptor for `ISCSIPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iSCSIPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'ChtJU0NTSVBlcnNpc3RlbnRWb2x1bWVTb3VyY2USIgoMdGFyZ2V0UG9ydGFsGAEgASgJUgx0YX'
    'JnZXRQb3J0YWwSEAoDaXFuGAIgASgJUgNpcW4SEAoDbHVuGAMgASgFUgNsdW4SJgoOaXNjc2lJ'
    'bnRlcmZhY2UYBCABKAlSDmlzY3NpSW50ZXJmYWNlEhYKBmZzVHlwZRgFIAEoCVIGZnNUeXBlEh'
    'oKCHJlYWRPbmx5GAYgASgIUghyZWFkT25seRIYCgdwb3J0YWxzGAcgAygJUgdwb3J0YWxzEiwK'
    'EWNoYXBBdXRoRGlzY292ZXJ5GAggASgIUhFjaGFwQXV0aERpc2NvdmVyeRIoCg9jaGFwQXV0aF'
    'Nlc3Npb24YCyABKAhSD2NoYXBBdXRoU2Vzc2lvbhI6CglzZWNyZXRSZWYYCiABKAsyHC5hcGku'
    'Y29yZS52MS5TZWNyZXRSZWZlcmVuY2VSCXNlY3JldFJlZhIkCg1pbml0aWF0b3JOYW1lGAwgAS'
    'gJUg1pbml0aWF0b3JOYW1l');

@$core.Deprecated('Use iSCSIVolumeSourceDescriptor instead')
const ISCSIVolumeSource$json = {
  '1': 'ISCSIVolumeSource',
  '2': [
    {'1': 'targetPortal', '3': 1, '4': 1, '5': 9, '10': 'targetPortal'},
    {'1': 'iqn', '3': 2, '4': 1, '5': 9, '10': 'iqn'},
    {'1': 'lun', '3': 3, '4': 1, '5': 5, '10': 'lun'},
    {'1': 'iscsiInterface', '3': 4, '4': 1, '5': 9, '10': 'iscsiInterface'},
    {'1': 'fsType', '3': 5, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 6, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'portals', '3': 7, '4': 3, '5': 9, '10': 'portals'},
    {'1': 'chapAuthDiscovery', '3': 8, '4': 1, '5': 8, '10': 'chapAuthDiscovery'},
    {'1': 'chapAuthSession', '3': 11, '4': 1, '5': 8, '10': 'chapAuthSession'},
    {'1': 'secretRef', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'secretRef'},
    {'1': 'initiatorName', '3': 12, '4': 1, '5': 9, '10': 'initiatorName'},
  ],
};

/// Descriptor for `ISCSIVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List iSCSIVolumeSourceDescriptor = $convert.base64Decode(
    'ChFJU0NTSVZvbHVtZVNvdXJjZRIiCgx0YXJnZXRQb3J0YWwYASABKAlSDHRhcmdldFBvcnRhbB'
    'IQCgNpcW4YAiABKAlSA2lxbhIQCgNsdW4YAyABKAVSA2x1bhImCg5pc2NzaUludGVyZmFjZRgE'
    'IAEoCVIOaXNjc2lJbnRlcmZhY2USFgoGZnNUeXBlGAUgASgJUgZmc1R5cGUSGgoIcmVhZE9ubH'
    'kYBiABKAhSCHJlYWRPbmx5EhgKB3BvcnRhbHMYByADKAlSB3BvcnRhbHMSLAoRY2hhcEF1dGhE'
    'aXNjb3ZlcnkYCCABKAhSEWNoYXBBdXRoRGlzY292ZXJ5EigKD2NoYXBBdXRoU2Vzc2lvbhgLIA'
    'EoCFIPY2hhcEF1dGhTZXNzaW9uEj8KCXNlY3JldFJlZhgKIAEoCzIhLmFwaS5jb3JlLnYxLkxv'
    'Y2FsT2JqZWN0UmVmZXJlbmNlUglzZWNyZXRSZWYSJAoNaW5pdGlhdG9yTmFtZRgMIAEoCVINaW'
    '5pdGlhdG9yTmFtZQ==');

@$core.Deprecated('Use keyToPathDescriptor instead')
const KeyToPath$json = {
  '1': 'KeyToPath',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'mode', '3': 3, '4': 1, '5': 5, '10': 'mode'},
  ],
};

/// Descriptor for `KeyToPath`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyToPathDescriptor = $convert.base64Decode(
    'CglLZXlUb1BhdGgSEAoDa2V5GAEgASgJUgNrZXkSEgoEcGF0aBgCIAEoCVIEcGF0aBISCgRtb2'
    'RlGAMgASgFUgRtb2Rl');

@$core.Deprecated('Use lifecycleDescriptor instead')
const Lifecycle$json = {
  '1': 'Lifecycle',
  '2': [
    {'1': 'postStart', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LifecycleHandler', '10': 'postStart'},
    {'1': 'preStop', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.LifecycleHandler', '10': 'preStop'},
  ],
};

/// Descriptor for `Lifecycle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lifecycleDescriptor = $convert.base64Decode(
    'CglMaWZlY3ljbGUSOwoJcG9zdFN0YXJ0GAEgASgLMh0uYXBpLmNvcmUudjEuTGlmZWN5Y2xlSG'
    'FuZGxlclIJcG9zdFN0YXJ0EjcKB3ByZVN0b3AYAiABKAsyHS5hcGkuY29yZS52MS5MaWZlY3lj'
    'bGVIYW5kbGVyUgdwcmVTdG9w');

@$core.Deprecated('Use lifecycleHandlerDescriptor instead')
const LifecycleHandler$json = {
  '1': 'LifecycleHandler',
  '2': [
    {'1': 'exec', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.ExecAction', '10': 'exec'},
    {'1': 'httpGet', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.HTTPGetAction', '10': 'httpGet'},
    {'1': 'tcpSocket', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.TCPSocketAction', '10': 'tcpSocket'},
    {'1': 'sleep', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.SleepAction', '10': 'sleep'},
  ],
};

/// Descriptor for `LifecycleHandler`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lifecycleHandlerDescriptor = $convert.base64Decode(
    'ChBMaWZlY3ljbGVIYW5kbGVyEisKBGV4ZWMYASABKAsyFy5hcGkuY29yZS52MS5FeGVjQWN0aW'
    '9uUgRleGVjEjQKB2h0dHBHZXQYAiABKAsyGi5hcGkuY29yZS52MS5IVFRQR2V0QWN0aW9uUgdo'
    'dHRwR2V0EjoKCXRjcFNvY2tldBgDIAEoCzIcLmFwaS5jb3JlLnYxLlRDUFNvY2tldEFjdGlvbl'
    'IJdGNwU29ja2V0Ei4KBXNsZWVwGAQgASgLMhguYXBpLmNvcmUudjEuU2xlZXBBY3Rpb25SBXNs'
    'ZWVw');

@$core.Deprecated('Use limitRangeDescriptor instead')
const LimitRange$json = {
  '1': 'LimitRange',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.LimitRangeSpec', '10': 'spec'},
  ],
};

/// Descriptor for `LimitRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List limitRangeDescriptor = $convert.base64Decode(
    'CgpMaW1pdFJhbmdlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESLwoEc3BlYxgCIAEoCzIbLmFwaS5jb3JlLnYx'
    'LkxpbWl0UmFuZ2VTcGVjUgRzcGVj');

@$core.Deprecated('Use limitRangeItemDescriptor instead')
const LimitRangeItem$json = {
  '1': 'LimitRangeItem',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'max', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.LimitRangeItem.MaxEntry', '10': 'max'},
    {'1': 'min', '3': 3, '4': 3, '5': 11, '6': '.api.core.v1.LimitRangeItem.MinEntry', '10': 'min'},
    {'1': 'default', '3': 4, '4': 3, '5': 11, '6': '.api.core.v1.LimitRangeItem.DefaultEntry', '10': 'default'},
    {'1': 'defaultRequest', '3': 5, '4': 3, '5': 11, '6': '.api.core.v1.LimitRangeItem.DefaultRequestEntry', '10': 'defaultRequest'},
    {'1': 'maxLimitRequestRatio', '3': 6, '4': 3, '5': 11, '6': '.api.core.v1.LimitRangeItem.MaxLimitRequestRatioEntry', '10': 'maxLimitRequestRatio'},
  ],
  '3': [LimitRangeItem_MaxEntry$json, LimitRangeItem_MinEntry$json, LimitRangeItem_DefaultEntry$json, LimitRangeItem_DefaultRequestEntry$json, LimitRangeItem_MaxLimitRequestRatioEntry$json],
};

@$core.Deprecated('Use limitRangeItemDescriptor instead')
const LimitRangeItem_MaxEntry$json = {
  '1': 'MaxEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use limitRangeItemDescriptor instead')
const LimitRangeItem_MinEntry$json = {
  '1': 'MinEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use limitRangeItemDescriptor instead')
const LimitRangeItem_DefaultEntry$json = {
  '1': 'DefaultEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use limitRangeItemDescriptor instead')
const LimitRangeItem_DefaultRequestEntry$json = {
  '1': 'DefaultRequestEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use limitRangeItemDescriptor instead')
const LimitRangeItem_MaxLimitRequestRatioEntry$json = {
  '1': 'MaxLimitRequestRatioEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `LimitRangeItem`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List limitRangeItemDescriptor = $convert.base64Decode(
    'Cg5MaW1pdFJhbmdlSXRlbRISCgR0eXBlGAEgASgJUgR0eXBlEjYKA21heBgCIAMoCzIkLmFwaS'
    '5jb3JlLnYxLkxpbWl0UmFuZ2VJdGVtLk1heEVudHJ5UgNtYXgSNgoDbWluGAMgAygLMiQuYXBp'
    'LmNvcmUudjEuTGltaXRSYW5nZUl0ZW0uTWluRW50cnlSA21pbhJCCgdkZWZhdWx0GAQgAygLMi'
    'guYXBpLmNvcmUudjEuTGltaXRSYW5nZUl0ZW0uRGVmYXVsdEVudHJ5UgdkZWZhdWx0ElcKDmRl'
    'ZmF1bHRSZXF1ZXN0GAUgAygLMi8uYXBpLmNvcmUudjEuTGltaXRSYW5nZUl0ZW0uRGVmYXVsdF'
    'JlcXVlc3RFbnRyeVIOZGVmYXVsdFJlcXVlc3QSaQoUbWF4TGltaXRSZXF1ZXN0UmF0aW8YBiAD'
    'KAsyNS5hcGkuY29yZS52MS5MaW1pdFJhbmdlSXRlbS5NYXhMaW1pdFJlcXVlc3RSYXRpb0VudH'
    'J5UhRtYXhMaW1pdFJlcXVlc3RSYXRpbxpfCghNYXhFbnRyeRIQCgNrZXkYASABKAlSA2tleRI9'
    'CgV2YWx1ZRgCIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5Ug'
    'V2YWx1ZToCOAEaXwoITWluRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFsdWUYAiABKAsy'
    'Jy5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIFdmFsdWU6AjgBGmMKDE'
    'RlZmF1bHRFbnRyeRIQCgNrZXkYASABKAlSA2tleRI9CgV2YWx1ZRgCIAEoCzInLmFwaW1hY2hp'
    'bmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZToCOAEaagoTRGVmYXVsdFJlcX'
    'Vlc3RFbnRyeRIQCgNrZXkYASABKAlSA2tleRI9CgV2YWx1ZRgCIAEoCzInLmFwaW1hY2hpbmVy'
    'eS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZToCOAEacAoZTWF4TGltaXRSZXF1ZX'
    'N0UmF0aW9FbnRyeRIQCgNrZXkYASABKAlSA2tleRI9CgV2YWx1ZRgCIAEoCzInLmFwaW1hY2hp'
    'bmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZToCOAE=');

@$core.Deprecated('Use limitRangeListDescriptor instead')
const LimitRangeList$json = {
  '1': 'LimitRangeList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.LimitRange', '10': 'items'},
  ],
};

/// Descriptor for `LimitRangeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List limitRangeListDescriptor = $convert.base64Decode(
    'Cg5MaW1pdFJhbmdlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRItCgVpdGVtcxgCIAMoCzIXLmFwaS5jb3Jl'
    'LnYxLkxpbWl0UmFuZ2VSBWl0ZW1z');

@$core.Deprecated('Use limitRangeSpecDescriptor instead')
const LimitRangeSpec$json = {
  '1': 'LimitRangeSpec',
  '2': [
    {'1': 'limits', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.LimitRangeItem', '10': 'limits'},
  ],
};

/// Descriptor for `LimitRangeSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List limitRangeSpecDescriptor = $convert.base64Decode(
    'Cg5MaW1pdFJhbmdlU3BlYxIzCgZsaW1pdHMYASADKAsyGy5hcGkuY29yZS52MS5MaW1pdFJhbm'
    'dlSXRlbVIGbGltaXRz');

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

@$core.Deprecated('Use loadBalancerIngressDescriptor instead')
const LoadBalancerIngress$json = {
  '1': 'LoadBalancerIngress',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
    {'1': 'hostname', '3': 2, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'ipMode', '3': 3, '4': 1, '5': 9, '10': 'ipMode'},
    {'1': 'ports', '3': 4, '4': 3, '5': 11, '6': '.api.core.v1.PortStatus', '10': 'ports'},
  ],
};

/// Descriptor for `LoadBalancerIngress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadBalancerIngressDescriptor = $convert.base64Decode(
    'ChNMb2FkQmFsYW5jZXJJbmdyZXNzEg4KAmlwGAEgASgJUgJpcBIaCghob3N0bmFtZRgCIAEoCV'
    'IIaG9zdG5hbWUSFgoGaXBNb2RlGAMgASgJUgZpcE1vZGUSLQoFcG9ydHMYBCADKAsyFy5hcGku'
    'Y29yZS52MS5Qb3J0U3RhdHVzUgVwb3J0cw==');

@$core.Deprecated('Use loadBalancerStatusDescriptor instead')
const LoadBalancerStatus$json = {
  '1': 'LoadBalancerStatus',
  '2': [
    {'1': 'ingress', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.LoadBalancerIngress', '10': 'ingress'},
  ],
};

/// Descriptor for `LoadBalancerStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List loadBalancerStatusDescriptor = $convert.base64Decode(
    'ChJMb2FkQmFsYW5jZXJTdGF0dXMSOgoHaW5ncmVzcxgBIAMoCzIgLmFwaS5jb3JlLnYxLkxvYW'
    'RCYWxhbmNlckluZ3Jlc3NSB2luZ3Jlc3M=');

@$core.Deprecated('Use localObjectReferenceDescriptor instead')
const LocalObjectReference$json = {
  '1': 'LocalObjectReference',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `LocalObjectReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localObjectReferenceDescriptor = $convert.base64Decode(
    'ChRMb2NhbE9iamVjdFJlZmVyZW5jZRISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use localVolumeSourceDescriptor instead')
const LocalVolumeSource$json = {
  '1': 'LocalVolumeSource',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
  ],
};

/// Descriptor for `LocalVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List localVolumeSourceDescriptor = $convert.base64Decode(
    'ChFMb2NhbFZvbHVtZVNvdXJjZRISCgRwYXRoGAEgASgJUgRwYXRoEhYKBmZzVHlwZRgCIAEoCV'
    'IGZnNUeXBl');

@$core.Deprecated('Use modifyVolumeStatusDescriptor instead')
const ModifyVolumeStatus$json = {
  '1': 'ModifyVolumeStatus',
  '2': [
    {'1': 'targetVolumeAttributesClassName', '3': 1, '4': 1, '5': 9, '10': 'targetVolumeAttributesClassName'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
  ],
};

/// Descriptor for `ModifyVolumeStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyVolumeStatusDescriptor = $convert.base64Decode(
    'ChJNb2RpZnlWb2x1bWVTdGF0dXMSSAofdGFyZ2V0Vm9sdW1lQXR0cmlidXRlc0NsYXNzTmFtZR'
    'gBIAEoCVIfdGFyZ2V0Vm9sdW1lQXR0cmlidXRlc0NsYXNzTmFtZRIWCgZzdGF0dXMYAiABKAlS'
    'BnN0YXR1cw==');

@$core.Deprecated('Use nFSVolumeSourceDescriptor instead')
const NFSVolumeSource$json = {
  '1': 'NFSVolumeSource',
  '2': [
    {'1': 'server', '3': 1, '4': 1, '5': 9, '10': 'server'},
    {'1': 'path', '3': 2, '4': 1, '5': 9, '10': 'path'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `NFSVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nFSVolumeSourceDescriptor = $convert.base64Decode(
    'Cg9ORlNWb2x1bWVTb3VyY2USFgoGc2VydmVyGAEgASgJUgZzZXJ2ZXISEgoEcGF0aBgCIAEoCV'
    'IEcGF0aBIaCghyZWFkT25seRgDIAEoCFIIcmVhZE9ubHk=');

@$core.Deprecated('Use namespaceDescriptor instead')
const Namespace$json = {
  '1': 'Namespace',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.NamespaceSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.NamespaceStatus', '10': 'status'},
  ],
};

/// Descriptor for `Namespace`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namespaceDescriptor = $convert.base64Decode(
    'CglOYW1lc3BhY2USRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIuCgRzcGVjGAIgASgLMhouYXBpLmNvcmUudjEu'
    'TmFtZXNwYWNlU3BlY1IEc3BlYxI0CgZzdGF0dXMYAyABKAsyHC5hcGkuY29yZS52MS5OYW1lc3'
    'BhY2VTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use namespaceConditionDescriptor instead')
const NamespaceCondition$json = {
  '1': 'NamespaceCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `NamespaceCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namespaceConditionDescriptor = $convert.base64Decode(
    'ChJOYW1lc3BhY2VDb25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCgZzdGF0dXMYAiABKA'
    'lSBnN0YXR1cxJTChJsYXN0VHJhbnNpdGlvblRpbWUYBCABKAsyIy5hcGltYWNoaW5lcnkucGtn'
    'LmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlvblRpbWUSFgoGcmVhc29uGAUgASgJUg'
    'ZyZWFzb24SGAoHbWVzc2FnZRgGIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use namespaceListDescriptor instead')
const NamespaceList$json = {
  '1': 'NamespaceList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Namespace', '10': 'items'},
  ],
};

/// Descriptor for `NamespaceList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namespaceListDescriptor = $convert.base64Decode(
    'Cg1OYW1lc3BhY2VMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEiwKBWl0ZW1zGAIgAygLMhYuYXBpLmNvcmUu'
    'djEuTmFtZXNwYWNlUgVpdGVtcw==');

@$core.Deprecated('Use namespaceSpecDescriptor instead')
const NamespaceSpec$json = {
  '1': 'NamespaceSpec',
  '2': [
    {'1': 'finalizers', '3': 1, '4': 3, '5': 9, '10': 'finalizers'},
  ],
};

/// Descriptor for `NamespaceSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namespaceSpecDescriptor = $convert.base64Decode(
    'Cg1OYW1lc3BhY2VTcGVjEh4KCmZpbmFsaXplcnMYASADKAlSCmZpbmFsaXplcnM=');

@$core.Deprecated('Use namespaceStatusDescriptor instead')
const NamespaceStatus$json = {
  '1': 'NamespaceStatus',
  '2': [
    {'1': 'phase', '3': 1, '4': 1, '5': 9, '10': 'phase'},
    {'1': 'conditions', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.NamespaceCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `NamespaceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namespaceStatusDescriptor = $convert.base64Decode(
    'Cg9OYW1lc3BhY2VTdGF0dXMSFAoFcGhhc2UYASABKAlSBXBoYXNlEj8KCmNvbmRpdGlvbnMYAi'
    'ADKAsyHy5hcGkuY29yZS52MS5OYW1lc3BhY2VDb25kaXRpb25SCmNvbmRpdGlvbnM=');

@$core.Deprecated('Use nodeDescriptor instead')
const Node$json = {
  '1': 'Node',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.NodeSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.NodeStatus', '10': 'status'},
  ],
};

/// Descriptor for `Node`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDescriptor = $convert.base64Decode(
    'CgROb2RlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudj'
    'EuT2JqZWN0TWV0YVIIbWV0YWRhdGESKQoEc3BlYxgCIAEoCzIVLmFwaS5jb3JlLnYxLk5vZGVT'
    'cGVjUgRzcGVjEi8KBnN0YXR1cxgDIAEoCzIXLmFwaS5jb3JlLnYxLk5vZGVTdGF0dXNSBnN0YX'
    'R1cw==');

@$core.Deprecated('Use nodeAddressDescriptor instead')
const NodeAddress$json = {
  '1': 'NodeAddress',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `NodeAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeAddressDescriptor = $convert.base64Decode(
    'CgtOb2RlQWRkcmVzcxISCgR0eXBlGAEgASgJUgR0eXBlEhgKB2FkZHJlc3MYAiABKAlSB2FkZH'
    'Jlc3M=');

@$core.Deprecated('Use nodeAffinityDescriptor instead')
const NodeAffinity$json = {
  '1': 'NodeAffinity',
  '2': [
    {'1': 'requiredDuringSchedulingIgnoredDuringExecution', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.NodeSelector', '10': 'requiredDuringSchedulingIgnoredDuringExecution'},
    {'1': 'preferredDuringSchedulingIgnoredDuringExecution', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.PreferredSchedulingTerm', '10': 'preferredDuringSchedulingIgnoredDuringExecution'},
  ],
};

/// Descriptor for `NodeAffinity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeAffinityDescriptor = $convert.base64Decode(
    'CgxOb2RlQWZmaW5pdHkSgQEKLnJlcXVpcmVkRHVyaW5nU2NoZWR1bGluZ0lnbm9yZWREdXJpbm'
    'dFeGVjdXRpb24YASABKAsyGS5hcGkuY29yZS52MS5Ob2RlU2VsZWN0b3JSLnJlcXVpcmVkRHVy'
    'aW5nU2NoZWR1bGluZ0lnbm9yZWREdXJpbmdFeGVjdXRpb24SjgEKL3ByZWZlcnJlZER1cmluZ1'
    'NjaGVkdWxpbmdJZ25vcmVkRHVyaW5nRXhlY3V0aW9uGAIgAygLMiQuYXBpLmNvcmUudjEuUHJl'
    'ZmVycmVkU2NoZWR1bGluZ1Rlcm1SL3ByZWZlcnJlZER1cmluZ1NjaGVkdWxpbmdJZ25vcmVkRH'
    'VyaW5nRXhlY3V0aW9u');

@$core.Deprecated('Use nodeConditionDescriptor instead')
const NodeCondition$json = {
  '1': 'NodeCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastHeartbeatTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastHeartbeatTime'},
    {'1': 'lastTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `NodeCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeConditionDescriptor = $convert.base64Decode(
    'Cg1Ob2RlQ29uZGl0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSFgoGc3RhdHVzGAIgASgJUgZzdG'
    'F0dXMSUQoRbGFzdEhlYXJ0YmVhdFRpbWUYAyABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMu'
    'bWV0YS52MS5UaW1lUhFsYXN0SGVhcnRiZWF0VGltZRJTChJsYXN0VHJhbnNpdGlvblRpbWUYBC'
    'ABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlv'
    'blRpbWUSFgoGcmVhc29uGAUgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgGIAEoCVIHbWVzc2FnZQ'
    '==');

@$core.Deprecated('Use nodeConfigSourceDescriptor instead')
const NodeConfigSource$json = {
  '1': 'NodeConfigSource',
  '2': [
    {'1': 'configMap', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ConfigMapNodeConfigSource', '10': 'configMap'},
  ],
};

/// Descriptor for `NodeConfigSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeConfigSourceDescriptor = $convert.base64Decode(
    'ChBOb2RlQ29uZmlnU291cmNlEkQKCWNvbmZpZ01hcBgCIAEoCzImLmFwaS5jb3JlLnYxLkNvbm'
    'ZpZ01hcE5vZGVDb25maWdTb3VyY2VSCWNvbmZpZ01hcA==');

@$core.Deprecated('Use nodeConfigStatusDescriptor instead')
const NodeConfigStatus$json = {
  '1': 'NodeConfigStatus',
  '2': [
    {'1': 'assigned', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.NodeConfigSource', '10': 'assigned'},
    {'1': 'active', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.NodeConfigSource', '10': 'active'},
    {'1': 'lastKnownGood', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.NodeConfigSource', '10': 'lastKnownGood'},
    {'1': 'error', '3': 4, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `NodeConfigStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeConfigStatusDescriptor = $convert.base64Decode(
    'ChBOb2RlQ29uZmlnU3RhdHVzEjkKCGFzc2lnbmVkGAEgASgLMh0uYXBpLmNvcmUudjEuTm9kZU'
    'NvbmZpZ1NvdXJjZVIIYXNzaWduZWQSNQoGYWN0aXZlGAIgASgLMh0uYXBpLmNvcmUudjEuTm9k'
    'ZUNvbmZpZ1NvdXJjZVIGYWN0aXZlEkMKDWxhc3RLbm93bkdvb2QYAyABKAsyHS5hcGkuY29yZS'
    '52MS5Ob2RlQ29uZmlnU291cmNlUg1sYXN0S25vd25Hb29kEhQKBWVycm9yGAQgASgJUgVlcnJv'
    'cg==');

@$core.Deprecated('Use nodeDaemonEndpointsDescriptor instead')
const NodeDaemonEndpoints$json = {
  '1': 'NodeDaemonEndpoints',
  '2': [
    {'1': 'kubeletEndpoint', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.DaemonEndpoint', '10': 'kubeletEndpoint'},
  ],
};

/// Descriptor for `NodeDaemonEndpoints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeDaemonEndpointsDescriptor = $convert.base64Decode(
    'ChNOb2RlRGFlbW9uRW5kcG9pbnRzEkUKD2t1YmVsZXRFbmRwb2ludBgBIAEoCzIbLmFwaS5jb3'
    'JlLnYxLkRhZW1vbkVuZHBvaW50Ug9rdWJlbGV0RW5kcG9pbnQ=');

@$core.Deprecated('Use nodeListDescriptor instead')
const NodeList$json = {
  '1': 'NodeList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Node', '10': 'items'},
  ],
};

/// Descriptor for `NodeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeListDescriptor = $convert.base64Decode(
    'CghOb2RlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZX'
    'RhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRInCgVpdGVtcxgCIAMoCzIRLmFwaS5jb3JlLnYxLk5v'
    'ZGVSBWl0ZW1z');

@$core.Deprecated('Use nodeProxyOptionsDescriptor instead')
const NodeProxyOptions$json = {
  '1': 'NodeProxyOptions',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `NodeProxyOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeProxyOptionsDescriptor = $convert.base64Decode(
    'ChBOb2RlUHJveHlPcHRpb25zEhIKBHBhdGgYASABKAlSBHBhdGg=');

@$core.Deprecated('Use nodeRuntimeHandlerDescriptor instead')
const NodeRuntimeHandler$json = {
  '1': 'NodeRuntimeHandler',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'features', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.NodeRuntimeHandlerFeatures', '10': 'features'},
  ],
};

/// Descriptor for `NodeRuntimeHandler`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeRuntimeHandlerDescriptor = $convert.base64Decode(
    'ChJOb2RlUnVudGltZUhhbmRsZXISEgoEbmFtZRgBIAEoCVIEbmFtZRJDCghmZWF0dXJlcxgCIA'
    'EoCzInLmFwaS5jb3JlLnYxLk5vZGVSdW50aW1lSGFuZGxlckZlYXR1cmVzUghmZWF0dXJlcw==');

@$core.Deprecated('Use nodeRuntimeHandlerFeaturesDescriptor instead')
const NodeRuntimeHandlerFeatures$json = {
  '1': 'NodeRuntimeHandlerFeatures',
  '2': [
    {'1': 'recursiveReadOnlyMounts', '3': 1, '4': 1, '5': 8, '10': 'recursiveReadOnlyMounts'},
  ],
};

/// Descriptor for `NodeRuntimeHandlerFeatures`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeRuntimeHandlerFeaturesDescriptor = $convert.base64Decode(
    'ChpOb2RlUnVudGltZUhhbmRsZXJGZWF0dXJlcxI4ChdyZWN1cnNpdmVSZWFkT25seU1vdW50cx'
    'gBIAEoCFIXcmVjdXJzaXZlUmVhZE9ubHlNb3VudHM=');

@$core.Deprecated('Use nodeSelectorDescriptor instead')
const NodeSelector$json = {
  '1': 'NodeSelector',
  '2': [
    {'1': 'nodeSelectorTerms', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.NodeSelectorTerm', '10': 'nodeSelectorTerms'},
  ],
};

/// Descriptor for `NodeSelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeSelectorDescriptor = $convert.base64Decode(
    'CgxOb2RlU2VsZWN0b3ISSwoRbm9kZVNlbGVjdG9yVGVybXMYASADKAsyHS5hcGkuY29yZS52MS'
    '5Ob2RlU2VsZWN0b3JUZXJtUhFub2RlU2VsZWN0b3JUZXJtcw==');

@$core.Deprecated('Use nodeSelectorRequirementDescriptor instead')
const NodeSelectorRequirement$json = {
  '1': 'NodeSelectorRequirement',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'operator', '3': 2, '4': 1, '5': 9, '10': 'operator'},
    {'1': 'values', '3': 3, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `NodeSelectorRequirement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeSelectorRequirementDescriptor = $convert.base64Decode(
    'ChdOb2RlU2VsZWN0b3JSZXF1aXJlbWVudBIQCgNrZXkYASABKAlSA2tleRIaCghvcGVyYXRvch'
    'gCIAEoCVIIb3BlcmF0b3ISFgoGdmFsdWVzGAMgAygJUgZ2YWx1ZXM=');

@$core.Deprecated('Use nodeSelectorTermDescriptor instead')
const NodeSelectorTerm$json = {
  '1': 'NodeSelectorTerm',
  '2': [
    {'1': 'matchExpressions', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.NodeSelectorRequirement', '10': 'matchExpressions'},
    {'1': 'matchFields', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.NodeSelectorRequirement', '10': 'matchFields'},
  ],
};

/// Descriptor for `NodeSelectorTerm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeSelectorTermDescriptor = $convert.base64Decode(
    'ChBOb2RlU2VsZWN0b3JUZXJtElAKEG1hdGNoRXhwcmVzc2lvbnMYASADKAsyJC5hcGkuY29yZS'
    '52MS5Ob2RlU2VsZWN0b3JSZXF1aXJlbWVudFIQbWF0Y2hFeHByZXNzaW9ucxJGCgttYXRjaEZp'
    'ZWxkcxgCIAMoCzIkLmFwaS5jb3JlLnYxLk5vZGVTZWxlY3RvclJlcXVpcmVtZW50UgttYXRjaE'
    'ZpZWxkcw==');

@$core.Deprecated('Use nodeSpecDescriptor instead')
const NodeSpec$json = {
  '1': 'NodeSpec',
  '2': [
    {'1': 'podCIDR', '3': 1, '4': 1, '5': 9, '10': 'podCIDR'},
    {'1': 'podCIDRs', '3': 7, '4': 3, '5': 9, '10': 'podCIDRs'},
    {'1': 'providerID', '3': 3, '4': 1, '5': 9, '10': 'providerID'},
    {'1': 'unschedulable', '3': 4, '4': 1, '5': 8, '10': 'unschedulable'},
    {'1': 'taints', '3': 5, '4': 3, '5': 11, '6': '.api.core.v1.Taint', '10': 'taints'},
    {'1': 'configSource', '3': 6, '4': 1, '5': 11, '6': '.api.core.v1.NodeConfigSource', '10': 'configSource'},
    {'1': 'externalID', '3': 2, '4': 1, '5': 9, '10': 'externalID'},
  ],
};

/// Descriptor for `NodeSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeSpecDescriptor = $convert.base64Decode(
    'CghOb2RlU3BlYxIYCgdwb2RDSURSGAEgASgJUgdwb2RDSURSEhoKCHBvZENJRFJzGAcgAygJUg'
    'hwb2RDSURScxIeCgpwcm92aWRlcklEGAMgASgJUgpwcm92aWRlcklEEiQKDXVuc2NoZWR1bGFi'
    'bGUYBCABKAhSDXVuc2NoZWR1bGFibGUSKgoGdGFpbnRzGAUgAygLMhIuYXBpLmNvcmUudjEuVG'
    'FpbnRSBnRhaW50cxJBCgxjb25maWdTb3VyY2UYBiABKAsyHS5hcGkuY29yZS52MS5Ob2RlQ29u'
    'ZmlnU291cmNlUgxjb25maWdTb3VyY2USHgoKZXh0ZXJuYWxJRBgCIAEoCVIKZXh0ZXJuYWxJRA'
    '==');

@$core.Deprecated('Use nodeStatusDescriptor instead')
const NodeStatus$json = {
  '1': 'NodeStatus',
  '2': [
    {'1': 'capacity', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.NodeStatus.CapacityEntry', '10': 'capacity'},
    {'1': 'allocatable', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.NodeStatus.AllocatableEntry', '10': 'allocatable'},
    {'1': 'phase', '3': 3, '4': 1, '5': 9, '10': 'phase'},
    {'1': 'conditions', '3': 4, '4': 3, '5': 11, '6': '.api.core.v1.NodeCondition', '10': 'conditions'},
    {'1': 'addresses', '3': 5, '4': 3, '5': 11, '6': '.api.core.v1.NodeAddress', '10': 'addresses'},
    {'1': 'daemonEndpoints', '3': 6, '4': 1, '5': 11, '6': '.api.core.v1.NodeDaemonEndpoints', '10': 'daemonEndpoints'},
    {'1': 'nodeInfo', '3': 7, '4': 1, '5': 11, '6': '.api.core.v1.NodeSystemInfo', '10': 'nodeInfo'},
    {'1': 'images', '3': 8, '4': 3, '5': 11, '6': '.api.core.v1.ContainerImage', '10': 'images'},
    {'1': 'volumesInUse', '3': 9, '4': 3, '5': 9, '10': 'volumesInUse'},
    {'1': 'volumesAttached', '3': 10, '4': 3, '5': 11, '6': '.api.core.v1.AttachedVolume', '10': 'volumesAttached'},
    {'1': 'config', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.NodeConfigStatus', '10': 'config'},
    {'1': 'runtimeHandlers', '3': 12, '4': 3, '5': 11, '6': '.api.core.v1.NodeRuntimeHandler', '10': 'runtimeHandlers'},
  ],
  '3': [NodeStatus_CapacityEntry$json, NodeStatus_AllocatableEntry$json],
};

@$core.Deprecated('Use nodeStatusDescriptor instead')
const NodeStatus_CapacityEntry$json = {
  '1': 'CapacityEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use nodeStatusDescriptor instead')
const NodeStatus_AllocatableEntry$json = {
  '1': 'AllocatableEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `NodeStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeStatusDescriptor = $convert.base64Decode(
    'CgpOb2RlU3RhdHVzEkEKCGNhcGFjaXR5GAEgAygLMiUuYXBpLmNvcmUudjEuTm9kZVN0YXR1cy'
    '5DYXBhY2l0eUVudHJ5UghjYXBhY2l0eRJKCgthbGxvY2F0YWJsZRgCIAMoCzIoLmFwaS5jb3Jl'
    'LnYxLk5vZGVTdGF0dXMuQWxsb2NhdGFibGVFbnRyeVILYWxsb2NhdGFibGUSFAoFcGhhc2UYAy'
    'ABKAlSBXBoYXNlEjoKCmNvbmRpdGlvbnMYBCADKAsyGi5hcGkuY29yZS52MS5Ob2RlQ29uZGl0'
    'aW9uUgpjb25kaXRpb25zEjYKCWFkZHJlc3NlcxgFIAMoCzIYLmFwaS5jb3JlLnYxLk5vZGVBZG'
    'RyZXNzUglhZGRyZXNzZXMSSgoPZGFlbW9uRW5kcG9pbnRzGAYgASgLMiAuYXBpLmNvcmUudjEu'
    'Tm9kZURhZW1vbkVuZHBvaW50c1IPZGFlbW9uRW5kcG9pbnRzEjcKCG5vZGVJbmZvGAcgASgLMh'
    'suYXBpLmNvcmUudjEuTm9kZVN5c3RlbUluZm9SCG5vZGVJbmZvEjMKBmltYWdlcxgIIAMoCzIb'
    'LmFwaS5jb3JlLnYxLkNvbnRhaW5lckltYWdlUgZpbWFnZXMSIgoMdm9sdW1lc0luVXNlGAkgAy'
    'gJUgx2b2x1bWVzSW5Vc2USRQoPdm9sdW1lc0F0dGFjaGVkGAogAygLMhsuYXBpLmNvcmUudjEu'
    'QXR0YWNoZWRWb2x1bWVSD3ZvbHVtZXNBdHRhY2hlZBI1CgZjb25maWcYCyABKAsyHS5hcGkuY2'
    '9yZS52MS5Ob2RlQ29uZmlnU3RhdHVzUgZjb25maWcSSQoPcnVudGltZUhhbmRsZXJzGAwgAygL'
    'Mh8uYXBpLmNvcmUudjEuTm9kZVJ1bnRpbWVIYW5kbGVyUg9ydW50aW1lSGFuZGxlcnMaZAoNQ2'
    'FwYWNpdHlFbnRyeRIQCgNrZXkYASABKAlSA2tleRI9CgV2YWx1ZRgCIAEoCzInLmFwaW1hY2hp'
    'bmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZToCOAEaZwoQQWxsb2NhdGFibG'
    'VFbnRyeRIQCgNrZXkYASABKAlSA2tleRI9CgV2YWx1ZRgCIAEoCzInLmFwaW1hY2hpbmVyeS5w'
    'a2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZToCOAE=');

@$core.Deprecated('Use nodeSystemInfoDescriptor instead')
const NodeSystemInfo$json = {
  '1': 'NodeSystemInfo',
  '2': [
    {'1': 'machineID', '3': 1, '4': 1, '5': 9, '10': 'machineID'},
    {'1': 'systemUUID', '3': 2, '4': 1, '5': 9, '10': 'systemUUID'},
    {'1': 'bootID', '3': 3, '4': 1, '5': 9, '10': 'bootID'},
    {'1': 'kernelVersion', '3': 4, '4': 1, '5': 9, '10': 'kernelVersion'},
    {'1': 'osImage', '3': 5, '4': 1, '5': 9, '10': 'osImage'},
    {'1': 'containerRuntimeVersion', '3': 6, '4': 1, '5': 9, '10': 'containerRuntimeVersion'},
    {'1': 'kubeletVersion', '3': 7, '4': 1, '5': 9, '10': 'kubeletVersion'},
    {'1': 'kubeProxyVersion', '3': 8, '4': 1, '5': 9, '10': 'kubeProxyVersion'},
    {'1': 'operatingSystem', '3': 9, '4': 1, '5': 9, '10': 'operatingSystem'},
    {'1': 'architecture', '3': 10, '4': 1, '5': 9, '10': 'architecture'},
  ],
};

/// Descriptor for `NodeSystemInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeSystemInfoDescriptor = $convert.base64Decode(
    'Cg5Ob2RlU3lzdGVtSW5mbxIcCgltYWNoaW5lSUQYASABKAlSCW1hY2hpbmVJRBIeCgpzeXN0ZW'
    '1VVUlEGAIgASgJUgpzeXN0ZW1VVUlEEhYKBmJvb3RJRBgDIAEoCVIGYm9vdElEEiQKDWtlcm5l'
    'bFZlcnNpb24YBCABKAlSDWtlcm5lbFZlcnNpb24SGAoHb3NJbWFnZRgFIAEoCVIHb3NJbWFnZR'
    'I4Chdjb250YWluZXJSdW50aW1lVmVyc2lvbhgGIAEoCVIXY29udGFpbmVyUnVudGltZVZlcnNp'
    'b24SJgoOa3ViZWxldFZlcnNpb24YByABKAlSDmt1YmVsZXRWZXJzaW9uEioKEGt1YmVQcm94eV'
    'ZlcnNpb24YCCABKAlSEGt1YmVQcm94eVZlcnNpb24SKAoPb3BlcmF0aW5nU3lzdGVtGAkgASgJ'
    'Ug9vcGVyYXRpbmdTeXN0ZW0SIgoMYXJjaGl0ZWN0dXJlGAogASgJUgxhcmNoaXRlY3R1cmU=');

@$core.Deprecated('Use objectFieldSelectorDescriptor instead')
const ObjectFieldSelector$json = {
  '1': 'ObjectFieldSelector',
  '2': [
    {'1': 'apiVersion', '3': 1, '4': 1, '5': 9, '10': 'apiVersion'},
    {'1': 'fieldPath', '3': 2, '4': 1, '5': 9, '10': 'fieldPath'},
  ],
};

/// Descriptor for `ObjectFieldSelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectFieldSelectorDescriptor = $convert.base64Decode(
    'ChNPYmplY3RGaWVsZFNlbGVjdG9yEh4KCmFwaVZlcnNpb24YASABKAlSCmFwaVZlcnNpb24SHA'
    'oJZmllbGRQYXRoGAIgASgJUglmaWVsZFBhdGg=');

@$core.Deprecated('Use objectReferenceDescriptor instead')
const ObjectReference$json = {
  '1': 'ObjectReference',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'namespace', '3': 2, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'uid', '3': 4, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'apiVersion', '3': 5, '4': 1, '5': 9, '10': 'apiVersion'},
    {'1': 'resourceVersion', '3': 6, '4': 1, '5': 9, '10': 'resourceVersion'},
    {'1': 'fieldPath', '3': 7, '4': 1, '5': 9, '10': 'fieldPath'},
  ],
};

/// Descriptor for `ObjectReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectReferenceDescriptor = $convert.base64Decode(
    'Cg9PYmplY3RSZWZlcmVuY2USEgoEa2luZBgBIAEoCVIEa2luZBIcCgluYW1lc3BhY2UYAiABKA'
    'lSCW5hbWVzcGFjZRISCgRuYW1lGAMgASgJUgRuYW1lEhAKA3VpZBgEIAEoCVIDdWlkEh4KCmFw'
    'aVZlcnNpb24YBSABKAlSCmFwaVZlcnNpb24SKAoPcmVzb3VyY2VWZXJzaW9uGAYgASgJUg9yZX'
    'NvdXJjZVZlcnNpb24SHAoJZmllbGRQYXRoGAcgASgJUglmaWVsZFBhdGg=');

@$core.Deprecated('Use persistentVolumeDescriptor instead')
const PersistentVolume$json = {
  '1': 'PersistentVolume',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeStatus', '10': 'status'},
  ],
};

/// Descriptor for `PersistentVolume`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeDescriptor = $convert.base64Decode(
    'ChBQZXJzaXN0ZW50Vm9sdW1lEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESNQoEc3BlYxgCIAEoCzIhLmFwaS5j'
    'b3JlLnYxLlBlcnNpc3RlbnRWb2x1bWVTcGVjUgRzcGVjEjsKBnN0YXR1cxgDIAEoCzIjLmFwaS'
    '5jb3JlLnYxLlBlcnNpc3RlbnRWb2x1bWVTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use persistentVolumeClaimDescriptor instead')
const PersistentVolumeClaim$json = {
  '1': 'PersistentVolumeClaim',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimStatus', '10': 'status'},
  ],
};

/// Descriptor for `PersistentVolumeClaim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeClaimDescriptor = $convert.base64Decode(
    'ChVQZXJzaXN0ZW50Vm9sdW1lQ2xhaW0SRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcn'
    'kucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI6CgRzcGVjGAIgASgLMiYu'
    'YXBpLmNvcmUudjEuUGVyc2lzdGVudFZvbHVtZUNsYWltU3BlY1IEc3BlYxJACgZzdGF0dXMYAy'
    'ABKAsyKC5hcGkuY29yZS52MS5QZXJzaXN0ZW50Vm9sdW1lQ2xhaW1TdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use persistentVolumeClaimConditionDescriptor instead')
const PersistentVolumeClaimCondition$json = {
  '1': 'PersistentVolumeClaimCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastProbeTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastProbeTime'},
    {'1': 'lastTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PersistentVolumeClaimCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeClaimConditionDescriptor = $convert.base64Decode(
    'Ch5QZXJzaXN0ZW50Vm9sdW1lQ2xhaW1Db25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCg'
    'ZzdGF0dXMYAiABKAlSBnN0YXR1cxJJCg1sYXN0UHJvYmVUaW1lGAMgASgLMiMuYXBpbWFjaGlu'
    'ZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVINbGFzdFByb2JlVGltZRJTChJsYXN0VHJhbnNpdG'
    'lvblRpbWUYBCABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhJsYXN0'
    'VHJhbnNpdGlvblRpbWUSFgoGcmVhc29uGAUgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgGIAEoCV'
    'IHbWVzc2FnZQ==');

@$core.Deprecated('Use persistentVolumeClaimListDescriptor instead')
const PersistentVolumeClaimList$json = {
  '1': 'PersistentVolumeClaimList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.PersistentVolumeClaim', '10': 'items'},
  ],
};

/// Descriptor for `PersistentVolumeClaimList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeClaimListDescriptor = $convert.base64Decode(
    'ChlQZXJzaXN0ZW50Vm9sdW1lQ2xhaW1MaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjgKBWl0ZW1zGAIgAygL'
    'MiIuYXBpLmNvcmUudjEuUGVyc2lzdGVudFZvbHVtZUNsYWltUgVpdGVtcw==');

@$core.Deprecated('Use persistentVolumeClaimSpecDescriptor instead')
const PersistentVolumeClaimSpec$json = {
  '1': 'PersistentVolumeClaimSpec',
  '2': [
    {'1': 'accessModes', '3': 1, '4': 3, '5': 9, '10': 'accessModes'},
    {'1': 'selector', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'resources', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.VolumeResourceRequirements', '10': 'resources'},
    {'1': 'volumeName', '3': 3, '4': 1, '5': 9, '10': 'volumeName'},
    {'1': 'storageClassName', '3': 5, '4': 1, '5': 9, '10': 'storageClassName'},
    {'1': 'volumeMode', '3': 6, '4': 1, '5': 9, '10': 'volumeMode'},
    {'1': 'dataSource', '3': 7, '4': 1, '5': 11, '6': '.api.core.v1.TypedLocalObjectReference', '10': 'dataSource'},
    {'1': 'dataSourceRef', '3': 8, '4': 1, '5': 11, '6': '.api.core.v1.TypedObjectReference', '10': 'dataSourceRef'},
    {'1': 'volumeAttributesClassName', '3': 9, '4': 1, '5': 9, '10': 'volumeAttributesClassName'},
  ],
};

/// Descriptor for `PersistentVolumeClaimSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeClaimSpecDescriptor = $convert.base64Decode(
    'ChlQZXJzaXN0ZW50Vm9sdW1lQ2xhaW1TcGVjEiAKC2FjY2Vzc01vZGVzGAEgAygJUgthY2Nlc3'
    'NNb2RlcxJICghzZWxlY3RvchgEIAEoCzIsLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYx'
    'LkxhYmVsU2VsZWN0b3JSCHNlbGVjdG9yEkUKCXJlc291cmNlcxgCIAEoCzInLmFwaS5jb3JlLn'
    'YxLlZvbHVtZVJlc291cmNlUmVxdWlyZW1lbnRzUglyZXNvdXJjZXMSHgoKdm9sdW1lTmFtZRgD'
    'IAEoCVIKdm9sdW1lTmFtZRIqChBzdG9yYWdlQ2xhc3NOYW1lGAUgASgJUhBzdG9yYWdlQ2xhc3'
    'NOYW1lEh4KCnZvbHVtZU1vZGUYBiABKAlSCnZvbHVtZU1vZGUSRgoKZGF0YVNvdXJjZRgHIAEo'
    'CzImLmFwaS5jb3JlLnYxLlR5cGVkTG9jYWxPYmplY3RSZWZlcmVuY2VSCmRhdGFTb3VyY2USRw'
    'oNZGF0YVNvdXJjZVJlZhgIIAEoCzIhLmFwaS5jb3JlLnYxLlR5cGVkT2JqZWN0UmVmZXJlbmNl'
    'Ug1kYXRhU291cmNlUmVmEjwKGXZvbHVtZUF0dHJpYnV0ZXNDbGFzc05hbWUYCSABKAlSGXZvbH'
    'VtZUF0dHJpYnV0ZXNDbGFzc05hbWU=');

@$core.Deprecated('Use persistentVolumeClaimStatusDescriptor instead')
const PersistentVolumeClaimStatus$json = {
  '1': 'PersistentVolumeClaimStatus',
  '2': [
    {'1': 'phase', '3': 1, '4': 1, '5': 9, '10': 'phase'},
    {'1': 'accessModes', '3': 2, '4': 3, '5': 9, '10': 'accessModes'},
    {'1': 'capacity', '3': 3, '4': 3, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimStatus.CapacityEntry', '10': 'capacity'},
    {'1': 'conditions', '3': 4, '4': 3, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimCondition', '10': 'conditions'},
    {'1': 'allocatedResources', '3': 5, '4': 3, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimStatus.AllocatedResourcesEntry', '10': 'allocatedResources'},
    {'1': 'allocatedResourceStatuses', '3': 7, '4': 3, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimStatus.AllocatedResourceStatusesEntry', '10': 'allocatedResourceStatuses'},
    {'1': 'currentVolumeAttributesClassName', '3': 8, '4': 1, '5': 9, '10': 'currentVolumeAttributesClassName'},
    {'1': 'modifyVolumeStatus', '3': 9, '4': 1, '5': 11, '6': '.api.core.v1.ModifyVolumeStatus', '10': 'modifyVolumeStatus'},
  ],
  '3': [PersistentVolumeClaimStatus_CapacityEntry$json, PersistentVolumeClaimStatus_AllocatedResourcesEntry$json, PersistentVolumeClaimStatus_AllocatedResourceStatusesEntry$json],
};

@$core.Deprecated('Use persistentVolumeClaimStatusDescriptor instead')
const PersistentVolumeClaimStatus_CapacityEntry$json = {
  '1': 'CapacityEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use persistentVolumeClaimStatusDescriptor instead')
const PersistentVolumeClaimStatus_AllocatedResourcesEntry$json = {
  '1': 'AllocatedResourcesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use persistentVolumeClaimStatusDescriptor instead')
const PersistentVolumeClaimStatus_AllocatedResourceStatusesEntry$json = {
  '1': 'AllocatedResourceStatusesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PersistentVolumeClaimStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeClaimStatusDescriptor = $convert.base64Decode(
    'ChtQZXJzaXN0ZW50Vm9sdW1lQ2xhaW1TdGF0dXMSFAoFcGhhc2UYASABKAlSBXBoYXNlEiAKC2'
    'FjY2Vzc01vZGVzGAIgAygJUgthY2Nlc3NNb2RlcxJSCghjYXBhY2l0eRgDIAMoCzI2LmFwaS5j'
    'b3JlLnYxLlBlcnNpc3RlbnRWb2x1bWVDbGFpbVN0YXR1cy5DYXBhY2l0eUVudHJ5UghjYXBhY2'
    'l0eRJLCgpjb25kaXRpb25zGAQgAygLMisuYXBpLmNvcmUudjEuUGVyc2lzdGVudFZvbHVtZUNs'
    'YWltQ29uZGl0aW9uUgpjb25kaXRpb25zEnAKEmFsbG9jYXRlZFJlc291cmNlcxgFIAMoCzJALm'
    'FwaS5jb3JlLnYxLlBlcnNpc3RlbnRWb2x1bWVDbGFpbVN0YXR1cy5BbGxvY2F0ZWRSZXNvdXJj'
    'ZXNFbnRyeVISYWxsb2NhdGVkUmVzb3VyY2VzEoUBChlhbGxvY2F0ZWRSZXNvdXJjZVN0YXR1c2'
    'VzGAcgAygLMkcuYXBpLmNvcmUudjEuUGVyc2lzdGVudFZvbHVtZUNsYWltU3RhdHVzLkFsbG9j'
    'YXRlZFJlc291cmNlU3RhdHVzZXNFbnRyeVIZYWxsb2NhdGVkUmVzb3VyY2VTdGF0dXNlcxJKCi'
    'BjdXJyZW50Vm9sdW1lQXR0cmlidXRlc0NsYXNzTmFtZRgIIAEoCVIgY3VycmVudFZvbHVtZUF0'
    'dHJpYnV0ZXNDbGFzc05hbWUSTwoSbW9kaWZ5Vm9sdW1lU3RhdHVzGAkgASgLMh8uYXBpLmNvcm'
    'UudjEuTW9kaWZ5Vm9sdW1lU3RhdHVzUhJtb2RpZnlWb2x1bWVTdGF0dXMaZAoNQ2FwYWNpdHlF'
    'bnRyeRIQCgNrZXkYASABKAlSA2tleRI9CgV2YWx1ZRgCIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZToCOAEabgoXQWxsb2NhdGVkUmVzb3VyY2Vz'
    'RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFsdWUYAiABKAsyJy5hcGltYWNoaW5lcnkucG'
    'tnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIFdmFsdWU6AjgBGkwKHkFsbG9jYXRlZFJlc291cmNl'
    'U3RhdHVzZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6Aj'
    'gB');

@$core.Deprecated('Use persistentVolumeClaimTemplateDescriptor instead')
const PersistentVolumeClaimTemplate$json = {
  '1': 'PersistentVolumeClaimTemplate',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimSpec', '10': 'spec'},
  ],
};

/// Descriptor for `PersistentVolumeClaimTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeClaimTemplateDescriptor = $convert.base64Decode(
    'Ch1QZXJzaXN0ZW50Vm9sdW1lQ2xhaW1UZW1wbGF0ZRJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW'
    '1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjoKBHNwZWMY'
    'AiABKAsyJi5hcGkuY29yZS52MS5QZXJzaXN0ZW50Vm9sdW1lQ2xhaW1TcGVjUgRzcGVj');

@$core.Deprecated('Use persistentVolumeClaimVolumeSourceDescriptor instead')
const PersistentVolumeClaimVolumeSource$json = {
  '1': 'PersistentVolumeClaimVolumeSource',
  '2': [
    {'1': 'claimName', '3': 1, '4': 1, '5': 9, '10': 'claimName'},
    {'1': 'readOnly', '3': 2, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `PersistentVolumeClaimVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeClaimVolumeSourceDescriptor = $convert.base64Decode(
    'CiFQZXJzaXN0ZW50Vm9sdW1lQ2xhaW1Wb2x1bWVTb3VyY2USHAoJY2xhaW1OYW1lGAEgASgJUg'
    'ljbGFpbU5hbWUSGgoIcmVhZE9ubHkYAiABKAhSCHJlYWRPbmx5');

@$core.Deprecated('Use persistentVolumeListDescriptor instead')
const PersistentVolumeList$json = {
  '1': 'PersistentVolumeList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.PersistentVolume', '10': 'items'},
  ],
};

/// Descriptor for `PersistentVolumeList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeListDescriptor = $convert.base64Decode(
    'ChRQZXJzaXN0ZW50Vm9sdW1lTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRIzCgVpdGVtcxgCIAMoCzIdLmFw'
    'aS5jb3JlLnYxLlBlcnNpc3RlbnRWb2x1bWVSBWl0ZW1z');

@$core.Deprecated('Use persistentVolumeSourceDescriptor instead')
const PersistentVolumeSource$json = {
  '1': 'PersistentVolumeSource',
  '2': [
    {'1': 'gcePersistentDisk', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.GCEPersistentDiskVolumeSource', '10': 'gcePersistentDisk'},
    {'1': 'awsElasticBlockStore', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.AWSElasticBlockStoreVolumeSource', '10': 'awsElasticBlockStore'},
    {'1': 'hostPath', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.HostPathVolumeSource', '10': 'hostPath'},
    {'1': 'glusterfs', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.GlusterfsPersistentVolumeSource', '10': 'glusterfs'},
    {'1': 'nfs', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.NFSVolumeSource', '10': 'nfs'},
    {'1': 'rbd', '3': 6, '4': 1, '5': 11, '6': '.api.core.v1.RBDPersistentVolumeSource', '10': 'rbd'},
    {'1': 'iscsi', '3': 7, '4': 1, '5': 11, '6': '.api.core.v1.ISCSIPersistentVolumeSource', '10': 'iscsi'},
    {'1': 'cinder', '3': 8, '4': 1, '5': 11, '6': '.api.core.v1.CinderPersistentVolumeSource', '10': 'cinder'},
    {'1': 'cephfs', '3': 9, '4': 1, '5': 11, '6': '.api.core.v1.CephFSPersistentVolumeSource', '10': 'cephfs'},
    {'1': 'fc', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.FCVolumeSource', '10': 'fc'},
    {'1': 'flocker', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.FlockerVolumeSource', '10': 'flocker'},
    {'1': 'flexVolume', '3': 12, '4': 1, '5': 11, '6': '.api.core.v1.FlexPersistentVolumeSource', '10': 'flexVolume'},
    {'1': 'azureFile', '3': 13, '4': 1, '5': 11, '6': '.api.core.v1.AzureFilePersistentVolumeSource', '10': 'azureFile'},
    {'1': 'vsphereVolume', '3': 14, '4': 1, '5': 11, '6': '.api.core.v1.VsphereVirtualDiskVolumeSource', '10': 'vsphereVolume'},
    {'1': 'quobyte', '3': 15, '4': 1, '5': 11, '6': '.api.core.v1.QuobyteVolumeSource', '10': 'quobyte'},
    {'1': 'azureDisk', '3': 16, '4': 1, '5': 11, '6': '.api.core.v1.AzureDiskVolumeSource', '10': 'azureDisk'},
    {'1': 'photonPersistentDisk', '3': 17, '4': 1, '5': 11, '6': '.api.core.v1.PhotonPersistentDiskVolumeSource', '10': 'photonPersistentDisk'},
    {'1': 'portworxVolume', '3': 18, '4': 1, '5': 11, '6': '.api.core.v1.PortworxVolumeSource', '10': 'portworxVolume'},
    {'1': 'scaleIO', '3': 19, '4': 1, '5': 11, '6': '.api.core.v1.ScaleIOPersistentVolumeSource', '10': 'scaleIO'},
    {'1': 'local', '3': 20, '4': 1, '5': 11, '6': '.api.core.v1.LocalVolumeSource', '10': 'local'},
    {'1': 'storageos', '3': 21, '4': 1, '5': 11, '6': '.api.core.v1.StorageOSPersistentVolumeSource', '10': 'storageos'},
    {'1': 'csi', '3': 22, '4': 1, '5': 11, '6': '.api.core.v1.CSIPersistentVolumeSource', '10': 'csi'},
  ],
};

/// Descriptor for `PersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeSourceDescriptor = $convert.base64Decode(
    'ChZQZXJzaXN0ZW50Vm9sdW1lU291cmNlElgKEWdjZVBlcnNpc3RlbnREaXNrGAEgASgLMiouYX'
    'BpLmNvcmUudjEuR0NFUGVyc2lzdGVudERpc2tWb2x1bWVTb3VyY2VSEWdjZVBlcnNpc3RlbnRE'
    'aXNrEmEKFGF3c0VsYXN0aWNCbG9ja1N0b3JlGAIgASgLMi0uYXBpLmNvcmUudjEuQVdTRWxhc3'
    'RpY0Jsb2NrU3RvcmVWb2x1bWVTb3VyY2VSFGF3c0VsYXN0aWNCbG9ja1N0b3JlEj0KCGhvc3RQ'
    'YXRoGAMgASgLMiEuYXBpLmNvcmUudjEuSG9zdFBhdGhWb2x1bWVTb3VyY2VSCGhvc3RQYXRoEk'
    'oKCWdsdXN0ZXJmcxgEIAEoCzIsLmFwaS5jb3JlLnYxLkdsdXN0ZXJmc1BlcnNpc3RlbnRWb2x1'
    'bWVTb3VyY2VSCWdsdXN0ZXJmcxIuCgNuZnMYBSABKAsyHC5hcGkuY29yZS52MS5ORlNWb2x1bW'
    'VTb3VyY2VSA25mcxI4CgNyYmQYBiABKAsyJi5hcGkuY29yZS52MS5SQkRQZXJzaXN0ZW50Vm9s'
    'dW1lU291cmNlUgNyYmQSPgoFaXNjc2kYByABKAsyKC5hcGkuY29yZS52MS5JU0NTSVBlcnNpc3'
    'RlbnRWb2x1bWVTb3VyY2VSBWlzY3NpEkEKBmNpbmRlchgIIAEoCzIpLmFwaS5jb3JlLnYxLkNp'
    'bmRlclBlcnNpc3RlbnRWb2x1bWVTb3VyY2VSBmNpbmRlchJBCgZjZXBoZnMYCSABKAsyKS5hcG'
    'kuY29yZS52MS5DZXBoRlNQZXJzaXN0ZW50Vm9sdW1lU291cmNlUgZjZXBoZnMSKwoCZmMYCiAB'
    'KAsyGy5hcGkuY29yZS52MS5GQ1ZvbHVtZVNvdXJjZVICZmMSOgoHZmxvY2tlchgLIAEoCzIgLm'
    'FwaS5jb3JlLnYxLkZsb2NrZXJWb2x1bWVTb3VyY2VSB2Zsb2NrZXISRwoKZmxleFZvbHVtZRgM'
    'IAEoCzInLmFwaS5jb3JlLnYxLkZsZXhQZXJzaXN0ZW50Vm9sdW1lU291cmNlUgpmbGV4Vm9sdW'
    '1lEkoKCWF6dXJlRmlsZRgNIAEoCzIsLmFwaS5jb3JlLnYxLkF6dXJlRmlsZVBlcnNpc3RlbnRW'
    'b2x1bWVTb3VyY2VSCWF6dXJlRmlsZRJRCg12c3BoZXJlVm9sdW1lGA4gASgLMisuYXBpLmNvcm'
    'UudjEuVnNwaGVyZVZpcnR1YWxEaXNrVm9sdW1lU291cmNlUg12c3BoZXJlVm9sdW1lEjoKB3F1'
    'b2J5dGUYDyABKAsyIC5hcGkuY29yZS52MS5RdW9ieXRlVm9sdW1lU291cmNlUgdxdW9ieXRlEk'
    'AKCWF6dXJlRGlzaxgQIAEoCzIiLmFwaS5jb3JlLnYxLkF6dXJlRGlza1ZvbHVtZVNvdXJjZVIJ'
    'YXp1cmVEaXNrEmEKFHBob3RvblBlcnNpc3RlbnREaXNrGBEgASgLMi0uYXBpLmNvcmUudjEuUG'
    'hvdG9uUGVyc2lzdGVudERpc2tWb2x1bWVTb3VyY2VSFHBob3RvblBlcnNpc3RlbnREaXNrEkkK'
    'DnBvcnR3b3J4Vm9sdW1lGBIgASgLMiEuYXBpLmNvcmUudjEuUG9ydHdvcnhWb2x1bWVTb3VyY2'
    'VSDnBvcnR3b3J4Vm9sdW1lEkQKB3NjYWxlSU8YEyABKAsyKi5hcGkuY29yZS52MS5TY2FsZUlP'
    'UGVyc2lzdGVudFZvbHVtZVNvdXJjZVIHc2NhbGVJTxI0CgVsb2NhbBgUIAEoCzIeLmFwaS5jb3'
    'JlLnYxLkxvY2FsVm9sdW1lU291cmNlUgVsb2NhbBJKCglzdG9yYWdlb3MYFSABKAsyLC5hcGku'
    'Y29yZS52MS5TdG9yYWdlT1NQZXJzaXN0ZW50Vm9sdW1lU291cmNlUglzdG9yYWdlb3MSOAoDY3'
    'NpGBYgASgLMiYuYXBpLmNvcmUudjEuQ1NJUGVyc2lzdGVudFZvbHVtZVNvdXJjZVIDY3Np');

@$core.Deprecated('Use persistentVolumeSpecDescriptor instead')
const PersistentVolumeSpec$json = {
  '1': 'PersistentVolumeSpec',
  '2': [
    {'1': 'capacity', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.PersistentVolumeSpec.CapacityEntry', '10': 'capacity'},
    {'1': 'persistentVolumeSource', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeSource', '10': 'persistentVolumeSource'},
    {'1': 'accessModes', '3': 3, '4': 3, '5': 9, '10': 'accessModes'},
    {'1': 'claimRef', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'claimRef'},
    {'1': 'persistentVolumeReclaimPolicy', '3': 5, '4': 1, '5': 9, '10': 'persistentVolumeReclaimPolicy'},
    {'1': 'storageClassName', '3': 6, '4': 1, '5': 9, '10': 'storageClassName'},
    {'1': 'mountOptions', '3': 7, '4': 3, '5': 9, '10': 'mountOptions'},
    {'1': 'volumeMode', '3': 8, '4': 1, '5': 9, '10': 'volumeMode'},
    {'1': 'nodeAffinity', '3': 9, '4': 1, '5': 11, '6': '.api.core.v1.VolumeNodeAffinity', '10': 'nodeAffinity'},
    {'1': 'volumeAttributesClassName', '3': 10, '4': 1, '5': 9, '10': 'volumeAttributesClassName'},
  ],
  '3': [PersistentVolumeSpec_CapacityEntry$json],
};

@$core.Deprecated('Use persistentVolumeSpecDescriptor instead')
const PersistentVolumeSpec_CapacityEntry$json = {
  '1': 'CapacityEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PersistentVolumeSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeSpecDescriptor = $convert.base64Decode(
    'ChRQZXJzaXN0ZW50Vm9sdW1lU3BlYxJLCghjYXBhY2l0eRgBIAMoCzIvLmFwaS5jb3JlLnYxLl'
    'BlcnNpc3RlbnRWb2x1bWVTcGVjLkNhcGFjaXR5RW50cnlSCGNhcGFjaXR5ElsKFnBlcnNpc3Rl'
    'bnRWb2x1bWVTb3VyY2UYAiABKAsyIy5hcGkuY29yZS52MS5QZXJzaXN0ZW50Vm9sdW1lU291cm'
    'NlUhZwZXJzaXN0ZW50Vm9sdW1lU291cmNlEiAKC2FjY2Vzc01vZGVzGAMgAygJUgthY2Nlc3NN'
    'b2RlcxI4CghjbGFpbVJlZhgEIAEoCzIcLmFwaS5jb3JlLnYxLk9iamVjdFJlZmVyZW5jZVIIY2'
    'xhaW1SZWYSRAodcGVyc2lzdGVudFZvbHVtZVJlY2xhaW1Qb2xpY3kYBSABKAlSHXBlcnNpc3Rl'
    'bnRWb2x1bWVSZWNsYWltUG9saWN5EioKEHN0b3JhZ2VDbGFzc05hbWUYBiABKAlSEHN0b3JhZ2'
    'VDbGFzc05hbWUSIgoMbW91bnRPcHRpb25zGAcgAygJUgxtb3VudE9wdGlvbnMSHgoKdm9sdW1l'
    'TW9kZRgIIAEoCVIKdm9sdW1lTW9kZRJDCgxub2RlQWZmaW5pdHkYCSABKAsyHy5hcGkuY29yZS'
    '52MS5Wb2x1bWVOb2RlQWZmaW5pdHlSDG5vZGVBZmZpbml0eRI8Chl2b2x1bWVBdHRyaWJ1dGVz'
    'Q2xhc3NOYW1lGAogASgJUhl2b2x1bWVBdHRyaWJ1dGVzQ2xhc3NOYW1lGmQKDUNhcGFjaXR5RW'
    '50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFsdWUYAiABKAsyJy5hcGltYWNoaW5lcnkucGtn'
    'LmFwaS5yZXNvdXJjZS5RdWFudGl0eVIFdmFsdWU6AjgB');

@$core.Deprecated('Use persistentVolumeStatusDescriptor instead')
const PersistentVolumeStatus$json = {
  '1': 'PersistentVolumeStatus',
  '2': [
    {'1': 'phase', '3': 1, '4': 1, '5': 9, '10': 'phase'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'lastPhaseTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastPhaseTransitionTime'},
  ],
};

/// Descriptor for `PersistentVolumeStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List persistentVolumeStatusDescriptor = $convert.base64Decode(
    'ChZQZXJzaXN0ZW50Vm9sdW1lU3RhdHVzEhQKBXBoYXNlGAEgASgJUgVwaGFzZRIYCgdtZXNzYW'
    'dlGAIgASgJUgdtZXNzYWdlEhYKBnJlYXNvbhgDIAEoCVIGcmVhc29uEl0KF2xhc3RQaGFzZVRy'
    'YW5zaXRpb25UaW1lGAQgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZV'
    'IXbGFzdFBoYXNlVHJhbnNpdGlvblRpbWU=');

@$core.Deprecated('Use photonPersistentDiskVolumeSourceDescriptor instead')
const PhotonPersistentDiskVolumeSource$json = {
  '1': 'PhotonPersistentDiskVolumeSource',
  '2': [
    {'1': 'pdID', '3': 1, '4': 1, '5': 9, '10': 'pdID'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
  ],
};

/// Descriptor for `PhotonPersistentDiskVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List photonPersistentDiskVolumeSourceDescriptor = $convert.base64Decode(
    'CiBQaG90b25QZXJzaXN0ZW50RGlza1ZvbHVtZVNvdXJjZRISCgRwZElEGAEgASgJUgRwZElEEh'
    'YKBmZzVHlwZRgCIAEoCVIGZnNUeXBl');

@$core.Deprecated('Use podDescriptor instead')
const Pod$json = {
  '1': 'Pod',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PodSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PodStatus', '10': 'status'},
  ],
};

/// Descriptor for `Pod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podDescriptor = $convert.base64Decode(
    'CgNQb2QSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS'
    '5PYmplY3RNZXRhUghtZXRhZGF0YRIoCgRzcGVjGAIgASgLMhQuYXBpLmNvcmUudjEuUG9kU3Bl'
    'Y1IEc3BlYxIuCgZzdGF0dXMYAyABKAsyFi5hcGkuY29yZS52MS5Qb2RTdGF0dXNSBnN0YXR1cw'
    '==');

@$core.Deprecated('Use podAffinityDescriptor instead')
const PodAffinity$json = {
  '1': 'PodAffinity',
  '2': [
    {'1': 'requiredDuringSchedulingIgnoredDuringExecution', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.PodAffinityTerm', '10': 'requiredDuringSchedulingIgnoredDuringExecution'},
    {'1': 'preferredDuringSchedulingIgnoredDuringExecution', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.WeightedPodAffinityTerm', '10': 'preferredDuringSchedulingIgnoredDuringExecution'},
  ],
};

/// Descriptor for `PodAffinity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podAffinityDescriptor = $convert.base64Decode(
    'CgtQb2RBZmZpbml0eRKEAQoucmVxdWlyZWREdXJpbmdTY2hlZHVsaW5nSWdub3JlZER1cmluZ0'
    'V4ZWN1dGlvbhgBIAMoCzIcLmFwaS5jb3JlLnYxLlBvZEFmZmluaXR5VGVybVIucmVxdWlyZWRE'
    'dXJpbmdTY2hlZHVsaW5nSWdub3JlZER1cmluZ0V4ZWN1dGlvbhKOAQovcHJlZmVycmVkRHVyaW'
    '5nU2NoZWR1bGluZ0lnbm9yZWREdXJpbmdFeGVjdXRpb24YAiADKAsyJC5hcGkuY29yZS52MS5X'
    'ZWlnaHRlZFBvZEFmZmluaXR5VGVybVIvcHJlZmVycmVkRHVyaW5nU2NoZWR1bGluZ0lnbm9yZW'
    'REdXJpbmdFeGVjdXRpb24=');

@$core.Deprecated('Use podAffinityTermDescriptor instead')
const PodAffinityTerm$json = {
  '1': 'PodAffinityTerm',
  '2': [
    {'1': 'labelSelector', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'labelSelector'},
    {'1': 'namespaces', '3': 2, '4': 3, '5': 9, '10': 'namespaces'},
    {'1': 'topologyKey', '3': 3, '4': 1, '5': 9, '10': 'topologyKey'},
    {'1': 'namespaceSelector', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'namespaceSelector'},
    {'1': 'matchLabelKeys', '3': 5, '4': 3, '5': 9, '10': 'matchLabelKeys'},
    {'1': 'mismatchLabelKeys', '3': 6, '4': 3, '5': 9, '10': 'mismatchLabelKeys'},
  ],
};

/// Descriptor for `PodAffinityTerm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podAffinityTermDescriptor = $convert.base64Decode(
    'Cg9Qb2RBZmZpbml0eVRlcm0SUgoNbGFiZWxTZWxlY3RvchgBIAEoCzIsLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSDWxhYmVsU2VsZWN0b3ISHgoKbmFtZXNw'
    'YWNlcxgCIAMoCVIKbmFtZXNwYWNlcxIgCgt0b3BvbG9neUtleRgDIAEoCVILdG9wb2xvZ3lLZX'
    'kSWgoRbmFtZXNwYWNlU2VsZWN0b3IYBCABKAsyLC5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0'
    'YS52MS5MYWJlbFNlbGVjdG9yUhFuYW1lc3BhY2VTZWxlY3RvchImCg5tYXRjaExhYmVsS2V5cx'
    'gFIAMoCVIObWF0Y2hMYWJlbEtleXMSLAoRbWlzbWF0Y2hMYWJlbEtleXMYBiADKAlSEW1pc21h'
    'dGNoTGFiZWxLZXlz');

@$core.Deprecated('Use podAntiAffinityDescriptor instead')
const PodAntiAffinity$json = {
  '1': 'PodAntiAffinity',
  '2': [
    {'1': 'requiredDuringSchedulingIgnoredDuringExecution', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.PodAffinityTerm', '10': 'requiredDuringSchedulingIgnoredDuringExecution'},
    {'1': 'preferredDuringSchedulingIgnoredDuringExecution', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.WeightedPodAffinityTerm', '10': 'preferredDuringSchedulingIgnoredDuringExecution'},
  ],
};

/// Descriptor for `PodAntiAffinity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podAntiAffinityDescriptor = $convert.base64Decode(
    'Cg9Qb2RBbnRpQWZmaW5pdHkShAEKLnJlcXVpcmVkRHVyaW5nU2NoZWR1bGluZ0lnbm9yZWREdX'
    'JpbmdFeGVjdXRpb24YASADKAsyHC5hcGkuY29yZS52MS5Qb2RBZmZpbml0eVRlcm1SLnJlcXVp'
    'cmVkRHVyaW5nU2NoZWR1bGluZ0lnbm9yZWREdXJpbmdFeGVjdXRpb24SjgEKL3ByZWZlcnJlZE'
    'R1cmluZ1NjaGVkdWxpbmdJZ25vcmVkRHVyaW5nRXhlY3V0aW9uGAIgAygLMiQuYXBpLmNvcmUu'
    'djEuV2VpZ2h0ZWRQb2RBZmZpbml0eVRlcm1SL3ByZWZlcnJlZER1cmluZ1NjaGVkdWxpbmdJZ2'
    '5vcmVkRHVyaW5nRXhlY3V0aW9u');

@$core.Deprecated('Use podAttachOptionsDescriptor instead')
const PodAttachOptions$json = {
  '1': 'PodAttachOptions',
  '2': [
    {'1': 'stdin', '3': 1, '4': 1, '5': 8, '10': 'stdin'},
    {'1': 'stdout', '3': 2, '4': 1, '5': 8, '10': 'stdout'},
    {'1': 'stderr', '3': 3, '4': 1, '5': 8, '10': 'stderr'},
    {'1': 'tty', '3': 4, '4': 1, '5': 8, '10': 'tty'},
    {'1': 'container', '3': 5, '4': 1, '5': 9, '10': 'container'},
  ],
};

/// Descriptor for `PodAttachOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podAttachOptionsDescriptor = $convert.base64Decode(
    'ChBQb2RBdHRhY2hPcHRpb25zEhQKBXN0ZGluGAEgASgIUgVzdGRpbhIWCgZzdGRvdXQYAiABKA'
    'hSBnN0ZG91dBIWCgZzdGRlcnIYAyABKAhSBnN0ZGVychIQCgN0dHkYBCABKAhSA3R0eRIcCglj'
    'b250YWluZXIYBSABKAlSCWNvbnRhaW5lcg==');

@$core.Deprecated('Use podConditionDescriptor instead')
const PodCondition$json = {
  '1': 'PodCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastProbeTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastProbeTime'},
    {'1': 'lastTransitionTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 5, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 6, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PodCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podConditionDescriptor = $convert.base64Decode(
    'CgxQb2RDb25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCgZzdGF0dXMYAiABKAlSBnN0YX'
    'R1cxJJCg1sYXN0UHJvYmVUaW1lGAMgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEu'
    'djEuVGltZVINbGFzdFByb2JlVGltZRJTChJsYXN0VHJhbnNpdGlvblRpbWUYBCABKAsyIy5hcG'
    'ltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlvblRpbWUSFgoG'
    'cmVhc29uGAUgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgGIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use podDNSConfigDescriptor instead')
const PodDNSConfig$json = {
  '1': 'PodDNSConfig',
  '2': [
    {'1': 'nameservers', '3': 1, '4': 3, '5': 9, '10': 'nameservers'},
    {'1': 'searches', '3': 2, '4': 3, '5': 9, '10': 'searches'},
    {'1': 'options', '3': 3, '4': 3, '5': 11, '6': '.api.core.v1.PodDNSConfigOption', '10': 'options'},
  ],
};

/// Descriptor for `PodDNSConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podDNSConfigDescriptor = $convert.base64Decode(
    'CgxQb2RETlNDb25maWcSIAoLbmFtZXNlcnZlcnMYASADKAlSC25hbWVzZXJ2ZXJzEhoKCHNlYX'
    'JjaGVzGAIgAygJUghzZWFyY2hlcxI5CgdvcHRpb25zGAMgAygLMh8uYXBpLmNvcmUudjEuUG9k'
    'RE5TQ29uZmlnT3B0aW9uUgdvcHRpb25z');

@$core.Deprecated('Use podDNSConfigOptionDescriptor instead')
const PodDNSConfigOption$json = {
  '1': 'PodDNSConfigOption',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `PodDNSConfigOption`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podDNSConfigOptionDescriptor = $convert.base64Decode(
    'ChJQb2RETlNDb25maWdPcHRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgV2YWx1ZRgCIAEoCV'
    'IFdmFsdWU=');

@$core.Deprecated('Use podExecOptionsDescriptor instead')
const PodExecOptions$json = {
  '1': 'PodExecOptions',
  '2': [
    {'1': 'stdin', '3': 1, '4': 1, '5': 8, '10': 'stdin'},
    {'1': 'stdout', '3': 2, '4': 1, '5': 8, '10': 'stdout'},
    {'1': 'stderr', '3': 3, '4': 1, '5': 8, '10': 'stderr'},
    {'1': 'tty', '3': 4, '4': 1, '5': 8, '10': 'tty'},
    {'1': 'container', '3': 5, '4': 1, '5': 9, '10': 'container'},
    {'1': 'command', '3': 6, '4': 3, '5': 9, '10': 'command'},
  ],
};

/// Descriptor for `PodExecOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podExecOptionsDescriptor = $convert.base64Decode(
    'Cg5Qb2RFeGVjT3B0aW9ucxIUCgVzdGRpbhgBIAEoCFIFc3RkaW4SFgoGc3Rkb3V0GAIgASgIUg'
    'ZzdGRvdXQSFgoGc3RkZXJyGAMgASgIUgZzdGRlcnISEAoDdHR5GAQgASgIUgN0dHkSHAoJY29u'
    'dGFpbmVyGAUgASgJUgljb250YWluZXISGAoHY29tbWFuZBgGIAMoCVIHY29tbWFuZA==');

@$core.Deprecated('Use podIPDescriptor instead')
const PodIP$json = {
  '1': 'PodIP',
  '2': [
    {'1': 'ip', '3': 1, '4': 1, '5': 9, '10': 'ip'},
  ],
};

/// Descriptor for `PodIP`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podIPDescriptor = $convert.base64Decode(
    'CgVQb2RJUBIOCgJpcBgBIAEoCVICaXA=');

@$core.Deprecated('Use podListDescriptor instead')
const PodList$json = {
  '1': 'PodList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Pod', '10': 'items'},
  ],
};

/// Descriptor for `PodList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podListDescriptor = $convert.base64Decode(
    'CgdQb2RMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuTGlzdE1ldGFSCG1ldGFkYXRhEiYKBWl0ZW1zGAIgAygLMhAuYXBpLmNvcmUudjEuUG9k'
    'UgVpdGVtcw==');

@$core.Deprecated('Use podLogOptionsDescriptor instead')
const PodLogOptions$json = {
  '1': 'PodLogOptions',
  '2': [
    {'1': 'container', '3': 1, '4': 1, '5': 9, '10': 'container'},
    {'1': 'follow', '3': 2, '4': 1, '5': 8, '10': 'follow'},
    {'1': 'previous', '3': 3, '4': 1, '5': 8, '10': 'previous'},
    {'1': 'sinceSeconds', '3': 4, '4': 1, '5': 3, '10': 'sinceSeconds'},
    {'1': 'sinceTime', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'sinceTime'},
    {'1': 'timestamps', '3': 6, '4': 1, '5': 8, '10': 'timestamps'},
    {'1': 'tailLines', '3': 7, '4': 1, '5': 3, '10': 'tailLines'},
    {'1': 'limitBytes', '3': 8, '4': 1, '5': 3, '10': 'limitBytes'},
    {'1': 'insecureSkipTLSVerifyBackend', '3': 9, '4': 1, '5': 8, '10': 'insecureSkipTLSVerifyBackend'},
  ],
};

/// Descriptor for `PodLogOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podLogOptionsDescriptor = $convert.base64Decode(
    'Cg1Qb2RMb2dPcHRpb25zEhwKCWNvbnRhaW5lchgBIAEoCVIJY29udGFpbmVyEhYKBmZvbGxvdx'
    'gCIAEoCFIGZm9sbG93EhoKCHByZXZpb3VzGAMgASgIUghwcmV2aW91cxIiCgxzaW5jZVNlY29u'
    'ZHMYBCABKANSDHNpbmNlU2Vjb25kcxJBCglzaW5jZVRpbWUYBSABKAsyIy5hcGltYWNoaW5lcn'
    'kucGtnLmFwaXMubWV0YS52MS5UaW1lUglzaW5jZVRpbWUSHgoKdGltZXN0YW1wcxgGIAEoCFIK'
    'dGltZXN0YW1wcxIcCgl0YWlsTGluZXMYByABKANSCXRhaWxMaW5lcxIeCgpsaW1pdEJ5dGVzGA'
    'ggASgDUgpsaW1pdEJ5dGVzEkIKHGluc2VjdXJlU2tpcFRMU1ZlcmlmeUJhY2tlbmQYCSABKAhS'
    'HGluc2VjdXJlU2tpcFRMU1ZlcmlmeUJhY2tlbmQ=');

@$core.Deprecated('Use podOSDescriptor instead')
const PodOS$json = {
  '1': 'PodOS',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `PodOS`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podOSDescriptor = $convert.base64Decode(
    'CgVQb2RPUxISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use podPortForwardOptionsDescriptor instead')
const PodPortForwardOptions$json = {
  '1': 'PodPortForwardOptions',
  '2': [
    {'1': 'ports', '3': 1, '4': 3, '5': 5, '10': 'ports'},
  ],
};

/// Descriptor for `PodPortForwardOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podPortForwardOptionsDescriptor = $convert.base64Decode(
    'ChVQb2RQb3J0Rm9yd2FyZE9wdGlvbnMSFAoFcG9ydHMYASADKAVSBXBvcnRz');

@$core.Deprecated('Use podProxyOptionsDescriptor instead')
const PodProxyOptions$json = {
  '1': 'PodProxyOptions',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `PodProxyOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podProxyOptionsDescriptor = $convert.base64Decode(
    'Cg9Qb2RQcm94eU9wdGlvbnMSEgoEcGF0aBgBIAEoCVIEcGF0aA==');

@$core.Deprecated('Use podReadinessGateDescriptor instead')
const PodReadinessGate$json = {
  '1': 'PodReadinessGate',
  '2': [
    {'1': 'conditionType', '3': 1, '4': 1, '5': 9, '10': 'conditionType'},
  ],
};

/// Descriptor for `PodReadinessGate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podReadinessGateDescriptor = $convert.base64Decode(
    'ChBQb2RSZWFkaW5lc3NHYXRlEiQKDWNvbmRpdGlvblR5cGUYASABKAlSDWNvbmRpdGlvblR5cG'
    'U=');

@$core.Deprecated('Use podResourceClaimDescriptor instead')
const PodResourceClaim$json = {
  '1': 'PodResourceClaim',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'source', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ClaimSource', '10': 'source'},
  ],
};

/// Descriptor for `PodResourceClaim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podResourceClaimDescriptor = $convert.base64Decode(
    'ChBQb2RSZXNvdXJjZUNsYWltEhIKBG5hbWUYASABKAlSBG5hbWUSMAoGc291cmNlGAIgASgLMh'
    'guYXBpLmNvcmUudjEuQ2xhaW1Tb3VyY2VSBnNvdXJjZQ==');

@$core.Deprecated('Use podResourceClaimStatusDescriptor instead')
const PodResourceClaimStatus$json = {
  '1': 'PodResourceClaimStatus',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'resourceClaimName', '3': 2, '4': 1, '5': 9, '10': 'resourceClaimName'},
  ],
};

/// Descriptor for `PodResourceClaimStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podResourceClaimStatusDescriptor = $convert.base64Decode(
    'ChZQb2RSZXNvdXJjZUNsYWltU3RhdHVzEhIKBG5hbWUYASABKAlSBG5hbWUSLAoRcmVzb3VyY2'
    'VDbGFpbU5hbWUYAiABKAlSEXJlc291cmNlQ2xhaW1OYW1l');

@$core.Deprecated('Use podSchedulingGateDescriptor instead')
const PodSchedulingGate$json = {
  '1': 'PodSchedulingGate',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `PodSchedulingGate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podSchedulingGateDescriptor = $convert.base64Decode(
    'ChFQb2RTY2hlZHVsaW5nR2F0ZRISCgRuYW1lGAEgASgJUgRuYW1l');

@$core.Deprecated('Use podSecurityContextDescriptor instead')
const PodSecurityContext$json = {
  '1': 'PodSecurityContext',
  '2': [
    {'1': 'seLinuxOptions', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.SELinuxOptions', '10': 'seLinuxOptions'},
    {'1': 'windowsOptions', '3': 8, '4': 1, '5': 11, '6': '.api.core.v1.WindowsSecurityContextOptions', '10': 'windowsOptions'},
    {'1': 'runAsUser', '3': 2, '4': 1, '5': 3, '10': 'runAsUser'},
    {'1': 'runAsGroup', '3': 6, '4': 1, '5': 3, '10': 'runAsGroup'},
    {'1': 'runAsNonRoot', '3': 3, '4': 1, '5': 8, '10': 'runAsNonRoot'},
    {'1': 'supplementalGroups', '3': 4, '4': 3, '5': 3, '10': 'supplementalGroups'},
    {'1': 'fsGroup', '3': 5, '4': 1, '5': 3, '10': 'fsGroup'},
    {'1': 'sysctls', '3': 7, '4': 3, '5': 11, '6': '.api.core.v1.Sysctl', '10': 'sysctls'},
    {'1': 'fsGroupChangePolicy', '3': 9, '4': 1, '5': 9, '10': 'fsGroupChangePolicy'},
    {'1': 'seccompProfile', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.SeccompProfile', '10': 'seccompProfile'},
    {'1': 'appArmorProfile', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.AppArmorProfile', '10': 'appArmorProfile'},
  ],
};

/// Descriptor for `PodSecurityContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podSecurityContextDescriptor = $convert.base64Decode(
    'ChJQb2RTZWN1cml0eUNvbnRleHQSQwoOc2VMaW51eE9wdGlvbnMYASABKAsyGy5hcGkuY29yZS'
    '52MS5TRUxpbnV4T3B0aW9uc1IOc2VMaW51eE9wdGlvbnMSUgoOd2luZG93c09wdGlvbnMYCCAB'
    'KAsyKi5hcGkuY29yZS52MS5XaW5kb3dzU2VjdXJpdHlDb250ZXh0T3B0aW9uc1IOd2luZG93c0'
    '9wdGlvbnMSHAoJcnVuQXNVc2VyGAIgASgDUglydW5Bc1VzZXISHgoKcnVuQXNHcm91cBgGIAEo'
    'A1IKcnVuQXNHcm91cBIiCgxydW5Bc05vblJvb3QYAyABKAhSDHJ1bkFzTm9uUm9vdBIuChJzdX'
    'BwbGVtZW50YWxHcm91cHMYBCADKANSEnN1cHBsZW1lbnRhbEdyb3VwcxIYCgdmc0dyb3VwGAUg'
    'ASgDUgdmc0dyb3VwEi0KB3N5c2N0bHMYByADKAsyEy5hcGkuY29yZS52MS5TeXNjdGxSB3N5c2'
    'N0bHMSMAoTZnNHcm91cENoYW5nZVBvbGljeRgJIAEoCVITZnNHcm91cENoYW5nZVBvbGljeRJD'
    'Cg5zZWNjb21wUHJvZmlsZRgKIAEoCzIbLmFwaS5jb3JlLnYxLlNlY2NvbXBQcm9maWxlUg5zZW'
    'Njb21wUHJvZmlsZRJGCg9hcHBBcm1vclByb2ZpbGUYCyABKAsyHC5hcGkuY29yZS52MS5BcHBB'
    'cm1vclByb2ZpbGVSD2FwcEFybW9yUHJvZmlsZQ==');

@$core.Deprecated('Use podSignatureDescriptor instead')
const PodSignature$json = {
  '1': 'PodSignature',
  '2': [
    {'1': 'podController', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.OwnerReference', '10': 'podController'},
  ],
};

/// Descriptor for `PodSignature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podSignatureDescriptor = $convert.base64Decode(
    'CgxQb2RTaWduYXR1cmUSUwoNcG9kQ29udHJvbGxlchgBIAEoCzItLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLk93bmVyUmVmZXJlbmNlUg1wb2RDb250cm9sbGVy');

@$core.Deprecated('Use podSpecDescriptor instead')
const PodSpec$json = {
  '1': 'PodSpec',
  '2': [
    {'1': 'volumes', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.Volume', '10': 'volumes'},
    {'1': 'initContainers', '3': 20, '4': 3, '5': 11, '6': '.api.core.v1.Container', '10': 'initContainers'},
    {'1': 'containers', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Container', '10': 'containers'},
    {'1': 'ephemeralContainers', '3': 34, '4': 3, '5': 11, '6': '.api.core.v1.EphemeralContainer', '10': 'ephemeralContainers'},
    {'1': 'restartPolicy', '3': 3, '4': 1, '5': 9, '10': 'restartPolicy'},
    {'1': 'terminationGracePeriodSeconds', '3': 4, '4': 1, '5': 3, '10': 'terminationGracePeriodSeconds'},
    {'1': 'activeDeadlineSeconds', '3': 5, '4': 1, '5': 3, '10': 'activeDeadlineSeconds'},
    {'1': 'dnsPolicy', '3': 6, '4': 1, '5': 9, '10': 'dnsPolicy'},
    {'1': 'nodeSelector', '3': 7, '4': 3, '5': 11, '6': '.api.core.v1.PodSpec.NodeSelectorEntry', '10': 'nodeSelector'},
    {'1': 'serviceAccountName', '3': 8, '4': 1, '5': 9, '10': 'serviceAccountName'},
    {'1': 'serviceAccount', '3': 9, '4': 1, '5': 9, '10': 'serviceAccount'},
    {'1': 'automountServiceAccountToken', '3': 21, '4': 1, '5': 8, '10': 'automountServiceAccountToken'},
    {'1': 'nodeName', '3': 10, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'hostNetwork', '3': 11, '4': 1, '5': 8, '10': 'hostNetwork'},
    {'1': 'hostPID', '3': 12, '4': 1, '5': 8, '10': 'hostPID'},
    {'1': 'hostIPC', '3': 13, '4': 1, '5': 8, '10': 'hostIPC'},
    {'1': 'shareProcessNamespace', '3': 27, '4': 1, '5': 8, '10': 'shareProcessNamespace'},
    {'1': 'securityContext', '3': 14, '4': 1, '5': 11, '6': '.api.core.v1.PodSecurityContext', '10': 'securityContext'},
    {'1': 'imagePullSecrets', '3': 15, '4': 3, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'imagePullSecrets'},
    {'1': 'hostname', '3': 16, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'subdomain', '3': 17, '4': 1, '5': 9, '10': 'subdomain'},
    {'1': 'affinity', '3': 18, '4': 1, '5': 11, '6': '.api.core.v1.Affinity', '10': 'affinity'},
    {'1': 'schedulerName', '3': 19, '4': 1, '5': 9, '10': 'schedulerName'},
    {'1': 'tolerations', '3': 22, '4': 3, '5': 11, '6': '.api.core.v1.Toleration', '10': 'tolerations'},
    {'1': 'hostAliases', '3': 23, '4': 3, '5': 11, '6': '.api.core.v1.HostAlias', '10': 'hostAliases'},
    {'1': 'priorityClassName', '3': 24, '4': 1, '5': 9, '10': 'priorityClassName'},
    {'1': 'priority', '3': 25, '4': 1, '5': 5, '10': 'priority'},
    {'1': 'dnsConfig', '3': 26, '4': 1, '5': 11, '6': '.api.core.v1.PodDNSConfig', '10': 'dnsConfig'},
    {'1': 'readinessGates', '3': 28, '4': 3, '5': 11, '6': '.api.core.v1.PodReadinessGate', '10': 'readinessGates'},
    {'1': 'runtimeClassName', '3': 29, '4': 1, '5': 9, '10': 'runtimeClassName'},
    {'1': 'enableServiceLinks', '3': 30, '4': 1, '5': 8, '10': 'enableServiceLinks'},
    {'1': 'preemptionPolicy', '3': 31, '4': 1, '5': 9, '10': 'preemptionPolicy'},
    {'1': 'overhead', '3': 32, '4': 3, '5': 11, '6': '.api.core.v1.PodSpec.OverheadEntry', '10': 'overhead'},
    {'1': 'topologySpreadConstraints', '3': 33, '4': 3, '5': 11, '6': '.api.core.v1.TopologySpreadConstraint', '10': 'topologySpreadConstraints'},
    {'1': 'setHostnameAsFQDN', '3': 35, '4': 1, '5': 8, '10': 'setHostnameAsFQDN'},
    {'1': 'os', '3': 36, '4': 1, '5': 11, '6': '.api.core.v1.PodOS', '10': 'os'},
    {'1': 'hostUsers', '3': 37, '4': 1, '5': 8, '10': 'hostUsers'},
    {'1': 'schedulingGates', '3': 38, '4': 3, '5': 11, '6': '.api.core.v1.PodSchedulingGate', '10': 'schedulingGates'},
    {'1': 'resourceClaims', '3': 39, '4': 3, '5': 11, '6': '.api.core.v1.PodResourceClaim', '10': 'resourceClaims'},
  ],
  '3': [PodSpec_NodeSelectorEntry$json, PodSpec_OverheadEntry$json],
};

@$core.Deprecated('Use podSpecDescriptor instead')
const PodSpec_NodeSelectorEntry$json = {
  '1': 'NodeSelectorEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use podSpecDescriptor instead')
const PodSpec_OverheadEntry$json = {
  '1': 'OverheadEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `PodSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podSpecDescriptor = $convert.base64Decode(
    'CgdQb2RTcGVjEi0KB3ZvbHVtZXMYASADKAsyEy5hcGkuY29yZS52MS5Wb2x1bWVSB3ZvbHVtZX'
    'MSPgoOaW5pdENvbnRhaW5lcnMYFCADKAsyFi5hcGkuY29yZS52MS5Db250YWluZXJSDmluaXRD'
    'b250YWluZXJzEjYKCmNvbnRhaW5lcnMYAiADKAsyFi5hcGkuY29yZS52MS5Db250YWluZXJSCm'
    'NvbnRhaW5lcnMSUQoTZXBoZW1lcmFsQ29udGFpbmVycxgiIAMoCzIfLmFwaS5jb3JlLnYxLkVw'
    'aGVtZXJhbENvbnRhaW5lclITZXBoZW1lcmFsQ29udGFpbmVycxIkCg1yZXN0YXJ0UG9saWN5GA'
    'MgASgJUg1yZXN0YXJ0UG9saWN5EkQKHXRlcm1pbmF0aW9uR3JhY2VQZXJpb2RTZWNvbmRzGAQg'
    'ASgDUh10ZXJtaW5hdGlvbkdyYWNlUGVyaW9kU2Vjb25kcxI0ChVhY3RpdmVEZWFkbGluZVNlY2'
    '9uZHMYBSABKANSFWFjdGl2ZURlYWRsaW5lU2Vjb25kcxIcCglkbnNQb2xpY3kYBiABKAlSCWRu'
    'c1BvbGljeRJKCgxub2RlU2VsZWN0b3IYByADKAsyJi5hcGkuY29yZS52MS5Qb2RTcGVjLk5vZG'
    'VTZWxlY3RvckVudHJ5Ugxub2RlU2VsZWN0b3ISLgoSc2VydmljZUFjY291bnROYW1lGAggASgJ'
    'UhJzZXJ2aWNlQWNjb3VudE5hbWUSJgoOc2VydmljZUFjY291bnQYCSABKAlSDnNlcnZpY2VBY2'
    'NvdW50EkIKHGF1dG9tb3VudFNlcnZpY2VBY2NvdW50VG9rZW4YFSABKAhSHGF1dG9tb3VudFNl'
    'cnZpY2VBY2NvdW50VG9rZW4SGgoIbm9kZU5hbWUYCiABKAlSCG5vZGVOYW1lEiAKC2hvc3ROZX'
    'R3b3JrGAsgASgIUgtob3N0TmV0d29yaxIYCgdob3N0UElEGAwgASgIUgdob3N0UElEEhgKB2hv'
    'c3RJUEMYDSABKAhSB2hvc3RJUEMSNAoVc2hhcmVQcm9jZXNzTmFtZXNwYWNlGBsgASgIUhVzaG'
    'FyZVByb2Nlc3NOYW1lc3BhY2USSQoPc2VjdXJpdHlDb250ZXh0GA4gASgLMh8uYXBpLmNvcmUu'
    'djEuUG9kU2VjdXJpdHlDb250ZXh0Ug9zZWN1cml0eUNvbnRleHQSTQoQaW1hZ2VQdWxsU2Vjcm'
    'V0cxgPIAMoCzIhLmFwaS5jb3JlLnYxLkxvY2FsT2JqZWN0UmVmZXJlbmNlUhBpbWFnZVB1bGxT'
    'ZWNyZXRzEhoKCGhvc3RuYW1lGBAgASgJUghob3N0bmFtZRIcCglzdWJkb21haW4YESABKAlSCX'
    'N1YmRvbWFpbhIxCghhZmZpbml0eRgSIAEoCzIVLmFwaS5jb3JlLnYxLkFmZmluaXR5UghhZmZp'
    'bml0eRIkCg1zY2hlZHVsZXJOYW1lGBMgASgJUg1zY2hlZHVsZXJOYW1lEjkKC3RvbGVyYXRpb2'
    '5zGBYgAygLMhcuYXBpLmNvcmUudjEuVG9sZXJhdGlvblILdG9sZXJhdGlvbnMSOAoLaG9zdEFs'
    'aWFzZXMYFyADKAsyFi5hcGkuY29yZS52MS5Ib3N0QWxpYXNSC2hvc3RBbGlhc2VzEiwKEXByaW'
    '9yaXR5Q2xhc3NOYW1lGBggASgJUhFwcmlvcml0eUNsYXNzTmFtZRIaCghwcmlvcml0eRgZIAEo'
    'BVIIcHJpb3JpdHkSNwoJZG5zQ29uZmlnGBogASgLMhkuYXBpLmNvcmUudjEuUG9kRE5TQ29uZm'
    'lnUglkbnNDb25maWcSRQoOcmVhZGluZXNzR2F0ZXMYHCADKAsyHS5hcGkuY29yZS52MS5Qb2RS'
    'ZWFkaW5lc3NHYXRlUg5yZWFkaW5lc3NHYXRlcxIqChBydW50aW1lQ2xhc3NOYW1lGB0gASgJUh'
    'BydW50aW1lQ2xhc3NOYW1lEi4KEmVuYWJsZVNlcnZpY2VMaW5rcxgeIAEoCFISZW5hYmxlU2Vy'
    'dmljZUxpbmtzEioKEHByZWVtcHRpb25Qb2xpY3kYHyABKAlSEHByZWVtcHRpb25Qb2xpY3kSPg'
    'oIb3ZlcmhlYWQYICADKAsyIi5hcGkuY29yZS52MS5Qb2RTcGVjLk92ZXJoZWFkRW50cnlSCG92'
    'ZXJoZWFkEmMKGXRvcG9sb2d5U3ByZWFkQ29uc3RyYWludHMYISADKAsyJS5hcGkuY29yZS52MS'
    '5Ub3BvbG9neVNwcmVhZENvbnN0cmFpbnRSGXRvcG9sb2d5U3ByZWFkQ29uc3RyYWludHMSLAoR'
    'c2V0SG9zdG5hbWVBc0ZRRE4YIyABKAhSEXNldEhvc3RuYW1lQXNGUUROEiIKAm9zGCQgASgLMh'
    'IuYXBpLmNvcmUudjEuUG9kT1NSAm9zEhwKCWhvc3RVc2VycxglIAEoCFIJaG9zdFVzZXJzEkgK'
    'D3NjaGVkdWxpbmdHYXRlcxgmIAMoCzIeLmFwaS5jb3JlLnYxLlBvZFNjaGVkdWxpbmdHYXRlUg'
    '9zY2hlZHVsaW5nR2F0ZXMSRQoOcmVzb3VyY2VDbGFpbXMYJyADKAsyHS5hcGkuY29yZS52MS5Q'
    'b2RSZXNvdXJjZUNsYWltUg5yZXNvdXJjZUNsYWltcxo/ChFOb2RlU2VsZWN0b3JFbnRyeRIQCg'
    'NrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGmQKDU92ZXJoZWFkRW50'
    'cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFsdWUYAiABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaS5yZXNvdXJjZS5RdWFudGl0eVIFdmFsdWU6AjgB');

@$core.Deprecated('Use podStatusDescriptor instead')
const PodStatus$json = {
  '1': 'PodStatus',
  '2': [
    {'1': 'phase', '3': 1, '4': 1, '5': 9, '10': 'phase'},
    {'1': 'conditions', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.PodCondition', '10': 'conditions'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'nominatedNodeName', '3': 11, '4': 1, '5': 9, '10': 'nominatedNodeName'},
    {'1': 'hostIP', '3': 5, '4': 1, '5': 9, '10': 'hostIP'},
    {'1': 'hostIPs', '3': 16, '4': 3, '5': 11, '6': '.api.core.v1.HostIP', '10': 'hostIPs'},
    {'1': 'podIP', '3': 6, '4': 1, '5': 9, '10': 'podIP'},
    {'1': 'podIPs', '3': 12, '4': 3, '5': 11, '6': '.api.core.v1.PodIP', '10': 'podIPs'},
    {'1': 'startTime', '3': 7, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'startTime'},
    {'1': 'initContainerStatuses', '3': 10, '4': 3, '5': 11, '6': '.api.core.v1.ContainerStatus', '10': 'initContainerStatuses'},
    {'1': 'containerStatuses', '3': 8, '4': 3, '5': 11, '6': '.api.core.v1.ContainerStatus', '10': 'containerStatuses'},
    {'1': 'qosClass', '3': 9, '4': 1, '5': 9, '10': 'qosClass'},
    {'1': 'ephemeralContainerStatuses', '3': 13, '4': 3, '5': 11, '6': '.api.core.v1.ContainerStatus', '10': 'ephemeralContainerStatuses'},
    {'1': 'resize', '3': 14, '4': 1, '5': 9, '10': 'resize'},
    {'1': 'resourceClaimStatuses', '3': 15, '4': 3, '5': 11, '6': '.api.core.v1.PodResourceClaimStatus', '10': 'resourceClaimStatuses'},
  ],
};

/// Descriptor for `PodStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podStatusDescriptor = $convert.base64Decode(
    'CglQb2RTdGF0dXMSFAoFcGhhc2UYASABKAlSBXBoYXNlEjkKCmNvbmRpdGlvbnMYAiADKAsyGS'
    '5hcGkuY29yZS52MS5Qb2RDb25kaXRpb25SCmNvbmRpdGlvbnMSGAoHbWVzc2FnZRgDIAEoCVIH'
    'bWVzc2FnZRIWCgZyZWFzb24YBCABKAlSBnJlYXNvbhIsChFub21pbmF0ZWROb2RlTmFtZRgLIA'
    'EoCVIRbm9taW5hdGVkTm9kZU5hbWUSFgoGaG9zdElQGAUgASgJUgZob3N0SVASLQoHaG9zdElQ'
    'cxgQIAMoCzITLmFwaS5jb3JlLnYxLkhvc3RJUFIHaG9zdElQcxIUCgVwb2RJUBgGIAEoCVIFcG'
    '9kSVASKgoGcG9kSVBzGAwgAygLMhIuYXBpLmNvcmUudjEuUG9kSVBSBnBvZElQcxJBCglzdGFy'
    'dFRpbWUYByABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUglzdGFydF'
    'RpbWUSUgoVaW5pdENvbnRhaW5lclN0YXR1c2VzGAogAygLMhwuYXBpLmNvcmUudjEuQ29udGFp'
    'bmVyU3RhdHVzUhVpbml0Q29udGFpbmVyU3RhdHVzZXMSSgoRY29udGFpbmVyU3RhdHVzZXMYCC'
    'ADKAsyHC5hcGkuY29yZS52MS5Db250YWluZXJTdGF0dXNSEWNvbnRhaW5lclN0YXR1c2VzEhoK'
    'CHFvc0NsYXNzGAkgASgJUghxb3NDbGFzcxJcChplcGhlbWVyYWxDb250YWluZXJTdGF0dXNlcx'
    'gNIAMoCzIcLmFwaS5jb3JlLnYxLkNvbnRhaW5lclN0YXR1c1IaZXBoZW1lcmFsQ29udGFpbmVy'
    'U3RhdHVzZXMSFgoGcmVzaXplGA4gASgJUgZyZXNpemUSWQoVcmVzb3VyY2VDbGFpbVN0YXR1c2'
    'VzGA8gAygLMiMuYXBpLmNvcmUudjEuUG9kUmVzb3VyY2VDbGFpbVN0YXR1c1IVcmVzb3VyY2VD'
    'bGFpbVN0YXR1c2Vz');

@$core.Deprecated('Use podStatusResultDescriptor instead')
const PodStatusResult$json = {
  '1': 'PodStatusResult',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'status', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PodStatus', '10': 'status'},
  ],
};

/// Descriptor for `PodStatusResult`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podStatusResultDescriptor = $convert.base64Decode(
    'Cg9Qb2RTdGF0dXNSZXN1bHQSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIuCgZzdGF0dXMYAiABKAsyFi5hcGku'
    'Y29yZS52MS5Qb2RTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use podTemplateDescriptor instead')
const PodTemplate$json = {
  '1': 'PodTemplate',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'template', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PodTemplateSpec', '10': 'template'},
  ],
};

/// Descriptor for `PodTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podTemplateDescriptor = $convert.base64Decode(
    'CgtQb2RUZW1wbGF0ZRJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjgKCHRlbXBsYXRlGAIgASgLMhwuYXBpLmNv'
    'cmUudjEuUG9kVGVtcGxhdGVTcGVjUgh0ZW1wbGF0ZQ==');

@$core.Deprecated('Use podTemplateListDescriptor instead')
const PodTemplateList$json = {
  '1': 'PodTemplateList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.PodTemplate', '10': 'items'},
  ],
};

/// Descriptor for `PodTemplateList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podTemplateListDescriptor = $convert.base64Decode(
    'Cg9Qb2RUZW1wbGF0ZUxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESLgoFaXRlbXMYAiADKAsyGC5hcGkuY29y'
    'ZS52MS5Qb2RUZW1wbGF0ZVIFaXRlbXM=');

@$core.Deprecated('Use podTemplateSpecDescriptor instead')
const PodTemplateSpec$json = {
  '1': 'PodTemplateSpec',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PodSpec', '10': 'spec'},
  ],
};

/// Descriptor for `PodTemplateSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podTemplateSpecDescriptor = $convert.base64Decode(
    'Cg9Qb2RUZW1wbGF0ZVNwZWMSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIoCgRzcGVjGAIgASgLMhQuYXBpLmNv'
    'cmUudjEuUG9kU3BlY1IEc3BlYw==');

@$core.Deprecated('Use portStatusDescriptor instead')
const PortStatus$json = {
  '1': 'PortStatus',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 5, '10': 'port'},
    {'1': 'protocol', '3': 2, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `PortStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portStatusDescriptor = $convert.base64Decode(
    'CgpQb3J0U3RhdHVzEhIKBHBvcnQYASABKAVSBHBvcnQSGgoIcHJvdG9jb2wYAiABKAlSCHByb3'
    'RvY29sEhQKBWVycm9yGAMgASgJUgVlcnJvcg==');

@$core.Deprecated('Use portworxVolumeSourceDescriptor instead')
const PortworxVolumeSource$json = {
  '1': 'PortworxVolumeSource',
  '2': [
    {'1': 'volumeID', '3': 1, '4': 1, '5': 9, '10': 'volumeID'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `PortworxVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List portworxVolumeSourceDescriptor = $convert.base64Decode(
    'ChRQb3J0d29yeFZvbHVtZVNvdXJjZRIaCgh2b2x1bWVJRBgBIAEoCVIIdm9sdW1lSUQSFgoGZn'
    'NUeXBlGAIgASgJUgZmc1R5cGUSGgoIcmVhZE9ubHkYAyABKAhSCHJlYWRPbmx5');

@$core.Deprecated('Use preconditionsDescriptor instead')
const Preconditions$json = {
  '1': 'Preconditions',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
  ],
};

/// Descriptor for `Preconditions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preconditionsDescriptor = $convert.base64Decode(
    'Cg1QcmVjb25kaXRpb25zEhAKA3VpZBgBIAEoCVIDdWlk');

@$core.Deprecated('Use preferAvoidPodsEntryDescriptor instead')
const PreferAvoidPodsEntry$json = {
  '1': 'PreferAvoidPodsEntry',
  '2': [
    {'1': 'podSignature', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.PodSignature', '10': 'podSignature'},
    {'1': 'evictionTime', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'evictionTime'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 4, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `PreferAvoidPodsEntry`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preferAvoidPodsEntryDescriptor = $convert.base64Decode(
    'ChRQcmVmZXJBdm9pZFBvZHNFbnRyeRI9Cgxwb2RTaWduYXR1cmUYASABKAsyGS5hcGkuY29yZS'
    '52MS5Qb2RTaWduYXR1cmVSDHBvZFNpZ25hdHVyZRJHCgxldmljdGlvblRpbWUYAiABKAsyIy5h'
    'cGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUgxldmljdGlvblRpbWUSFgoGcmVhc2'
    '9uGAMgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgEIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use preferredSchedulingTermDescriptor instead')
const PreferredSchedulingTerm$json = {
  '1': 'PreferredSchedulingTerm',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'preference', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.NodeSelectorTerm', '10': 'preference'},
  ],
};

/// Descriptor for `PreferredSchedulingTerm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List preferredSchedulingTermDescriptor = $convert.base64Decode(
    'ChdQcmVmZXJyZWRTY2hlZHVsaW5nVGVybRIWCgZ3ZWlnaHQYASABKAVSBndlaWdodBI9Cgpwcm'
    'VmZXJlbmNlGAIgASgLMh0uYXBpLmNvcmUudjEuTm9kZVNlbGVjdG9yVGVybVIKcHJlZmVyZW5j'
    'ZQ==');

@$core.Deprecated('Use probeDescriptor instead')
const Probe$json = {
  '1': 'Probe',
  '2': [
    {'1': 'handler', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.ProbeHandler', '10': 'handler'},
    {'1': 'initialDelaySeconds', '3': 2, '4': 1, '5': 5, '10': 'initialDelaySeconds'},
    {'1': 'timeoutSeconds', '3': 3, '4': 1, '5': 5, '10': 'timeoutSeconds'},
    {'1': 'periodSeconds', '3': 4, '4': 1, '5': 5, '10': 'periodSeconds'},
    {'1': 'successThreshold', '3': 5, '4': 1, '5': 5, '10': 'successThreshold'},
    {'1': 'failureThreshold', '3': 6, '4': 1, '5': 5, '10': 'failureThreshold'},
    {'1': 'terminationGracePeriodSeconds', '3': 7, '4': 1, '5': 3, '10': 'terminationGracePeriodSeconds'},
  ],
};

/// Descriptor for `Probe`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List probeDescriptor = $convert.base64Decode(
    'CgVQcm9iZRIzCgdoYW5kbGVyGAEgASgLMhkuYXBpLmNvcmUudjEuUHJvYmVIYW5kbGVyUgdoYW'
    '5kbGVyEjAKE2luaXRpYWxEZWxheVNlY29uZHMYAiABKAVSE2luaXRpYWxEZWxheVNlY29uZHMS'
    'JgoOdGltZW91dFNlY29uZHMYAyABKAVSDnRpbWVvdXRTZWNvbmRzEiQKDXBlcmlvZFNlY29uZH'
    'MYBCABKAVSDXBlcmlvZFNlY29uZHMSKgoQc3VjY2Vzc1RocmVzaG9sZBgFIAEoBVIQc3VjY2Vz'
    'c1RocmVzaG9sZBIqChBmYWlsdXJlVGhyZXNob2xkGAYgASgFUhBmYWlsdXJlVGhyZXNob2xkEk'
    'QKHXRlcm1pbmF0aW9uR3JhY2VQZXJpb2RTZWNvbmRzGAcgASgDUh10ZXJtaW5hdGlvbkdyYWNl'
    'UGVyaW9kU2Vjb25kcw==');

@$core.Deprecated('Use probeHandlerDescriptor instead')
const ProbeHandler$json = {
  '1': 'ProbeHandler',
  '2': [
    {'1': 'exec', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.ExecAction', '10': 'exec'},
    {'1': 'httpGet', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.HTTPGetAction', '10': 'httpGet'},
    {'1': 'tcpSocket', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.TCPSocketAction', '10': 'tcpSocket'},
    {'1': 'grpc', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.GRPCAction', '10': 'grpc'},
  ],
};

/// Descriptor for `ProbeHandler`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List probeHandlerDescriptor = $convert.base64Decode(
    'CgxQcm9iZUhhbmRsZXISKwoEZXhlYxgBIAEoCzIXLmFwaS5jb3JlLnYxLkV4ZWNBY3Rpb25SBG'
    'V4ZWMSNAoHaHR0cEdldBgCIAEoCzIaLmFwaS5jb3JlLnYxLkhUVFBHZXRBY3Rpb25SB2h0dHBH'
    'ZXQSOgoJdGNwU29ja2V0GAMgASgLMhwuYXBpLmNvcmUudjEuVENQU29ja2V0QWN0aW9uUgl0Y3'
    'BTb2NrZXQSKwoEZ3JwYxgEIAEoCzIXLmFwaS5jb3JlLnYxLkdSUENBY3Rpb25SBGdycGM=');

@$core.Deprecated('Use projectedVolumeSourceDescriptor instead')
const ProjectedVolumeSource$json = {
  '1': 'ProjectedVolumeSource',
  '2': [
    {'1': 'sources', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.VolumeProjection', '10': 'sources'},
    {'1': 'defaultMode', '3': 2, '4': 1, '5': 5, '10': 'defaultMode'},
  ],
};

/// Descriptor for `ProjectedVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List projectedVolumeSourceDescriptor = $convert.base64Decode(
    'ChVQcm9qZWN0ZWRWb2x1bWVTb3VyY2USNwoHc291cmNlcxgBIAMoCzIdLmFwaS5jb3JlLnYxLl'
    'ZvbHVtZVByb2plY3Rpb25SB3NvdXJjZXMSIAoLZGVmYXVsdE1vZGUYAiABKAVSC2RlZmF1bHRN'
    'b2Rl');

@$core.Deprecated('Use quobyteVolumeSourceDescriptor instead')
const QuobyteVolumeSource$json = {
  '1': 'QuobyteVolumeSource',
  '2': [
    {'1': 'registry', '3': 1, '4': 1, '5': 9, '10': 'registry'},
    {'1': 'volume', '3': 2, '4': 1, '5': 9, '10': 'volume'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'user', '3': 4, '4': 1, '5': 9, '10': 'user'},
    {'1': 'group', '3': 5, '4': 1, '5': 9, '10': 'group'},
    {'1': 'tenant', '3': 6, '4': 1, '5': 9, '10': 'tenant'},
  ],
};

/// Descriptor for `QuobyteVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List quobyteVolumeSourceDescriptor = $convert.base64Decode(
    'ChNRdW9ieXRlVm9sdW1lU291cmNlEhoKCHJlZ2lzdHJ5GAEgASgJUghyZWdpc3RyeRIWCgZ2b2'
    'x1bWUYAiABKAlSBnZvbHVtZRIaCghyZWFkT25seRgDIAEoCFIIcmVhZE9ubHkSEgoEdXNlchgE'
    'IAEoCVIEdXNlchIUCgVncm91cBgFIAEoCVIFZ3JvdXASFgoGdGVuYW50GAYgASgJUgZ0ZW5hbn'
    'Q=');

@$core.Deprecated('Use rBDPersistentVolumeSourceDescriptor instead')
const RBDPersistentVolumeSource$json = {
  '1': 'RBDPersistentVolumeSource',
  '2': [
    {'1': 'monitors', '3': 1, '4': 3, '5': 9, '10': 'monitors'},
    {'1': 'image', '3': 2, '4': 1, '5': 9, '10': 'image'},
    {'1': 'fsType', '3': 3, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'pool', '3': 4, '4': 1, '5': 9, '10': 'pool'},
    {'1': 'user', '3': 5, '4': 1, '5': 9, '10': 'user'},
    {'1': 'keyring', '3': 6, '4': 1, '5': 9, '10': 'keyring'},
    {'1': 'secretRef', '3': 7, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'secretRef'},
    {'1': 'readOnly', '3': 8, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `RBDPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rBDPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'ChlSQkRQZXJzaXN0ZW50Vm9sdW1lU291cmNlEhoKCG1vbml0b3JzGAEgAygJUghtb25pdG9ycx'
    'IUCgVpbWFnZRgCIAEoCVIFaW1hZ2USFgoGZnNUeXBlGAMgASgJUgZmc1R5cGUSEgoEcG9vbBgE'
    'IAEoCVIEcG9vbBISCgR1c2VyGAUgASgJUgR1c2VyEhgKB2tleXJpbmcYBiABKAlSB2tleXJpbm'
    'cSOgoJc2VjcmV0UmVmGAcgASgLMhwuYXBpLmNvcmUudjEuU2VjcmV0UmVmZXJlbmNlUglzZWNy'
    'ZXRSZWYSGgoIcmVhZE9ubHkYCCABKAhSCHJlYWRPbmx5');

@$core.Deprecated('Use rBDVolumeSourceDescriptor instead')
const RBDVolumeSource$json = {
  '1': 'RBDVolumeSource',
  '2': [
    {'1': 'monitors', '3': 1, '4': 3, '5': 9, '10': 'monitors'},
    {'1': 'image', '3': 2, '4': 1, '5': 9, '10': 'image'},
    {'1': 'fsType', '3': 3, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'pool', '3': 4, '4': 1, '5': 9, '10': 'pool'},
    {'1': 'user', '3': 5, '4': 1, '5': 9, '10': 'user'},
    {'1': 'keyring', '3': 6, '4': 1, '5': 9, '10': 'keyring'},
    {'1': 'secretRef', '3': 7, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'secretRef'},
    {'1': 'readOnly', '3': 8, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `RBDVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rBDVolumeSourceDescriptor = $convert.base64Decode(
    'Cg9SQkRWb2x1bWVTb3VyY2USGgoIbW9uaXRvcnMYASADKAlSCG1vbml0b3JzEhQKBWltYWdlGA'
    'IgASgJUgVpbWFnZRIWCgZmc1R5cGUYAyABKAlSBmZzVHlwZRISCgRwb29sGAQgASgJUgRwb29s'
    'EhIKBHVzZXIYBSABKAlSBHVzZXISGAoHa2V5cmluZxgGIAEoCVIHa2V5cmluZxI/CglzZWNyZX'
    'RSZWYYByABKAsyIS5hcGkuY29yZS52MS5Mb2NhbE9iamVjdFJlZmVyZW5jZVIJc2VjcmV0UmVm'
    'EhoKCHJlYWRPbmx5GAggASgIUghyZWFkT25seQ==');

@$core.Deprecated('Use rangeAllocationDescriptor instead')
const RangeAllocation$json = {
  '1': 'RangeAllocation',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'range', '3': 2, '4': 1, '5': 9, '10': 'range'},
    {'1': 'data', '3': 3, '4': 1, '5': 12, '10': 'data'},
  ],
};

/// Descriptor for `RangeAllocation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rangeAllocationDescriptor = $convert.base64Decode(
    'Cg9SYW5nZUFsbG9jYXRpb24SRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIUCgVyYW5nZRgCIAEoCVIFcmFuZ2US'
    'EgoEZGF0YRgDIAEoDFIEZGF0YQ==');

@$core.Deprecated('Use replicationControllerDescriptor instead')
const ReplicationController$json = {
  '1': 'ReplicationController',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ReplicationControllerSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ReplicationControllerStatus', '10': 'status'},
  ],
};

/// Descriptor for `ReplicationController`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicationControllerDescriptor = $convert.base64Decode(
    'ChVSZXBsaWNhdGlvbkNvbnRyb2xsZXISRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcn'
    'kucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI6CgRzcGVjGAIgASgLMiYu'
    'YXBpLmNvcmUudjEuUmVwbGljYXRpb25Db250cm9sbGVyU3BlY1IEc3BlYxJACgZzdGF0dXMYAy'
    'ABKAsyKC5hcGkuY29yZS52MS5SZXBsaWNhdGlvbkNvbnRyb2xsZXJTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use replicationControllerConditionDescriptor instead')
const ReplicationControllerCondition$json = {
  '1': 'ReplicationControllerCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `ReplicationControllerCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicationControllerConditionDescriptor = $convert.base64Decode(
    'Ch5SZXBsaWNhdGlvbkNvbnRyb2xsZXJDb25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZRIWCg'
    'ZzdGF0dXMYAiABKAlSBnN0YXR1cxJTChJsYXN0VHJhbnNpdGlvblRpbWUYAyABKAsyIy5hcGlt'
    'YWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlvblRpbWUSFgoGcm'
    'Vhc29uGAQgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgFIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use replicationControllerListDescriptor instead')
const ReplicationControllerList$json = {
  '1': 'ReplicationControllerList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ReplicationController', '10': 'items'},
  ],
};

/// Descriptor for `ReplicationControllerList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicationControllerListDescriptor = $convert.base64Decode(
    'ChlSZXBsaWNhdGlvbkNvbnRyb2xsZXJMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjgKBWl0ZW1zGAIgAygL'
    'MiIuYXBpLmNvcmUudjEuUmVwbGljYXRpb25Db250cm9sbGVyUgVpdGVtcw==');

@$core.Deprecated('Use replicationControllerSpecDescriptor instead')
const ReplicationControllerSpec$json = {
  '1': 'ReplicationControllerSpec',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'minReadySeconds', '3': 4, '4': 1, '5': 5, '10': 'minReadySeconds'},
    {'1': 'selector', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ReplicationControllerSpec.SelectorEntry', '10': 'selector'},
    {'1': 'template', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PodTemplateSpec', '10': 'template'},
  ],
  '3': [ReplicationControllerSpec_SelectorEntry$json],
};

@$core.Deprecated('Use replicationControllerSpecDescriptor instead')
const ReplicationControllerSpec_SelectorEntry$json = {
  '1': 'SelectorEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ReplicationControllerSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicationControllerSpecDescriptor = $convert.base64Decode(
    'ChlSZXBsaWNhdGlvbkNvbnRyb2xsZXJTcGVjEhoKCHJlcGxpY2FzGAEgASgFUghyZXBsaWNhcx'
    'IoCg9taW5SZWFkeVNlY29uZHMYBCABKAVSD21pblJlYWR5U2Vjb25kcxJQCghzZWxlY3RvchgC'
    'IAMoCzI0LmFwaS5jb3JlLnYxLlJlcGxpY2F0aW9uQ29udHJvbGxlclNwZWMuU2VsZWN0b3JFbn'
    'RyeVIIc2VsZWN0b3ISOAoIdGVtcGxhdGUYAyABKAsyHC5hcGkuY29yZS52MS5Qb2RUZW1wbGF0'
    'ZVNwZWNSCHRlbXBsYXRlGjsKDVNlbGVjdG9yRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdm'
    'FsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use replicationControllerStatusDescriptor instead')
const ReplicationControllerStatus$json = {
  '1': 'ReplicationControllerStatus',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'fullyLabeledReplicas', '3': 2, '4': 1, '5': 5, '10': 'fullyLabeledReplicas'},
    {'1': 'readyReplicas', '3': 4, '4': 1, '5': 5, '10': 'readyReplicas'},
    {'1': 'availableReplicas', '3': 5, '4': 1, '5': 5, '10': 'availableReplicas'},
    {'1': 'observedGeneration', '3': 3, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'conditions', '3': 6, '4': 3, '5': 11, '6': '.api.core.v1.ReplicationControllerCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `ReplicationControllerStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List replicationControllerStatusDescriptor = $convert.base64Decode(
    'ChtSZXBsaWNhdGlvbkNvbnRyb2xsZXJTdGF0dXMSGgoIcmVwbGljYXMYASABKAVSCHJlcGxpY2'
    'FzEjIKFGZ1bGx5TGFiZWxlZFJlcGxpY2FzGAIgASgFUhRmdWxseUxhYmVsZWRSZXBsaWNhcxIk'
    'Cg1yZWFkeVJlcGxpY2FzGAQgASgFUg1yZWFkeVJlcGxpY2FzEiwKEWF2YWlsYWJsZVJlcGxpY2'
    'FzGAUgASgFUhFhdmFpbGFibGVSZXBsaWNhcxIuChJvYnNlcnZlZEdlbmVyYXRpb24YAyABKANS'
    'Em9ic2VydmVkR2VuZXJhdGlvbhJLCgpjb25kaXRpb25zGAYgAygLMisuYXBpLmNvcmUudjEuUm'
    'VwbGljYXRpb25Db250cm9sbGVyQ29uZGl0aW9uUgpjb25kaXRpb25z');

@$core.Deprecated('Use resourceClaimDescriptor instead')
const ResourceClaim$json = {
  '1': 'ResourceClaim',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ResourceClaim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceClaimDescriptor = $convert.base64Decode(
    'Cg1SZXNvdXJjZUNsYWltEhIKBG5hbWUYASABKAlSBG5hbWU=');

@$core.Deprecated('Use resourceFieldSelectorDescriptor instead')
const ResourceFieldSelector$json = {
  '1': 'ResourceFieldSelector',
  '2': [
    {'1': 'containerName', '3': 1, '4': 1, '5': 9, '10': 'containerName'},
    {'1': 'resource', '3': 2, '4': 1, '5': 9, '10': 'resource'},
    {'1': 'divisor', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'divisor'},
  ],
};

/// Descriptor for `ResourceFieldSelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceFieldSelectorDescriptor = $convert.base64Decode(
    'ChVSZXNvdXJjZUZpZWxkU2VsZWN0b3ISJAoNY29udGFpbmVyTmFtZRgBIAEoCVINY29udGFpbm'
    'VyTmFtZRIaCghyZXNvdXJjZRgCIAEoCVIIcmVzb3VyY2USQQoHZGl2aXNvchgDIAEoCzInLmFw'
    'aW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgdkaXZpc29y');

@$core.Deprecated('Use resourceQuotaDescriptor instead')
const ResourceQuota$json = {
  '1': 'ResourceQuota',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ResourceQuotaSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ResourceQuotaStatus', '10': 'status'},
  ],
};

/// Descriptor for `ResourceQuota`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceQuotaDescriptor = $convert.base64Decode(
    'Cg1SZXNvdXJjZVF1b3RhEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESMgoEc3BlYxgCIAEoCzIeLmFwaS5jb3Jl'
    'LnYxLlJlc291cmNlUXVvdGFTcGVjUgRzcGVjEjgKBnN0YXR1cxgDIAEoCzIgLmFwaS5jb3JlLn'
    'YxLlJlc291cmNlUXVvdGFTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use resourceQuotaListDescriptor instead')
const ResourceQuotaList$json = {
  '1': 'ResourceQuotaList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ResourceQuota', '10': 'items'},
  ],
};

/// Descriptor for `ResourceQuotaList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceQuotaListDescriptor = $convert.base64Decode(
    'ChFSZXNvdXJjZVF1b3RhTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRIwCgVpdGVtcxgCIAMoCzIaLmFwaS5j'
    'b3JlLnYxLlJlc291cmNlUXVvdGFSBWl0ZW1z');

@$core.Deprecated('Use resourceQuotaSpecDescriptor instead')
const ResourceQuotaSpec$json = {
  '1': 'ResourceQuotaSpec',
  '2': [
    {'1': 'hard', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.ResourceQuotaSpec.HardEntry', '10': 'hard'},
    {'1': 'scopes', '3': 2, '4': 3, '5': 9, '10': 'scopes'},
    {'1': 'scopeSelector', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ScopeSelector', '10': 'scopeSelector'},
  ],
  '3': [ResourceQuotaSpec_HardEntry$json],
};

@$core.Deprecated('Use resourceQuotaSpecDescriptor instead')
const ResourceQuotaSpec_HardEntry$json = {
  '1': 'HardEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ResourceQuotaSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceQuotaSpecDescriptor = $convert.base64Decode(
    'ChFSZXNvdXJjZVF1b3RhU3BlYxI8CgRoYXJkGAEgAygLMiguYXBpLmNvcmUudjEuUmVzb3VyY2'
    'VRdW90YVNwZWMuSGFyZEVudHJ5UgRoYXJkEhYKBnNjb3BlcxgCIAMoCVIGc2NvcGVzEkAKDXNj'
    'b3BlU2VsZWN0b3IYAyABKAsyGi5hcGkuY29yZS52MS5TY29wZVNlbGVjdG9yUg1zY29wZVNlbG'
    'VjdG9yGmAKCUhhcmRFbnRyeRIQCgNrZXkYASABKAlSA2tleRI9CgV2YWx1ZRgCIAEoCzInLmFw'
    'aW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZToCOAE=');

@$core.Deprecated('Use resourceQuotaStatusDescriptor instead')
const ResourceQuotaStatus$json = {
  '1': 'ResourceQuotaStatus',
  '2': [
    {'1': 'hard', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.ResourceQuotaStatus.HardEntry', '10': 'hard'},
    {'1': 'used', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ResourceQuotaStatus.UsedEntry', '10': 'used'},
  ],
  '3': [ResourceQuotaStatus_HardEntry$json, ResourceQuotaStatus_UsedEntry$json],
};

@$core.Deprecated('Use resourceQuotaStatusDescriptor instead')
const ResourceQuotaStatus_HardEntry$json = {
  '1': 'HardEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use resourceQuotaStatusDescriptor instead')
const ResourceQuotaStatus_UsedEntry$json = {
  '1': 'UsedEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ResourceQuotaStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceQuotaStatusDescriptor = $convert.base64Decode(
    'ChNSZXNvdXJjZVF1b3RhU3RhdHVzEj4KBGhhcmQYASADKAsyKi5hcGkuY29yZS52MS5SZXNvdX'
    'JjZVF1b3RhU3RhdHVzLkhhcmRFbnRyeVIEaGFyZBI+CgR1c2VkGAIgAygLMiouYXBpLmNvcmUu'
    'djEuUmVzb3VyY2VRdW90YVN0YXR1cy5Vc2VkRW50cnlSBHVzZWQaYAoJSGFyZEVudHJ5EhAKA2'
    'tleRgBIAEoCVIDa2V5Ej0KBXZhbHVlGAIgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGkucmVz'
    'b3VyY2UuUXVhbnRpdHlSBXZhbHVlOgI4ARpgCglVc2VkRW50cnkSEAoDa2V5GAEgASgJUgNrZX'
    'kSPQoFdmFsdWUYAiABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0'
    'eVIFdmFsdWU6AjgB');

@$core.Deprecated('Use resourceRequirementsDescriptor instead')
const ResourceRequirements$json = {
  '1': 'ResourceRequirements',
  '2': [
    {'1': 'limits', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.ResourceRequirements.LimitsEntry', '10': 'limits'},
    {'1': 'requests', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ResourceRequirements.RequestsEntry', '10': 'requests'},
    {'1': 'claims', '3': 3, '4': 3, '5': 11, '6': '.api.core.v1.ResourceClaim', '10': 'claims'},
  ],
  '3': [ResourceRequirements_LimitsEntry$json, ResourceRequirements_RequestsEntry$json],
};

@$core.Deprecated('Use resourceRequirementsDescriptor instead')
const ResourceRequirements_LimitsEntry$json = {
  '1': 'LimitsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use resourceRequirementsDescriptor instead')
const ResourceRequirements_RequestsEntry$json = {
  '1': 'RequestsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ResourceRequirements`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceRequirementsDescriptor = $convert.base64Decode(
    'ChRSZXNvdXJjZVJlcXVpcmVtZW50cxJFCgZsaW1pdHMYASADKAsyLS5hcGkuY29yZS52MS5SZX'
    'NvdXJjZVJlcXVpcmVtZW50cy5MaW1pdHNFbnRyeVIGbGltaXRzEksKCHJlcXVlc3RzGAIgAygL'
    'Mi8uYXBpLmNvcmUudjEuUmVzb3VyY2VSZXF1aXJlbWVudHMuUmVxdWVzdHNFbnRyeVIIcmVxdW'
    'VzdHMSMgoGY2xhaW1zGAMgAygLMhouYXBpLmNvcmUudjEuUmVzb3VyY2VDbGFpbVIGY2xhaW1z'
    'GmIKC0xpbWl0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ej0KBXZhbHVlGAIgASgLMicuYXBpbW'
    'FjaGluZXJ5LnBrZy5hcGkucmVzb3VyY2UuUXVhbnRpdHlSBXZhbHVlOgI4ARpkCg1SZXF1ZXN0'
    'c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ej0KBXZhbHVlGAIgASgLMicuYXBpbWFjaGluZXJ5Ln'
    'BrZy5hcGkucmVzb3VyY2UuUXVhbnRpdHlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use sELinuxOptionsDescriptor instead')
const SELinuxOptions$json = {
  '1': 'SELinuxOptions',
  '2': [
    {'1': 'user', '3': 1, '4': 1, '5': 9, '10': 'user'},
    {'1': 'role', '3': 2, '4': 1, '5': 9, '10': 'role'},
    {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
    {'1': 'level', '3': 4, '4': 1, '5': 9, '10': 'level'},
  ],
};

/// Descriptor for `SELinuxOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sELinuxOptionsDescriptor = $convert.base64Decode(
    'Cg5TRUxpbnV4T3B0aW9ucxISCgR1c2VyGAEgASgJUgR1c2VyEhIKBHJvbGUYAiABKAlSBHJvbG'
    'USEgoEdHlwZRgDIAEoCVIEdHlwZRIUCgVsZXZlbBgEIAEoCVIFbGV2ZWw=');

@$core.Deprecated('Use scaleIOPersistentVolumeSourceDescriptor instead')
const ScaleIOPersistentVolumeSource$json = {
  '1': 'ScaleIOPersistentVolumeSource',
  '2': [
    {'1': 'gateway', '3': 1, '4': 1, '5': 9, '10': 'gateway'},
    {'1': 'system', '3': 2, '4': 1, '5': 9, '10': 'system'},
    {'1': 'secretRef', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.SecretReference', '10': 'secretRef'},
    {'1': 'sslEnabled', '3': 4, '4': 1, '5': 8, '10': 'sslEnabled'},
    {'1': 'protectionDomain', '3': 5, '4': 1, '5': 9, '10': 'protectionDomain'},
    {'1': 'storagePool', '3': 6, '4': 1, '5': 9, '10': 'storagePool'},
    {'1': 'storageMode', '3': 7, '4': 1, '5': 9, '10': 'storageMode'},
    {'1': 'volumeName', '3': 8, '4': 1, '5': 9, '10': 'volumeName'},
    {'1': 'fsType', '3': 9, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 10, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `ScaleIOPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleIOPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'Ch1TY2FsZUlPUGVyc2lzdGVudFZvbHVtZVNvdXJjZRIYCgdnYXRld2F5GAEgASgJUgdnYXRld2'
    'F5EhYKBnN5c3RlbRgCIAEoCVIGc3lzdGVtEjoKCXNlY3JldFJlZhgDIAEoCzIcLmFwaS5jb3Jl'
    'LnYxLlNlY3JldFJlZmVyZW5jZVIJc2VjcmV0UmVmEh4KCnNzbEVuYWJsZWQYBCABKAhSCnNzbE'
    'VuYWJsZWQSKgoQcHJvdGVjdGlvbkRvbWFpbhgFIAEoCVIQcHJvdGVjdGlvbkRvbWFpbhIgCgtz'
    'dG9yYWdlUG9vbBgGIAEoCVILc3RvcmFnZVBvb2wSIAoLc3RvcmFnZU1vZGUYByABKAlSC3N0b3'
    'JhZ2VNb2RlEh4KCnZvbHVtZU5hbWUYCCABKAlSCnZvbHVtZU5hbWUSFgoGZnNUeXBlGAkgASgJ'
    'UgZmc1R5cGUSGgoIcmVhZE9ubHkYCiABKAhSCHJlYWRPbmx5');

@$core.Deprecated('Use scaleIOVolumeSourceDescriptor instead')
const ScaleIOVolumeSource$json = {
  '1': 'ScaleIOVolumeSource',
  '2': [
    {'1': 'gateway', '3': 1, '4': 1, '5': 9, '10': 'gateway'},
    {'1': 'system', '3': 2, '4': 1, '5': 9, '10': 'system'},
    {'1': 'secretRef', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'secretRef'},
    {'1': 'sslEnabled', '3': 4, '4': 1, '5': 8, '10': 'sslEnabled'},
    {'1': 'protectionDomain', '3': 5, '4': 1, '5': 9, '10': 'protectionDomain'},
    {'1': 'storagePool', '3': 6, '4': 1, '5': 9, '10': 'storagePool'},
    {'1': 'storageMode', '3': 7, '4': 1, '5': 9, '10': 'storageMode'},
    {'1': 'volumeName', '3': 8, '4': 1, '5': 9, '10': 'volumeName'},
    {'1': 'fsType', '3': 9, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 10, '4': 1, '5': 8, '10': 'readOnly'},
  ],
};

/// Descriptor for `ScaleIOVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleIOVolumeSourceDescriptor = $convert.base64Decode(
    'ChNTY2FsZUlPVm9sdW1lU291cmNlEhgKB2dhdGV3YXkYASABKAlSB2dhdGV3YXkSFgoGc3lzdG'
    'VtGAIgASgJUgZzeXN0ZW0SPwoJc2VjcmV0UmVmGAMgASgLMiEuYXBpLmNvcmUudjEuTG9jYWxP'
    'YmplY3RSZWZlcmVuY2VSCXNlY3JldFJlZhIeCgpzc2xFbmFibGVkGAQgASgIUgpzc2xFbmFibG'
    'VkEioKEHByb3RlY3Rpb25Eb21haW4YBSABKAlSEHByb3RlY3Rpb25Eb21haW4SIAoLc3RvcmFn'
    'ZVBvb2wYBiABKAlSC3N0b3JhZ2VQb29sEiAKC3N0b3JhZ2VNb2RlGAcgASgJUgtzdG9yYWdlTW'
    '9kZRIeCgp2b2x1bWVOYW1lGAggASgJUgp2b2x1bWVOYW1lEhYKBmZzVHlwZRgJIAEoCVIGZnNU'
    'eXBlEhoKCHJlYWRPbmx5GAogASgIUghyZWFkT25seQ==');

@$core.Deprecated('Use scopeSelectorDescriptor instead')
const ScopeSelector$json = {
  '1': 'ScopeSelector',
  '2': [
    {'1': 'matchExpressions', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.ScopedResourceSelectorRequirement', '10': 'matchExpressions'},
  ],
};

/// Descriptor for `ScopeSelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scopeSelectorDescriptor = $convert.base64Decode(
    'Cg1TY29wZVNlbGVjdG9yEloKEG1hdGNoRXhwcmVzc2lvbnMYASADKAsyLi5hcGkuY29yZS52MS'
    '5TY29wZWRSZXNvdXJjZVNlbGVjdG9yUmVxdWlyZW1lbnRSEG1hdGNoRXhwcmVzc2lvbnM=');

@$core.Deprecated('Use scopedResourceSelectorRequirementDescriptor instead')
const ScopedResourceSelectorRequirement$json = {
  '1': 'ScopedResourceSelectorRequirement',
  '2': [
    {'1': 'scopeName', '3': 1, '4': 1, '5': 9, '10': 'scopeName'},
    {'1': 'operator', '3': 2, '4': 1, '5': 9, '10': 'operator'},
    {'1': 'values', '3': 3, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `ScopedResourceSelectorRequirement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scopedResourceSelectorRequirementDescriptor = $convert.base64Decode(
    'CiFTY29wZWRSZXNvdXJjZVNlbGVjdG9yUmVxdWlyZW1lbnQSHAoJc2NvcGVOYW1lGAEgASgJUg'
    'lzY29wZU5hbWUSGgoIb3BlcmF0b3IYAiABKAlSCG9wZXJhdG9yEhYKBnZhbHVlcxgDIAMoCVIG'
    'dmFsdWVz');

@$core.Deprecated('Use seccompProfileDescriptor instead')
const SeccompProfile$json = {
  '1': 'SeccompProfile',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'localhostProfile', '3': 2, '4': 1, '5': 9, '10': 'localhostProfile'},
  ],
};

/// Descriptor for `SeccompProfile`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List seccompProfileDescriptor = $convert.base64Decode(
    'Cg5TZWNjb21wUHJvZmlsZRISCgR0eXBlGAEgASgJUgR0eXBlEioKEGxvY2FsaG9zdFByb2ZpbG'
    'UYAiABKAlSEGxvY2FsaG9zdFByb2ZpbGU=');

@$core.Deprecated('Use secretDescriptor instead')
const Secret$json = {
  '1': 'Secret',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'immutable', '3': 5, '4': 1, '5': 8, '10': 'immutable'},
    {'1': 'data', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Secret.DataEntry', '10': 'data'},
    {'1': 'stringData', '3': 4, '4': 3, '5': 11, '6': '.api.core.v1.Secret.StringDataEntry', '10': 'stringData'},
    {'1': 'type', '3': 3, '4': 1, '5': 9, '10': 'type'},
  ],
  '3': [Secret_DataEntry$json, Secret_StringDataEntry$json],
};

@$core.Deprecated('Use secretDescriptor instead')
const Secret_DataEntry$json = {
  '1': 'DataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use secretDescriptor instead')
const Secret_StringDataEntry$json = {
  '1': 'StringDataEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Secret`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretDescriptor = $convert.base64Decode(
    'CgZTZWNyZXQSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS'
    '52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIcCglpbW11dGFibGUYBSABKAhSCWltbXV0YWJsZRIx'
    'CgRkYXRhGAIgAygLMh0uYXBpLmNvcmUudjEuU2VjcmV0LkRhdGFFbnRyeVIEZGF0YRJDCgpzdH'
    'JpbmdEYXRhGAQgAygLMiMuYXBpLmNvcmUudjEuU2VjcmV0LlN0cmluZ0RhdGFFbnRyeVIKc3Ry'
    'aW5nRGF0YRISCgR0eXBlGAMgASgJUgR0eXBlGjcKCURhdGFFbnRyeRIQCgNrZXkYASABKAlSA2'
    'tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWU6AjgBGj0KD1N0cmluZ0RhdGFFbnRyeRIQCgNrZXkY'
    'ASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use secretEnvSourceDescriptor instead')
const SecretEnvSource$json = {
  '1': 'SecretEnvSource',
  '2': [
    {'1': 'localObjectReference', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'localObjectReference'},
    {'1': 'optional', '3': 2, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `SecretEnvSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretEnvSourceDescriptor = $convert.base64Decode(
    'Cg9TZWNyZXRFbnZTb3VyY2USVQoUbG9jYWxPYmplY3RSZWZlcmVuY2UYASABKAsyIS5hcGkuY2'
    '9yZS52MS5Mb2NhbE9iamVjdFJlZmVyZW5jZVIUbG9jYWxPYmplY3RSZWZlcmVuY2USGgoIb3B0'
    'aW9uYWwYAiABKAhSCG9wdGlvbmFs');

@$core.Deprecated('Use secretKeySelectorDescriptor instead')
const SecretKeySelector$json = {
  '1': 'SecretKeySelector',
  '2': [
    {'1': 'localObjectReference', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'localObjectReference'},
    {'1': 'key', '3': 2, '4': 1, '5': 9, '10': 'key'},
    {'1': 'optional', '3': 3, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `SecretKeySelector`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretKeySelectorDescriptor = $convert.base64Decode(
    'ChFTZWNyZXRLZXlTZWxlY3RvchJVChRsb2NhbE9iamVjdFJlZmVyZW5jZRgBIAEoCzIhLmFwaS'
    '5jb3JlLnYxLkxvY2FsT2JqZWN0UmVmZXJlbmNlUhRsb2NhbE9iamVjdFJlZmVyZW5jZRIQCgNr'
    'ZXkYAiABKAlSA2tleRIaCghvcHRpb25hbBgDIAEoCFIIb3B0aW9uYWw=');

@$core.Deprecated('Use secretListDescriptor instead')
const SecretList$json = {
  '1': 'SecretList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Secret', '10': 'items'},
  ],
};

/// Descriptor for `SecretList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretListDescriptor = $convert.base64Decode(
    'CgpTZWNyZXRMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEikKBWl0ZW1zGAIgAygLMhMuYXBpLmNvcmUudjEu'
    'U2VjcmV0UgVpdGVtcw==');

@$core.Deprecated('Use secretProjectionDescriptor instead')
const SecretProjection$json = {
  '1': 'SecretProjection',
  '2': [
    {'1': 'localObjectReference', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'localObjectReference'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.KeyToPath', '10': 'items'},
    {'1': 'optional', '3': 4, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `SecretProjection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretProjectionDescriptor = $convert.base64Decode(
    'ChBTZWNyZXRQcm9qZWN0aW9uElUKFGxvY2FsT2JqZWN0UmVmZXJlbmNlGAEgASgLMiEuYXBpLm'
    'NvcmUudjEuTG9jYWxPYmplY3RSZWZlcmVuY2VSFGxvY2FsT2JqZWN0UmVmZXJlbmNlEiwKBWl0'
    'ZW1zGAIgAygLMhYuYXBpLmNvcmUudjEuS2V5VG9QYXRoUgVpdGVtcxIaCghvcHRpb25hbBgEIA'
    'EoCFIIb3B0aW9uYWw=');

@$core.Deprecated('Use secretReferenceDescriptor instead')
const SecretReference$json = {
  '1': 'SecretReference',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'namespace', '3': 2, '4': 1, '5': 9, '10': 'namespace'},
  ],
};

/// Descriptor for `SecretReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretReferenceDescriptor = $convert.base64Decode(
    'Cg9TZWNyZXRSZWZlcmVuY2USEgoEbmFtZRgBIAEoCVIEbmFtZRIcCgluYW1lc3BhY2UYAiABKA'
    'lSCW5hbWVzcGFjZQ==');

@$core.Deprecated('Use secretVolumeSourceDescriptor instead')
const SecretVolumeSource$json = {
  '1': 'SecretVolumeSource',
  '2': [
    {'1': 'secretName', '3': 1, '4': 1, '5': 9, '10': 'secretName'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.KeyToPath', '10': 'items'},
    {'1': 'defaultMode', '3': 3, '4': 1, '5': 5, '10': 'defaultMode'},
    {'1': 'optional', '3': 4, '4': 1, '5': 8, '10': 'optional'},
  ],
};

/// Descriptor for `SecretVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List secretVolumeSourceDescriptor = $convert.base64Decode(
    'ChJTZWNyZXRWb2x1bWVTb3VyY2USHgoKc2VjcmV0TmFtZRgBIAEoCVIKc2VjcmV0TmFtZRIsCg'
    'VpdGVtcxgCIAMoCzIWLmFwaS5jb3JlLnYxLktleVRvUGF0aFIFaXRlbXMSIAoLZGVmYXVsdE1v'
    'ZGUYAyABKAVSC2RlZmF1bHRNb2RlEhoKCG9wdGlvbmFsGAQgASgIUghvcHRpb25hbA==');

@$core.Deprecated('Use securityContextDescriptor instead')
const SecurityContext$json = {
  '1': 'SecurityContext',
  '2': [
    {'1': 'capabilities', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.Capabilities', '10': 'capabilities'},
    {'1': 'privileged', '3': 2, '4': 1, '5': 8, '10': 'privileged'},
    {'1': 'seLinuxOptions', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.SELinuxOptions', '10': 'seLinuxOptions'},
    {'1': 'windowsOptions', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.WindowsSecurityContextOptions', '10': 'windowsOptions'},
    {'1': 'runAsUser', '3': 4, '4': 1, '5': 3, '10': 'runAsUser'},
    {'1': 'runAsGroup', '3': 8, '4': 1, '5': 3, '10': 'runAsGroup'},
    {'1': 'runAsNonRoot', '3': 5, '4': 1, '5': 8, '10': 'runAsNonRoot'},
    {'1': 'readOnlyRootFilesystem', '3': 6, '4': 1, '5': 8, '10': 'readOnlyRootFilesystem'},
    {'1': 'allowPrivilegeEscalation', '3': 7, '4': 1, '5': 8, '10': 'allowPrivilegeEscalation'},
    {'1': 'procMount', '3': 9, '4': 1, '5': 9, '10': 'procMount'},
    {'1': 'seccompProfile', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.SeccompProfile', '10': 'seccompProfile'},
    {'1': 'appArmorProfile', '3': 12, '4': 1, '5': 11, '6': '.api.core.v1.AppArmorProfile', '10': 'appArmorProfile'},
  ],
};

/// Descriptor for `SecurityContext`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List securityContextDescriptor = $convert.base64Decode(
    'Cg9TZWN1cml0eUNvbnRleHQSPQoMY2FwYWJpbGl0aWVzGAEgASgLMhkuYXBpLmNvcmUudjEuQ2'
    'FwYWJpbGl0aWVzUgxjYXBhYmlsaXRpZXMSHgoKcHJpdmlsZWdlZBgCIAEoCFIKcHJpdmlsZWdl'
    'ZBJDCg5zZUxpbnV4T3B0aW9ucxgDIAEoCzIbLmFwaS5jb3JlLnYxLlNFTGludXhPcHRpb25zUg'
    '5zZUxpbnV4T3B0aW9ucxJSCg53aW5kb3dzT3B0aW9ucxgKIAEoCzIqLmFwaS5jb3JlLnYxLldp'
    'bmRvd3NTZWN1cml0eUNvbnRleHRPcHRpb25zUg53aW5kb3dzT3B0aW9ucxIcCglydW5Bc1VzZX'
    'IYBCABKANSCXJ1bkFzVXNlchIeCgpydW5Bc0dyb3VwGAggASgDUgpydW5Bc0dyb3VwEiIKDHJ1'
    'bkFzTm9uUm9vdBgFIAEoCFIMcnVuQXNOb25Sb290EjYKFnJlYWRPbmx5Um9vdEZpbGVzeXN0ZW'
    '0YBiABKAhSFnJlYWRPbmx5Um9vdEZpbGVzeXN0ZW0SOgoYYWxsb3dQcml2aWxlZ2VFc2NhbGF0'
    'aW9uGAcgASgIUhhhbGxvd1ByaXZpbGVnZUVzY2FsYXRpb24SHAoJcHJvY01vdW50GAkgASgJUg'
    'lwcm9jTW91bnQSQwoOc2VjY29tcFByb2ZpbGUYCyABKAsyGy5hcGkuY29yZS52MS5TZWNjb21w'
    'UHJvZmlsZVIOc2VjY29tcFByb2ZpbGUSRgoPYXBwQXJtb3JQcm9maWxlGAwgASgLMhwuYXBpLm'
    'NvcmUudjEuQXBwQXJtb3JQcm9maWxlUg9hcHBBcm1vclByb2ZpbGU=');

@$core.Deprecated('Use serializedReferenceDescriptor instead')
const SerializedReference$json = {
  '1': 'SerializedReference',
  '2': [
    {'1': 'reference', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'reference'},
  ],
};

/// Descriptor for `SerializedReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serializedReferenceDescriptor = $convert.base64Decode(
    'ChNTZXJpYWxpemVkUmVmZXJlbmNlEjoKCXJlZmVyZW5jZRgBIAEoCzIcLmFwaS5jb3JlLnYxLk'
    '9iamVjdFJlZmVyZW5jZVIJcmVmZXJlbmNl');

@$core.Deprecated('Use serviceDescriptor instead')
const Service$json = {
  '1': 'Service',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.ServiceSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ServiceStatus', '10': 'status'},
  ],
};

/// Descriptor for `Service`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceDescriptor = $convert.base64Decode(
    'CgdTZXJ2aWNlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESLAoEc3BlYxgCIAEoCzIYLmFwaS5jb3JlLnYxLlNl'
    'cnZpY2VTcGVjUgRzcGVjEjIKBnN0YXR1cxgDIAEoCzIaLmFwaS5jb3JlLnYxLlNlcnZpY2VTdG'
    'F0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use serviceAccountDescriptor instead')
const ServiceAccount$json = {
  '1': 'ServiceAccount',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'secrets', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'secrets'},
    {'1': 'imagePullSecrets', '3': 3, '4': 3, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'imagePullSecrets'},
    {'1': 'automountServiceAccountToken', '3': 4, '4': 1, '5': 8, '10': 'automountServiceAccountToken'},
  ],
};

/// Descriptor for `ServiceAccount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceAccountDescriptor = $convert.base64Decode(
    'Cg5TZXJ2aWNlQWNjb3VudBJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjYKB3NlY3JldHMYAiADKAsyHC5hcGku'
    'Y29yZS52MS5PYmplY3RSZWZlcmVuY2VSB3NlY3JldHMSTQoQaW1hZ2VQdWxsU2VjcmV0cxgDIA'
    'MoCzIhLmFwaS5jb3JlLnYxLkxvY2FsT2JqZWN0UmVmZXJlbmNlUhBpbWFnZVB1bGxTZWNyZXRz'
    'EkIKHGF1dG9tb3VudFNlcnZpY2VBY2NvdW50VG9rZW4YBCABKAhSHGF1dG9tb3VudFNlcnZpY2'
    'VBY2NvdW50VG9rZW4=');

@$core.Deprecated('Use serviceAccountListDescriptor instead')
const ServiceAccountList$json = {
  '1': 'ServiceAccountList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ServiceAccount', '10': 'items'},
  ],
};

/// Descriptor for `ServiceAccountList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceAccountListDescriptor = $convert.base64Decode(
    'ChJTZXJ2aWNlQWNjb3VudExpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucG'
    'tnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESMQoFaXRlbXMYAiADKAsyGy5hcGku'
    'Y29yZS52MS5TZXJ2aWNlQWNjb3VudFIFaXRlbXM=');

@$core.Deprecated('Use serviceAccountTokenProjectionDescriptor instead')
const ServiceAccountTokenProjection$json = {
  '1': 'ServiceAccountTokenProjection',
  '2': [
    {'1': 'audience', '3': 1, '4': 1, '5': 9, '10': 'audience'},
    {'1': 'expirationSeconds', '3': 2, '4': 1, '5': 3, '10': 'expirationSeconds'},
    {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `ServiceAccountTokenProjection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceAccountTokenProjectionDescriptor = $convert.base64Decode(
    'Ch1TZXJ2aWNlQWNjb3VudFRva2VuUHJvamVjdGlvbhIaCghhdWRpZW5jZRgBIAEoCVIIYXVkaW'
    'VuY2USLAoRZXhwaXJhdGlvblNlY29uZHMYAiABKANSEWV4cGlyYXRpb25TZWNvbmRzEhIKBHBh'
    'dGgYAyABKAlSBHBhdGg=');

@$core.Deprecated('Use serviceListDescriptor instead')
const ServiceList$json = {
  '1': 'ServiceList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.Service', '10': 'items'},
  ],
};

/// Descriptor for `ServiceList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceListDescriptor = $convert.base64Decode(
    'CgtTZXJ2aWNlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRIqCgVpdGVtcxgCIAMoCzIULmFwaS5jb3JlLnYx'
    'LlNlcnZpY2VSBWl0ZW1z');

@$core.Deprecated('Use servicePortDescriptor instead')
const ServicePort$json = {
  '1': 'ServicePort',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'protocol', '3': 2, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'appProtocol', '3': 6, '4': 1, '5': 9, '10': 'appProtocol'},
    {'1': 'port', '3': 3, '4': 1, '5': 5, '10': 'port'},
    {'1': 'targetPort', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'targetPort'},
    {'1': 'nodePort', '3': 5, '4': 1, '5': 5, '10': 'nodePort'},
  ],
};

/// Descriptor for `ServicePort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List servicePortDescriptor = $convert.base64Decode(
    'CgtTZXJ2aWNlUG9ydBISCgRuYW1lGAEgASgJUgRuYW1lEhoKCHByb3RvY29sGAIgASgJUghwcm'
    '90b2NvbBIgCgthcHBQcm90b2NvbBgGIAEoCVILYXBwUHJvdG9jb2wSEgoEcG9ydBgDIAEoBVIE'
    'cG9ydBJJCgp0YXJnZXRQb3J0GAQgASgLMikuYXBpbWFjaGluZXJ5LnBrZy51dGlsLmludHN0ci'
    '5JbnRPclN0cmluZ1IKdGFyZ2V0UG9ydBIaCghub2RlUG9ydBgFIAEoBVIIbm9kZVBvcnQ=');

@$core.Deprecated('Use serviceProxyOptionsDescriptor instead')
const ServiceProxyOptions$json = {
  '1': 'ServiceProxyOptions',
  '2': [
    {'1': 'path', '3': 1, '4': 1, '5': 9, '10': 'path'},
  ],
};

/// Descriptor for `ServiceProxyOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceProxyOptionsDescriptor = $convert.base64Decode(
    'ChNTZXJ2aWNlUHJveHlPcHRpb25zEhIKBHBhdGgYASABKAlSBHBhdGg=');

@$core.Deprecated('Use serviceSpecDescriptor instead')
const ServiceSpec$json = {
  '1': 'ServiceSpec',
  '2': [
    {'1': 'ports', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.ServicePort', '10': 'ports'},
    {'1': 'selector', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.ServiceSpec.SelectorEntry', '10': 'selector'},
    {'1': 'clusterIP', '3': 3, '4': 1, '5': 9, '10': 'clusterIP'},
    {'1': 'clusterIPs', '3': 18, '4': 3, '5': 9, '10': 'clusterIPs'},
    {'1': 'type', '3': 4, '4': 1, '5': 9, '10': 'type'},
    {'1': 'externalIPs', '3': 5, '4': 3, '5': 9, '10': 'externalIPs'},
    {'1': 'sessionAffinity', '3': 7, '4': 1, '5': 9, '10': 'sessionAffinity'},
    {'1': 'loadBalancerIP', '3': 8, '4': 1, '5': 9, '10': 'loadBalancerIP'},
    {'1': 'loadBalancerSourceRanges', '3': 9, '4': 3, '5': 9, '10': 'loadBalancerSourceRanges'},
    {'1': 'externalName', '3': 10, '4': 1, '5': 9, '10': 'externalName'},
    {'1': 'externalTrafficPolicy', '3': 11, '4': 1, '5': 9, '10': 'externalTrafficPolicy'},
    {'1': 'healthCheckNodePort', '3': 12, '4': 1, '5': 5, '10': 'healthCheckNodePort'},
    {'1': 'publishNotReadyAddresses', '3': 13, '4': 1, '5': 8, '10': 'publishNotReadyAddresses'},
    {'1': 'sessionAffinityConfig', '3': 14, '4': 1, '5': 11, '6': '.api.core.v1.SessionAffinityConfig', '10': 'sessionAffinityConfig'},
    {'1': 'ipFamilies', '3': 19, '4': 3, '5': 9, '10': 'ipFamilies'},
    {'1': 'ipFamilyPolicy', '3': 17, '4': 1, '5': 9, '10': 'ipFamilyPolicy'},
    {'1': 'allocateLoadBalancerNodePorts', '3': 20, '4': 1, '5': 8, '10': 'allocateLoadBalancerNodePorts'},
    {'1': 'loadBalancerClass', '3': 21, '4': 1, '5': 9, '10': 'loadBalancerClass'},
    {'1': 'internalTrafficPolicy', '3': 22, '4': 1, '5': 9, '10': 'internalTrafficPolicy'},
    {'1': 'trafficDistribution', '3': 23, '4': 1, '5': 9, '10': 'trafficDistribution'},
  ],
  '3': [ServiceSpec_SelectorEntry$json],
};

@$core.Deprecated('Use serviceSpecDescriptor instead')
const ServiceSpec_SelectorEntry$json = {
  '1': 'SelectorEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ServiceSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceSpecDescriptor = $convert.base64Decode(
    'CgtTZXJ2aWNlU3BlYxIuCgVwb3J0cxgBIAMoCzIYLmFwaS5jb3JlLnYxLlNlcnZpY2VQb3J0Ug'
    'Vwb3J0cxJCCghzZWxlY3RvchgCIAMoCzImLmFwaS5jb3JlLnYxLlNlcnZpY2VTcGVjLlNlbGVj'
    'dG9yRW50cnlSCHNlbGVjdG9yEhwKCWNsdXN0ZXJJUBgDIAEoCVIJY2x1c3RlcklQEh4KCmNsdX'
    'N0ZXJJUHMYEiADKAlSCmNsdXN0ZXJJUHMSEgoEdHlwZRgEIAEoCVIEdHlwZRIgCgtleHRlcm5h'
    'bElQcxgFIAMoCVILZXh0ZXJuYWxJUHMSKAoPc2Vzc2lvbkFmZmluaXR5GAcgASgJUg9zZXNzaW'
    '9uQWZmaW5pdHkSJgoObG9hZEJhbGFuY2VySVAYCCABKAlSDmxvYWRCYWxhbmNlcklQEjoKGGxv'
    'YWRCYWxhbmNlclNvdXJjZVJhbmdlcxgJIAMoCVIYbG9hZEJhbGFuY2VyU291cmNlUmFuZ2VzEi'
    'IKDGV4dGVybmFsTmFtZRgKIAEoCVIMZXh0ZXJuYWxOYW1lEjQKFWV4dGVybmFsVHJhZmZpY1Bv'
    'bGljeRgLIAEoCVIVZXh0ZXJuYWxUcmFmZmljUG9saWN5EjAKE2hlYWx0aENoZWNrTm9kZVBvcn'
    'QYDCABKAVSE2hlYWx0aENoZWNrTm9kZVBvcnQSOgoYcHVibGlzaE5vdFJlYWR5QWRkcmVzc2Vz'
    'GA0gASgIUhhwdWJsaXNoTm90UmVhZHlBZGRyZXNzZXMSWAoVc2Vzc2lvbkFmZmluaXR5Q29uZm'
    'lnGA4gASgLMiIuYXBpLmNvcmUudjEuU2Vzc2lvbkFmZmluaXR5Q29uZmlnUhVzZXNzaW9uQWZm'
    'aW5pdHlDb25maWcSHgoKaXBGYW1pbGllcxgTIAMoCVIKaXBGYW1pbGllcxImCg5pcEZhbWlseV'
    'BvbGljeRgRIAEoCVIOaXBGYW1pbHlQb2xpY3kSRAodYWxsb2NhdGVMb2FkQmFsYW5jZXJOb2Rl'
    'UG9ydHMYFCABKAhSHWFsbG9jYXRlTG9hZEJhbGFuY2VyTm9kZVBvcnRzEiwKEWxvYWRCYWxhbm'
    'NlckNsYXNzGBUgASgJUhFsb2FkQmFsYW5jZXJDbGFzcxI0ChVpbnRlcm5hbFRyYWZmaWNQb2xp'
    'Y3kYFiABKAlSFWludGVybmFsVHJhZmZpY1BvbGljeRIwChN0cmFmZmljRGlzdHJpYnV0aW9uGB'
    'cgASgJUhN0cmFmZmljRGlzdHJpYnV0aW9uGjsKDVNlbGVjdG9yRW50cnkSEAoDa2V5GAEgASgJ'
    'UgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use serviceStatusDescriptor instead')
const ServiceStatus$json = {
  '1': 'ServiceStatus',
  '2': [
    {'1': 'loadBalancer', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.LoadBalancerStatus', '10': 'loadBalancer'},
    {'1': 'conditions', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Condition', '10': 'conditions'},
  ],
};

/// Descriptor for `ServiceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceStatusDescriptor = $convert.base64Decode(
    'Cg1TZXJ2aWNlU3RhdHVzEkMKDGxvYWRCYWxhbmNlchgBIAEoCzIfLmFwaS5jb3JlLnYxLkxvYW'
    'RCYWxhbmNlclN0YXR1c1IMbG9hZEJhbGFuY2VyEkgKCmNvbmRpdGlvbnMYAiADKAsyKC5hcGlt'
    'YWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5Db25kaXRpb25SCmNvbmRpdGlvbnM=');

@$core.Deprecated('Use sessionAffinityConfigDescriptor instead')
const SessionAffinityConfig$json = {
  '1': 'SessionAffinityConfig',
  '2': [
    {'1': 'clientIP', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.ClientIPConfig', '10': 'clientIP'},
  ],
};

/// Descriptor for `SessionAffinityConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sessionAffinityConfigDescriptor = $convert.base64Decode(
    'ChVTZXNzaW9uQWZmaW5pdHlDb25maWcSNwoIY2xpZW50SVAYASABKAsyGy5hcGkuY29yZS52MS'
    '5DbGllbnRJUENvbmZpZ1IIY2xpZW50SVA=');

@$core.Deprecated('Use sleepActionDescriptor instead')
const SleepAction$json = {
  '1': 'SleepAction',
  '2': [
    {'1': 'seconds', '3': 1, '4': 1, '5': 3, '10': 'seconds'},
  ],
};

/// Descriptor for `SleepAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sleepActionDescriptor = $convert.base64Decode(
    'CgtTbGVlcEFjdGlvbhIYCgdzZWNvbmRzGAEgASgDUgdzZWNvbmRz');

@$core.Deprecated('Use storageOSPersistentVolumeSourceDescriptor instead')
const StorageOSPersistentVolumeSource$json = {
  '1': 'StorageOSPersistentVolumeSource',
  '2': [
    {'1': 'volumeName', '3': 1, '4': 1, '5': 9, '10': 'volumeName'},
    {'1': 'volumeNamespace', '3': 2, '4': 1, '5': 9, '10': 'volumeNamespace'},
    {'1': 'fsType', '3': 3, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 4, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'secretRef', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'secretRef'},
  ],
};

/// Descriptor for `StorageOSPersistentVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageOSPersistentVolumeSourceDescriptor = $convert.base64Decode(
    'Ch9TdG9yYWdlT1NQZXJzaXN0ZW50Vm9sdW1lU291cmNlEh4KCnZvbHVtZU5hbWUYASABKAlSCn'
    'ZvbHVtZU5hbWUSKAoPdm9sdW1lTmFtZXNwYWNlGAIgASgJUg92b2x1bWVOYW1lc3BhY2USFgoG'
    'ZnNUeXBlGAMgASgJUgZmc1R5cGUSGgoIcmVhZE9ubHkYBCABKAhSCHJlYWRPbmx5EjoKCXNlY3'
    'JldFJlZhgFIAEoCzIcLmFwaS5jb3JlLnYxLk9iamVjdFJlZmVyZW5jZVIJc2VjcmV0UmVm');

@$core.Deprecated('Use storageOSVolumeSourceDescriptor instead')
const StorageOSVolumeSource$json = {
  '1': 'StorageOSVolumeSource',
  '2': [
    {'1': 'volumeName', '3': 1, '4': 1, '5': 9, '10': 'volumeName'},
    {'1': 'volumeNamespace', '3': 2, '4': 1, '5': 9, '10': 'volumeNamespace'},
    {'1': 'fsType', '3': 3, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'readOnly', '3': 4, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'secretRef', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.LocalObjectReference', '10': 'secretRef'},
  ],
};

/// Descriptor for `StorageOSVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List storageOSVolumeSourceDescriptor = $convert.base64Decode(
    'ChVTdG9yYWdlT1NWb2x1bWVTb3VyY2USHgoKdm9sdW1lTmFtZRgBIAEoCVIKdm9sdW1lTmFtZR'
    'IoCg92b2x1bWVOYW1lc3BhY2UYAiABKAlSD3ZvbHVtZU5hbWVzcGFjZRIWCgZmc1R5cGUYAyAB'
    'KAlSBmZzVHlwZRIaCghyZWFkT25seRgEIAEoCFIIcmVhZE9ubHkSPwoJc2VjcmV0UmVmGAUgAS'
    'gLMiEuYXBpLmNvcmUudjEuTG9jYWxPYmplY3RSZWZlcmVuY2VSCXNlY3JldFJlZg==');

@$core.Deprecated('Use sysctlDescriptor instead')
const Sysctl$json = {
  '1': 'Sysctl',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `Sysctl`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sysctlDescriptor = $convert.base64Decode(
    'CgZTeXNjdGwSEgoEbmFtZRgBIAEoCVIEbmFtZRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU=');

@$core.Deprecated('Use tCPSocketActionDescriptor instead')
const TCPSocketAction$json = {
  '1': 'TCPSocketAction',
  '2': [
    {'1': 'port', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'port'},
    {'1': 'host', '3': 2, '4': 1, '5': 9, '10': 'host'},
  ],
};

/// Descriptor for `TCPSocketAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tCPSocketActionDescriptor = $convert.base64Decode(
    'Cg9UQ1BTb2NrZXRBY3Rpb24SPQoEcG9ydBgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cudXRpbC'
    '5pbnRzdHIuSW50T3JTdHJpbmdSBHBvcnQSEgoEaG9zdBgCIAEoCVIEaG9zdA==');

@$core.Deprecated('Use taintDescriptor instead')
const Taint$json = {
  '1': 'Taint',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
    {'1': 'effect', '3': 3, '4': 1, '5': 9, '10': 'effect'},
    {'1': 'timeAdded', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'timeAdded'},
  ],
};

/// Descriptor for `Taint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List taintDescriptor = $convert.base64Decode(
    'CgVUYWludBIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWUSFgoGZWZmZW'
    'N0GAMgASgJUgZlZmZlY3QSQQoJdGltZUFkZGVkGAQgASgLMiMuYXBpbWFjaGluZXJ5LnBrZy5h'
    'cGlzLm1ldGEudjEuVGltZVIJdGltZUFkZGVk');

@$core.Deprecated('Use tolerationDescriptor instead')
const Toleration$json = {
  '1': 'Toleration',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'operator', '3': 2, '4': 1, '5': 9, '10': 'operator'},
    {'1': 'value', '3': 3, '4': 1, '5': 9, '10': 'value'},
    {'1': 'effect', '3': 4, '4': 1, '5': 9, '10': 'effect'},
    {'1': 'tolerationSeconds', '3': 5, '4': 1, '5': 3, '10': 'tolerationSeconds'},
  ],
};

/// Descriptor for `Toleration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tolerationDescriptor = $convert.base64Decode(
    'CgpUb2xlcmF0aW9uEhAKA2tleRgBIAEoCVIDa2V5EhoKCG9wZXJhdG9yGAIgASgJUghvcGVyYX'
    'RvchIUCgV2YWx1ZRgDIAEoCVIFdmFsdWUSFgoGZWZmZWN0GAQgASgJUgZlZmZlY3QSLAoRdG9s'
    'ZXJhdGlvblNlY29uZHMYBSABKANSEXRvbGVyYXRpb25TZWNvbmRz');

@$core.Deprecated('Use topologySelectorLabelRequirementDescriptor instead')
const TopologySelectorLabelRequirement$json = {
  '1': 'TopologySelectorLabelRequirement',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'values', '3': 2, '4': 3, '5': 9, '10': 'values'},
  ],
};

/// Descriptor for `TopologySelectorLabelRequirement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topologySelectorLabelRequirementDescriptor = $convert.base64Decode(
    'CiBUb3BvbG9neVNlbGVjdG9yTGFiZWxSZXF1aXJlbWVudBIQCgNrZXkYASABKAlSA2tleRIWCg'
    'Z2YWx1ZXMYAiADKAlSBnZhbHVlcw==');

@$core.Deprecated('Use topologySelectorTermDescriptor instead')
const TopologySelectorTerm$json = {
  '1': 'TopologySelectorTerm',
  '2': [
    {'1': 'matchLabelExpressions', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.TopologySelectorLabelRequirement', '10': 'matchLabelExpressions'},
  ],
};

/// Descriptor for `TopologySelectorTerm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topologySelectorTermDescriptor = $convert.base64Decode(
    'ChRUb3BvbG9neVNlbGVjdG9yVGVybRJjChVtYXRjaExhYmVsRXhwcmVzc2lvbnMYASADKAsyLS'
    '5hcGkuY29yZS52MS5Ub3BvbG9neVNlbGVjdG9yTGFiZWxSZXF1aXJlbWVudFIVbWF0Y2hMYWJl'
    'bEV4cHJlc3Npb25z');

@$core.Deprecated('Use topologySpreadConstraintDescriptor instead')
const TopologySpreadConstraint$json = {
  '1': 'TopologySpreadConstraint',
  '2': [
    {'1': 'maxSkew', '3': 1, '4': 1, '5': 5, '10': 'maxSkew'},
    {'1': 'topologyKey', '3': 2, '4': 1, '5': 9, '10': 'topologyKey'},
    {'1': 'whenUnsatisfiable', '3': 3, '4': 1, '5': 9, '10': 'whenUnsatisfiable'},
    {'1': 'labelSelector', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'labelSelector'},
    {'1': 'minDomains', '3': 5, '4': 1, '5': 5, '10': 'minDomains'},
    {'1': 'nodeAffinityPolicy', '3': 6, '4': 1, '5': 9, '10': 'nodeAffinityPolicy'},
    {'1': 'nodeTaintsPolicy', '3': 7, '4': 1, '5': 9, '10': 'nodeTaintsPolicy'},
    {'1': 'matchLabelKeys', '3': 8, '4': 3, '5': 9, '10': 'matchLabelKeys'},
  ],
};

/// Descriptor for `TopologySpreadConstraint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topologySpreadConstraintDescriptor = $convert.base64Decode(
    'ChhUb3BvbG9neVNwcmVhZENvbnN0cmFpbnQSGAoHbWF4U2tldxgBIAEoBVIHbWF4U2tldxIgCg'
    't0b3BvbG9neUtleRgCIAEoCVILdG9wb2xvZ3lLZXkSLAoRd2hlblVuc2F0aXNmaWFibGUYAyAB'
    'KAlSEXdoZW5VbnNhdGlzZmlhYmxlElIKDWxhYmVsU2VsZWN0b3IYBCABKAsyLC5hcGltYWNoaW'
    '5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG9yUg1sYWJlbFNlbGVjdG9yEh4KCm1p'
    'bkRvbWFpbnMYBSABKAVSCm1pbkRvbWFpbnMSLgoSbm9kZUFmZmluaXR5UG9saWN5GAYgASgJUh'
    'Jub2RlQWZmaW5pdHlQb2xpY3kSKgoQbm9kZVRhaW50c1BvbGljeRgHIAEoCVIQbm9kZVRhaW50'
    'c1BvbGljeRImCg5tYXRjaExhYmVsS2V5cxgIIAMoCVIObWF0Y2hMYWJlbEtleXM=');

@$core.Deprecated('Use typedLocalObjectReferenceDescriptor instead')
const TypedLocalObjectReference$json = {
  '1': 'TypedLocalObjectReference',
  '2': [
    {'1': 'apiGroup', '3': 1, '4': 1, '5': 9, '10': 'apiGroup'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `TypedLocalObjectReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typedLocalObjectReferenceDescriptor = $convert.base64Decode(
    'ChlUeXBlZExvY2FsT2JqZWN0UmVmZXJlbmNlEhoKCGFwaUdyb3VwGAEgASgJUghhcGlHcm91cB'
    'ISCgRraW5kGAIgASgJUgRraW5kEhIKBG5hbWUYAyABKAlSBG5hbWU=');

@$core.Deprecated('Use typedObjectReferenceDescriptor instead')
const TypedObjectReference$json = {
  '1': 'TypedObjectReference',
  '2': [
    {'1': 'apiGroup', '3': 1, '4': 1, '5': 9, '10': 'apiGroup'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'namespace', '3': 4, '4': 1, '5': 9, '10': 'namespace'},
  ],
};

/// Descriptor for `TypedObjectReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typedObjectReferenceDescriptor = $convert.base64Decode(
    'ChRUeXBlZE9iamVjdFJlZmVyZW5jZRIaCghhcGlHcm91cBgBIAEoCVIIYXBpR3JvdXASEgoEa2'
    'luZBgCIAEoCVIEa2luZBISCgRuYW1lGAMgASgJUgRuYW1lEhwKCW5hbWVzcGFjZRgEIAEoCVIJ'
    'bmFtZXNwYWNl');

@$core.Deprecated('Use volumeDescriptor instead')
const Volume$json = {
  '1': 'Volume',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'volumeSource', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.VolumeSource', '10': 'volumeSource'},
  ],
};

/// Descriptor for `Volume`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeDescriptor = $convert.base64Decode(
    'CgZWb2x1bWUSEgoEbmFtZRgBIAEoCVIEbmFtZRI9Cgx2b2x1bWVTb3VyY2UYAiABKAsyGS5hcG'
    'kuY29yZS52MS5Wb2x1bWVTb3VyY2VSDHZvbHVtZVNvdXJjZQ==');

@$core.Deprecated('Use volumeDeviceDescriptor instead')
const VolumeDevice$json = {
  '1': 'VolumeDevice',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'devicePath', '3': 2, '4': 1, '5': 9, '10': 'devicePath'},
  ],
};

/// Descriptor for `VolumeDevice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeDeviceDescriptor = $convert.base64Decode(
    'CgxWb2x1bWVEZXZpY2USEgoEbmFtZRgBIAEoCVIEbmFtZRIeCgpkZXZpY2VQYXRoGAIgASgJUg'
    'pkZXZpY2VQYXRo');

@$core.Deprecated('Use volumeMountDescriptor instead')
const VolumeMount$json = {
  '1': 'VolumeMount',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'readOnly', '3': 2, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'recursiveReadOnly', '3': 7, '4': 1, '5': 9, '10': 'recursiveReadOnly'},
    {'1': 'mountPath', '3': 3, '4': 1, '5': 9, '10': 'mountPath'},
    {'1': 'subPath', '3': 4, '4': 1, '5': 9, '10': 'subPath'},
    {'1': 'mountPropagation', '3': 5, '4': 1, '5': 9, '10': 'mountPropagation'},
    {'1': 'subPathExpr', '3': 6, '4': 1, '5': 9, '10': 'subPathExpr'},
  ],
};

/// Descriptor for `VolumeMount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeMountDescriptor = $convert.base64Decode(
    'CgtWb2x1bWVNb3VudBISCgRuYW1lGAEgASgJUgRuYW1lEhoKCHJlYWRPbmx5GAIgASgIUghyZW'
    'FkT25seRIsChFyZWN1cnNpdmVSZWFkT25seRgHIAEoCVIRcmVjdXJzaXZlUmVhZE9ubHkSHAoJ'
    'bW91bnRQYXRoGAMgASgJUgltb3VudFBhdGgSGAoHc3ViUGF0aBgEIAEoCVIHc3ViUGF0aBIqCh'
    'Btb3VudFByb3BhZ2F0aW9uGAUgASgJUhBtb3VudFByb3BhZ2F0aW9uEiAKC3N1YlBhdGhFeHBy'
    'GAYgASgJUgtzdWJQYXRoRXhwcg==');

@$core.Deprecated('Use volumeMountStatusDescriptor instead')
const VolumeMountStatus$json = {
  '1': 'VolumeMountStatus',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'mountPath', '3': 2, '4': 1, '5': 9, '10': 'mountPath'},
    {'1': 'readOnly', '3': 3, '4': 1, '5': 8, '10': 'readOnly'},
    {'1': 'recursiveReadOnly', '3': 4, '4': 1, '5': 9, '10': 'recursiveReadOnly'},
  ],
};

/// Descriptor for `VolumeMountStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeMountStatusDescriptor = $convert.base64Decode(
    'ChFWb2x1bWVNb3VudFN0YXR1cxISCgRuYW1lGAEgASgJUgRuYW1lEhwKCW1vdW50UGF0aBgCIA'
    'EoCVIJbW91bnRQYXRoEhoKCHJlYWRPbmx5GAMgASgIUghyZWFkT25seRIsChFyZWN1cnNpdmVS'
    'ZWFkT25seRgEIAEoCVIRcmVjdXJzaXZlUmVhZE9ubHk=');

@$core.Deprecated('Use volumeNodeAffinityDescriptor instead')
const VolumeNodeAffinity$json = {
  '1': 'VolumeNodeAffinity',
  '2': [
    {'1': 'required', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.NodeSelector', '10': 'required'},
  ],
};

/// Descriptor for `VolumeNodeAffinity`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeNodeAffinityDescriptor = $convert.base64Decode(
    'ChJWb2x1bWVOb2RlQWZmaW5pdHkSNQoIcmVxdWlyZWQYASABKAsyGS5hcGkuY29yZS52MS5Ob2'
    'RlU2VsZWN0b3JSCHJlcXVpcmVk');

@$core.Deprecated('Use volumeProjectionDescriptor instead')
const VolumeProjection$json = {
  '1': 'VolumeProjection',
  '2': [
    {'1': 'secret', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.SecretProjection', '10': 'secret'},
    {'1': 'downwardAPI', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.DownwardAPIProjection', '10': 'downwardAPI'},
    {'1': 'configMap', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.ConfigMapProjection', '10': 'configMap'},
    {'1': 'serviceAccountToken', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.ServiceAccountTokenProjection', '10': 'serviceAccountToken'},
    {'1': 'clusterTrustBundle', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.ClusterTrustBundleProjection', '10': 'clusterTrustBundle'},
  ],
};

/// Descriptor for `VolumeProjection`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeProjectionDescriptor = $convert.base64Decode(
    'ChBWb2x1bWVQcm9qZWN0aW9uEjUKBnNlY3JldBgBIAEoCzIdLmFwaS5jb3JlLnYxLlNlY3JldF'
    'Byb2plY3Rpb25SBnNlY3JldBJECgtkb3dud2FyZEFQSRgCIAEoCzIiLmFwaS5jb3JlLnYxLkRv'
    'd253YXJkQVBJUHJvamVjdGlvblILZG93bndhcmRBUEkSPgoJY29uZmlnTWFwGAMgASgLMiAuYX'
    'BpLmNvcmUudjEuQ29uZmlnTWFwUHJvamVjdGlvblIJY29uZmlnTWFwElwKE3NlcnZpY2VBY2Nv'
    'dW50VG9rZW4YBCABKAsyKi5hcGkuY29yZS52MS5TZXJ2aWNlQWNjb3VudFRva2VuUHJvamVjdG'
    'lvblITc2VydmljZUFjY291bnRUb2tlbhJZChJjbHVzdGVyVHJ1c3RCdW5kbGUYBSABKAsyKS5h'
    'cGkuY29yZS52MS5DbHVzdGVyVHJ1c3RCdW5kbGVQcm9qZWN0aW9uUhJjbHVzdGVyVHJ1c3RCdW'
    '5kbGU=');

@$core.Deprecated('Use volumeResourceRequirementsDescriptor instead')
const VolumeResourceRequirements$json = {
  '1': 'VolumeResourceRequirements',
  '2': [
    {'1': 'limits', '3': 1, '4': 3, '5': 11, '6': '.api.core.v1.VolumeResourceRequirements.LimitsEntry', '10': 'limits'},
    {'1': 'requests', '3': 2, '4': 3, '5': 11, '6': '.api.core.v1.VolumeResourceRequirements.RequestsEntry', '10': 'requests'},
  ],
  '3': [VolumeResourceRequirements_LimitsEntry$json, VolumeResourceRequirements_RequestsEntry$json],
};

@$core.Deprecated('Use volumeResourceRequirementsDescriptor instead')
const VolumeResourceRequirements_LimitsEntry$json = {
  '1': 'LimitsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use volumeResourceRequirementsDescriptor instead')
const VolumeResourceRequirements_RequestsEntry$json = {
  '1': 'RequestsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `VolumeResourceRequirements`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeResourceRequirementsDescriptor = $convert.base64Decode(
    'ChpWb2x1bWVSZXNvdXJjZVJlcXVpcmVtZW50cxJLCgZsaW1pdHMYASADKAsyMy5hcGkuY29yZS'
    '52MS5Wb2x1bWVSZXNvdXJjZVJlcXVpcmVtZW50cy5MaW1pdHNFbnRyeVIGbGltaXRzElEKCHJl'
    'cXVlc3RzGAIgAygLMjUuYXBpLmNvcmUudjEuVm9sdW1lUmVzb3VyY2VSZXF1aXJlbWVudHMuUm'
    'VxdWVzdHNFbnRyeVIIcmVxdWVzdHMaYgoLTGltaXRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkS'
    'PQoFdmFsdWUYAiABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eV'
    'IFdmFsdWU6AjgBGmQKDVJlcXVlc3RzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFsdWUY'
    'AiABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIFdmFsdWU6Aj'
    'gB');

@$core.Deprecated('Use volumeSourceDescriptor instead')
const VolumeSource$json = {
  '1': 'VolumeSource',
  '2': [
    {'1': 'hostPath', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.HostPathVolumeSource', '10': 'hostPath'},
    {'1': 'emptyDir', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.EmptyDirVolumeSource', '10': 'emptyDir'},
    {'1': 'gcePersistentDisk', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.GCEPersistentDiskVolumeSource', '10': 'gcePersistentDisk'},
    {'1': 'awsElasticBlockStore', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.AWSElasticBlockStoreVolumeSource', '10': 'awsElasticBlockStore'},
    {'1': 'gitRepo', '3': 5, '4': 1, '5': 11, '6': '.api.core.v1.GitRepoVolumeSource', '10': 'gitRepo'},
    {'1': 'secret', '3': 6, '4': 1, '5': 11, '6': '.api.core.v1.SecretVolumeSource', '10': 'secret'},
    {'1': 'nfs', '3': 7, '4': 1, '5': 11, '6': '.api.core.v1.NFSVolumeSource', '10': 'nfs'},
    {'1': 'iscsi', '3': 8, '4': 1, '5': 11, '6': '.api.core.v1.ISCSIVolumeSource', '10': 'iscsi'},
    {'1': 'glusterfs', '3': 9, '4': 1, '5': 11, '6': '.api.core.v1.GlusterfsVolumeSource', '10': 'glusterfs'},
    {'1': 'persistentVolumeClaim', '3': 10, '4': 1, '5': 11, '6': '.api.core.v1.PersistentVolumeClaimVolumeSource', '10': 'persistentVolumeClaim'},
    {'1': 'rbd', '3': 11, '4': 1, '5': 11, '6': '.api.core.v1.RBDVolumeSource', '10': 'rbd'},
    {'1': 'flexVolume', '3': 12, '4': 1, '5': 11, '6': '.api.core.v1.FlexVolumeSource', '10': 'flexVolume'},
    {'1': 'cinder', '3': 13, '4': 1, '5': 11, '6': '.api.core.v1.CinderVolumeSource', '10': 'cinder'},
    {'1': 'cephfs', '3': 14, '4': 1, '5': 11, '6': '.api.core.v1.CephFSVolumeSource', '10': 'cephfs'},
    {'1': 'flocker', '3': 15, '4': 1, '5': 11, '6': '.api.core.v1.FlockerVolumeSource', '10': 'flocker'},
    {'1': 'downwardAPI', '3': 16, '4': 1, '5': 11, '6': '.api.core.v1.DownwardAPIVolumeSource', '10': 'downwardAPI'},
    {'1': 'fc', '3': 17, '4': 1, '5': 11, '6': '.api.core.v1.FCVolumeSource', '10': 'fc'},
    {'1': 'azureFile', '3': 18, '4': 1, '5': 11, '6': '.api.core.v1.AzureFileVolumeSource', '10': 'azureFile'},
    {'1': 'configMap', '3': 19, '4': 1, '5': 11, '6': '.api.core.v1.ConfigMapVolumeSource', '10': 'configMap'},
    {'1': 'vsphereVolume', '3': 20, '4': 1, '5': 11, '6': '.api.core.v1.VsphereVirtualDiskVolumeSource', '10': 'vsphereVolume'},
    {'1': 'quobyte', '3': 21, '4': 1, '5': 11, '6': '.api.core.v1.QuobyteVolumeSource', '10': 'quobyte'},
    {'1': 'azureDisk', '3': 22, '4': 1, '5': 11, '6': '.api.core.v1.AzureDiskVolumeSource', '10': 'azureDisk'},
    {'1': 'photonPersistentDisk', '3': 23, '4': 1, '5': 11, '6': '.api.core.v1.PhotonPersistentDiskVolumeSource', '10': 'photonPersistentDisk'},
    {'1': 'projected', '3': 26, '4': 1, '5': 11, '6': '.api.core.v1.ProjectedVolumeSource', '10': 'projected'},
    {'1': 'portworxVolume', '3': 24, '4': 1, '5': 11, '6': '.api.core.v1.PortworxVolumeSource', '10': 'portworxVolume'},
    {'1': 'scaleIO', '3': 25, '4': 1, '5': 11, '6': '.api.core.v1.ScaleIOVolumeSource', '10': 'scaleIO'},
    {'1': 'storageos', '3': 27, '4': 1, '5': 11, '6': '.api.core.v1.StorageOSVolumeSource', '10': 'storageos'},
    {'1': 'csi', '3': 28, '4': 1, '5': 11, '6': '.api.core.v1.CSIVolumeSource', '10': 'csi'},
    {'1': 'ephemeral', '3': 29, '4': 1, '5': 11, '6': '.api.core.v1.EphemeralVolumeSource', '10': 'ephemeral'},
  ],
};

/// Descriptor for `VolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeSourceDescriptor = $convert.base64Decode(
    'CgxWb2x1bWVTb3VyY2USPQoIaG9zdFBhdGgYASABKAsyIS5hcGkuY29yZS52MS5Ib3N0UGF0aF'
    'ZvbHVtZVNvdXJjZVIIaG9zdFBhdGgSPQoIZW1wdHlEaXIYAiABKAsyIS5hcGkuY29yZS52MS5F'
    'bXB0eURpclZvbHVtZVNvdXJjZVIIZW1wdHlEaXISWAoRZ2NlUGVyc2lzdGVudERpc2sYAyABKA'
    'syKi5hcGkuY29yZS52MS5HQ0VQZXJzaXN0ZW50RGlza1ZvbHVtZVNvdXJjZVIRZ2NlUGVyc2lz'
    'dGVudERpc2sSYQoUYXdzRWxhc3RpY0Jsb2NrU3RvcmUYBCABKAsyLS5hcGkuY29yZS52MS5BV1'
    'NFbGFzdGljQmxvY2tTdG9yZVZvbHVtZVNvdXJjZVIUYXdzRWxhc3RpY0Jsb2NrU3RvcmUSOgoH'
    'Z2l0UmVwbxgFIAEoCzIgLmFwaS5jb3JlLnYxLkdpdFJlcG9Wb2x1bWVTb3VyY2VSB2dpdFJlcG'
    '8SNwoGc2VjcmV0GAYgASgLMh8uYXBpLmNvcmUudjEuU2VjcmV0Vm9sdW1lU291cmNlUgZzZWNy'
    'ZXQSLgoDbmZzGAcgASgLMhwuYXBpLmNvcmUudjEuTkZTVm9sdW1lU291cmNlUgNuZnMSNAoFaX'
    'Njc2kYCCABKAsyHi5hcGkuY29yZS52MS5JU0NTSVZvbHVtZVNvdXJjZVIFaXNjc2kSQAoJZ2x1'
    'c3RlcmZzGAkgASgLMiIuYXBpLmNvcmUudjEuR2x1c3RlcmZzVm9sdW1lU291cmNlUglnbHVzdG'
    'VyZnMSZAoVcGVyc2lzdGVudFZvbHVtZUNsYWltGAogASgLMi4uYXBpLmNvcmUudjEuUGVyc2lz'
    'dGVudFZvbHVtZUNsYWltVm9sdW1lU291cmNlUhVwZXJzaXN0ZW50Vm9sdW1lQ2xhaW0SLgoDcm'
    'JkGAsgASgLMhwuYXBpLmNvcmUudjEuUkJEVm9sdW1lU291cmNlUgNyYmQSPQoKZmxleFZvbHVt'
    'ZRgMIAEoCzIdLmFwaS5jb3JlLnYxLkZsZXhWb2x1bWVTb3VyY2VSCmZsZXhWb2x1bWUSNwoGY2'
    'luZGVyGA0gASgLMh8uYXBpLmNvcmUudjEuQ2luZGVyVm9sdW1lU291cmNlUgZjaW5kZXISNwoG'
    'Y2VwaGZzGA4gASgLMh8uYXBpLmNvcmUudjEuQ2VwaEZTVm9sdW1lU291cmNlUgZjZXBoZnMSOg'
    'oHZmxvY2tlchgPIAEoCzIgLmFwaS5jb3JlLnYxLkZsb2NrZXJWb2x1bWVTb3VyY2VSB2Zsb2Nr'
    'ZXISRgoLZG93bndhcmRBUEkYECABKAsyJC5hcGkuY29yZS52MS5Eb3dud2FyZEFQSVZvbHVtZV'
    'NvdXJjZVILZG93bndhcmRBUEkSKwoCZmMYESABKAsyGy5hcGkuY29yZS52MS5GQ1ZvbHVtZVNv'
    'dXJjZVICZmMSQAoJYXp1cmVGaWxlGBIgASgLMiIuYXBpLmNvcmUudjEuQXp1cmVGaWxlVm9sdW'
    '1lU291cmNlUglhenVyZUZpbGUSQAoJY29uZmlnTWFwGBMgASgLMiIuYXBpLmNvcmUudjEuQ29u'
    'ZmlnTWFwVm9sdW1lU291cmNlUgljb25maWdNYXASUQoNdnNwaGVyZVZvbHVtZRgUIAEoCzIrLm'
    'FwaS5jb3JlLnYxLlZzcGhlcmVWaXJ0dWFsRGlza1ZvbHVtZVNvdXJjZVINdnNwaGVyZVZvbHVt'
    'ZRI6CgdxdW9ieXRlGBUgASgLMiAuYXBpLmNvcmUudjEuUXVvYnl0ZVZvbHVtZVNvdXJjZVIHcX'
    'VvYnl0ZRJACglhenVyZURpc2sYFiABKAsyIi5hcGkuY29yZS52MS5BenVyZURpc2tWb2x1bWVT'
    'b3VyY2VSCWF6dXJlRGlzaxJhChRwaG90b25QZXJzaXN0ZW50RGlzaxgXIAEoCzItLmFwaS5jb3'
    'JlLnYxLlBob3RvblBlcnNpc3RlbnREaXNrVm9sdW1lU291cmNlUhRwaG90b25QZXJzaXN0ZW50'
    'RGlzaxJACglwcm9qZWN0ZWQYGiABKAsyIi5hcGkuY29yZS52MS5Qcm9qZWN0ZWRWb2x1bWVTb3'
    'VyY2VSCXByb2plY3RlZBJJCg5wb3J0d29yeFZvbHVtZRgYIAEoCzIhLmFwaS5jb3JlLnYxLlBv'
    'cnR3b3J4Vm9sdW1lU291cmNlUg5wb3J0d29yeFZvbHVtZRI6CgdzY2FsZUlPGBkgASgLMiAuYX'
    'BpLmNvcmUudjEuU2NhbGVJT1ZvbHVtZVNvdXJjZVIHc2NhbGVJTxJACglzdG9yYWdlb3MYGyAB'
    'KAsyIi5hcGkuY29yZS52MS5TdG9yYWdlT1NWb2x1bWVTb3VyY2VSCXN0b3JhZ2VvcxIuCgNjc2'
    'kYHCABKAsyHC5hcGkuY29yZS52MS5DU0lWb2x1bWVTb3VyY2VSA2NzaRJACgllcGhlbWVyYWwY'
    'HSABKAsyIi5hcGkuY29yZS52MS5FcGhlbWVyYWxWb2x1bWVTb3VyY2VSCWVwaGVtZXJhbA==');

@$core.Deprecated('Use vsphereVirtualDiskVolumeSourceDescriptor instead')
const VsphereVirtualDiskVolumeSource$json = {
  '1': 'VsphereVirtualDiskVolumeSource',
  '2': [
    {'1': 'volumePath', '3': 1, '4': 1, '5': 9, '10': 'volumePath'},
    {'1': 'fsType', '3': 2, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'storagePolicyName', '3': 3, '4': 1, '5': 9, '10': 'storagePolicyName'},
    {'1': 'storagePolicyID', '3': 4, '4': 1, '5': 9, '10': 'storagePolicyID'},
  ],
};

/// Descriptor for `VsphereVirtualDiskVolumeSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List vsphereVirtualDiskVolumeSourceDescriptor = $convert.base64Decode(
    'Ch5Wc3BoZXJlVmlydHVhbERpc2tWb2x1bWVTb3VyY2USHgoKdm9sdW1lUGF0aBgBIAEoCVIKdm'
    '9sdW1lUGF0aBIWCgZmc1R5cGUYAiABKAlSBmZzVHlwZRIsChFzdG9yYWdlUG9saWN5TmFtZRgD'
    'IAEoCVIRc3RvcmFnZVBvbGljeU5hbWUSKAoPc3RvcmFnZVBvbGljeUlEGAQgASgJUg9zdG9yYW'
    'dlUG9saWN5SUQ=');

@$core.Deprecated('Use weightedPodAffinityTermDescriptor instead')
const WeightedPodAffinityTerm$json = {
  '1': 'WeightedPodAffinityTerm',
  '2': [
    {'1': 'weight', '3': 1, '4': 1, '5': 5, '10': 'weight'},
    {'1': 'podAffinityTerm', '3': 2, '4': 1, '5': 11, '6': '.api.core.v1.PodAffinityTerm', '10': 'podAffinityTerm'},
  ],
};

/// Descriptor for `WeightedPodAffinityTerm`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List weightedPodAffinityTermDescriptor = $convert.base64Decode(
    'ChdXZWlnaHRlZFBvZEFmZmluaXR5VGVybRIWCgZ3ZWlnaHQYASABKAVSBndlaWdodBJGCg9wb2'
    'RBZmZpbml0eVRlcm0YAiABKAsyHC5hcGkuY29yZS52MS5Qb2RBZmZpbml0eVRlcm1SD3BvZEFm'
    'ZmluaXR5VGVybQ==');

@$core.Deprecated('Use windowsSecurityContextOptionsDescriptor instead')
const WindowsSecurityContextOptions$json = {
  '1': 'WindowsSecurityContextOptions',
  '2': [
    {'1': 'gmsaCredentialSpecName', '3': 1, '4': 1, '5': 9, '10': 'gmsaCredentialSpecName'},
    {'1': 'gmsaCredentialSpec', '3': 2, '4': 1, '5': 9, '10': 'gmsaCredentialSpec'},
    {'1': 'runAsUserName', '3': 3, '4': 1, '5': 9, '10': 'runAsUserName'},
    {'1': 'hostProcess', '3': 4, '4': 1, '5': 8, '10': 'hostProcess'},
  ],
};

/// Descriptor for `WindowsSecurityContextOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List windowsSecurityContextOptionsDescriptor = $convert.base64Decode(
    'Ch1XaW5kb3dzU2VjdXJpdHlDb250ZXh0T3B0aW9ucxI2ChZnbXNhQ3JlZGVudGlhbFNwZWNOYW'
    '1lGAEgASgJUhZnbXNhQ3JlZGVudGlhbFNwZWNOYW1lEi4KEmdtc2FDcmVkZW50aWFsU3BlYxgC'
    'IAEoCVISZ21zYUNyZWRlbnRpYWxTcGVjEiQKDXJ1bkFzVXNlck5hbWUYAyABKAlSDXJ1bkFzVX'
    'Nlck5hbWUSIAoLaG9zdFByb2Nlc3MYBCABKAhSC2hvc3RQcm9jZXNz');

