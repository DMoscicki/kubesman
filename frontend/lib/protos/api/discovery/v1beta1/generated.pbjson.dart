//
//  Generated code. Do not modify.
//  source: api/discovery/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use endpointDescriptor instead')
const Endpoint$json = {
  '1': 'Endpoint',
  '2': [
    {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
    {'1': 'conditions', '3': 2, '4': 1, '5': 11, '6': '.api.discovery.v1beta1.EndpointConditions', '10': 'conditions'},
    {'1': 'hostname', '3': 3, '4': 1, '5': 9, '10': 'hostname'},
    {'1': 'targetRef', '3': 4, '4': 1, '5': 11, '6': '.api.core.v1.ObjectReference', '10': 'targetRef'},
    {'1': 'topology', '3': 5, '4': 3, '5': 11, '6': '.api.discovery.v1beta1.Endpoint.TopologyEntry', '10': 'topology'},
    {'1': 'nodeName', '3': 6, '4': 1, '5': 9, '10': 'nodeName'},
    {'1': 'hints', '3': 7, '4': 1, '5': 11, '6': '.api.discovery.v1beta1.EndpointHints', '10': 'hints'},
  ],
  '3': [Endpoint_TopologyEntry$json],
};

@$core.Deprecated('Use endpointDescriptor instead')
const Endpoint_TopologyEntry$json = {
  '1': 'TopologyEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Endpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointDescriptor = $convert.base64Decode(
    'CghFbmRwb2ludBIcCglhZGRyZXNzZXMYASADKAlSCWFkZHJlc3NlcxJJCgpjb25kaXRpb25zGA'
    'IgASgLMikuYXBpLmRpc2NvdmVyeS52MWJldGExLkVuZHBvaW50Q29uZGl0aW9uc1IKY29uZGl0'
    'aW9ucxIaCghob3N0bmFtZRgDIAEoCVIIaG9zdG5hbWUSOgoJdGFyZ2V0UmVmGAQgASgLMhwuYX'
    'BpLmNvcmUudjEuT2JqZWN0UmVmZXJlbmNlUgl0YXJnZXRSZWYSSQoIdG9wb2xvZ3kYBSADKAsy'
    'LS5hcGkuZGlzY292ZXJ5LnYxYmV0YTEuRW5kcG9pbnQuVG9wb2xvZ3lFbnRyeVIIdG9wb2xvZ3'
    'kSGgoIbm9kZU5hbWUYBiABKAlSCG5vZGVOYW1lEjoKBWhpbnRzGAcgASgLMiQuYXBpLmRpc2Nv'
    'dmVyeS52MWJldGExLkVuZHBvaW50SGludHNSBWhpbnRzGjsKDVRvcG9sb2d5RW50cnkSEAoDa2'
    'V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use endpointConditionsDescriptor instead')
const EndpointConditions$json = {
  '1': 'EndpointConditions',
  '2': [
    {'1': 'ready', '3': 1, '4': 1, '5': 8, '10': 'ready'},
    {'1': 'serving', '3': 2, '4': 1, '5': 8, '10': 'serving'},
    {'1': 'terminating', '3': 3, '4': 1, '5': 8, '10': 'terminating'},
  ],
};

/// Descriptor for `EndpointConditions`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointConditionsDescriptor = $convert.base64Decode(
    'ChJFbmRwb2ludENvbmRpdGlvbnMSFAoFcmVhZHkYASABKAhSBXJlYWR5EhgKB3NlcnZpbmcYAi'
    'ABKAhSB3NlcnZpbmcSIAoLdGVybWluYXRpbmcYAyABKAhSC3Rlcm1pbmF0aW5n');

@$core.Deprecated('Use endpointHintsDescriptor instead')
const EndpointHints$json = {
  '1': 'EndpointHints',
  '2': [
    {'1': 'forZones', '3': 1, '4': 3, '5': 11, '6': '.api.discovery.v1beta1.ForZone', '10': 'forZones'},
  ],
};

/// Descriptor for `EndpointHints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointHintsDescriptor = $convert.base64Decode(
    'Cg1FbmRwb2ludEhpbnRzEjoKCGZvclpvbmVzGAEgAygLMh4uYXBpLmRpc2NvdmVyeS52MWJldG'
    'ExLkZvclpvbmVSCGZvclpvbmVz');

@$core.Deprecated('Use endpointPortDescriptor instead')
const EndpointPort$json = {
  '1': 'EndpointPort',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'protocol', '3': 2, '4': 1, '5': 9, '10': 'protocol'},
    {'1': 'port', '3': 3, '4': 1, '5': 5, '10': 'port'},
    {'1': 'appProtocol', '3': 4, '4': 1, '5': 9, '10': 'appProtocol'},
  ],
};

/// Descriptor for `EndpointPort`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointPortDescriptor = $convert.base64Decode(
    'CgxFbmRwb2ludFBvcnQSEgoEbmFtZRgBIAEoCVIEbmFtZRIaCghwcm90b2NvbBgCIAEoCVIIcH'
    'JvdG9jb2wSEgoEcG9ydBgDIAEoBVIEcG9ydBIgCgthcHBQcm90b2NvbBgEIAEoCVILYXBwUHJv'
    'dG9jb2w=');

@$core.Deprecated('Use endpointSliceDescriptor instead')
const EndpointSlice$json = {
  '1': 'EndpointSlice',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'addressType', '3': 4, '4': 1, '5': 9, '10': 'addressType'},
    {'1': 'endpoints', '3': 2, '4': 3, '5': 11, '6': '.api.discovery.v1beta1.Endpoint', '10': 'endpoints'},
    {'1': 'ports', '3': 3, '4': 3, '5': 11, '6': '.api.discovery.v1beta1.EndpointPort', '10': 'ports'},
  ],
};

/// Descriptor for `EndpointSlice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointSliceDescriptor = $convert.base64Decode(
    'Cg1FbmRwb2ludFNsaWNlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcG'
    'lzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESIAoLYWRkcmVzc1R5cGUYBCABKAlSC2Fk'
    'ZHJlc3NUeXBlEj0KCWVuZHBvaW50cxgCIAMoCzIfLmFwaS5kaXNjb3ZlcnkudjFiZXRhMS5Fbm'
    'Rwb2ludFIJZW5kcG9pbnRzEjkKBXBvcnRzGAMgAygLMiMuYXBpLmRpc2NvdmVyeS52MWJldGEx'
    'LkVuZHBvaW50UG9ydFIFcG9ydHM=');

@$core.Deprecated('Use endpointSliceListDescriptor instead')
const EndpointSliceList$json = {
  '1': 'EndpointSliceList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.discovery.v1beta1.EndpointSlice', '10': 'items'},
  ],
};

/// Descriptor for `EndpointSliceList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List endpointSliceListDescriptor = $convert.base64Decode(
    'ChFFbmRwb2ludFNsaWNlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2'
    'cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRI6CgVpdGVtcxgCIAMoCzIkLmFwaS5k'
    'aXNjb3ZlcnkudjFiZXRhMS5FbmRwb2ludFNsaWNlUgVpdGVtcw==');

@$core.Deprecated('Use forZoneDescriptor instead')
const ForZone$json = {
  '1': 'ForZone',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `ForZone`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forZoneDescriptor = $convert.base64Decode(
    'CgdGb3Jab25lEhIKBG5hbWUYASABKAlSBG5hbWU=');

