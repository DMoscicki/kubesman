//
//  Generated code. Do not modify.
//  source: api/rbac/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use aggregationRuleDescriptor instead')
const AggregationRule$json = {
  '1': 'AggregationRule',
  '2': [
    {'1': 'clusterRoleSelectors', '3': 1, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'clusterRoleSelectors'},
  ],
};

/// Descriptor for `AggregationRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List aggregationRuleDescriptor = $convert.base64Decode(
    'Cg9BZ2dyZWdhdGlvblJ1bGUSYAoUY2x1c3RlclJvbGVTZWxlY3RvcnMYASADKAsyLC5hcGltYW'
    'NoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG9yUhRjbHVzdGVyUm9sZVNlbGVj'
    'dG9ycw==');

@$core.Deprecated('Use clusterRoleDescriptor instead')
const ClusterRole$json = {
  '1': 'ClusterRole',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'rules', '3': 2, '4': 3, '5': 11, '6': '.api.rbac.v1.PolicyRule', '10': 'rules'},
    {'1': 'aggregationRule', '3': 3, '4': 1, '5': 11, '6': '.api.rbac.v1.AggregationRule', '10': 'aggregationRule'},
  ],
};

/// Descriptor for `ClusterRole`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterRoleDescriptor = $convert.base64Decode(
    'CgtDbHVzdGVyUm9sZRJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEi0KBXJ1bGVzGAIgAygLMhcuYXBpLnJiYWMu'
    'djEuUG9saWN5UnVsZVIFcnVsZXMSRgoPYWdncmVnYXRpb25SdWxlGAMgASgLMhwuYXBpLnJiYW'
    'MudjEuQWdncmVnYXRpb25SdWxlUg9hZ2dyZWdhdGlvblJ1bGU=');

@$core.Deprecated('Use clusterRoleBindingDescriptor instead')
const ClusterRoleBinding$json = {
  '1': 'ClusterRoleBinding',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'subjects', '3': 2, '4': 3, '5': 11, '6': '.api.rbac.v1.Subject', '10': 'subjects'},
    {'1': 'roleRef', '3': 3, '4': 1, '5': 11, '6': '.api.rbac.v1.RoleRef', '10': 'roleRef'},
  ],
};

/// Descriptor for `ClusterRoleBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterRoleBindingDescriptor = $convert.base64Decode(
    'ChJDbHVzdGVyUm9sZUJpbmRpbmcSRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucG'
    'tnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRIwCghzdWJqZWN0cxgCIAMoCzIU'
    'LmFwaS5yYmFjLnYxLlN1YmplY3RSCHN1YmplY3RzEi4KB3JvbGVSZWYYAyABKAsyFC5hcGkucm'
    'JhYy52MS5Sb2xlUmVmUgdyb2xlUmVm');

@$core.Deprecated('Use clusterRoleBindingListDescriptor instead')
const ClusterRoleBindingList$json = {
  '1': 'ClusterRoleBindingList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.rbac.v1.ClusterRoleBinding', '10': 'items'},
  ],
};

/// Descriptor for `ClusterRoleBindingList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterRoleBindingListDescriptor = $convert.base64Decode(
    'ChZDbHVzdGVyUm9sZUJpbmRpbmdMaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjUKBWl0ZW1zGAIgAygLMh8u'
    'YXBpLnJiYWMudjEuQ2x1c3RlclJvbGVCaW5kaW5nUgVpdGVtcw==');

@$core.Deprecated('Use clusterRoleListDescriptor instead')
const ClusterRoleList$json = {
  '1': 'ClusterRoleList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.rbac.v1.ClusterRole', '10': 'items'},
  ],
};

/// Descriptor for `ClusterRoleList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List clusterRoleListDescriptor = $convert.base64Decode(
    'Cg9DbHVzdGVyUm9sZUxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESLgoFaXRlbXMYAiADKAsyGC5hcGkucmJh'
    'Yy52MS5DbHVzdGVyUm9sZVIFaXRlbXM=');

@$core.Deprecated('Use policyRuleDescriptor instead')
const PolicyRule$json = {
  '1': 'PolicyRule',
  '2': [
    {'1': 'verbs', '3': 1, '4': 3, '5': 9, '10': 'verbs'},
    {'1': 'apiGroups', '3': 2, '4': 3, '5': 9, '10': 'apiGroups'},
    {'1': 'resources', '3': 3, '4': 3, '5': 9, '10': 'resources'},
    {'1': 'resourceNames', '3': 4, '4': 3, '5': 9, '10': 'resourceNames'},
    {'1': 'nonResourceURLs', '3': 5, '4': 3, '5': 9, '10': 'nonResourceURLs'},
  ],
};

/// Descriptor for `PolicyRule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyRuleDescriptor = $convert.base64Decode(
    'CgpQb2xpY3lSdWxlEhQKBXZlcmJzGAEgAygJUgV2ZXJicxIcCglhcGlHcm91cHMYAiADKAlSCW'
    'FwaUdyb3VwcxIcCglyZXNvdXJjZXMYAyADKAlSCXJlc291cmNlcxIkCg1yZXNvdXJjZU5hbWVz'
    'GAQgAygJUg1yZXNvdXJjZU5hbWVzEigKD25vblJlc291cmNlVVJMcxgFIAMoCVIPbm9uUmVzb3'
    'VyY2VVUkxz');

@$core.Deprecated('Use roleDescriptor instead')
const Role$json = {
  '1': 'Role',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'rules', '3': 2, '4': 3, '5': 11, '6': '.api.rbac.v1.PolicyRule', '10': 'rules'},
  ],
};

/// Descriptor for `Role`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleDescriptor = $convert.base64Decode(
    'CgRSb2xlEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudj'
    'EuT2JqZWN0TWV0YVIIbWV0YWRhdGESLQoFcnVsZXMYAiADKAsyFy5hcGkucmJhYy52MS5Qb2xp'
    'Y3lSdWxlUgVydWxlcw==');

@$core.Deprecated('Use roleBindingDescriptor instead')
const RoleBinding$json = {
  '1': 'RoleBinding',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'subjects', '3': 2, '4': 3, '5': 11, '6': '.api.rbac.v1.Subject', '10': 'subjects'},
    {'1': 'roleRef', '3': 3, '4': 1, '5': 11, '6': '.api.rbac.v1.RoleRef', '10': 'roleRef'},
  ],
};

/// Descriptor for `RoleBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleBindingDescriptor = $convert.base64Decode(
    'CgtSb2xlQmluZGluZxJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjAKCHN1YmplY3RzGAIgAygLMhQuYXBpLnJi'
    'YWMudjEuU3ViamVjdFIIc3ViamVjdHMSLgoHcm9sZVJlZhgDIAEoCzIULmFwaS5yYmFjLnYxLl'
    'JvbGVSZWZSB3JvbGVSZWY=');

@$core.Deprecated('Use roleBindingListDescriptor instead')
const RoleBindingList$json = {
  '1': 'RoleBindingList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.rbac.v1.RoleBinding', '10': 'items'},
  ],
};

/// Descriptor for `RoleBindingList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleBindingListDescriptor = $convert.base64Decode(
    'Cg9Sb2xlQmluZGluZ0xpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESLgoFaXRlbXMYAiADKAsyGC5hcGkucmJh'
    'Yy52MS5Sb2xlQmluZGluZ1IFaXRlbXM=');

@$core.Deprecated('Use roleListDescriptor instead')
const RoleList$json = {
  '1': 'RoleList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.rbac.v1.Role', '10': 'items'},
  ],
};

/// Descriptor for `RoleList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleListDescriptor = $convert.base64Decode(
    'CghSb2xlTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZX'
    'RhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRInCgVpdGVtcxgCIAMoCzIRLmFwaS5yYmFjLnYxLlJv'
    'bGVSBWl0ZW1z');

@$core.Deprecated('Use roleRefDescriptor instead')
const RoleRef$json = {
  '1': 'RoleRef',
  '2': [
    {'1': 'apiGroup', '3': 1, '4': 1, '5': 9, '10': 'apiGroup'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
  ],
};

/// Descriptor for `RoleRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List roleRefDescriptor = $convert.base64Decode(
    'CgdSb2xlUmVmEhoKCGFwaUdyb3VwGAEgASgJUghhcGlHcm91cBISCgRraW5kGAIgASgJUgRraW'
    '5kEhIKBG5hbWUYAyABKAlSBG5hbWU=');

@$core.Deprecated('Use subjectDescriptor instead')
const Subject$json = {
  '1': 'Subject',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'apiGroup', '3': 2, '4': 1, '5': 9, '10': 'apiGroup'},
    {'1': 'name', '3': 3, '4': 1, '5': 9, '10': 'name'},
    {'1': 'namespace', '3': 4, '4': 1, '5': 9, '10': 'namespace'},
  ],
};

/// Descriptor for `Subject`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subjectDescriptor = $convert.base64Decode(
    'CgdTdWJqZWN0EhIKBGtpbmQYASABKAlSBGtpbmQSGgoIYXBpR3JvdXAYAiABKAlSCGFwaUdyb3'
    'VwEhIKBG5hbWUYAyABKAlSBG5hbWUSHAoJbmFtZXNwYWNlGAQgASgJUgluYW1lc3BhY2U=');

