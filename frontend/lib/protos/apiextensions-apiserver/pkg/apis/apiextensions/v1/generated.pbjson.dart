//
//  Generated code. Do not modify.
//  source: apiextensions-apiserver/pkg/apis/apiextensions/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use conversionRequestDescriptor instead')
const ConversionRequest$json = {
  '1': 'ConversionRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'desiredAPIVersion', '3': 2, '4': 1, '5': 9, '10': 'desiredAPIVersion'},
    {'1': 'objects', '3': 3, '4': 3, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'objects'},
  ],
};

/// Descriptor for `ConversionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversionRequestDescriptor = $convert.base64Decode(
    'ChFDb252ZXJzaW9uUmVxdWVzdBIQCgN1aWQYASABKAlSA3VpZBIsChFkZXNpcmVkQVBJVmVyc2'
    'lvbhgCIAEoCVIRZGVzaXJlZEFQSVZlcnNpb24SQAoHb2JqZWN0cxgDIAMoCzImLmFwaW1hY2hp'
    'bmVyeS5wa2cucnVudGltZS5SYXdFeHRlbnNpb25SB29iamVjdHM=');

@$core.Deprecated('Use conversionResponseDescriptor instead')
const ConversionResponse$json = {
  '1': 'ConversionResponse',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'convertedObjects', '3': 2, '4': 3, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'convertedObjects'},
    {'1': 'result', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Status', '10': 'result'},
  ],
};

/// Descriptor for `ConversionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversionResponseDescriptor = $convert.base64Decode(
    'ChJDb252ZXJzaW9uUmVzcG9uc2USEAoDdWlkGAEgASgJUgN1aWQSUgoQY29udmVydGVkT2JqZW'
    'N0cxgCIAMoCzImLmFwaW1hY2hpbmVyeS5wa2cucnVudGltZS5SYXdFeHRlbnNpb25SEGNvbnZl'
    'cnRlZE9iamVjdHMSPQoGcmVzdWx0GAMgASgLMiUuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldG'
    'EudjEuU3RhdHVzUgZyZXN1bHQ=');

@$core.Deprecated('Use conversionReviewDescriptor instead')
const ConversionReview$json = {
  '1': 'ConversionReview',
  '2': [
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.ConversionRequest', '10': 'request'},
    {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.ConversionResponse', '10': 'response'},
  ],
};

/// Descriptor for `ConversionReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversionReviewDescriptor = $convert.base64Decode(
    'ChBDb252ZXJzaW9uUmV2aWV3El4KB3JlcXVlc3QYASABKAsyRC5hcGlleHRlbnNpb25zX2FwaX'
    'NlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxLkNvbnZlcnNpb25SZXF1ZXN0UgdyZXF1'
    'ZXN0EmEKCHJlc3BvbnNlGAIgASgLMkUuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaX'
    'MuYXBpZXh0ZW5zaW9ucy52MS5Db252ZXJzaW9uUmVzcG9uc2VSCHJlc3BvbnNl');

@$core.Deprecated('Use customResourceColumnDefinitionDescriptor instead')
const CustomResourceColumnDefinition$json = {
  '1': 'CustomResourceColumnDefinition',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'format', '3': 3, '4': 1, '5': 9, '10': 'format'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'priority', '3': 5, '4': 1, '5': 5, '10': 'priority'},
    {'1': 'jsonPath', '3': 6, '4': 1, '5': 9, '10': 'jsonPath'},
  ],
};

/// Descriptor for `CustomResourceColumnDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceColumnDefinitionDescriptor = $convert.base64Decode(
    'Ch5DdXN0b21SZXNvdXJjZUNvbHVtbkRlZmluaXRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRISCg'
    'R0eXBlGAIgASgJUgR0eXBlEhYKBmZvcm1hdBgDIAEoCVIGZm9ybWF0EiAKC2Rlc2NyaXB0aW9u'
    'GAQgASgJUgtkZXNjcmlwdGlvbhIaCghwcmlvcml0eRgFIAEoBVIIcHJpb3JpdHkSGgoIanNvbl'
    'BhdGgYBiABKAlSCGpzb25QYXRo');

@$core.Deprecated('Use customResourceConversionDescriptor instead')
const CustomResourceConversion$json = {
  '1': 'CustomResourceConversion',
  '2': [
    {'1': 'strategy', '3': 1, '4': 1, '5': 9, '10': 'strategy'},
    {'1': 'webhook', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.WebhookConversion', '10': 'webhook'},
  ],
};

/// Descriptor for `CustomResourceConversion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceConversionDescriptor = $convert.base64Decode(
    'ChhDdXN0b21SZXNvdXJjZUNvbnZlcnNpb24SGgoIc3RyYXRlZ3kYASABKAlSCHN0cmF0ZWd5El'
    '4KB3dlYmhvb2sYAiABKAsyRC5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGll'
    'eHRlbnNpb25zLnYxLldlYmhvb2tDb252ZXJzaW9uUgd3ZWJob29r');

@$core.Deprecated('Use customResourceDefinitionDescriptor instead')
const CustomResourceDefinition$json = {
  '1': 'CustomResourceDefinition',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionStatus', '10': 'status'},
  ],
};

/// Descriptor for `CustomResourceDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionDescriptor = $convert.base64Decode(
    'ChhDdXN0b21SZXNvdXJjZURlZmluaXRpb24SRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW'
    '5lcnkucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRJjCgRzcGVjGAIgASgL'
    'Mk8uYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5DdX'
    'N0b21SZXNvdXJjZURlZmluaXRpb25TcGVjUgRzcGVjEmkKBnN0YXR1cxgDIAEoCzJRLmFwaWV4'
    'dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuQ3VzdG9tUmVzb3'
    'VyY2VEZWZpbml0aW9uU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use customResourceDefinitionConditionDescriptor instead')
const CustomResourceDefinitionCondition$json = {
  '1': 'CustomResourceDefinitionCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `CustomResourceDefinitionCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionConditionDescriptor = $convert.base64Decode(
    'CiFDdXN0b21SZXNvdXJjZURlZmluaXRpb25Db25kaXRpb24SEgoEdHlwZRgBIAEoCVIEdHlwZR'
    'IWCgZzdGF0dXMYAiABKAlSBnN0YXR1cxJTChJsYXN0VHJhbnNpdGlvblRpbWUYAyABKAsyIy5h'
    'cGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlvblRpbWUSFg'
    'oGcmVhc29uGAQgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgFIAEoCVIHbWVzc2FnZQ==');

@$core.Deprecated('Use customResourceDefinitionListDescriptor instead')
const CustomResourceDefinitionList$json = {
  '1': 'CustomResourceDefinitionList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinition', '10': 'items'},
  ],
};

/// Descriptor for `CustomResourceDefinitionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionListDescriptor = $convert.base64Decode(
    'ChxDdXN0b21SZXNvdXJjZURlZmluaXRpb25MaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbW'
    'FjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEmEKBWl0ZW1zGAIg'
    'AygLMksuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS'
    '5DdXN0b21SZXNvdXJjZURlZmluaXRpb25SBWl0ZW1z');

@$core.Deprecated('Use customResourceDefinitionNamesDescriptor instead')
const CustomResourceDefinitionNames$json = {
  '1': 'CustomResourceDefinitionNames',
  '2': [
    {'1': 'plural', '3': 1, '4': 1, '5': 9, '10': 'plural'},
    {'1': 'singular', '3': 2, '4': 1, '5': 9, '10': 'singular'},
    {'1': 'shortNames', '3': 3, '4': 3, '5': 9, '10': 'shortNames'},
    {'1': 'kind', '3': 4, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'listKind', '3': 5, '4': 1, '5': 9, '10': 'listKind'},
    {'1': 'categories', '3': 6, '4': 3, '5': 9, '10': 'categories'},
  ],
};

/// Descriptor for `CustomResourceDefinitionNames`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionNamesDescriptor = $convert.base64Decode(
    'Ch1DdXN0b21SZXNvdXJjZURlZmluaXRpb25OYW1lcxIWCgZwbHVyYWwYASABKAlSBnBsdXJhbB'
    'IaCghzaW5ndWxhchgCIAEoCVIIc2luZ3VsYXISHgoKc2hvcnROYW1lcxgDIAMoCVIKc2hvcnRO'
    'YW1lcxISCgRraW5kGAQgASgJUgRraW5kEhoKCGxpc3RLaW5kGAUgASgJUghsaXN0S2luZBIeCg'
    'pjYXRlZ29yaWVzGAYgAygJUgpjYXRlZ29yaWVz');

@$core.Deprecated('Use customResourceDefinitionSpecDescriptor instead')
const CustomResourceDefinitionSpec$json = {
  '1': 'CustomResourceDefinitionSpec',
  '2': [
    {'1': 'group', '3': 1, '4': 1, '5': 9, '10': 'group'},
    {'1': 'names', '3': 3, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionNames', '10': 'names'},
    {'1': 'scope', '3': 4, '4': 1, '5': 9, '10': 'scope'},
    {'1': 'versions', '3': 7, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionVersion', '10': 'versions'},
    {'1': 'conversion', '3': 9, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceConversion', '10': 'conversion'},
    {'1': 'preserveUnknownFields', '3': 10, '4': 1, '5': 8, '10': 'preserveUnknownFields'},
  ],
};

/// Descriptor for `CustomResourceDefinitionSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionSpecDescriptor = $convert.base64Decode(
    'ChxDdXN0b21SZXNvdXJjZURlZmluaXRpb25TcGVjEhQKBWdyb3VwGAEgASgJUgVncm91cBJmCg'
    'VuYW1lcxgDIAEoCzJQLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVu'
    'c2lvbnMudjEuQ3VzdG9tUmVzb3VyY2VEZWZpbml0aW9uTmFtZXNSBW5hbWVzEhQKBXNjb3BlGA'
    'QgASgJUgVzY29wZRJuCgh2ZXJzaW9ucxgHIAMoCzJSLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVy'
    'LnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuQ3VzdG9tUmVzb3VyY2VEZWZpbml0aW9uVmVyc2'
    'lvblIIdmVyc2lvbnMSawoKY29udmVyc2lvbhgJIAEoCzJLLmFwaWV4dGVuc2lvbnNfYXBpc2Vy'
    'dmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuQ3VzdG9tUmVzb3VyY2VDb252ZXJzaW9uUg'
    'pjb252ZXJzaW9uEjQKFXByZXNlcnZlVW5rbm93bkZpZWxkcxgKIAEoCFIVcHJlc2VydmVVbmtu'
    'b3duRmllbGRz');

@$core.Deprecated('Use customResourceDefinitionStatusDescriptor instead')
const CustomResourceDefinitionStatus$json = {
  '1': 'CustomResourceDefinitionStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionCondition', '10': 'conditions'},
    {'1': 'acceptedNames', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceDefinitionNames', '10': 'acceptedNames'},
    {'1': 'storedVersions', '3': 3, '4': 3, '5': 9, '10': 'storedVersions'},
  ],
};

/// Descriptor for `CustomResourceDefinitionStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionStatusDescriptor = $convert.base64Decode(
    'Ch5DdXN0b21SZXNvdXJjZURlZmluaXRpb25TdGF0dXMSdAoKY29uZGl0aW9ucxgBIAMoCzJULm'
    'FwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuQ3VzdG9t'
    'UmVzb3VyY2VEZWZpbml0aW9uQ29uZGl0aW9uUgpjb25kaXRpb25zEnYKDWFjY2VwdGVkTmFtZX'
    'MYAiABKAsyUC5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25z'
    'LnYxLkN1c3RvbVJlc291cmNlRGVmaW5pdGlvbk5hbWVzUg1hY2NlcHRlZE5hbWVzEiYKDnN0b3'
    'JlZFZlcnNpb25zGAMgAygJUg5zdG9yZWRWZXJzaW9ucw==');

@$core.Deprecated('Use customResourceDefinitionVersionDescriptor instead')
const CustomResourceDefinitionVersion$json = {
  '1': 'CustomResourceDefinitionVersion',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'served', '3': 2, '4': 1, '5': 8, '10': 'served'},
    {'1': 'storage', '3': 3, '4': 1, '5': 8, '10': 'storage'},
    {'1': 'deprecated', '3': 7, '4': 1, '5': 8, '10': 'deprecated'},
    {'1': 'deprecationWarning', '3': 8, '4': 1, '5': 9, '10': 'deprecationWarning'},
    {'1': 'schema', '3': 4, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceValidation', '10': 'schema'},
    {'1': 'subresources', '3': 5, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceSubresources', '10': 'subresources'},
    {'1': 'additionalPrinterColumns', '3': 6, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceColumnDefinition', '10': 'additionalPrinterColumns'},
    {'1': 'selectableFields', '3': 9, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.SelectableField', '10': 'selectableFields'},
  ],
};

/// Descriptor for `CustomResourceDefinitionVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionVersionDescriptor = $convert.base64Decode(
    'Ch9DdXN0b21SZXNvdXJjZURlZmluaXRpb25WZXJzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSFg'
    'oGc2VydmVkGAIgASgIUgZzZXJ2ZWQSGAoHc3RvcmFnZRgDIAEoCFIHc3RvcmFnZRIeCgpkZXBy'
    'ZWNhdGVkGAcgASgIUgpkZXByZWNhdGVkEi4KEmRlcHJlY2F0aW9uV2FybmluZxgIIAEoCVISZG'
    'VwcmVjYXRpb25XYXJuaW5nEmMKBnNjaGVtYRgEIAEoCzJLLmFwaWV4dGVuc2lvbnNfYXBpc2Vy'
    'dmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuQ3VzdG9tUmVzb3VyY2VWYWxpZGF0aW9uUg'
    'ZzY2hlbWEScQoMc3VicmVzb3VyY2VzGAUgASgLMk0uYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIu'
    'cGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5DdXN0b21SZXNvdXJjZVN1YnJlc291cmNlc1IMc3'
    'VicmVzb3VyY2VzEo0BChhhZGRpdGlvbmFsUHJpbnRlckNvbHVtbnMYBiADKAsyUS5hcGlleHRl'
    'bnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxLkN1c3RvbVJlc291cm'
    'NlQ29sdW1uRGVmaW5pdGlvblIYYWRkaXRpb25hbFByaW50ZXJDb2x1bW5zEm4KEHNlbGVjdGFi'
    'bGVGaWVsZHMYCSADKAsyQi5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleH'
    'RlbnNpb25zLnYxLlNlbGVjdGFibGVGaWVsZFIQc2VsZWN0YWJsZUZpZWxkcw==');

@$core.Deprecated('Use customResourceSubresourceScaleDescriptor instead')
const CustomResourceSubresourceScale$json = {
  '1': 'CustomResourceSubresourceScale',
  '2': [
    {'1': 'specReplicasPath', '3': 1, '4': 1, '5': 9, '10': 'specReplicasPath'},
    {'1': 'statusReplicasPath', '3': 2, '4': 1, '5': 9, '10': 'statusReplicasPath'},
    {'1': 'labelSelectorPath', '3': 3, '4': 1, '5': 9, '10': 'labelSelectorPath'},
  ],
};

/// Descriptor for `CustomResourceSubresourceScale`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceSubresourceScaleDescriptor = $convert.base64Decode(
    'Ch5DdXN0b21SZXNvdXJjZVN1YnJlc291cmNlU2NhbGUSKgoQc3BlY1JlcGxpY2FzUGF0aBgBIA'
    'EoCVIQc3BlY1JlcGxpY2FzUGF0aBIuChJzdGF0dXNSZXBsaWNhc1BhdGgYAiABKAlSEnN0YXR1'
    'c1JlcGxpY2FzUGF0aBIsChFsYWJlbFNlbGVjdG9yUGF0aBgDIAEoCVIRbGFiZWxTZWxlY3Rvcl'
    'BhdGg=');

@$core.Deprecated('Use customResourceSubresourceStatusDescriptor instead')
const CustomResourceSubresourceStatus$json = {
  '1': 'CustomResourceSubresourceStatus',
};

/// Descriptor for `CustomResourceSubresourceStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceSubresourceStatusDescriptor = $convert.base64Decode(
    'Ch9DdXN0b21SZXNvdXJjZVN1YnJlc291cmNlU3RhdHVz');

@$core.Deprecated('Use customResourceSubresourcesDescriptor instead')
const CustomResourceSubresources$json = {
  '1': 'CustomResourceSubresources',
  '2': [
    {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceSubresourceStatus', '10': 'status'},
    {'1': 'scale', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.CustomResourceSubresourceScale', '10': 'scale'},
  ],
};

/// Descriptor for `CustomResourceSubresources`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceSubresourcesDescriptor = $convert.base64Decode(
    'ChpDdXN0b21SZXNvdXJjZVN1YnJlc291cmNlcxJqCgZzdGF0dXMYASABKAsyUi5hcGlleHRlbn'
    'Npb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxLkN1c3RvbVJlc291cmNl'
    'U3VicmVzb3VyY2VTdGF0dXNSBnN0YXR1cxJnCgVzY2FsZRgCIAEoCzJRLmFwaWV4dGVuc2lvbn'
    'NfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuQ3VzdG9tUmVzb3VyY2VTdWJy'
    'ZXNvdXJjZVNjYWxlUgVzY2FsZQ==');

@$core.Deprecated('Use customResourceValidationDescriptor instead')
const CustomResourceValidation$json = {
  '1': 'CustomResourceValidation',
  '2': [
    {'1': 'openAPIV3Schema', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'openAPIV3Schema'},
  ],
};

/// Descriptor for `CustomResourceValidation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceValidationDescriptor = $convert.base64Decode(
    'ChhDdXN0b21SZXNvdXJjZVZhbGlkYXRpb24SbAoPb3BlbkFQSVYzU2NoZW1hGAEgASgLMkIuYX'
    'BpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5KU09OU2No'
    'ZW1hUHJvcHNSD29wZW5BUElWM1NjaGVtYQ==');

@$core.Deprecated('Use externalDocumentationDescriptor instead')
const ExternalDocumentation$json = {
  '1': 'ExternalDocumentation',
  '2': [
    {'1': 'description', '3': 1, '4': 1, '5': 9, '10': 'description'},
    {'1': 'url', '3': 2, '4': 1, '5': 9, '10': 'url'},
  ],
};

/// Descriptor for `ExternalDocumentation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List externalDocumentationDescriptor = $convert.base64Decode(
    'ChVFeHRlcm5hbERvY3VtZW50YXRpb24SIAoLZGVzY3JpcHRpb24YASABKAlSC2Rlc2NyaXB0aW'
    '9uEhAKA3VybBgCIAEoCVIDdXJs');

@$core.Deprecated('Use jSONDescriptor instead')
const JSON$json = {
  '1': 'JSON',
  '2': [
    {'1': 'raw', '3': 1, '4': 1, '5': 12, '10': 'raw'},
  ],
};

/// Descriptor for `JSON`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONDescriptor = $convert.base64Decode(
    'CgRKU09OEhAKA3JhdxgBIAEoDFIDcmF3');

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps$json = {
  '1': 'JSONSchemaProps',
  '2': [
    {'1': 'id', '3': 1, '4': 1, '5': 9, '10': 'id'},
    {'1': 'schema', '3': 2, '4': 1, '5': 9, '10': 'schema'},
    {'1': 'ref', '3': 3, '4': 1, '5': 9, '10': 'ref'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'type', '3': 5, '4': 1, '5': 9, '10': 'type'},
    {'1': 'format', '3': 6, '4': 1, '5': 9, '10': 'format'},
    {'1': 'title', '3': 7, '4': 1, '5': 9, '10': 'title'},
    {'1': 'default', '3': 8, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSON', '10': 'default'},
    {'1': 'maximum', '3': 9, '4': 1, '5': 1, '10': 'maximum'},
    {'1': 'exclusiveMaximum', '3': 10, '4': 1, '5': 8, '10': 'exclusiveMaximum'},
    {'1': 'minimum', '3': 11, '4': 1, '5': 1, '10': 'minimum'},
    {'1': 'exclusiveMinimum', '3': 12, '4': 1, '5': 8, '10': 'exclusiveMinimum'},
    {'1': 'maxLength', '3': 13, '4': 1, '5': 3, '10': 'maxLength'},
    {'1': 'minLength', '3': 14, '4': 1, '5': 3, '10': 'minLength'},
    {'1': 'pattern', '3': 15, '4': 1, '5': 9, '10': 'pattern'},
    {'1': 'maxItems', '3': 16, '4': 1, '5': 3, '10': 'maxItems'},
    {'1': 'minItems', '3': 17, '4': 1, '5': 3, '10': 'minItems'},
    {'1': 'uniqueItems', '3': 18, '4': 1, '5': 8, '10': 'uniqueItems'},
    {'1': 'multipleOf', '3': 19, '4': 1, '5': 1, '10': 'multipleOf'},
    {'1': 'enum', '3': 20, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSON', '10': 'enum'},
    {'1': 'maxProperties', '3': 21, '4': 1, '5': 3, '10': 'maxProperties'},
    {'1': 'minProperties', '3': 22, '4': 1, '5': 3, '10': 'minProperties'},
    {'1': 'required', '3': 23, '4': 3, '5': 9, '10': 'required'},
    {'1': 'items', '3': 24, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaPropsOrArray', '10': 'items'},
    {'1': 'allOf', '3': 25, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'allOf'},
    {'1': 'oneOf', '3': 26, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'oneOf'},
    {'1': 'anyOf', '3': 27, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'anyOf'},
    {'1': 'not', '3': 28, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'not'},
    {'1': 'properties', '3': 29, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps.PropertiesEntry', '10': 'properties'},
    {'1': 'additionalProperties', '3': 30, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaPropsOrBool', '10': 'additionalProperties'},
    {'1': 'patternProperties', '3': 31, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps.PatternPropertiesEntry', '10': 'patternProperties'},
    {'1': 'dependencies', '3': 32, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps.DependenciesEntry', '10': 'dependencies'},
    {'1': 'additionalItems', '3': 33, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaPropsOrBool', '10': 'additionalItems'},
    {'1': 'definitions', '3': 34, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps.DefinitionsEntry', '10': 'definitions'},
    {'1': 'externalDocs', '3': 35, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.ExternalDocumentation', '10': 'externalDocs'},
    {'1': 'example', '3': 36, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSON', '10': 'example'},
    {'1': 'nullable', '3': 37, '4': 1, '5': 8, '10': 'nullable'},
    {'1': 'xKubernetesPreserveUnknownFields', '3': 38, '4': 1, '5': 8, '10': 'xKubernetesPreserveUnknownFields'},
    {'1': 'xKubernetesEmbeddedResource', '3': 39, '4': 1, '5': 8, '10': 'xKubernetesEmbeddedResource'},
    {'1': 'xKubernetesIntOrString', '3': 40, '4': 1, '5': 8, '10': 'xKubernetesIntOrString'},
    {'1': 'xKubernetesListMapKeys', '3': 41, '4': 3, '5': 9, '10': 'xKubernetesListMapKeys'},
    {'1': 'xKubernetesListType', '3': 42, '4': 1, '5': 9, '10': 'xKubernetesListType'},
    {'1': 'xKubernetesMapType', '3': 43, '4': 1, '5': 9, '10': 'xKubernetesMapType'},
    {'1': 'xKubernetesValidations', '3': 44, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.ValidationRule', '10': 'xKubernetesValidations'},
  ],
  '3': [JSONSchemaProps_PropertiesEntry$json, JSONSchemaProps_PatternPropertiesEntry$json, JSONSchemaProps_DependenciesEntry$json, JSONSchemaProps_DefinitionsEntry$json],
};

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps_PropertiesEntry$json = {
  '1': 'PropertiesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps_PatternPropertiesEntry$json = {
  '1': 'PatternPropertiesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps_DependenciesEntry$json = {
  '1': 'DependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaPropsOrStringArray', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps_DefinitionsEntry$json = {
  '1': 'DefinitionsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `JSONSchemaProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONSchemaPropsDescriptor = $convert.base64Decode(
    'Cg9KU09OU2NoZW1hUHJvcHMSDgoCaWQYASABKAlSAmlkEhYKBnNjaGVtYRgCIAEoCVIGc2NoZW'
    '1hEhAKA3JlZhgDIAEoCVIDcmVmEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbhIS'
    'CgR0eXBlGAUgASgJUgR0eXBlEhYKBmZvcm1hdBgGIAEoCVIGZm9ybWF0EhQKBXRpdGxlGAcgAS'
    'gJUgV0aXRsZRJRCgdkZWZhdWx0GAggASgLMjcuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtn'
    'LmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5KU09OUgdkZWZhdWx0EhgKB21heGltdW0YCSABKAFSB2'
    '1heGltdW0SKgoQZXhjbHVzaXZlTWF4aW11bRgKIAEoCFIQZXhjbHVzaXZlTWF4aW11bRIYCgdt'
    'aW5pbXVtGAsgASgBUgdtaW5pbXVtEioKEGV4Y2x1c2l2ZU1pbmltdW0YDCABKAhSEGV4Y2x1c2'
    'l2ZU1pbmltdW0SHAoJbWF4TGVuZ3RoGA0gASgDUgltYXhMZW5ndGgSHAoJbWluTGVuZ3RoGA4g'
    'ASgDUgltaW5MZW5ndGgSGAoHcGF0dGVybhgPIAEoCVIHcGF0dGVybhIaCghtYXhJdGVtcxgQIA'
    'EoA1IIbWF4SXRlbXMSGgoIbWluSXRlbXMYESABKANSCG1pbkl0ZW1zEiAKC3VuaXF1ZUl0ZW1z'
    'GBIgASgIUgt1bmlxdWVJdGVtcxIeCgptdWx0aXBsZU9mGBMgASgBUgptdWx0aXBsZU9mEksKBG'
    'VudW0YFCADKAsyNy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNp'
    'b25zLnYxLkpTT05SBGVudW0SJAoNbWF4UHJvcGVydGllcxgVIAEoA1INbWF4UHJvcGVydGllcx'
    'IkCg1taW5Qcm9wZXJ0aWVzGBYgASgDUg1taW5Qcm9wZXJ0aWVzEhoKCHJlcXVpcmVkGBcgAygJ'
    'UghyZXF1aXJlZBJfCgVpdGVtcxgYIAEoCzJJLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy'
    '5hcGlzLmFwaWV4dGVuc2lvbnMudjEuSlNPTlNjaGVtYVByb3BzT3JBcnJheVIFaXRlbXMSWAoF'
    'YWxsT2YYGSADKAsyQi5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbn'
    'Npb25zLnYxLkpTT05TY2hlbWFQcm9wc1IFYWxsT2YSWAoFb25lT2YYGiADKAsyQi5hcGlleHRl'
    'bnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxLkpTT05TY2hlbWFQcm'
    '9wc1IFb25lT2YSWAoFYW55T2YYGyADKAsyQi5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cu'
    'YXBpcy5hcGlleHRlbnNpb25zLnYxLkpTT05TY2hlbWFQcm9wc1IFYW55T2YSVAoDbm90GBwgAS'
    'gLMkIuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5K'
    'U09OU2NoZW1hUHJvcHNSA25vdBJyCgpwcm9wZXJ0aWVzGB0gAygLMlIuYXBpZXh0ZW5zaW9uc1'
    '9hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5KU09OU2NoZW1hUHJvcHMuUHJv'
    'cGVydGllc0VudHJ5Ugpwcm9wZXJ0aWVzEnwKFGFkZGl0aW9uYWxQcm9wZXJ0aWVzGB4gASgLMk'
    'guYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5KU09O'
    'U2NoZW1hUHJvcHNPckJvb2xSFGFkZGl0aW9uYWxQcm9wZXJ0aWVzEocBChFwYXR0ZXJuUHJvcG'
    'VydGllcxgfIAMoCzJZLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVu'
    'c2lvbnMudjEuSlNPTlNjaGVtYVByb3BzLlBhdHRlcm5Qcm9wZXJ0aWVzRW50cnlSEXBhdHRlcm'
    '5Qcm9wZXJ0aWVzEngKDGRlcGVuZGVuY2llcxggIAMoCzJULmFwaWV4dGVuc2lvbnNfYXBpc2Vy'
    'dmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuSlNPTlNjaGVtYVByb3BzLkRlcGVuZGVuY2'
    'llc0VudHJ5UgxkZXBlbmRlbmNpZXMScgoPYWRkaXRpb25hbEl0ZW1zGCEgASgLMkguYXBpZXh0'
    'ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5KU09OU2NoZW1hUH'
    'JvcHNPckJvb2xSD2FkZGl0aW9uYWxJdGVtcxJ1CgtkZWZpbml0aW9ucxgiIAMoCzJTLmFwaWV4'
    'dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuSlNPTlNjaGVtYV'
    'Byb3BzLkRlZmluaXRpb25zRW50cnlSC2RlZmluaXRpb25zEmwKDGV4dGVybmFsRG9jcxgjIAEo'
    'CzJILmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuRX'
    'h0ZXJuYWxEb2N1bWVudGF0aW9uUgxleHRlcm5hbERvY3MSUQoHZXhhbXBsZRgkIAEoCzI3LmFw'
    'aWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuSlNPTlIHZX'
    'hhbXBsZRIaCghudWxsYWJsZRglIAEoCFIIbnVsbGFibGUSSgogeEt1YmVybmV0ZXNQcmVzZXJ2'
    'ZVVua25vd25GaWVsZHMYJiABKAhSIHhLdWJlcm5ldGVzUHJlc2VydmVVbmtub3duRmllbGRzEk'
    'AKG3hLdWJlcm5ldGVzRW1iZWRkZWRSZXNvdXJjZRgnIAEoCFIbeEt1YmVybmV0ZXNFbWJlZGRl'
    'ZFJlc291cmNlEjYKFnhLdWJlcm5ldGVzSW50T3JTdHJpbmcYKCABKAhSFnhLdWJlcm5ldGVzSW'
    '50T3JTdHJpbmcSNgoWeEt1YmVybmV0ZXNMaXN0TWFwS2V5cxgpIAMoCVIWeEt1YmVybmV0ZXNM'
    'aXN0TWFwS2V5cxIwChN4S3ViZXJuZXRlc0xpc3RUeXBlGCogASgJUhN4S3ViZXJuZXRlc0xpc3'
    'RUeXBlEi4KEnhLdWJlcm5ldGVzTWFwVHlwZRgrIAEoCVISeEt1YmVybmV0ZXNNYXBUeXBlEnkK'
    'FnhLdWJlcm5ldGVzVmFsaWRhdGlvbnMYLCADKAsyQS5hcGlleHRlbnNpb25zX2FwaXNlcnZlci'
    '5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxLlZhbGlkYXRpb25SdWxlUhZ4S3ViZXJuZXRlc1Zh'
    'bGlkYXRpb25zGoEBCg9Qcm9wZXJ0aWVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSWAoFdmFsdW'
    'UYAiABKAsyQi5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25z'
    'LnYxLkpTT05TY2hlbWFQcm9wc1IFdmFsdWU6AjgBGogBChZQYXR0ZXJuUHJvcGVydGllc0VudH'
    'J5EhAKA2tleRgBIAEoCVIDa2V5ElgKBXZhbHVlGAIgASgLMkIuYXBpZXh0ZW5zaW9uc19hcGlz'
    'ZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MS5KU09OU2NoZW1hUHJvcHNSBXZhbHVlOg'
    'I4ARqQAQoRRGVwZW5kZW5jaWVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSZQoFdmFsdWUYAiAB'
    'KAsyTy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxLk'
    'pTT05TY2hlbWFQcm9wc09yU3RyaW5nQXJyYXlSBXZhbHVlOgI4ARqCAQoQRGVmaW5pdGlvbnNF'
    'bnRyeRIQCgNrZXkYASABKAlSA2tleRJYCgV2YWx1ZRgCIAEoCzJCLmFwaWV4dGVuc2lvbnNfYX'
    'Bpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuSlNPTlNjaGVtYVByb3BzUgV2YWx1'
    'ZToCOAE=');

@$core.Deprecated('Use jSONSchemaPropsOrArrayDescriptor instead')
const JSONSchemaPropsOrArray$json = {
  '1': 'JSONSchemaPropsOrArray',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'schema'},
    {'1': 'jSONSchemas', '3': 2, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'jSONSchemas'},
  ],
};

/// Descriptor for `JSONSchemaPropsOrArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONSchemaPropsOrArrayDescriptor = $convert.base64Decode(
    'ChZKU09OU2NoZW1hUHJvcHNPckFycmF5EloKBnNjaGVtYRgBIAEoCzJCLmFwaWV4dGVuc2lvbn'
    'NfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuSlNPTlNjaGVtYVByb3BzUgZz'
    'Y2hlbWESZAoLalNPTlNjaGVtYXMYAiADKAsyQi5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2'
    'cuYXBpcy5hcGlleHRlbnNpb25zLnYxLkpTT05TY2hlbWFQcm9wc1ILalNPTlNjaGVtYXM=');

@$core.Deprecated('Use jSONSchemaPropsOrBoolDescriptor instead')
const JSONSchemaPropsOrBool$json = {
  '1': 'JSONSchemaPropsOrBool',
  '2': [
    {'1': 'allows', '3': 1, '4': 1, '5': 8, '10': 'allows'},
    {'1': 'schema', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'schema'},
  ],
};

/// Descriptor for `JSONSchemaPropsOrBool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONSchemaPropsOrBoolDescriptor = $convert.base64Decode(
    'ChVKU09OU2NoZW1hUHJvcHNPckJvb2wSFgoGYWxsb3dzGAEgASgIUgZhbGxvd3MSWgoGc2NoZW'
    '1hGAIgASgLMkIuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9u'
    'cy52MS5KU09OU2NoZW1hUHJvcHNSBnNjaGVtYQ==');

@$core.Deprecated('Use jSONSchemaPropsOrStringArrayDescriptor instead')
const JSONSchemaPropsOrStringArray$json = {
  '1': 'JSONSchemaPropsOrStringArray',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.JSONSchemaProps', '10': 'schema'},
    {'1': 'property', '3': 2, '4': 3, '5': 9, '10': 'property'},
  ],
};

/// Descriptor for `JSONSchemaPropsOrStringArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONSchemaPropsOrStringArrayDescriptor = $convert.base64Decode(
    'ChxKU09OU2NoZW1hUHJvcHNPclN0cmluZ0FycmF5EloKBnNjaGVtYRgBIAEoCzJCLmFwaWV4dG'
    'Vuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjEuSlNPTlNjaGVtYVBy'
    'b3BzUgZzY2hlbWESGgoIcHJvcGVydHkYAiADKAlSCHByb3BlcnR5');

@$core.Deprecated('Use selectableFieldDescriptor instead')
const SelectableField$json = {
  '1': 'SelectableField',
  '2': [
    {'1': 'jsonPath', '3': 1, '4': 1, '5': 9, '10': 'jsonPath'},
  ],
};

/// Descriptor for `SelectableField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List selectableFieldDescriptor = $convert.base64Decode(
    'Cg9TZWxlY3RhYmxlRmllbGQSGgoIanNvblBhdGgYASABKAlSCGpzb25QYXRo');

@$core.Deprecated('Use serviceReferenceDescriptor instead')
const ServiceReference$json = {
  '1': 'ServiceReference',
  '2': [
    {'1': 'namespace', '3': 1, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'path', '3': 3, '4': 1, '5': 9, '10': 'path'},
    {'1': 'port', '3': 4, '4': 1, '5': 5, '10': 'port'},
  ],
};

/// Descriptor for `ServiceReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List serviceReferenceDescriptor = $convert.base64Decode(
    'ChBTZXJ2aWNlUmVmZXJlbmNlEhwKCW5hbWVzcGFjZRgBIAEoCVIJbmFtZXNwYWNlEhIKBG5hbW'
    'UYAiABKAlSBG5hbWUSEgoEcGF0aBgDIAEoCVIEcGF0aBISCgRwb3J0GAQgASgFUgRwb3J0');

@$core.Deprecated('Use validationRuleDescriptor instead')
const ValidationRule$json = {
  '1': 'ValidationRule',
  '2': [
    {'1': 'rule', '3': 1, '4': 1, '5': 9, '10': 'rule'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'messageExpression', '3': 3, '4': 1, '5': 9, '10': 'messageExpression'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'fieldPath', '3': 5, '4': 1, '5': 9, '10': 'fieldPath'},
    {'1': 'optionalOldSelf', '3': 6, '4': 1, '5': 8, '10': 'optionalOldSelf'},
  ],
};

/// Descriptor for `ValidationRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validationRuleDescriptor = $convert.base64Decode(
    'Cg5WYWxpZGF0aW9uUnVsZRISCgRydWxlGAEgASgJUgRydWxlEhgKB21lc3NhZ2UYAiABKAlSB2'
    '1lc3NhZ2USLAoRbWVzc2FnZUV4cHJlc3Npb24YAyABKAlSEW1lc3NhZ2VFeHByZXNzaW9uEhYK'
    'BnJlYXNvbhgEIAEoCVIGcmVhc29uEhwKCWZpZWxkUGF0aBgFIAEoCVIJZmllbGRQYXRoEigKD2'
    '9wdGlvbmFsT2xkU2VsZhgGIAEoCFIPb3B0aW9uYWxPbGRTZWxm');

@$core.Deprecated('Use webhookClientConfigDescriptor instead')
const WebhookClientConfig$json = {
  '1': 'WebhookClientConfig',
  '2': [
    {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    {'1': 'service', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.ServiceReference', '10': 'service'},
    {'1': 'caBundle', '3': 2, '4': 1, '5': 12, '10': 'caBundle'},
  ],
};

/// Descriptor for `WebhookClientConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webhookClientConfigDescriptor = $convert.base64Decode(
    'ChNXZWJob29rQ2xpZW50Q29uZmlnEhAKA3VybBgDIAEoCVIDdXJsEl0KB3NlcnZpY2UYASABKA'
    'syQy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxLlNl'
    'cnZpY2VSZWZlcmVuY2VSB3NlcnZpY2USGgoIY2FCdW5kbGUYAiABKAxSCGNhQnVuZGxl');

@$core.Deprecated('Use webhookConversionDescriptor instead')
const WebhookConversion$json = {
  '1': 'WebhookConversion',
  '2': [
    {'1': 'clientConfig', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1.WebhookClientConfig', '10': 'clientConfig'},
    {'1': 'conversionReviewVersions', '3': 3, '4': 3, '5': 9, '10': 'conversionReviewVersions'},
  ],
};

/// Descriptor for `WebhookConversion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webhookConversionDescriptor = $convert.base64Decode(
    'ChFXZWJob29rQ29udmVyc2lvbhJqCgxjbGllbnRDb25maWcYAiABKAsyRi5hcGlleHRlbnNpb2'
    '5zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxLldlYmhvb2tDbGllbnRDb25m'
    'aWdSDGNsaWVudENvbmZpZxI6Chhjb252ZXJzaW9uUmV2aWV3VmVyc2lvbnMYAyADKAlSGGNvbn'
    'ZlcnNpb25SZXZpZXdWZXJzaW9ucw==');

