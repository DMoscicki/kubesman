//
//  Generated code. Do not modify.
//  source: metrics/pkg/apis/metrics/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use containerMetricsDescriptor instead')
const ContainerMetrics$json = {
  '1': 'ContainerMetrics',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'usage', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1beta1.ContainerMetrics.UsageEntry', '10': 'usage'},
  ],
  '3': [ContainerMetrics_UsageEntry$json],
};

@$core.Deprecated('Use containerMetricsDescriptor instead')
const ContainerMetrics_UsageEntry$json = {
  '1': 'UsageEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ContainerMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerMetricsDescriptor = $convert.base64Decode(
    'ChBDb250YWluZXJNZXRyaWNzEhIKBG5hbWUYASABKAlSBG5hbWUSUwoFdXNhZ2UYAiADKAsyPS'
    '5tZXRyaWNzLnBrZy5hcGlzLm1ldHJpY3MudjFiZXRhMS5Db250YWluZXJNZXRyaWNzLlVzYWdl'
    'RW50cnlSBXVzYWdlGmEKClVzYWdlRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoFdmFsdWUYAi'
    'ABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIFdmFsdWU6AjgB');

@$core.Deprecated('Use nodeMetricsDescriptor instead')
const NodeMetrics$json = {
  '1': 'NodeMetrics',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'timestamp'},
    {'1': 'window', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Duration', '10': 'window'},
    {'1': 'usage', '3': 4, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1beta1.NodeMetrics.UsageEntry', '10': 'usage'},
  ],
  '3': [NodeMetrics_UsageEntry$json],
};

@$core.Deprecated('Use nodeMetricsDescriptor instead')
const NodeMetrics_UsageEntry$json = {
  '1': 'UsageEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `NodeMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMetricsDescriptor = $convert.base64Decode(
    'CgtOb2RlTWV0cmljcxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkEKCXRpbWVzdGFtcBgCIAEoCzIjLmFwaW1h'
    'Y2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLlRpbWVSCXRpbWVzdGFtcBI/CgZ3aW5kb3cYAyABKA'
    'syJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5EdXJhdGlvblIGd2luZG93Ek4KBXVz'
    'YWdlGAQgAygLMjgubWV0cmljcy5wa2cuYXBpcy5tZXRyaWNzLnYxYmV0YTEuTm9kZU1ldHJpY3'
    'MuVXNhZ2VFbnRyeVIFdXNhZ2UaYQoKVXNhZ2VFbnRyeRIQCgNrZXkYASABKAlSA2tleRI9CgV2'
    'YWx1ZRgCIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YW'
    'x1ZToCOAE=');

@$core.Deprecated('Use nodeMetricsListDescriptor instead')
const NodeMetricsList$json = {
  '1': 'NodeMetricsList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1beta1.NodeMetrics', '10': 'items'},
  ],
};

/// Descriptor for `NodeMetricsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMetricsListDescriptor = $convert.base64Decode(
    'Cg9Ob2RlTWV0cmljc0xpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESQwoFaXRlbXMYAiADKAsyLS5tZXRyaWNz'
    'LnBrZy5hcGlzLm1ldHJpY3MudjFiZXRhMS5Ob2RlTWV0cmljc1IFaXRlbXM=');

@$core.Deprecated('Use podMetricsDescriptor instead')
const PodMetrics$json = {
  '1': 'PodMetrics',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'timestamp'},
    {'1': 'window', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Duration', '10': 'window'},
    {'1': 'containers', '3': 4, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1beta1.ContainerMetrics', '10': 'containers'},
  ],
};

/// Descriptor for `PodMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podMetricsDescriptor = $convert.base64Decode(
    'CgpQb2RNZXRyaWNzEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESQQoJdGltZXN0YW1wGAIgASgLMiMuYXBpbWFj'
    'aGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVIJdGltZXN0YW1wEj8KBndpbmRvdxgDIAEoCz'
    'InLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkR1cmF0aW9uUgZ3aW5kb3cSUgoKY29u'
    'dGFpbmVycxgEIAMoCzIyLm1ldHJpY3MucGtnLmFwaXMubWV0cmljcy52MWJldGExLkNvbnRhaW'
    '5lck1ldHJpY3NSCmNvbnRhaW5lcnM=');

@$core.Deprecated('Use podMetricsListDescriptor instead')
const PodMetricsList$json = {
  '1': 'PodMetricsList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1beta1.PodMetrics', '10': 'items'},
  ],
};

/// Descriptor for `PodMetricsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podMetricsListDescriptor = $convert.base64Decode(
    'Cg5Qb2RNZXRyaWNzTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJCCgVpdGVtcxgCIAMoCzIsLm1ldHJpY3Mu'
    'cGtnLmFwaXMubWV0cmljcy52MWJldGExLlBvZE1ldHJpY3NSBWl0ZW1z');

