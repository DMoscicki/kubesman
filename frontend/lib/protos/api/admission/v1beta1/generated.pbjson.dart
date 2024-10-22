//
//  Generated code. Do not modify.
//  source: api/admission/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use admissionRequestDescriptor instead')
const AdmissionRequest$json = {
  '1': 'AdmissionRequest',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'kind', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionKind', '10': 'kind'},
    {'1': 'resource', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionResource', '10': 'resource'},
    {'1': 'subResource', '3': 4, '4': 1, '5': 9, '10': 'subResource'},
    {'1': 'requestKind', '3': 13, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionKind', '10': 'requestKind'},
    {'1': 'requestResource', '3': 14, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.GroupVersionResource', '10': 'requestResource'},
    {'1': 'requestSubResource', '3': 15, '4': 1, '5': 9, '10': 'requestSubResource'},
    {'1': 'name', '3': 5, '4': 1, '5': 9, '10': 'name'},
    {'1': 'namespace', '3': 6, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'operation', '3': 7, '4': 1, '5': 9, '10': 'operation'},
    {'1': 'userInfo', '3': 8, '4': 1, '5': 11, '6': '.api.authentication.v1.UserInfo', '10': 'userInfo'},
    {'1': 'object', '3': 9, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'object'},
    {'1': 'oldObject', '3': 10, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'oldObject'},
    {'1': 'dryRun', '3': 11, '4': 1, '5': 8, '10': 'dryRun'},
    {'1': 'options', '3': 12, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'options'},
  ],
};

/// Descriptor for `AdmissionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List admissionRequestDescriptor = $convert.base64Decode(
    'ChBBZG1pc3Npb25SZXF1ZXN0EhAKA3VpZBgBIAEoCVIDdWlkEkMKBGtpbmQYAiABKAsyLy5hcG'
    'ltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5Hcm91cFZlcnNpb25LaW5kUgRraW5kEk8KCHJl'
    'c291cmNlGAMgASgLMjMuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuR3JvdXBWZXJzaW'
    '9uUmVzb3VyY2VSCHJlc291cmNlEiAKC3N1YlJlc291cmNlGAQgASgJUgtzdWJSZXNvdXJjZRJR'
    'CgtyZXF1ZXN0S2luZBgNIAEoCzIvLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkdyb3'
    'VwVmVyc2lvbktpbmRSC3JlcXVlc3RLaW5kEl0KD3JlcXVlc3RSZXNvdXJjZRgOIAEoCzIzLmFw'
    'aW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkdyb3VwVmVyc2lvblJlc291cmNlUg9yZXF1ZX'
    'N0UmVzb3VyY2USLgoScmVxdWVzdFN1YlJlc291cmNlGA8gASgJUhJyZXF1ZXN0U3ViUmVzb3Vy'
    'Y2USEgoEbmFtZRgFIAEoCVIEbmFtZRIcCgluYW1lc3BhY2UYBiABKAlSCW5hbWVzcGFjZRIcCg'
    'lvcGVyYXRpb24YByABKAlSCW9wZXJhdGlvbhI7Cgh1c2VySW5mbxgIIAEoCzIfLmFwaS5hdXRo'
    'ZW50aWNhdGlvbi52MS5Vc2VySW5mb1IIdXNlckluZm8SPgoGb2JqZWN0GAkgASgLMiYuYXBpbW'
    'FjaGluZXJ5LnBrZy5ydW50aW1lLlJhd0V4dGVuc2lvblIGb2JqZWN0EkQKCW9sZE9iamVjdBgK'
    'IAEoCzImLmFwaW1hY2hpbmVyeS5wa2cucnVudGltZS5SYXdFeHRlbnNpb25SCW9sZE9iamVjdB'
    'IWCgZkcnlSdW4YCyABKAhSBmRyeVJ1bhJACgdvcHRpb25zGAwgASgLMiYuYXBpbWFjaGluZXJ5'
    'LnBrZy5ydW50aW1lLlJhd0V4dGVuc2lvblIHb3B0aW9ucw==');

@$core.Deprecated('Use admissionResponseDescriptor instead')
const AdmissionResponse$json = {
  '1': 'AdmissionResponse',
  '2': [
    {'1': 'uid', '3': 1, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'allowed', '3': 2, '4': 1, '5': 8, '10': 'allowed'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Status', '10': 'status'},
    {'1': 'patch', '3': 4, '4': 1, '5': 12, '10': 'patch'},
    {'1': 'patchType', '3': 5, '4': 1, '5': 9, '10': 'patchType'},
    {'1': 'auditAnnotations', '3': 6, '4': 3, '5': 11, '6': '.api.admission.v1beta1.AdmissionResponse.AuditAnnotationsEntry', '10': 'auditAnnotations'},
    {'1': 'warnings', '3': 7, '4': 3, '5': 9, '10': 'warnings'},
  ],
  '3': [AdmissionResponse_AuditAnnotationsEntry$json],
};

@$core.Deprecated('Use admissionResponseDescriptor instead')
const AdmissionResponse_AuditAnnotationsEntry$json = {
  '1': 'AuditAnnotationsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `AdmissionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List admissionResponseDescriptor = $convert.base64Decode(
    'ChFBZG1pc3Npb25SZXNwb25zZRIQCgN1aWQYASABKAlSA3VpZBIYCgdhbGxvd2VkGAIgASgIUg'
    'dhbGxvd2VkEj0KBnN0YXR1cxgDIAEoCzIlLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYx'
    'LlN0YXR1c1IGc3RhdHVzEhQKBXBhdGNoGAQgASgMUgVwYXRjaBIcCglwYXRjaFR5cGUYBSABKA'
    'lSCXBhdGNoVHlwZRJqChBhdWRpdEFubm90YXRpb25zGAYgAygLMj4uYXBpLmFkbWlzc2lvbi52'
    'MWJldGExLkFkbWlzc2lvblJlc3BvbnNlLkF1ZGl0QW5ub3RhdGlvbnNFbnRyeVIQYXVkaXRBbm'
    '5vdGF0aW9ucxIaCgh3YXJuaW5ncxgHIAMoCVIId2FybmluZ3MaQwoVQXVkaXRBbm5vdGF0aW9u'
    'c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use admissionReviewDescriptor instead')
const AdmissionReview$json = {
  '1': 'AdmissionReview',
  '2': [
    {'1': 'request', '3': 1, '4': 1, '5': 11, '6': '.api.admission.v1beta1.AdmissionRequest', '10': 'request'},
    {'1': 'response', '3': 2, '4': 1, '5': 11, '6': '.api.admission.v1beta1.AdmissionResponse', '10': 'response'},
  ],
};

/// Descriptor for `AdmissionReview`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List admissionReviewDescriptor = $convert.base64Decode(
    'Cg9BZG1pc3Npb25SZXZpZXcSQQoHcmVxdWVzdBgBIAEoCzInLmFwaS5hZG1pc3Npb24udjFiZX'
    'RhMS5BZG1pc3Npb25SZXF1ZXN0UgdyZXF1ZXN0EkQKCHJlc3BvbnNlGAIgASgLMiguYXBpLmFk'
    'bWlzc2lvbi52MWJldGExLkFkbWlzc2lvblJlc3BvbnNlUghyZXNwb25zZQ==');

