//
//  Generated code. Do not modify.
//  source: metrics/pkg/apis/custom_metrics/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use metricListOptionsDescriptor instead')
const MetricListOptions$json = {
  '1': 'MetricListOptions',
  '2': [
    {'1': 'labelSelector', '3': 1, '4': 1, '5': 9, '10': 'labelSelector'},
    {'1': 'metricLabelSelector', '3': 2, '4': 1, '5': 9, '10': 'metricLabelSelector'},
  ],
};

/// Descriptor for `MetricListOptions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricListOptionsDescriptor = $convert.base64Decode(
    'ChFNZXRyaWNMaXN0T3B0aW9ucxIkCg1sYWJlbFNlbGVjdG9yGAEgASgJUg1sYWJlbFNlbGVjdG'
    '9yEjAKE21ldHJpY0xhYmVsU2VsZWN0b3IYAiABKAlSE21ldHJpY0xhYmVsU2VsZWN0b3I=');

@$core.Deprecated('Use metricValueDescriptor instead')
const MetricValue$json = {
  '1': 'MetricValue',
  '2': [
    {'1': 'describedObject', '3': 1, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'describedObject'},
    {'1': 'metricName', '3': 2, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'timestamp', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'timestamp'},
    {'1': 'window', '3': 4, '4': 1, '5': 3, '10': 'window'},
    {'1': 'value', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
    {'1': 'selector', '3': 6, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
  ],
};

/// Descriptor for `MetricValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricValueDescriptor = $convert.base64Decode(
    'CgtNZXRyaWNWYWx1ZRJGCg9kZXNjcmliZWRPYmplY3QYASABKAsyHC5hcGkuY29yZS52MS5PYm'
    'plY3RSZWZlcmVuY2VSD2Rlc2NyaWJlZE9iamVjdBIeCgptZXRyaWNOYW1lGAIgASgJUgptZXRy'
    'aWNOYW1lEkEKCXRpbWVzdGFtcBgDIAEoCzIjLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLn'
    'YxLlRpbWVSCXRpbWVzdGFtcBIWCgZ3aW5kb3cYBCABKANSBndpbmRvdxI9CgV2YWx1ZRgFIAEo'
    'CzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZRJICghzZW'
    'xlY3RvchgGIAEoCzIsLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0'
    'b3JSCHNlbGVjdG9y');

@$core.Deprecated('Use metricValueListDescriptor instead')
const MetricValueList$json = {
  '1': 'MetricValueList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.metrics.pkg.apis.custom_metrics.v1beta1.MetricValue', '10': 'items'},
  ],
};

/// Descriptor for `MetricValueList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricValueListDescriptor = $convert.base64Decode(
    'Cg9NZXRyaWNWYWx1ZUxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESSgoFaXRlbXMYAiADKAsyNC5tZXRyaWNz'
    'LnBrZy5hcGlzLmN1c3RvbV9tZXRyaWNzLnYxYmV0YTEuTWV0cmljVmFsdWVSBWl0ZW1z');

