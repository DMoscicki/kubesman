//
//  Generated code. Do not modify.
//  source: api/certificates/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use clusterTrustBundleDescriptor instead')
const ClusterTrustBundle$json = {
  '1': 'ClusterTrustBundle',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.certificates.v1alpha1.ClusterTrustBundleSpec', '10': 'spec'},
  ],
};

/// Descriptor for `ClusterTrustBundle`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterTrustBundleDescriptor = $convert.base64Decode(
    'ChJDbHVzdGVyVHJ1c3RCdW5kbGUSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucG'
    'tnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRJFCgRzcGVjGAIgASgLMjEuYXBp'
    'LmNlcnRpZmljYXRlcy52MWFscGhhMS5DbHVzdGVyVHJ1c3RCdW5kbGVTcGVjUgRzcGVj');

@$core.Deprecated('Use clusterTrustBundleListDescriptor instead')
const ClusterTrustBundleList$json = {
  '1': 'ClusterTrustBundleList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.certificates.v1alpha1.ClusterTrustBundle', '10': 'items'},
  ],
};

/// Descriptor for `ClusterTrustBundleList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterTrustBundleListDescriptor = $convert.base64Decode(
    'ChZDbHVzdGVyVHJ1c3RCdW5kbGVMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEkMKBWl0ZW1zGAIgAygLMi0u'
    'YXBpLmNlcnRpZmljYXRlcy52MWFscGhhMS5DbHVzdGVyVHJ1c3RCdW5kbGVSBWl0ZW1z');

@$core.Deprecated('Use clusterTrustBundleSpecDescriptor instead')
const ClusterTrustBundleSpec$json = {
  '1': 'ClusterTrustBundleSpec',
  '2': [
    {'1': 'signerName', '3': 1, '4': 1, '5': 9, '10': 'signerName'},
    {'1': 'trustBundle', '3': 2, '4': 1, '5': 9, '10': 'trustBundle'},
  ],
};

/// Descriptor for `ClusterTrustBundleSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterTrustBundleSpecDescriptor = $convert.base64Decode(
    'ChZDbHVzdGVyVHJ1c3RCdW5kbGVTcGVjEh4KCnNpZ25lck5hbWUYASABKAlSCnNpZ25lck5hbW'
    'USIAoLdHJ1c3RCdW5kbGUYAiABKAlSC3RydXN0QnVuZGxl');

