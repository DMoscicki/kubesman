//
//  Generated code. Do not modify.
//  source: apiextensions-apiserver/pkg/apis/apiextensions/v1beta1/generated.proto
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
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.ConversionRequest', '10': 'request'},
    {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.ConversionResponse', '10': 'response'},
  ],
};

/// Descriptor for `ConversionReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List conversionReviewDescriptor = $convert.base64Decode(
    'ChBDb252ZXJzaW9uUmV2aWV3EmMKB3JlcXVlc3QYASABKAsySS5hcGlleHRlbnNpb25zX2FwaX'
    'NlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuQ29udmVyc2lvblJlcXVlc3RS'
    'B3JlcXVlc3QSZgoIcmVzcG9uc2UYAiABKAsySi5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2'
    'cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuQ29udmVyc2lvblJlc3BvbnNlUghyZXNwb25z'
    'ZQ==');

@$core.Deprecated('Use customResourceColumnDefinitionDescriptor instead')
const CustomResourceColumnDefinition$json = {
  '1': 'CustomResourceColumnDefinition',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'type', '3': 2, '4': 1, '5': 9, '10': 'type'},
    {'1': 'format', '3': 3, '4': 1, '5': 9, '10': 'format'},
    {'1': 'description', '3': 4, '4': 1, '5': 9, '10': 'description'},
    {'1': 'priority', '3': 5, '4': 1, '5': 5, '10': 'priority'},
    {'1': 'JSONPath', '3': 6, '4': 1, '5': 9, '10': 'JSONPath'},
  ],
};

/// Descriptor for `CustomResourceColumnDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceColumnDefinitionDescriptor = $convert.base64Decode(
    'Ch5DdXN0b21SZXNvdXJjZUNvbHVtbkRlZmluaXRpb24SEgoEbmFtZRgBIAEoCVIEbmFtZRISCg'
    'R0eXBlGAIgASgJUgR0eXBlEhYKBmZvcm1hdBgDIAEoCVIGZm9ybWF0EiAKC2Rlc2NyaXB0aW9u'
    'GAQgASgJUgtkZXNjcmlwdGlvbhIaCghwcmlvcml0eRgFIAEoBVIIcHJpb3JpdHkSGgoISlNPTl'
    'BhdGgYBiABKAlSCEpTT05QYXRo');

@$core.Deprecated('Use customResourceConversionDescriptor instead')
const CustomResourceConversion$json = {
  '1': 'CustomResourceConversion',
  '2': [
    {'1': 'strategy', '3': 1, '4': 1, '5': 9, '10': 'strategy'},
    {'1': 'webhookClientConfig', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.WebhookClientConfig', '10': 'webhookClientConfig'},
    {'1': 'conversionReviewVersions', '3': 3, '4': 3, '5': 9, '10': 'conversionReviewVersions'},
  ],
};

/// Descriptor for `CustomResourceConversion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceConversionDescriptor = $convert.base64Decode(
    'ChhDdXN0b21SZXNvdXJjZUNvbnZlcnNpb24SGgoIc3RyYXRlZ3kYASABKAlSCHN0cmF0ZWd5En'
    '0KE3dlYmhvb2tDbGllbnRDb25maWcYAiABKAsySy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5w'
    'a2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuV2ViaG9va0NsaWVudENvbmZpZ1ITd2ViaG'
    '9va0NsaWVudENvbmZpZxI6Chhjb252ZXJzaW9uUmV2aWV3VmVyc2lvbnMYAyADKAlSGGNvbnZl'
    'cnNpb25SZXZpZXdWZXJzaW9ucw==');

@$core.Deprecated('Use customResourceDefinitionDescriptor instead')
const CustomResourceDefinition$json = {
  '1': 'CustomResourceDefinition',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionStatus', '10': 'status'},
  ],
};

/// Descriptor for `CustomResourceDefinition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionDescriptor = $convert.base64Decode(
    'ChhDdXN0b21SZXNvdXJjZURlZmluaXRpb24SRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW'
    '5lcnkucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRJoCgRzcGVjGAIgASgL'
    'MlQuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldG'
    'ExLkN1c3RvbVJlc291cmNlRGVmaW5pdGlvblNwZWNSBHNwZWMSbgoGc3RhdHVzGAMgASgLMlYu'
    'YXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLk'
    'N1c3RvbVJlc291cmNlRGVmaW5pdGlvblN0YXR1c1IGc3RhdHVz');

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
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinition', '10': 'items'},
  ],
};

/// Descriptor for `CustomResourceDefinitionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionListDescriptor = $convert.base64Decode(
    'ChxDdXN0b21SZXNvdXJjZURlZmluaXRpb25MaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbW'
    'FjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEmYKBWl0ZW1zGAIg'
    'AygLMlAuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MW'
    'JldGExLkN1c3RvbVJlc291cmNlRGVmaW5pdGlvblIFaXRlbXM=');

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
    {'1': 'version', '3': 2, '4': 1, '5': 9, '10': 'version'},
    {'1': 'names', '3': 3, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionNames', '10': 'names'},
    {'1': 'scope', '3': 4, '4': 1, '5': 9, '10': 'scope'},
    {'1': 'validation', '3': 5, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceValidation', '10': 'validation'},
    {'1': 'subresources', '3': 6, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceSubresources', '10': 'subresources'},
    {'1': 'versions', '3': 7, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionVersion', '10': 'versions'},
    {'1': 'additionalPrinterColumns', '3': 8, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceColumnDefinition', '10': 'additionalPrinterColumns'},
    {'1': 'selectableFields', '3': 11, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.SelectableField', '10': 'selectableFields'},
    {'1': 'conversion', '3': 9, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceConversion', '10': 'conversion'},
    {'1': 'preserveUnknownFields', '3': 10, '4': 1, '5': 8, '10': 'preserveUnknownFields'},
  ],
};

/// Descriptor for `CustomResourceDefinitionSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionSpecDescriptor = $convert.base64Decode(
    'ChxDdXN0b21SZXNvdXJjZURlZmluaXRpb25TcGVjEhQKBWdyb3VwGAEgASgJUgVncm91cBIYCg'
    'd2ZXJzaW9uGAIgASgJUgd2ZXJzaW9uEmsKBW5hbWVzGAMgASgLMlUuYXBpZXh0ZW5zaW9uc19h'
    'cGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLkN1c3RvbVJlc291cmNlRG'
    'VmaW5pdGlvbk5hbWVzUgVuYW1lcxIUCgVzY29wZRgEIAEoCVIFc2NvcGUScAoKdmFsaWRhdGlv'
    'bhgFIAEoCzJQLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbn'
    'MudjFiZXRhMS5DdXN0b21SZXNvdXJjZVZhbGlkYXRpb25SCnZhbGlkYXRpb24SdgoMc3VicmVz'
    'b3VyY2VzGAYgASgLMlIuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW'
    '5zaW9ucy52MWJldGExLkN1c3RvbVJlc291cmNlU3VicmVzb3VyY2VzUgxzdWJyZXNvdXJjZXMS'
    'cwoIdmVyc2lvbnMYByADKAsyVy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcG'
    'lleHRlbnNpb25zLnYxYmV0YTEuQ3VzdG9tUmVzb3VyY2VEZWZpbml0aW9uVmVyc2lvblIIdmVy'
    'c2lvbnMSkgEKGGFkZGl0aW9uYWxQcmludGVyQ29sdW1ucxgIIAMoCzJWLmFwaWV4dGVuc2lvbn'
    'NfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjFiZXRhMS5DdXN0b21SZXNvdXJj'
    'ZUNvbHVtbkRlZmluaXRpb25SGGFkZGl0aW9uYWxQcmludGVyQ29sdW1ucxJzChBzZWxlY3RhYm'
    'xlRmllbGRzGAsgAygLMkcuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0'
    'ZW5zaW9ucy52MWJldGExLlNlbGVjdGFibGVGaWVsZFIQc2VsZWN0YWJsZUZpZWxkcxJwCgpjb2'
    '52ZXJzaW9uGAkgASgLMlAuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0'
    'ZW5zaW9ucy52MWJldGExLkN1c3RvbVJlc291cmNlQ29udmVyc2lvblIKY29udmVyc2lvbhI0Ch'
    'VwcmVzZXJ2ZVVua25vd25GaWVsZHMYCiABKAhSFXByZXNlcnZlVW5rbm93bkZpZWxkcw==');

@$core.Deprecated('Use customResourceDefinitionStatusDescriptor instead')
const CustomResourceDefinitionStatus$json = {
  '1': 'CustomResourceDefinitionStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionCondition', '10': 'conditions'},
    {'1': 'acceptedNames', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceDefinitionNames', '10': 'acceptedNames'},
    {'1': 'storedVersions', '3': 3, '4': 3, '5': 9, '10': 'storedVersions'},
  ],
};

/// Descriptor for `CustomResourceDefinitionStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionStatusDescriptor = $convert.base64Decode(
    'Ch5DdXN0b21SZXNvdXJjZURlZmluaXRpb25TdGF0dXMSeQoKY29uZGl0aW9ucxgBIAMoCzJZLm'
    'FwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjFiZXRhMS5D'
    'dXN0b21SZXNvdXJjZURlZmluaXRpb25Db25kaXRpb25SCmNvbmRpdGlvbnMSewoNYWNjZXB0ZW'
    'ROYW1lcxgCIAEoCzJVLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVu'
    'c2lvbnMudjFiZXRhMS5DdXN0b21SZXNvdXJjZURlZmluaXRpb25OYW1lc1INYWNjZXB0ZWROYW'
    '1lcxImCg5zdG9yZWRWZXJzaW9ucxgDIAMoCVIOc3RvcmVkVmVyc2lvbnM=');

@$core.Deprecated('Use customResourceDefinitionVersionDescriptor instead')
const CustomResourceDefinitionVersion$json = {
  '1': 'CustomResourceDefinitionVersion',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'served', '3': 2, '4': 1, '5': 8, '10': 'served'},
    {'1': 'storage', '3': 3, '4': 1, '5': 8, '10': 'storage'},
    {'1': 'deprecated', '3': 7, '4': 1, '5': 8, '10': 'deprecated'},
    {'1': 'deprecationWarning', '3': 8, '4': 1, '5': 9, '10': 'deprecationWarning'},
    {'1': 'schema', '3': 4, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceValidation', '10': 'schema'},
    {'1': 'subresources', '3': 5, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceSubresources', '10': 'subresources'},
    {'1': 'additionalPrinterColumns', '3': 6, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceColumnDefinition', '10': 'additionalPrinterColumns'},
    {'1': 'selectableFields', '3': 9, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.SelectableField', '10': 'selectableFields'},
  ],
};

/// Descriptor for `CustomResourceDefinitionVersion`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceDefinitionVersionDescriptor = $convert.base64Decode(
    'Ch9DdXN0b21SZXNvdXJjZURlZmluaXRpb25WZXJzaW9uEhIKBG5hbWUYASABKAlSBG5hbWUSFg'
    'oGc2VydmVkGAIgASgIUgZzZXJ2ZWQSGAoHc3RvcmFnZRgDIAEoCFIHc3RvcmFnZRIeCgpkZXBy'
    'ZWNhdGVkGAcgASgIUgpkZXByZWNhdGVkEi4KEmRlcHJlY2F0aW9uV2FybmluZxgIIAEoCVISZG'
    'VwcmVjYXRpb25XYXJuaW5nEmgKBnNjaGVtYRgEIAEoCzJQLmFwaWV4dGVuc2lvbnNfYXBpc2Vy'
    'dmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjFiZXRhMS5DdXN0b21SZXNvdXJjZVZhbGlkYX'
    'Rpb25SBnNjaGVtYRJ2CgxzdWJyZXNvdXJjZXMYBSABKAsyUi5hcGlleHRlbnNpb25zX2FwaXNl'
    'cnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuQ3VzdG9tUmVzb3VyY2VTdWJyZX'
    'NvdXJjZXNSDHN1YnJlc291cmNlcxKSAQoYYWRkaXRpb25hbFByaW50ZXJDb2x1bW5zGAYgAygL'
    'MlYuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldG'
    'ExLkN1c3RvbVJlc291cmNlQ29sdW1uRGVmaW5pdGlvblIYYWRkaXRpb25hbFByaW50ZXJDb2x1'
    'bW5zEnMKEHNlbGVjdGFibGVGaWVsZHMYCSADKAsyRy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci'
    '5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuU2VsZWN0YWJsZUZpZWxkUhBzZWxlY3Rh'
    'YmxlRmllbGRz');

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
    {'1': 'status', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceSubresourceStatus', '10': 'status'},
    {'1': 'scale', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.CustomResourceSubresourceScale', '10': 'scale'},
  ],
};

/// Descriptor for `CustomResourceSubresources`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceSubresourcesDescriptor = $convert.base64Decode(
    'ChpDdXN0b21SZXNvdXJjZVN1YnJlc291cmNlcxJvCgZzdGF0dXMYASABKAsyVy5hcGlleHRlbn'
    'Npb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuQ3VzdG9tUmVz'
    'b3VyY2VTdWJyZXNvdXJjZVN0YXR1c1IGc3RhdHVzEmwKBXNjYWxlGAIgASgLMlYuYXBpZXh0ZW'
    '5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLkN1c3RvbVJl'
    'c291cmNlU3VicmVzb3VyY2VTY2FsZVIFc2NhbGU=');

@$core.Deprecated('Use customResourceValidationDescriptor instead')
const CustomResourceValidation$json = {
  '1': 'CustomResourceValidation',
  '2': [
    {'1': 'openAPIV3Schema', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'openAPIV3Schema'},
  ],
};

/// Descriptor for `CustomResourceValidation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List customResourceValidationDescriptor = $convert.base64Decode(
    'ChhDdXN0b21SZXNvdXJjZVZhbGlkYXRpb24ScQoPb3BlbkFQSVYzU2NoZW1hGAEgASgLMkcuYX'
    'BpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLkpT'
    'T05TY2hlbWFQcm9wc1IPb3BlbkFQSVYzU2NoZW1h');

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
    {'1': 'default', '3': 8, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSON', '10': 'default'},
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
    {'1': 'enum', '3': 20, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSON', '10': 'enum'},
    {'1': 'maxProperties', '3': 21, '4': 1, '5': 3, '10': 'maxProperties'},
    {'1': 'minProperties', '3': 22, '4': 1, '5': 3, '10': 'minProperties'},
    {'1': 'required', '3': 23, '4': 3, '5': 9, '10': 'required'},
    {'1': 'items', '3': 24, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaPropsOrArray', '10': 'items'},
    {'1': 'allOf', '3': 25, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'allOf'},
    {'1': 'oneOf', '3': 26, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'oneOf'},
    {'1': 'anyOf', '3': 27, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'anyOf'},
    {'1': 'not', '3': 28, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'not'},
    {'1': 'properties', '3': 29, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps.PropertiesEntry', '10': 'properties'},
    {'1': 'additionalProperties', '3': 30, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaPropsOrBool', '10': 'additionalProperties'},
    {'1': 'patternProperties', '3': 31, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps.PatternPropertiesEntry', '10': 'patternProperties'},
    {'1': 'dependencies', '3': 32, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps.DependenciesEntry', '10': 'dependencies'},
    {'1': 'additionalItems', '3': 33, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaPropsOrBool', '10': 'additionalItems'},
    {'1': 'definitions', '3': 34, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps.DefinitionsEntry', '10': 'definitions'},
    {'1': 'externalDocs', '3': 35, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.ExternalDocumentation', '10': 'externalDocs'},
    {'1': 'example', '3': 36, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSON', '10': 'example'},
    {'1': 'nullable', '3': 37, '4': 1, '5': 8, '10': 'nullable'},
    {'1': 'xKubernetesPreserveUnknownFields', '3': 38, '4': 1, '5': 8, '10': 'xKubernetesPreserveUnknownFields'},
    {'1': 'xKubernetesEmbeddedResource', '3': 39, '4': 1, '5': 8, '10': 'xKubernetesEmbeddedResource'},
    {'1': 'xKubernetesIntOrString', '3': 40, '4': 1, '5': 8, '10': 'xKubernetesIntOrString'},
    {'1': 'xKubernetesListMapKeys', '3': 41, '4': 3, '5': 9, '10': 'xKubernetesListMapKeys'},
    {'1': 'xKubernetesListType', '3': 42, '4': 1, '5': 9, '10': 'xKubernetesListType'},
    {'1': 'xKubernetesMapType', '3': 43, '4': 1, '5': 9, '10': 'xKubernetesMapType'},
    {'1': 'xKubernetesValidations', '3': 44, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.ValidationRule', '10': 'xKubernetesValidations'},
  ],
  '3': [JSONSchemaProps_PropertiesEntry$json, JSONSchemaProps_PatternPropertiesEntry$json, JSONSchemaProps_DependenciesEntry$json, JSONSchemaProps_DefinitionsEntry$json],
};

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps_PropertiesEntry$json = {
  '1': 'PropertiesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps_PatternPropertiesEntry$json = {
  '1': 'PatternPropertiesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps_DependenciesEntry$json = {
  '1': 'DependenciesEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaPropsOrStringArray', '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use jSONSchemaPropsDescriptor instead')
const JSONSchemaProps_DefinitionsEntry$json = {
  '1': 'DefinitionsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `JSONSchemaProps`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONSchemaPropsDescriptor = $convert.base64Decode(
    'Cg9KU09OU2NoZW1hUHJvcHMSDgoCaWQYASABKAlSAmlkEhYKBnNjaGVtYRgCIAEoCVIGc2NoZW'
    '1hEhAKA3JlZhgDIAEoCVIDcmVmEiAKC2Rlc2NyaXB0aW9uGAQgASgJUgtkZXNjcmlwdGlvbhIS'
    'CgR0eXBlGAUgASgJUgR0eXBlEhYKBmZvcm1hdBgGIAEoCVIGZm9ybWF0EhQKBXRpdGxlGAcgAS'
    'gJUgV0aXRsZRJWCgdkZWZhdWx0GAggASgLMjwuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtn'
    'LmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLkpTT05SB2RlZmF1bHQSGAoHbWF4aW11bRgJIA'
    'EoAVIHbWF4aW11bRIqChBleGNsdXNpdmVNYXhpbXVtGAogASgIUhBleGNsdXNpdmVNYXhpbXVt'
    'EhgKB21pbmltdW0YCyABKAFSB21pbmltdW0SKgoQZXhjbHVzaXZlTWluaW11bRgMIAEoCFIQZX'
    'hjbHVzaXZlTWluaW11bRIcCgltYXhMZW5ndGgYDSABKANSCW1heExlbmd0aBIcCgltaW5MZW5n'
    'dGgYDiABKANSCW1pbkxlbmd0aBIYCgdwYXR0ZXJuGA8gASgJUgdwYXR0ZXJuEhoKCG1heEl0ZW'
    '1zGBAgASgDUghtYXhJdGVtcxIaCghtaW5JdGVtcxgRIAEoA1IIbWluSXRlbXMSIAoLdW5pcXVl'
    'SXRlbXMYEiABKAhSC3VuaXF1ZUl0ZW1zEh4KCm11bHRpcGxlT2YYEyABKAFSCm11bHRpcGxlT2'
    'YSUAoEZW51bRgUIAMoCzI8LmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4'
    'dGVuc2lvbnMudjFiZXRhMS5KU09OUgRlbnVtEiQKDW1heFByb3BlcnRpZXMYFSABKANSDW1heF'
    'Byb3BlcnRpZXMSJAoNbWluUHJvcGVydGllcxgWIAEoA1INbWluUHJvcGVydGllcxIaCghyZXF1'
    'aXJlZBgXIAMoCVIIcmVxdWlyZWQSZAoFaXRlbXMYGCABKAsyTi5hcGlleHRlbnNpb25zX2FwaX'
    'NlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuSlNPTlNjaGVtYVByb3BzT3JB'
    'cnJheVIFaXRlbXMSXQoFYWxsT2YYGSADKAsyRy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2'
    'cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuSlNPTlNjaGVtYVByb3BzUgVhbGxPZhJdCgVv'
    'bmVPZhgaIAMoCzJHLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2'
    'lvbnMudjFiZXRhMS5KU09OU2NoZW1hUHJvcHNSBW9uZU9mEl0KBWFueU9mGBsgAygLMkcuYXBp'
    'ZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLkpTT0'
    '5TY2hlbWFQcm9wc1IFYW55T2YSWQoDbm90GBwgASgLMkcuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2'
    'ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLkpTT05TY2hlbWFQcm9wc1IDbm90En'
    'cKCnByb3BlcnRpZXMYHSADKAsyVy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5h'
    'cGlleHRlbnNpb25zLnYxYmV0YTEuSlNPTlNjaGVtYVByb3BzLlByb3BlcnRpZXNFbnRyeVIKcH'
    'JvcGVydGllcxKBAQoUYWRkaXRpb25hbFByb3BlcnRpZXMYHiABKAsyTS5hcGlleHRlbnNpb25z'
    'X2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuSlNPTlNjaGVtYVByb3'
    'BzT3JCb29sUhRhZGRpdGlvbmFsUHJvcGVydGllcxKMAQoRcGF0dGVyblByb3BlcnRpZXMYHyAD'
    'KAsyXi5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYm'
    'V0YTEuSlNPTlNjaGVtYVByb3BzLlBhdHRlcm5Qcm9wZXJ0aWVzRW50cnlSEXBhdHRlcm5Qcm9w'
    'ZXJ0aWVzEn0KDGRlcGVuZGVuY2llcxggIAMoCzJZLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLn'
    'BrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjFiZXRhMS5KU09OU2NoZW1hUHJvcHMuRGVwZW5kZW5j'
    'aWVzRW50cnlSDGRlcGVuZGVuY2llcxJ3Cg9hZGRpdGlvbmFsSXRlbXMYISABKAsyTS5hcGlleH'
    'RlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuSlNPTlNj'
    'aGVtYVByb3BzT3JCb29sUg9hZGRpdGlvbmFsSXRlbXMSegoLZGVmaW5pdGlvbnMYIiADKAsyWC'
    '5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEu'
    'SlNPTlNjaGVtYVByb3BzLkRlZmluaXRpb25zRW50cnlSC2RlZmluaXRpb25zEnEKDGV4dGVybm'
    'FsRG9jcxgjIAEoCzJNLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVu'
    'c2lvbnMudjFiZXRhMS5FeHRlcm5hbERvY3VtZW50YXRpb25SDGV4dGVybmFsRG9jcxJWCgdleG'
    'FtcGxlGCQgASgLMjwuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5z'
    'aW9ucy52MWJldGExLkpTT05SB2V4YW1wbGUSGgoIbnVsbGFibGUYJSABKAhSCG51bGxhYmxlEk'
    'oKIHhLdWJlcm5ldGVzUHJlc2VydmVVbmtub3duRmllbGRzGCYgASgIUiB4S3ViZXJuZXRlc1By'
    'ZXNlcnZlVW5rbm93bkZpZWxkcxJACht4S3ViZXJuZXRlc0VtYmVkZGVkUmVzb3VyY2UYJyABKA'
    'hSG3hLdWJlcm5ldGVzRW1iZWRkZWRSZXNvdXJjZRI2ChZ4S3ViZXJuZXRlc0ludE9yU3RyaW5n'
    'GCggASgIUhZ4S3ViZXJuZXRlc0ludE9yU3RyaW5nEjYKFnhLdWJlcm5ldGVzTGlzdE1hcEtleX'
    'MYKSADKAlSFnhLdWJlcm5ldGVzTGlzdE1hcEtleXMSMAoTeEt1YmVybmV0ZXNMaXN0VHlwZRgq'
    'IAEoCVITeEt1YmVybmV0ZXNMaXN0VHlwZRIuChJ4S3ViZXJuZXRlc01hcFR5cGUYKyABKAlSEn'
    'hLdWJlcm5ldGVzTWFwVHlwZRJ+ChZ4S3ViZXJuZXRlc1ZhbGlkYXRpb25zGCwgAygLMkYuYXBp'
    'ZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLlZhbG'
    'lkYXRpb25SdWxlUhZ4S3ViZXJuZXRlc1ZhbGlkYXRpb25zGoYBCg9Qcm9wZXJ0aWVzRW50cnkS'
    'EAoDa2V5GAEgASgJUgNrZXkSXQoFdmFsdWUYAiABKAsyRy5hcGlleHRlbnNpb25zX2FwaXNlcn'
    'Zlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0YTEuSlNPTlNjaGVtYVByb3BzUgV2YWx1'
    'ZToCOAEajQEKFlBhdHRlcm5Qcm9wZXJ0aWVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSXQoFdm'
    'FsdWUYAiABKAsyRy5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNp'
    'b25zLnYxYmV0YTEuSlNPTlNjaGVtYVByb3BzUgV2YWx1ZToCOAEalQEKEURlcGVuZGVuY2llc0'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EmoKBXZhbHVlGAIgASgLMlQuYXBpZXh0ZW5zaW9uc19h'
    'cGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9ucy52MWJldGExLkpTT05TY2hlbWFQcm9wc0'
    '9yU3RyaW5nQXJyYXlSBXZhbHVlOgI4ARqHAQoQRGVmaW5pdGlvbnNFbnRyeRIQCgNrZXkYASAB'
    'KAlSA2tleRJdCgV2YWx1ZRgCIAEoCzJHLmFwaWV4dGVuc2lvbnNfYXBpc2VydmVyLnBrZy5hcG'
    'lzLmFwaWV4dGVuc2lvbnMudjFiZXRhMS5KU09OU2NoZW1hUHJvcHNSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use jSONSchemaPropsOrArrayDescriptor instead')
const JSONSchemaPropsOrArray$json = {
  '1': 'JSONSchemaPropsOrArray',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'schema'},
    {'1': 'jSONSchemas', '3': 2, '4': 3, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'jSONSchemas'},
  ],
};

/// Descriptor for `JSONSchemaPropsOrArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONSchemaPropsOrArrayDescriptor = $convert.base64Decode(
    'ChZKU09OU2NoZW1hUHJvcHNPckFycmF5El8KBnNjaGVtYRgBIAEoCzJHLmFwaWV4dGVuc2lvbn'
    'NfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjFiZXRhMS5KU09OU2NoZW1hUHJv'
    'cHNSBnNjaGVtYRJpCgtqU09OU2NoZW1hcxgCIAMoCzJHLmFwaWV4dGVuc2lvbnNfYXBpc2Vydm'
    'VyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjFiZXRhMS5KU09OU2NoZW1hUHJvcHNSC2pTT05T'
    'Y2hlbWFz');

@$core.Deprecated('Use jSONSchemaPropsOrBoolDescriptor instead')
const JSONSchemaPropsOrBool$json = {
  '1': 'JSONSchemaPropsOrBool',
  '2': [
    {'1': 'allows', '3': 1, '4': 1, '5': 8, '10': 'allows'},
    {'1': 'schema', '3': 2, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'schema'},
  ],
};

/// Descriptor for `JSONSchemaPropsOrBool`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONSchemaPropsOrBoolDescriptor = $convert.base64Decode(
    'ChVKU09OU2NoZW1hUHJvcHNPckJvb2wSFgoGYWxsb3dzGAEgASgIUgZhbGxvd3MSXwoGc2NoZW'
    '1hGAIgASgLMkcuYXBpZXh0ZW5zaW9uc19hcGlzZXJ2ZXIucGtnLmFwaXMuYXBpZXh0ZW5zaW9u'
    'cy52MWJldGExLkpTT05TY2hlbWFQcm9wc1IGc2NoZW1h');

@$core.Deprecated('Use jSONSchemaPropsOrStringArrayDescriptor instead')
const JSONSchemaPropsOrStringArray$json = {
  '1': 'JSONSchemaPropsOrStringArray',
  '2': [
    {'1': 'schema', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.JSONSchemaProps', '10': 'schema'},
    {'1': 'property', '3': 2, '4': 3, '5': 9, '10': 'property'},
  ],
};

/// Descriptor for `JSONSchemaPropsOrStringArray`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List jSONSchemaPropsOrStringArrayDescriptor = $convert.base64Decode(
    'ChxKU09OU2NoZW1hUHJvcHNPclN0cmluZ0FycmF5El8KBnNjaGVtYRgBIAEoCzJHLmFwaWV4dG'
    'Vuc2lvbnNfYXBpc2VydmVyLnBrZy5hcGlzLmFwaWV4dGVuc2lvbnMudjFiZXRhMS5KU09OU2No'
    'ZW1hUHJvcHNSBnNjaGVtYRIaCghwcm9wZXJ0eRgCIAMoCVIIcHJvcGVydHk=');

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
    {'1': 'service', '3': 1, '4': 1, '5': 11, '6': '.apiextensions_apiserver.pkg.apis.apiextensions.v1beta1.ServiceReference', '10': 'service'},
    {'1': 'caBundle', '3': 2, '4': 1, '5': 12, '10': 'caBundle'},
  ],
};

/// Descriptor for `WebhookClientConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webhookClientConfigDescriptor = $convert.base64Decode(
    'ChNXZWJob29rQ2xpZW50Q29uZmlnEhAKA3VybBgDIAEoCVIDdXJsEmIKB3NlcnZpY2UYASABKA'
    'sySC5hcGlleHRlbnNpb25zX2FwaXNlcnZlci5wa2cuYXBpcy5hcGlleHRlbnNpb25zLnYxYmV0'
    'YTEuU2VydmljZVJlZmVyZW5jZVIHc2VydmljZRIaCghjYUJ1bmRsZRgCIAEoDFIIY2FCdW5kbG'
    'U=');

