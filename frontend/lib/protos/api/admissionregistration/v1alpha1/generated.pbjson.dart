//
//  Generated code. Do not modify.
//  source: api/admissionregistration/v1alpha1/generated.proto
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
    {'1': 'resourceRules', '3': 3, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.NamedRuleWithOperations', '10': 'resourceRules'},
    {'1': 'excludeResourceRules', '3': 4, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.NamedRuleWithOperations', '10': 'excludeResourceRules'},
    {'1': 'matchPolicy', '3': 7, '4': 1, '5': 9, '10': 'matchPolicy'},
  ],
};

/// Descriptor for `MatchResources`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List matchResourcesDescriptor = $convert.base64Decode(
    'Cg5NYXRjaFJlc291cmNlcxJaChFuYW1lc3BhY2VTZWxlY3RvchgBIAEoCzIsLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSEW5hbWVzcGFjZVNlbGVjdG9yElQK'
    'Dm9iamVjdFNlbGVjdG9yGAIgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTG'
    'FiZWxTZWxlY3RvclIOb2JqZWN0U2VsZWN0b3ISYQoNcmVzb3VyY2VSdWxlcxgDIAMoCzI7LmFw'
    'aS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjFhbHBoYTEuTmFtZWRSdWxlV2l0aE9wZXJhdGlvbn'
    'NSDXJlc291cmNlUnVsZXMSbwoUZXhjbHVkZVJlc291cmNlUnVsZXMYBCADKAsyOy5hcGkuYWRt'
    'aXNzaW9ucmVnaXN0cmF0aW9uLnYxYWxwaGExLk5hbWVkUnVsZVdpdGhPcGVyYXRpb25zUhRleG'
    'NsdWRlUmVzb3VyY2VSdWxlcxIgCgttYXRjaFBvbGljeRgHIAEoCVILbWF0Y2hQb2xpY3k=');

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

@$core.Deprecated('Use typeCheckingDescriptor instead')
const TypeChecking$json = {
  '1': 'TypeChecking',
  '2': [
    {'1': 'expressionWarnings', '3': 1, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.ExpressionWarning', '10': 'expressionWarnings'},
  ],
};

/// Descriptor for `TypeChecking`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List typeCheckingDescriptor = $convert.base64Decode(
    'CgxUeXBlQ2hlY2tpbmcSZQoSZXhwcmVzc2lvbldhcm5pbmdzGAEgAygLMjUuYXBpLmFkbWlzc2'
    'lvbnJlZ2lzdHJhdGlvbi52MWFscGhhMS5FeHByZXNzaW9uV2FybmluZ1ISZXhwcmVzc2lvbldh'
    'cm5pbmdz');

@$core.Deprecated('Use validatingAdmissionPolicyDescriptor instead')
const ValidatingAdmissionPolicy$json = {
  '1': 'ValidatingAdmissionPolicy',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1alpha1.ValidatingAdmissionPolicySpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.admissionregistration.v1alpha1.ValidatingAdmissionPolicyStatus', '10': 'status'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyDescriptor = $convert.base64Decode(
    'ChlWYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaG'
    'luZXJ5LnBrZy5hcGlzLm1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESVQoEc3BlYxgCIAEo'
    'CzJBLmFwaS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjFhbHBoYTEuVmFsaWRhdGluZ0FkbWlzc2'
    'lvblBvbGljeVNwZWNSBHNwZWMSWwoGc3RhdHVzGAMgASgLMkMuYXBpLmFkbWlzc2lvbnJlZ2lz'
    'dHJhdGlvbi52MWFscGhhMS5WYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5U3RhdHVzUgZzdGF0dX'
    'M=');

@$core.Deprecated('Use validatingAdmissionPolicyBindingDescriptor instead')
const ValidatingAdmissionPolicyBinding$json = {
  '1': 'ValidatingAdmissionPolicyBinding',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1alpha1.ValidatingAdmissionPolicyBindingSpec', '10': 'spec'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyBinding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyBindingDescriptor = $convert.base64Decode(
    'CiBWYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5QmluZGluZxJFCghtZXRhZGF0YRgBIAEoCzIpLm'
    'FwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhElwKBHNw'
    'ZWMYAiABKAsySC5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxYWxwaGExLlZhbGlkYXRpbm'
    'dBZG1pc3Npb25Qb2xpY3lCaW5kaW5nU3BlY1IEc3BlYw==');

@$core.Deprecated('Use validatingAdmissionPolicyBindingListDescriptor instead')
const ValidatingAdmissionPolicyBindingList$json = {
  '1': 'ValidatingAdmissionPolicyBindingList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.ValidatingAdmissionPolicyBinding', '10': 'items'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyBindingList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyBindingListDescriptor = $convert.base64Decode(
    'CiRWYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5QmluZGluZ0xpc3QSQwoIbWV0YWRhdGEYASABKA'
    'syJy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESWgoF'
    'aXRlbXMYAiADKAsyRC5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxYWxwaGExLlZhbGlkYX'
    'RpbmdBZG1pc3Npb25Qb2xpY3lCaW5kaW5nUgVpdGVtcw==');

@$core.Deprecated('Use validatingAdmissionPolicyBindingSpecDescriptor instead')
const ValidatingAdmissionPolicyBindingSpec$json = {
  '1': 'ValidatingAdmissionPolicyBindingSpec',
  '2': [
    {'1': 'policyName', '3': 1, '4': 1, '5': 9, '10': 'policyName'},
    {'1': 'paramRef', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1alpha1.ParamRef', '10': 'paramRef'},
    {'1': 'matchResources', '3': 3, '4': 1, '5': 11, '6': '.api.admissionregistration.v1alpha1.MatchResources', '10': 'matchResources'},
    {'1': 'validationActions', '3': 4, '4': 3, '5': 9, '10': 'validationActions'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyBindingSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyBindingSpecDescriptor = $convert.base64Decode(
    'CiRWYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5QmluZGluZ1NwZWMSHgoKcG9saWN5TmFtZRgBIA'
    'EoCVIKcG9saWN5TmFtZRJICghwYXJhbVJlZhgCIAEoCzIsLmFwaS5hZG1pc3Npb25yZWdpc3Ry'
    'YXRpb24udjFhbHBoYTEuUGFyYW1SZWZSCHBhcmFtUmVmEloKDm1hdGNoUmVzb3VyY2VzGAMgAS'
    'gLMjIuYXBpLmFkbWlzc2lvbnJlZ2lzdHJhdGlvbi52MWFscGhhMS5NYXRjaFJlc291cmNlc1IO'
    'bWF0Y2hSZXNvdXJjZXMSLAoRdmFsaWRhdGlvbkFjdGlvbnMYBCADKAlSEXZhbGlkYXRpb25BY3'
    'Rpb25z');

@$core.Deprecated('Use validatingAdmissionPolicyListDescriptor instead')
const ValidatingAdmissionPolicyList$json = {
  '1': 'ValidatingAdmissionPolicyList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.ValidatingAdmissionPolicy', '10': 'items'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyListDescriptor = $convert.base64Decode(
    'Ch1WYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW'
    '1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRJTCgVpdGVtcxgC'
    'IAMoCzI9LmFwaS5hZG1pc3Npb25yZWdpc3RyYXRpb24udjFhbHBoYTEuVmFsaWRhdGluZ0FkbW'
    'lzc2lvblBvbGljeVIFaXRlbXM=');

@$core.Deprecated('Use validatingAdmissionPolicySpecDescriptor instead')
const ValidatingAdmissionPolicySpec$json = {
  '1': 'ValidatingAdmissionPolicySpec',
  '2': [
    {'1': 'paramKind', '3': 1, '4': 1, '5': 11, '6': '.api.admissionregistration.v1alpha1.ParamKind', '10': 'paramKind'},
    {'1': 'matchConstraints', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1alpha1.MatchResources', '10': 'matchConstraints'},
    {'1': 'validations', '3': 3, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.Validation', '10': 'validations'},
    {'1': 'failurePolicy', '3': 4, '4': 1, '5': 9, '10': 'failurePolicy'},
    {'1': 'auditAnnotations', '3': 5, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.AuditAnnotation', '10': 'auditAnnotations'},
    {'1': 'matchConditions', '3': 6, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.MatchCondition', '10': 'matchConditions'},
    {'1': 'variables', '3': 7, '4': 3, '5': 11, '6': '.api.admissionregistration.v1alpha1.Variable', '10': 'variables'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicySpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicySpecDescriptor = $convert.base64Decode(
    'Ch1WYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5U3BlYxJLCglwYXJhbUtpbmQYASABKAsyLS5hcG'
    'kuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxYWxwaGExLlBhcmFtS2luZFIJcGFyYW1LaW5kEl4K'
    'EG1hdGNoQ29uc3RyYWludHMYAiABKAsyMi5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxYW'
    'xwaGExLk1hdGNoUmVzb3VyY2VzUhBtYXRjaENvbnN0cmFpbnRzElAKC3ZhbGlkYXRpb25zGAMg'
    'AygLMi4uYXBpLmFkbWlzc2lvbnJlZ2lzdHJhdGlvbi52MWFscGhhMS5WYWxpZGF0aW9uUgt2YW'
    'xpZGF0aW9ucxIkCg1mYWlsdXJlUG9saWN5GAQgASgJUg1mYWlsdXJlUG9saWN5El8KEGF1ZGl0'
    'QW5ub3RhdGlvbnMYBSADKAsyMy5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxYWxwaGExLk'
    'F1ZGl0QW5ub3RhdGlvblIQYXVkaXRBbm5vdGF0aW9ucxJcCg9tYXRjaENvbmRpdGlvbnMYBiAD'
    'KAsyMi5hcGkuYWRtaXNzaW9ucmVnaXN0cmF0aW9uLnYxYWxwaGExLk1hdGNoQ29uZGl0aW9uUg'
    '9tYXRjaENvbmRpdGlvbnMSSgoJdmFyaWFibGVzGAcgAygLMiwuYXBpLmFkbWlzc2lvbnJlZ2lz'
    'dHJhdGlvbi52MWFscGhhMS5WYXJpYWJsZVIJdmFyaWFibGVz');

@$core.Deprecated('Use validatingAdmissionPolicyStatusDescriptor instead')
const ValidatingAdmissionPolicyStatus$json = {
  '1': 'ValidatingAdmissionPolicyStatus',
  '2': [
    {'1': 'observedGeneration', '3': 1, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'typeChecking', '3': 2, '4': 1, '5': 11, '6': '.api.admissionregistration.v1alpha1.TypeChecking', '10': 'typeChecking'},
    {'1': 'conditions', '3': 3, '4': 3, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Condition', '10': 'conditions'},
  ],
};

/// Descriptor for `ValidatingAdmissionPolicyStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validatingAdmissionPolicyStatusDescriptor = $convert.base64Decode(
    'Ch9WYWxpZGF0aW5nQWRtaXNzaW9uUG9saWN5U3RhdHVzEi4KEm9ic2VydmVkR2VuZXJhdGlvbh'
    'gBIAEoA1ISb2JzZXJ2ZWRHZW5lcmF0aW9uElQKDHR5cGVDaGVja2luZxgCIAEoCzIwLmFwaS5h'
    'ZG1pc3Npb25yZWdpc3RyYXRpb24udjFhbHBoYTEuVHlwZUNoZWNraW5nUgx0eXBlQ2hlY2tpbm'
    'cSSAoKY29uZGl0aW9ucxgDIAMoCzIoLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkNv'
    'bmRpdGlvblIKY29uZGl0aW9ucw==');

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

