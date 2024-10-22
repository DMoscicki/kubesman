//
//  Generated code. Do not modify.
//  source: api/events/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use eventDescriptor instead')
const Event$json = {
  '1': 'Event',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'eventTime', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.MicroTime', '10': 'eventTime'},
    {'1': 'series', '3': 3, '4': 1, '5': 11, '6': '.api.events.v1.EventSeries', '10': 'series'},
    {'1': 'reportingController', '3': 4, '4': 1, '5': 9, '10': 'reportingController'},
    {'1': 'reportingInstance', '3': 5, '4': 1, '5': 9, '10': 'reportingInstance'},
    {'1': 'action', '3': 6, '4': 1, '5': 9, '10': 'action'},
    {'1': 'reason', '3': 7, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'regarding', '3': 8, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'regarding'},
    {'1': 'related', '3': 9, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'related'},
    {'1': 'note', '3': 10, '4': 1, '5': 9, '10': 'note'},
    {'1': 'type', '3': 11, '4': 1, '5': 9, '10': 'type'},
    {'1': 'deprecatedSource', '3': 12, '4': 1, '5': 11, '6': '.api.core.v1.EventSource', '10': 'deprecatedSource'},
    {'1': 'deprecatedFirstTimestamp', '3': 13, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'deprecatedFirstTimestamp'},
    {'1': 'deprecatedLastTimestamp', '3': 14, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'deprecatedLastTimestamp'},
    {'1': 'deprecatedCount', '3': 15, '4': 1, '5': 5, '10': 'deprecatedCount'},
  ],
};

/// Descriptor for `Event`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventDescriptor = $convert.base64Decode(
    'CgVFdmVudBJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLn'
    'YxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkYKCWV2ZW50VGltZRgCIAEoCzIoLmFwaW1hY2hpbmVy'
    'eS5wa2cuYXBpcy5tZXRhLnYxLk1pY3JvVGltZVIJZXZlbnRUaW1lEjIKBnNlcmllcxgDIAEoCz'
    'IaLmFwaS5ldmVudHMudjEuRXZlbnRTZXJpZXNSBnNlcmllcxIwChNyZXBvcnRpbmdDb250cm9s'
    'bGVyGAQgASgJUhNyZXBvcnRpbmdDb250cm9sbGVyEiwKEXJlcG9ydGluZ0luc3RhbmNlGAUgAS'
    'gJUhFyZXBvcnRpbmdJbnN0YW5jZRIWCgZhY3Rpb24YBiABKAlSBmFjdGlvbhIWCgZyZWFzb24Y'
    'ByABKAlSBnJlYXNvbhI6CglyZWdhcmRpbmcYCCABKAsyHC5hcGkuY29yZS52MS5PYmplY3RSZW'
    'ZlcmVuY2VSCXJlZ2FyZGluZxI2CgdyZWxhdGVkGAkgASgLMhwuYXBpLmNvcmUudjEuT2JqZWN0'
    'UmVmZXJlbmNlUgdyZWxhdGVkEhIKBG5vdGUYCiABKAlSBG5vdGUSEgoEdHlwZRgLIAEoCVIEdH'
    'lwZRJEChBkZXByZWNhdGVkU291cmNlGAwgASgLMhguYXBpLmNvcmUudjEuRXZlbnRTb3VyY2VS'
    'EGRlcHJlY2F0ZWRTb3VyY2USXwoYZGVwcmVjYXRlZEZpcnN0VGltZXN0YW1wGA0gASgLMiMuYX'
    'BpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVIYZGVwcmVjYXRlZEZpcnN0VGltZXN0'
    'YW1wEl0KF2RlcHJlY2F0ZWRMYXN0VGltZXN0YW1wGA4gASgLMiMuYXBpbWFjaGluZXJ5LnBrZy'
    '5hcGlzLm1ldGEudjEuVGltZVIXZGVwcmVjYXRlZExhc3RUaW1lc3RhbXASKAoPZGVwcmVjYXRl'
    'ZENvdW50GA8gASgFUg9kZXByZWNhdGVkQ291bnQ=');

@$core.Deprecated('Use eventListDescriptor instead')
const EventList$json = {
  '1': 'EventList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.events.v1.Event', '10': 'items'},
  ],
};

/// Descriptor for `EventList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventListDescriptor = $convert.base64Decode(
    'CglFdmVudExpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESKgoFaXRlbXMYAiADKAsyFC5hcGkuZXZlbnRzLnYx'
    'LkV2ZW50UgVpdGVtcw==');

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

