//
//  Generated code. Do not modify.
//  source: api/events/v1beta1/generated.proto
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
    {'1': 'series', '3': 3, '4': 1, '5': 11, '6': '.api.events.v1beta1.EventSeries', '10': 'series'},
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
    'eS5wa2cuYXBpcy5tZXRhLnYxLk1pY3JvVGltZVIJZXZlbnRUaW1lEjcKBnNlcmllcxgDIAEoCz'
    'IfLmFwaS5ldmVudHMudjFiZXRhMS5FdmVudFNlcmllc1IGc2VyaWVzEjAKE3JlcG9ydGluZ0Nv'
    'bnRyb2xsZXIYBCABKAlSE3JlcG9ydGluZ0NvbnRyb2xsZXISLAoRcmVwb3J0aW5nSW5zdGFuY2'
    'UYBSABKAlSEXJlcG9ydGluZ0luc3RhbmNlEhYKBmFjdGlvbhgGIAEoCVIGYWN0aW9uEhYKBnJl'
    'YXNvbhgHIAEoCVIGcmVhc29uEjoKCXJlZ2FyZGluZxgIIAEoCzIcLmFwaS5jb3JlLnYxLk9iam'
    'VjdFJlZmVyZW5jZVIJcmVnYXJkaW5nEjYKB3JlbGF0ZWQYCSABKAsyHC5hcGkuY29yZS52MS5P'
    'YmplY3RSZWZlcmVuY2VSB3JlbGF0ZWQSEgoEbm90ZRgKIAEoCVIEbm90ZRISCgR0eXBlGAsgAS'
    'gJUgR0eXBlEkQKEGRlcHJlY2F0ZWRTb3VyY2UYDCABKAsyGC5hcGkuY29yZS52MS5FdmVudFNv'
    'dXJjZVIQZGVwcmVjYXRlZFNvdXJjZRJfChhkZXByZWNhdGVkRmlyc3RUaW1lc3RhbXAYDSABKA'
    'syIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhhkZXByZWNhdGVkRmlyc3RU'
    'aW1lc3RhbXASXQoXZGVwcmVjYXRlZExhc3RUaW1lc3RhbXAYDiABKAsyIy5hcGltYWNoaW5lcn'
    'kucGtnLmFwaXMubWV0YS52MS5UaW1lUhdkZXByZWNhdGVkTGFzdFRpbWVzdGFtcBIoCg9kZXBy'
    'ZWNhdGVkQ291bnQYDyABKAVSD2RlcHJlY2F0ZWRDb3VudA==');

@$core.Deprecated('Use eventListDescriptor instead')
const EventList$json = {
  '1': 'EventList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.events.v1beta1.Event', '10': 'items'},
  ],
};

/// Descriptor for `EventList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List eventListDescriptor = $convert.base64Decode(
    'CglFdmVudExpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubW'
    'V0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESLwoFaXRlbXMYAiADKAsyGS5hcGkuZXZlbnRzLnYx'
    'YmV0YTEuRXZlbnRSBWl0ZW1z');

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

