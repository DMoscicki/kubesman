//
//  Generated code. Do not modify.
//  source: metrics/pkg/apis/metrics/v1alpha1/generated.proto
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
    {'1': 'usage', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1alpha1.ContainerMetrics.UsageEntry', '10': 'usage'},
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
    'ChBDb250YWluZXJNZXRyaWNzEhIKBG5hbWUYASABKAlSBG5hbWUSVAoFdXNhZ2UYAiADKAsyPi'
    '5tZXRyaWNzLnBrZy5hcGlzLm1ldHJpY3MudjFhbHBoYTEuQ29udGFpbmVyTWV0cmljcy5Vc2Fn'
    'ZUVudHJ5UgV1c2FnZRphCgpVc2FnZUVudHJ5EhAKA2tleRgBIAEoCVIDa2V5Ej0KBXZhbHVlGA'
    'IgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGkucmVzb3VyY2UuUXVhbnRpdHlSBXZhbHVlOgI4'
    'AQ==');

@$core.Deprecated('Use nodeMetricsDescriptor instead')
const NodeMetrics$json = {
  '1': 'NodeMetrics',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'timestamp'},
    {'1': 'window', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Duration', '10': 'window'},
    {'1': 'usage', '3': 4, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1alpha1.NodeMetrics.UsageEntry', '10': 'usage'},
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
    'syJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5EdXJhdGlvblIGd2luZG93Ek8KBXVz'
    'YWdlGAQgAygLMjkubWV0cmljcy5wa2cuYXBpcy5tZXRyaWNzLnYxYWxwaGExLk5vZGVNZXRyaW'
    'NzLlVzYWdlRW50cnlSBXVzYWdlGmEKClVzYWdlRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSPQoF'
    'dmFsdWUYAiABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIFdm'
    'FsdWU6AjgB');

@$core.Deprecated('Use nodeMetricsListDescriptor instead')
const NodeMetricsList$json = {
  '1': 'NodeMetricsList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1alpha1.NodeMetrics', '10': 'items'},
  ],
};

/// Descriptor for `NodeMetricsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMetricsListDescriptor = $convert.base64Decode(
    'Cg9Ob2RlTWV0cmljc0xpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESRAoFaXRlbXMYAiADKAsyLi5tZXRyaWNz'
    'LnBrZy5hcGlzLm1ldHJpY3MudjFhbHBoYTEuTm9kZU1ldHJpY3NSBWl0ZW1z');

@$core.Deprecated('Use podMetricsDescriptor instead')
const PodMetrics$json = {
  '1': 'PodMetrics',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'timestamp', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'timestamp'},
    {'1': 'window', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Duration', '10': 'window'},
    {'1': 'containers', '3': 4, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1alpha1.ContainerMetrics', '10': 'containers'},
  ],
};

/// Descriptor for `PodMetrics`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podMetricsDescriptor = $convert.base64Decode(
    'CgpQb2RNZXRyaWNzEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESQQoJdGltZXN0YW1wGAIgASgLMiMuYXBpbWFj'
    'aGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVIJdGltZXN0YW1wEj8KBndpbmRvdxgDIAEoCz'
    'InLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkR1cmF0aW9uUgZ3aW5kb3cSUwoKY29u'
    'dGFpbmVycxgEIAMoCzIzLm1ldHJpY3MucGtnLmFwaXMubWV0cmljcy52MWFscGhhMS5Db250YW'
    'luZXJNZXRyaWNzUgpjb250YWluZXJz');

@$core.Deprecated('Use podMetricsListDescriptor instead')
const PodMetricsList$json = {
  '1': 'PodMetricsList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.metrics.v1alpha1.PodMetrics', '10': 'items'},
  ],
};

/// Descriptor for `PodMetricsList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podMetricsListDescriptor = $convert.base64Decode(
    'Cg5Qb2RNZXRyaWNzTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJDCgVpdGVtcxgCIAMoCzItLm1ldHJpY3Mu'
    'cGtnLmFwaXMubWV0cmljcy52MWFscGhhMS5Qb2RNZXRyaWNzUgVpdGVtcw==');

