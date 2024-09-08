//
//  Generated code. Do not modify.
//  source: pod.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use podDescriptor instead')
const Pod$json = {
  '1': 'Pod',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'active', '3': 2, '4': 1, '5': 8, '10': 'active'},
  ],
  '9': [
    {'1': 3, '2': 536870912},
  ],
};

/// Descriptor for `Pod`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podDescriptor = $convert.base64Decode(
    'CgNQb2QSEgoEbmFtZRgBIAEoCVIEbmFtZRIWCgZhY3RpdmUYAiABKAhSBmFjdGl2ZUoICAMQgI'
    'CAgAI=');

@$core.Deprecated('Use podsDescriptor instead')
const Pods$json = {
  '1': 'Pods',
  '2': [
    {'1': 'pods', '3': 1, '4': 3, '5': 11, '6': '.pod.Pod', '10': 'pods'},
  ],
  '9': [
    {'1': 2, '2': 536870912},
  ],
};

/// Descriptor for `Pods`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podsDescriptor = $convert.base64Decode(
    'CgRQb2RzEhwKBHBvZHMYASADKAsyCC5wb2QuUG9kUgRwb2RzSggIAhCAgICAAg==');

