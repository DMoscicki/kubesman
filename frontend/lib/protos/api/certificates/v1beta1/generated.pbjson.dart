//
//  Generated code. Do not modify.
//  source: api/certificates/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use certificateSigningRequestDescriptor instead')
const CertificateSigningRequest$json = {
  '1': 'CertificateSigningRequest',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.certificates.v1beta1.CertificateSigningRequestSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.certificates.v1beta1.CertificateSigningRequestStatus', '10': 'status'},
  ],
};

/// Descriptor for `CertificateSigningRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certificateSigningRequestDescriptor = $convert.base64Decode(
    'ChlDZXJ0aWZpY2F0ZVNpZ25pbmdSZXF1ZXN0EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESSwoEc3BlYxgCIAEo'
    'CzI3LmFwaS5jZXJ0aWZpY2F0ZXMudjFiZXRhMS5DZXJ0aWZpY2F0ZVNpZ25pbmdSZXF1ZXN0U3'
    'BlY1IEc3BlYxJRCgZzdGF0dXMYAyABKAsyOS5hcGkuY2VydGlmaWNhdGVzLnYxYmV0YTEuQ2Vy'
    'dGlmaWNhdGVTaWduaW5nUmVxdWVzdFN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use certificateSigningRequestConditionDescriptor instead')
const CertificateSigningRequestCondition$json = {
  '1': 'CertificateSigningRequestCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 6, '4': 1, '5': 9, '10': 'status'},
    {'1': 'reason', '3': 2, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 3, '4': 1, '5': 9, '10': 'message'},
    {'1': 'lastUpdateTime', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastUpdateTime'},
    {'1': 'lastTransitionTime', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
  ],
};

/// Descriptor for `CertificateSigningRequestCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certificateSigningRequestConditionDescriptor = $convert.base64Decode(
    'CiJDZXJ0aWZpY2F0ZVNpZ25pbmdSZXF1ZXN0Q29uZGl0aW9uEhIKBHR5cGUYASABKAlSBHR5cG'
    'USFgoGc3RhdHVzGAYgASgJUgZzdGF0dXMSFgoGcmVhc29uGAIgASgJUgZyZWFzb24SGAoHbWVz'
    'c2FnZRgDIAEoCVIHbWVzc2FnZRJLCg5sYXN0VXBkYXRlVGltZRgEIAEoCzIjLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLlRpbWVSDmxhc3RVcGRhdGVUaW1lElMKEmxhc3RUcmFuc2l0'
    'aW9uVGltZRgFIAEoCzIjLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLlRpbWVSEmxhc3'
    'RUcmFuc2l0aW9uVGltZQ==');

@$core.Deprecated('Use certificateSigningRequestListDescriptor instead')
const CertificateSigningRequestList$json = {
  '1': 'CertificateSigningRequestList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.certificates.v1beta1.CertificateSigningRequest', '10': 'items'},
  ],
};

/// Descriptor for `CertificateSigningRequestList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certificateSigningRequestListDescriptor = $convert.base64Decode(
    'Ch1DZXJ0aWZpY2F0ZVNpZ25pbmdSZXF1ZXN0TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW'
    '1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJJCgVpdGVtcxgC'
    'IAMoCzIzLmFwaS5jZXJ0aWZpY2F0ZXMudjFiZXRhMS5DZXJ0aWZpY2F0ZVNpZ25pbmdSZXF1ZX'
    'N0UgVpdGVtcw==');

@$core.Deprecated('Use certificateSigningRequestSpecDescriptor instead')
const CertificateSigningRequestSpec$json = {
  '1': 'CertificateSigningRequestSpec',
  '2': [
    {'1': 'request', '3': 1, '4': 1, '5': 12, '10': 'request'},
    {'1': 'signerName', '3': 7, '4': 1, '5': 9, '10': 'signerName'},
    {'1': 'expirationSeconds', '3': 8, '4': 1, '5': 5, '10': 'expirationSeconds'},
    {'1': 'usages', '3': 5, '4': 3, '5': 9, '10': 'usages'},
    {'1': 'username', '3': 2, '4': 1, '5': 9, '10': 'username'},
    {'1': 'uid', '3': 3, '4': 1, '5': 9, '10': 'uid'},
    {'1': 'groups', '3': 4, '4': 3, '5': 9, '10': 'groups'},
    {'1': 'extra', '3': 6, '4': 3, '5': 11, '6': '.api.certificates.v1beta1.CertificateSigningRequestSpec.ExtraEntry', '10': 'extra'},
  ],
  '3': [CertificateSigningRequestSpec_ExtraEntry$json],
};

@$core.Deprecated('Use certificateSigningRequestSpecDescriptor instead')
const CertificateSigningRequestSpec_ExtraEntry$json = {
  '1': 'ExtraEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.api.certificates.v1beta1.ExtraValue', '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CertificateSigningRequestSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certificateSigningRequestSpecDescriptor = $convert.base64Decode(
    'Ch1DZXJ0aWZpY2F0ZVNpZ25pbmdSZXF1ZXN0U3BlYxIYCgdyZXF1ZXN0GAEgASgMUgdyZXF1ZX'
    'N0Eh4KCnNpZ25lck5hbWUYByABKAlSCnNpZ25lck5hbWUSLAoRZXhwaXJhdGlvblNlY29uZHMY'
    'CCABKAVSEWV4cGlyYXRpb25TZWNvbmRzEhYKBnVzYWdlcxgFIAMoCVIGdXNhZ2VzEhoKCHVzZX'
    'JuYW1lGAIgASgJUgh1c2VybmFtZRIQCgN1aWQYAyABKAlSA3VpZBIWCgZncm91cHMYBCADKAlS'
    'Bmdyb3VwcxJYCgVleHRyYRgGIAMoCzJCLmFwaS5jZXJ0aWZpY2F0ZXMudjFiZXRhMS5DZXJ0aW'
    'ZpY2F0ZVNpZ25pbmdSZXF1ZXN0U3BlYy5FeHRyYUVudHJ5UgVleHRyYRpeCgpFeHRyYUVudHJ5'
    'EhAKA2tleRgBIAEoCVIDa2V5EjoKBXZhbHVlGAIgASgLMiQuYXBpLmNlcnRpZmljYXRlcy52MW'
    'JldGExLkV4dHJhVmFsdWVSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use certificateSigningRequestStatusDescriptor instead')
const CertificateSigningRequestStatus$json = {
  '1': 'CertificateSigningRequestStatus',
  '2': [
    {'1': 'conditions', '3': 1, '4': 3, '5': 11, '6': '.api.certificates.v1beta1.CertificateSigningRequestCondition', '10': 'conditions'},
    {'1': 'certificate', '3': 2, '4': 1, '5': 12, '10': 'certificate'},
  ],
};

/// Descriptor for `CertificateSigningRequestStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List certificateSigningRequestStatusDescriptor = $convert.base64Decode(
    'Ch9DZXJ0aWZpY2F0ZVNpZ25pbmdSZXF1ZXN0U3RhdHVzElwKCmNvbmRpdGlvbnMYASADKAsyPC'
    '5hcGkuY2VydGlmaWNhdGVzLnYxYmV0YTEuQ2VydGlmaWNhdGVTaWduaW5nUmVxdWVzdENvbmRp'
    'dGlvblIKY29uZGl0aW9ucxIgCgtjZXJ0aWZpY2F0ZRgCIAEoDFILY2VydGlmaWNhdGU=');

@$core.Deprecated('Use extraValueDescriptor instead')
const ExtraValue$json = {
  '1': 'ExtraValue',
  '2': [
    {'1': 'items', '3': 1, '4': 3, '5': 9, '10': 'items'},
  ],
};

/// Descriptor for `ExtraValue`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List extraValueDescriptor = $convert.base64Decode(
    'CgpFeHRyYVZhbHVlEhQKBWl0ZW1zGAEgAygJUgVpdGVtcw==');

