//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/runtime/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use rawExtensionDescriptor instead')
const RawExtension$json = {
  '1': 'RawExtension',
  '2': [
    {'1': 'raw', '3': 1, '4': 1, '5': 12, '10': 'raw'},
  ],
};

/// Descriptor for `RawExtension`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rawExtensionDescriptor = $convert.base64Decode(
    'CgxSYXdFeHRlbnNpb24SEAoDcmF3GAEgASgMUgNyYXc=');

@$core.Deprecated('Use typeMetaDescriptor instead')
const TypeMeta$json = {
  '1': 'TypeMeta',
  '2': [
    {'1': 'apiVersion', '3': 1, '4': 1, '5': 9, '10': 'apiVersion'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
  ],
};

/// Descriptor for `TypeMeta`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeMetaDescriptor = $convert.base64Decode(
    'CghUeXBlTWV0YRIeCgphcGlWZXJzaW9uGAEgASgJUgphcGlWZXJzaW9uEhIKBGtpbmQYAiABKA'
    'lSBGtpbmQ=');

@$core.Deprecated('Use unknownDescriptor instead')
const Unknown$json = {
  '1': 'Unknown',
  '2': [
    {'1': 'typeMeta', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.TypeMeta', '10': 'typeMeta'},
    {'1': 'raw', '3': 2, '4': 1, '5': 12, '10': 'raw'},
    {'1': 'contentEncoding', '3': 3, '4': 1, '5': 9, '10': 'contentEncoding'},
    {'1': 'contentType', '3': 4, '4': 1, '5': 9, '10': 'contentType'},
  ],
};

/// Descriptor for `Unknown`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List unknownDescriptor = $convert.base64Decode(
    'CgdVbmtub3duEj4KCHR5cGVNZXRhGAEgASgLMiIuYXBpbWFjaGluZXJ5LnBrZy5ydW50aW1lLl'
    'R5cGVNZXRhUgh0eXBlTWV0YRIQCgNyYXcYAiABKAxSA3JhdxIoCg9jb250ZW50RW5jb2RpbmcY'
    'AyABKAlSD2NvbnRlbnRFbmNvZGluZxIgCgtjb250ZW50VHlwZRgEIAEoCVILY29udGVudFR5cG'
    'U=');

