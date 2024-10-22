//
//  Generated code. Do not modify.
//  source: metrics/pkg/apis/external_metrics/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use externalMetricValueDescriptor instead')
const ExternalMetricValue$json = {
  '1': 'ExternalMetricValue',
  '2': [
    {'1': 'metricName', '3': 1, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'metricLabels', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.external_metrics.v1beta1.ExternalMetricValue.MetricLabelsEntry', '10': 'metricLabels'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'timestamp'},
    {'1': 'window', '3': 4, '4': 1, '5': 3, '10': 'window'},
    {'1': 'value', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
  ],
  '3': [ExternalMetricValue_MetricLabelsEntry$json],
};

@$core.Deprecated('Use externalMetricValueDescriptor instead')
const ExternalMetricValue_MetricLabelsEntry$json = {
  '1': 'MetricLabelsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ExternalMetricValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List externalMetricValueDescriptor = $convert.base64Decode(
    'ChNFeHRlcm5hbE1ldHJpY1ZhbHVlEh4KCm1ldHJpY05hbWUYASABKAlSCm1ldHJpY05hbWUSdA'
    'oMbWV0cmljTGFiZWxzGAIgAygLMlAubWV0cmljcy5wa2cuYXBpcy5leHRlcm5hbF9tZXRyaWNz'
    'LnYxYmV0YTEuRXh0ZXJuYWxNZXRyaWNWYWx1ZS5NZXRyaWNMYWJlbHNFbnRyeVIMbWV0cmljTG'
    'FiZWxzEkEKCXRpbWVzdGFtcBgDIAEoCzIjLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYx'
    'LlRpbWVSCXRpbWVzdGFtcBIWCgZ3aW5kb3cYBCABKANSBndpbmRvdxI9CgV2YWx1ZRgFIAEoCz'
    'InLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZRo/ChFNZXRy'
    'aWNMYWJlbHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6Aj'
    'gB');

@$core.Deprecated('Use externalMetricValueListDescriptor instead')
const ExternalMetricValueList$json = {
  '1': 'ExternalMetricValueList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.external_metrics.v1beta1.ExternalMetricValue', '10': 'items'},
  ],
};

/// Descriptor for `ExternalMetricValueList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List externalMetricValueListDescriptor = $convert.base64Decode(
    'ChdFeHRlcm5hbE1ldHJpY1ZhbHVlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJUCgVpdGVtcxgCIAMoCzI+'
    'Lm1ldHJpY3MucGtnLmFwaXMuZXh0ZXJuYWxfbWV0cmljcy52MWJldGExLkV4dGVybmFsTWV0cm'
    'ljVmFsdWVSBWl0ZW1z');

