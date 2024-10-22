//
//  Generated code. Do not modify.
//  source: api/admissionregistration/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use auditAnnotationDescriptor instead')
const AuditAnnotation$json = {
  '1': 'AuditAnnotation',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'valueExpression', '3': 2, '4': 1, '5': 9, '10': 'valueExpression'},
  ],
};

/// Descriptor for `AuditAnnotation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List auditAnnotationDescriptor = $convert.base64Decode(
    'Cg9BdWRpdEFubm90YXRpb24SEAoDa2V5GAEgASgJUgNrZXkSKAoPdmFsdWVFeHByZXNzaW9uGA'
    'IgASgJUg92YWx1ZUV4cHJlc3Npb24=');

@$core.Deprecated('Use expressionWarningDescriptor instead')
const ExpressionWarning$json = {
  '1': 'ExpressionWarning',
  '2': [
    {'1': 'fieldRef', '3': 2, '4': 1, '5': 9, '10': 'fieldRef'},
    {'1': 'warning', '3': 3, '4': 1, '5': 9, '10': 'warning'},
  ],
};

/// Descriptor for `ExpressionWarning`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List expressionWarningDescriptor = $convert.base64Decode(
    'ChFFeHByZXNzaW9uV2FybmluZxIaCghmaWVsZFJlZhgCIAEoCVIIZmllbGRSZWYSGAoHd2Fybm'
    'luZxgDIAEoCVIHd2FybmluZw==');

@$core.Deprecated('Use matchConditionDescriptor instead')
const MatchCondition$json = {
  '1': 'MatchCondition',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'expression', '3': 2, '4': 1, '5': 9, '10': 'expression'},
  ],
};

/// Descriptor for `MatchCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchConditionDescriptor = $convert.base64Decode(
    'Cg5NYXRjaENvbmRpdGlvbhISCgRuYW1lGAEgASgJUgRuYW1lEh4KCmV4cHJlc3Npb24YAiABKA'
    'lSCmV4cHJlc3Npb24=');

@$core.Deprecated('Use matchResourcesDescriptor instead')
const MatchResources$json = {
  '1': 'MatchResources',
  '2': [
    {'1': 'namespaceSelector', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'namespaceSelector'},
    {'1': 'objectSelector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'objectSelector'},
    {'1': 'resourceRules', '3': 3, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.NamedRuleWithOperations', '10': 'resourceRules'},
    {'1': 'excludeResourceRules', '3': 4, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.NamedRuleWithOperations', '10': 'excludeResourceRules'},
    {'1': 'matchPolicy', '3': 7, '4': 1, '5': 9, '10': 'matchPolicy'},
  ],
};

/// Descriptor for `MatchResources`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchResourcesDescriptor = $convert.base64Decode(
    'Cg5NYXRjaFJlc291cmNlcxJaChFuYW1lc3BhY2VTZWxlY3RvchgBIAEoCzIsLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSEW5hbWVzcGFjZVNlbGVjdG9yElQK'
    'Dm9iamVjdFNlbGVjdG9yGAIgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTG'
    'FiZWxTZWxlY3RvclIOb2JqZWN0U2VsZWN0b3ISWwoNcmVzb3VyY2VSdWxlcxgDIAMoCzI1LmFw'
    'aS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjEuTmFtZWRSdWxlV2l0aE9wZXJhdGlvbnNSDXJlc2'
    '91cmNlUnVsZXMSaQoUZXhjbHVkZVJlc291cmNlUnVsZXMYBCADKAsyNS5hcGkuYWRtaXNzaW9u'
    'cmVnaXN0cmF0aW9uLnYxLk5hbWVkUnVsZVdpdGhPcGVyYXRpb25zUhRleGNsdWRlUmVzb3VyY2'
    'VSdWxlcxIgCgttYXRjaFBvbGljeRgHIAEoCVILbWF0Y2hQb2xpY3k=');

@$core.Deprecated('Use mutatingWebhookDescriptor instead')
const MutatingWebhook$json = {
  '1': 'MutatingWebhook',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'clientConfig', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.WebhookClientConfig', '10': 'clientConfig'},
    {'1': 'rules', '3': 3, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.RuleWithOperations', '10': 'rules'},
    {'1': 'failurePolicy', '3': 4, '4': 1, '5': 9, '10': 'failurePolicy'},
    {'1': 'matchPolicy', '3': 9, '4': 1, '5': 9, '10': 'matchPolicy'},
    {'1': 'namespaceSelector', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'namespaceSelector'},
    {'1': 'objectSelector', '3': 11, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'objectSelector'},
    {'1': 'sideEffects', '3': 6, '4': 1, '5': 9, '10': 'sideEffects'},
    {'1': 'timeoutSeconds', '3': 7, '4': 1, '5': 5, '10': 'timeoutSeconds'},
    {'1': 'admissionReviewVersions', '3': 8, '4': 3, '5': 9, '10': 'admissionReviewVersions'},
    {'1': 'reinvocationPolicy', '3': 10, '4': 1, '5': 9, '10': 'reinvocationPolicy'},
    {'1': 'matchConditions', '3': 12, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.MatchCondition', '10': 'matchConditions'},
  ],
};

/// Descriptor for `MutatingWebhook`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mutatingWebhookDescriptor = $convert.base64Decode(
    'Cg9NdXRhdGluZ1dlYmhvb2sSEgoEbmFtZRgBIAEoCVIEbmFtZRJVCgxjbGllbnRDb25maWcYAi'
    'ABKAsyMS5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLldlYmhvb2tDbGllbnRDb25maWdS'
    'DGNsaWVudENvbmZpZxJGCgVydWxlcxgDIAMoCzIwLmFwaS5hZG1pc3Npb25yZWdpc3RyYXRpb2'
    '4udjEuUnVsZVdpdGhPcGVyYXRpb25zUgVydWxlcxIkCg1mYWlsdXJlUG9saWN5GAQgASgJUg1m'
    'YWlsdXJlUG9saWN5EiAKC21hdGNoUG9saWN5GAkgASgJUgttYXRjaFBvbGljeRJaChFuYW1lc3'
    'BhY2VTZWxlY3RvchgFIAEoCzIsLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkxhYmVs'
    'U2VsZWN0b3JSEW5hbWVzcGFjZVNlbGVjdG9yElQKDm9iamVjdFNlbGVjdG9yGAsgASgLMiwuYX'
    'BpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGFiZWxTZWxlY3RvclIOb2JqZWN0U2VsZWN0'
    'b3ISIAoLc2lkZUVmZmVjdHMYBiABKAlSC3NpZGVFZmZlY3RzEiYKDnRpbWVvdXRTZWNvbmRzGA'
    'cgASgFUg50aW1lb3V0U2Vjb25kcxI4ChdhZG1pc3Npb25SZXZpZXdWZXJzaW9ucxgIIAMoCVIX'
    'YWRtaXNzaW9uUmV2aWV3VmVyc2lvbnMSLgoScmVpbnZvY2F0aW9uUG9saWN5GAogASgJUhJyZW'
    'ludm9jYXRpb25Qb2xpY3kSVgoPbWF0Y2hDb25kaXRpb25zGAwgAygLMiwuYXBpLmFkbWlzc2lv'
    'bnJlZ2lzdHJhdGlvbi52MS5NYXRjaENvbmRpdGlvblIPbWF0Y2hDb25kaXRpb25z');

@$core.Deprecated('Use mutatingWebhookConfigurationDescriptor instead')
const MutatingWebhookConfiguration$json = {
  '1': 'MutatingWebhookConfiguration',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'Webhooks', '3': 2, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.MutatingWebhook', '10': 'Webhooks'},
  ],
};

/// Descriptor for `MutatingWebhookConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mutatingWebhookConfigurationDescriptor = $convert.base64Decode(
    'ChxNdXRhdGluZ1dlYmhvb2tDb25maWd1cmF0aW9uEkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbW'
    'FjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESSQoIV2ViaG9v'
    'a3MYAiADKAsyLS5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLk11dGF0aW5nV2ViaG9va1'
    'IIV2ViaG9va3M=');

@$core.Deprecated('Use mutatingWebhookConfigurationListDescriptor instead')
const MutatingWebhookConfigurationList$json = {
  '1': 'MutatingWebhookConfigurationList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.MutatingWebhookConfiguration', '10': 'items'},
  ],
};

/// Descriptor for `MutatingWebhookConfigurationList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mutatingWebhookConfigurationListDescriptor = $convert.base64Decode(
    'CiBNdXRhdGluZ1dlYmhvb2tDb25maWd1cmF0aW9uTGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLm'
    'FwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJQCgVpdGVt'
    'cxgCIAMoCzI6LmFwaS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjEuTXV0YXRpbmdXZWJob29rQ2'
    '9uZmlndXJhdGlvblIFaXRlbXM=');

@$core.Deprecated('Use namedRuleWithOperationsDescriptor instead')
const NamedRuleWithOperations$json = {
  '1': 'NamedRuleWithOperations',
  '2': [
    {'1': 'resourceNames', '3': 1, '4': 3, '5': 9, '10': 'resourceNames'},
    {'1': 'ruleWithOperations', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.RuleWithOperations', '10': 'ruleWithOperations'},
  ],
};

/// Descriptor for `NamedRuleWithOperations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List namedRuleWithOperationsDescriptor = $convert.base64Decode(
    'ChdOYW1lZFJ1bGVXaXRoT3BlcmF0aW9ucxIkCg1yZXNvdXJjZU5hbWVzGAEgAygJUg1yZXNvdX'
    'JjZU5hbWVzEmAKEnJ1bGVXaXRoT3BlcmF0aW9ucxgCIAEoCzIwLmFwaS5hZG1pc3Npb25yZWdp'
    'c3RyYXRpb24udjEuUnVsZVdpdGhPcGVyYXRpb25zUhJydWxlV2l0aE9wZXJhdGlvbnM=');

@$core.Deprecated('Use paramKindDescriptor instead')
const ParamKind$json = {
  '1': 'ParamKind',
  '2': [
    {'1': 'apiVersion', '3': 1, '4': 1, '5': 9, '10': 'apiVersion'},
    {'1': 'kind', '3': 2, '4': 1, '5': 9, '10': 'kind'},
  ],
};

/// Descriptor for `ParamKind`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramKindDescriptor = $convert.base64Decode(
    'CglQYXJhbUtpbmQSHgoKYXBpVmVyc2lvbhgBIAEoCVIKYXBpVmVyc2lvbhISCgRraW5kGAIgAS'
    'gJUgRraW5k');

@$core.Deprecated('Use paramRefDescriptor instead')
const ParamRef$json = {
  '1': 'ParamRef',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'namespace', '3': 2, '4': 1, '5': 9, '10': 'namespace'},
    {'1': 'selector', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'parameterNotFoundAction', '3': 4, '4': 1, '5': 9, '10': 'parameterNotFoundAction'},
  ],
};

/// Descriptor for `ParamRef`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paramRefDescriptor = $convert.base64Decode(
    'CghQYXJhbVJlZhISCgRuYW1lGAEgASgJUgRuYW1lEhwKCW5hbWVzcGFjZRgCIAEoCVIJbmFtZX'
    'NwYWNlEkgKCHNlbGVjdG9yGAMgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEu'
    'TGFiZWxTZWxlY3RvclIIc2VsZWN0b3ISOAoXcGFyYW1ldGVyTm90Rm91bmRBY3Rpb24YBCABKA'
    'lSF3BhcmFtZXRlck5vdEZvdW5kQWN0aW9u');

@$core.Deprecated('Use ruleDescriptor instead')
const Rule$json = {
  '1': 'Rule',
  '2': [
    {'1': 'apiGroups', '3': 1, '4': 3, '5': 9, '10': 'apiGroups'},
    {'1': 'apiVersions', '3': 2, '4': 3, '5': 9, '10': 'apiVersions'},
    {'1': 'resources', '3': 3, '4': 3, '5': 9, '10': 'resources'},
    {'1': 'scope', '3': 4, '4': 1, '5': 9, '10': 'scope'},
  ],
};

/// Descriptor for `Rule`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ruleDescriptor = $convert.base64Decode(
    'CgRSdWxlEhwKCWFwaUdyb3VwcxgBIAMoCVIJYXBpR3JvdXBzEiAKC2FwaVZlcnNpb25zGAIgAy'
    'gJUgthcGlWZXJzaW9ucxIcCglyZXNvdXJjZXMYAyADKAlSCXJlc291cmNlcxIUCgVzY29wZRgE'
    'IAEoCVIFc2NvcGU=');

@$core.Deprecated('Use ruleWithOperationsDescriptor instead')
const RuleWithOperations$json = {
  '1': 'RuleWithOperations',
  '2': [
    {'1': 'operations', '3': 1, '4': 3, '5': 9, '10': 'operations'},
    {'1': 'rule', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.Rule', '10': 'rule'},
  ],
};

/// Descriptor for `RuleWithOperations`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ruleWithOperationsDescriptor = $convert.base64Decode(
    'ChJSdWxlV2l0aE9wZXJhdGlvbnMSHgoKb3BlcmF0aW9ucxgBIAMoCVIKb3BlcmF0aW9ucxI2Cg'
    'RydWxlGAIgASgLMiIuYXBpLmFkbWlzc2lvbnJlZ2lzdHJhdGlvbi52MS5SdWxlUgRydWxl');

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

@$core.Deprecated('Use typeCheckingDescriptor instead')
const TypeChecking$json = {
  '1': 'TypeChecking',
  '2': [
    {'1': 'expressionWarnings', '3': 1, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.ExpressionWarning', '10': 'expressionWarnings'},
  ],
};

/// Descriptor for `TypeChecking`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeCheckingDescriptor = $convert.base64Decode(
    'CgxUeXBlQ2hlY2tpbmcSXwoSZXhwcmVzc2lvbldhcm5pbmdzGAEgAygLMi8uYXBpLmFkbWlzc2'
    'lvbnJlZ2lzdHJhdGlvbi52MS5FeHByZXNzaW9uV2FybmluZ1ISZXhwcmVzc2lvbldhcm5pbmdz');

@$core.Deprecated('Use validatingAdmissionPolicyDescriptor instead')
const ValidatingAdmissionPolicy$json = {
  '1': 'ValidatingAdmissionPolicy',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.ValidatingAdmissionPolicySpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.ValidatingAdmissionPolicyStatus', '10': 'status'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyDescriptor = $convert.base64Decode(
    'ChlWYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESTwoEc3BlYxgCIAEo'
    'CzI7LmFwaS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjEuVmFsaWRhdGluZ0FkbWlzc2lvblBvbG'
    'ljeVNwZWNSBHNwZWMSVQoGc3RhdHVzGAMgASgLMj0uYXBpLmFkbWlzc2lvbnJlZ2lzdHJhdGlv'
    'bi52MS5WYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use validatingAdmissionPolicyBindingDescriptor instead')
const ValidatingAdmissionPolicyBinding$json = {
  '1': 'ValidatingAdmissionPolicyBinding',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.ValidatingAdmissionPolicyBindingSpec', '10': 'spec'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyBindingDescriptor = $convert.base64Decode(
    'CiBWYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5QmluZGluZxJFCghtZXRhZGF0YRgBIAEoCzIpLm'
    'FwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhElYKBHNw'
    'ZWMYAiABKAsyQi5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLlZhbGlkYXRpbmdBZG1pc3'
    'Npb25Qb2xpY3lCaW5kaW5nU3BlY1IEc3BlYw==');

@$core.Deprecated('Use validatingAdmissionPolicyBindingListDescriptor instead')
const ValidatingAdmissionPolicyBindingList$json = {
  '1': 'ValidatingAdmissionPolicyBindingList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.ValidatingAdmissionPolicyBinding', '10': 'items'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyBindingList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyBindingListDescriptor = $convert.base64Decode(
    'CiRWYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5QmluZGluZ0xpc3QSQwoIbWV0YWRhdGEYASABKA'
    'syJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESVAoF'
    'aXRlbXMYAiADKAsyPi5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLlZhbGlkYXRpbmdBZG'
    '1pc3Npb25Qb2xpY3lCaW5kaW5nUgVpdGVtcw==');

@$core.Deprecated('Use validatingAdmissionPolicyBindingSpecDescriptor instead')
const ValidatingAdmissionPolicyBindingSpec$json = {
  '1': 'ValidatingAdmissionPolicyBindingSpec',
  '2': [
    {'1': 'policyName', '3': 1, '4': 1, '5': 9, '10': 'policyName'},
    {'1': 'paramRef', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.ParamRef', '10': 'paramRef'},
    {'1': 'matchResources', '3': 3, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.MatchResources', '10': 'matchResources'},
    {'1': 'validationActions', '3': 4, '4': 3, '5': 9, '10': 'validationActions'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyBindingSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyBindingSpecDescriptor = $convert.base64Decode(
    'CiRWYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5QmluZGluZ1NwZWMSHgoKcG9saWN5TmFtZRgBIA'
    'EoCVIKcG9saWN5TmFtZRJCCghwYXJhbVJlZhgCIAEoCzImLmFwaS5hZG1pc3Npb25yZWdpc3Ry'
    'YXRpb24udjEuUGFyYW1SZWZSCHBhcmFtUmVmElQKDm1hdGNoUmVzb3VyY2VzGAMgASgLMiwuYX'
    'BpLmFkbWlzc2lvbnJlZ2lzdHJhdGlvbi52MS5NYXRjaFJlc291cmNlc1IObWF0Y2hSZXNvdXJj'
    'ZXMSLAoRdmFsaWRhdGlvbkFjdGlvbnMYBCADKAlSEXZhbGlkYXRpb25BY3Rpb25z');

@$core.Deprecated('Use validatingAdmissionPolicyListDescriptor instead')
const ValidatingAdmissionPolicyList$json = {
  '1': 'ValidatingAdmissionPolicyList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.ValidatingAdmissionPolicy', '10': 'items'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyListDescriptor = $convert.base64Decode(
    'Ch1WYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW'
    '1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJNCgVpdGVtcxgC'
    'IAMoCzI3LmFwaS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjEuVmFsaWRhdGluZ0FkbWlzc2lvbl'
    'BvbGljeVIFaXRlbXM=');

@$core.Deprecated('Use validatingAdmissionPolicySpecDescriptor instead')
const ValidatingAdmissionPolicySpec$json = {
  '1': 'ValidatingAdmissionPolicySpec',
  '2': [
    {'1': 'paramKind', '3': 1, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.ParamKind', '10': 'paramKind'},
    {'1': 'matchConstraints', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.MatchResources', '10': 'matchConstraints'},
    {'1': 'validations', '3': 3, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.Validation', '10': 'validations'},
    {'1': 'failurePolicy', '3': 4, '4': 1, '5': 9, '10': 'failurePolicy'},
    {'1': 'auditAnnotations', '3': 5, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.AuditAnnotation', '10': 'auditAnnotations'},
    {'1': 'matchConditions', '3': 6, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.MatchCondition', '10': 'matchConditions'},
    {'1': 'variables', '3': 7, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.Variable', '10': 'variables'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicySpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicySpecDescriptor = $convert.base64Decode(
    'Ch1WYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5U3BlYxJFCglwYXJhbUtpbmQYASABKAsyJy5hcG'
    'kuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLlBhcmFtS2luZFIJcGFyYW1LaW5kElgKEG1hdGNo'
    'Q29uc3RyYWludHMYAiABKAsyLC5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLk1hdGNoUm'
    'Vzb3VyY2VzUhBtYXRjaENvbnN0cmFpbnRzEkoKC3ZhbGlkYXRpb25zGAMgAygLMiguYXBpLmFk'
    'bWlzc2lvbnJlZ2lzdHJhdGlvbi52MS5WYWxpZGF0aW9uUgt2YWxpZGF0aW9ucxIkCg1mYWlsdX'
    'JlUG9saWN5GAQgASgJUg1mYWlsdXJlUG9saWN5ElkKEGF1ZGl0QW5ub3RhdGlvbnMYBSADKAsy'
    'LS5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLkF1ZGl0QW5ub3RhdGlvblIQYXVkaXRBbm'
    '5vdGF0aW9ucxJWCg9tYXRjaENvbmRpdGlvbnMYBiADKAsyLC5hcGkuYWRtaXNzaW9ucmVnaXN0'
    'cmF0aW9uLnYxLk1hdGNoQ29uZGl0aW9uUg9tYXRjaENvbmRpdGlvbnMSRAoJdmFyaWFibGVzGA'
    'cgAygLMiYuYXBpLmFkbWlzc2lvbnJlZ2lzdHJhdGlvbi52MS5WYXJpYWJsZVIJdmFyaWFibGVz');

@$core.Deprecated('Use validatingAdmissionPolicyStatusDescriptor instead')
const ValidatingAdmissionPolicyStatus$json = {
  '1': 'ValidatingAdmissionPolicyStatus',
  '2': [
    {'1': 'observedGeneration', '3': 1, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'typeChecking', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.TypeChecking', '10': 'typeChecking'},
    {'1': 'conditions', '3': 3, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Condition', '10': 'conditions'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyStatusDescriptor = $convert.base64Decode(
    'Ch9WYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5U3RhdHVzEi4KEm9ic2VydmVkR2VuZXJhdGlvbh'
    'gBIAEoA1ISb2JzZXJ2ZWRHZW5lcmF0aW9uEk4KDHR5cGVDaGVja2luZxgCIAEoCzIqLmFwaS5h'
    'ZG1pc3Npb25yZWdpc3RyYXRpb24udjEuVHlwZUNoZWNraW5nUgx0eXBlQ2hlY2tpbmcSSAoKY2'
    '9uZGl0aW9ucxgDIAMoCzIoLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkNvbmRpdGlv'
    'blIKY29uZGl0aW9ucw==');

@$core.Deprecated('Use validatingWebhookDescriptor instead')
const ValidatingWebhook$json = {
  '1': 'ValidatingWebhook',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'clientConfig', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.WebhookClientConfig', '10': 'clientConfig'},
    {'1': 'rules', '3': 3, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.RuleWithOperations', '10': 'rules'},
    {'1': 'failurePolicy', '3': 4, '4': 1, '5': 9, '10': 'failurePolicy'},
    {'1': 'matchPolicy', '3': 9, '4': 1, '5': 9, '10': 'matchPolicy'},
    {'1': 'namespaceSelector', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'namespaceSelector'},
    {'1': 'objectSelector', '3': 10, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'objectSelector'},
    {'1': 'sideEffects', '3': 6, '4': 1, '5': 9, '10': 'sideEffects'},
    {'1': 'timeoutSeconds', '3': 7, '4': 1, '5': 5, '10': 'timeoutSeconds'},
    {'1': 'admissionReviewVersions', '3': 8, '4': 3, '5': 9, '10': 'admissionReviewVersions'},
    {'1': 'matchConditions', '3': 11, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.MatchCondition', '10': 'matchConditions'},
  ],
};

/// Descriptor for `ValidatingWebhook`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingWebhookDescriptor = $convert.base64Decode(
    'ChFWYWxpZGF0aW5nV2ViaG9vaxISCgRuYW1lGAEgASgJUgRuYW1lElUKDGNsaWVudENvbmZpZx'
    'gCIAEoCzIxLmFwaS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjEuV2ViaG9va0NsaWVudENvbmZp'
    'Z1IMY2xpZW50Q29uZmlnEkYKBXJ1bGVzGAMgAygLMjAuYXBpLmFkbWlzc2lvbnJlZ2lzdHJhdG'
    'lvbi52MS5SdWxlV2l0aE9wZXJhdGlvbnNSBXJ1bGVzEiQKDWZhaWx1cmVQb2xpY3kYBCABKAlS'
    'DWZhaWx1cmVQb2xpY3kSIAoLbWF0Y2hQb2xpY3kYCSABKAlSC21hdGNoUG9saWN5EloKEW5hbW'
    'VzcGFjZVNlbGVjdG9yGAUgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGFi'
    'ZWxTZWxlY3RvclIRbmFtZXNwYWNlU2VsZWN0b3ISVAoOb2JqZWN0U2VsZWN0b3IYCiABKAsyLC'
    '5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG9yUg5vYmplY3RTZWxl'
    'Y3RvchIgCgtzaWRlRWZmZWN0cxgGIAEoCVILc2lkZUVmZmVjdHMSJgoOdGltZW91dFNlY29uZH'
    'MYByABKAVSDnRpbWVvdXRTZWNvbmRzEjgKF2FkbWlzc2lvblJldmlld1ZlcnNpb25zGAggAygJ'
    'UhdhZG1pc3Npb25SZXZpZXdWZXJzaW9ucxJWCg9tYXRjaENvbmRpdGlvbnMYCyADKAsyLC5hcG'
    'kuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLk1hdGNoQ29uZGl0aW9uUg9tYXRjaENvbmRpdGlv'
    'bnM=');

@$core.Deprecated('Use validatingWebhookConfigurationDescriptor instead')
const ValidatingWebhookConfiguration$json = {
  '1': 'ValidatingWebhookConfiguration',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'Webhooks', '3': 2, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.ValidatingWebhook', '10': 'Webhooks'},
  ],
};

/// Descriptor for `ValidatingWebhookConfiguration`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingWebhookConfigurationDescriptor = $convert.base64Decode(
    'Ch5WYWxpZGF0aW5nV2ViaG9va0NvbmZpZ3VyYXRpb24SRQoIbWV0YWRhdGEYASABKAsyKS5hcG'
    'ltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRJLCghXZWJo'
    'b29rcxgCIAMoCzIvLmFwaS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjEuVmFsaWRhdGluZ1dlYm'
    'hvb2tSCFdlYmhvb2tz');

@$core.Deprecated('Use validatingWebhookConfigurationListDescriptor instead')
const ValidatingWebhookConfigurationList$json = {
  '1': 'ValidatingWebhookConfigurationList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.admissionregistration.v1.ValidatingWebhookConfiguration', '10': 'items'},
  ],
};

/// Descriptor for `ValidatingWebhookConfigurationList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingWebhookConfigurationListDescriptor = $convert.base64Decode(
    'CiJWYWxpZGF0aW5nV2ViaG9va0NvbmZpZ3VyYXRpb25MaXN0EkMKCG1ldGFkYXRhGAEgASgLMi'
    'cuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhElIKBWl0'
    'ZW1zGAIgAygLMjwuYXBpLmFkbWlzc2lvbnJlZ2lzdHJhdGlvbi52MS5WYWxpZGF0aW5nV2ViaG'
    '9va0NvbmZpZ3VyYXRpb25SBWl0ZW1z');

@$core.Deprecated('Use validationDescriptor instead')
const Validation$json = {
  '1': 'Validation',
  '2': [
    {'1': 'Expression', '3': 1, '4': 1, '5': 9, '10': 'Expression'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
    {'1': 'reason', '3': 3, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'messageExpression', '3': 4, '4': 1, '5': 9, '10': 'messageExpression'},
  ],
};

/// Descriptor for `Validation`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validationDescriptor = $convert.base64Decode(
    'CgpWYWxpZGF0aW9uEh4KCkV4cHJlc3Npb24YASABKAlSCkV4cHJlc3Npb24SGAoHbWVzc2FnZR'
    'gCIAEoCVIHbWVzc2FnZRIWCgZyZWFzb24YAyABKAlSBnJlYXNvbhIsChFtZXNzYWdlRXhwcmVz'
    'c2lvbhgEIAEoCVIRbWVzc2FnZUV4cHJlc3Npb24=');

@$core.Deprecated('Use variableDescriptor instead')
const Variable$json = {
  '1': 'Variable',
  '2': [
    {'1': 'Name', '3': 1, '4': 1, '5': 9, '10': 'Name'},
    {'1': 'Expression', '3': 2, '4': 1, '5': 9, '10': 'Expression'},
  ],
};

/// Descriptor for `Variable`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List variableDescriptor = $convert.base64Decode(
    'CghWYXJpYWJsZRISCgROYW1lGAEgASgJUgROYW1lEh4KCkV4cHJlc3Npb24YAiABKAlSCkV4cH'
    'Jlc3Npb24=');

@$core.Deprecated('Use webhookClientConfigDescriptor instead')
const WebhookClientConfig$json = {
  '1': 'WebhookClientConfig',
  '2': [
    {'1': 'url', '3': 3, '4': 1, '5': 9, '10': 'url'},
    {'1': 'service', '3': 1, '4': 1, '5': 11, '6': '.api.admissionregistration.v1.ServiceReference', '10': 'service'},
    {'1': 'caBundle', '3': 2, '4': 1, '5': 12, '10': 'caBundle'},
  ],
};

/// Descriptor for `WebhookClientConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List webhookClientConfigDescriptor = $convert.base64Decode(
    'ChNXZWJob29rQ2xpZW50Q29uZmlnEhAKA3VybBgDIAEoCVIDdXJsEkgKB3NlcnZpY2UYASABKA'
    'syLi5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxLlNlcnZpY2VSZWZlcmVuY2VSB3NlcnZp'
    'Y2USGgoIY2FCdW5kbGUYAiABKAxSCGNhQnVuZGxl');

