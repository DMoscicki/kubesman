//
//  Generated code. Do not modify.
//  source: api/apps/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use controllerRevisionDescriptor instead')
const ControllerRevision$json = {
  '1': 'ControllerRevision',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'data', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.runtime.RawExtension', '10': 'data'},
    {'1': 'revision', '3': 3, '4': 1, '5': 3, '10': 'revision'},
  ],
};

/// Descriptor for `ControllerRevision`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerRevisionDescriptor = $convert.base64Decode(
    'ChJDb250cm9sbGVyUmV2aXNpb24SRQoIbWV0YWRhdGEYASABKAsyKS5hcGltYWNoaW5lcnkucG'
    'tnLmFwaXMubWV0YS52MS5PYmplY3RNZXRhUghtZXRhZGF0YRI6CgRkYXRhGAIgASgLMiYuYXBp'
    'bWFjaGluZXJ5LnBrZy5ydW50aW1lLlJhd0V4dGVuc2lvblIEZGF0YRIaCghyZXZpc2lvbhgDIA'
    'EoA1IIcmV2aXNpb24=');

@$core.Deprecated('Use controllerRevisionListDescriptor instead')
const ControllerRevisionList$json = {
  '1': 'ControllerRevisionList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.apps.v1beta1.ControllerRevision', '10': 'items'},
  ],
};

/// Descriptor for `ControllerRevisionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerRevisionListDescriptor = $convert.base64Decode(
    'ChZDb250cm9sbGVyUmV2aXNpb25MaXN0EkMKCG1ldGFkYXRhGAEgASgLMicuYXBpbWFjaGluZX'
    'J5LnBrZy5hcGlzLm1ldGEudjEuTGlzdE1ldGFSCG1ldGFkYXRhEjoKBWl0ZW1zGAIgAygLMiQu'
    'YXBpLmFwcHMudjFiZXRhMS5Db250cm9sbGVyUmV2aXNpb25SBWl0ZW1z');

@$core.Deprecated('Use deploymentDescriptor instead')
const Deployment$json = {
  '1': 'Deployment',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.apps.v1beta1.DeploymentSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.apps.v1beta1.DeploymentStatus', '10': 'status'},
  ],
};

/// Descriptor for `Deployment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentDescriptor = $convert.base64Decode(
    'CgpEZXBsb3ltZW50EkUKCG1ldGFkYXRhGAEgASgLMikuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm'
    '1ldGEudjEuT2JqZWN0TWV0YVIIbWV0YWRhdGESNAoEc3BlYxgCIAEoCzIgLmFwaS5hcHBzLnYx'
    'YmV0YTEuRGVwbG95bWVudFNwZWNSBHNwZWMSOgoGc3RhdHVzGAMgASgLMiIuYXBpLmFwcHMudj'
    'FiZXRhMS5EZXBsb3ltZW50U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use deploymentConditionDescriptor instead')
const DeploymentCondition$json = {
  '1': 'DeploymentCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastUpdateTime', '3': 6, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastUpdateTime'},
    {'1': 'lastTransitionTime', '3': 7, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `DeploymentCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentConditionDescriptor = $convert.base64Decode(
    'ChNEZXBsb3ltZW50Q29uZGl0aW9uEhIKBHR5cGUYASABKAlSBHR5cGUSFgoGc3RhdHVzGAIgAS'
    'gJUgZzdGF0dXMSSwoObGFzdFVwZGF0ZVRpbWUYBiABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFw'
    'aXMubWV0YS52MS5UaW1lUg5sYXN0VXBkYXRlVGltZRJTChJsYXN0VHJhbnNpdGlvblRpbWUYBy'
    'ABKAsyIy5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5UaW1lUhJsYXN0VHJhbnNpdGlv'
    'blRpbWUSFgoGcmVhc29uGAQgASgJUgZyZWFzb24SGAoHbWVzc2FnZRgFIAEoCVIHbWVzc2FnZQ'
    '==');

@$core.Deprecated('Use deploymentListDescriptor instead')
const DeploymentList$json = {
  '1': 'DeploymentList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.apps.v1beta1.Deployment', '10': 'items'},
  ],
};

/// Descriptor for `DeploymentList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentListDescriptor = $convert.base64Decode(
    'Cg5EZXBsb3ltZW50TGlzdBJDCghtZXRhZGF0YRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'Bpcy5tZXRhLnYxLkxpc3RNZXRhUghtZXRhZGF0YRIyCgVpdGVtcxgCIAMoCzIcLmFwaS5hcHBz'
    'LnYxYmV0YTEuRGVwbG95bWVudFIFaXRlbXM=');

@$core.Deprecated('Use deploymentRollbackDescriptor instead')
const DeploymentRollback$json = {
  '1': 'DeploymentRollback',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'updatedAnnotations', '3': 2, '4': 3, '5': 11, '6': '.api.apps.v1beta1.DeploymentRollback.UpdatedAnnotationsEntry', '10': 'updatedAnnotations'},
    {'1': 'rollbackTo', '3': 3, '4': 1, '5': 11, '6': '.api.apps.v1beta1.RollbackConfig', '10': 'rollbackTo'},
  ],
  '3': [DeploymentRollback_UpdatedAnnotationsEntry$json],
};

@$core.Deprecated('Use deploymentRollbackDescriptor instead')
const DeploymentRollback_UpdatedAnnotationsEntry$json = {
  '1': 'UpdatedAnnotationsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DeploymentRollback`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentRollbackDescriptor = $convert.base64Decode(
    'ChJEZXBsb3ltZW50Um9sbGJhY2sSEgoEbmFtZRgBIAEoCVIEbmFtZRJsChJ1cGRhdGVkQW5ub3'
    'RhdGlvbnMYAiADKAsyPC5hcGkuYXBwcy52MWJldGExLkRlcGxveW1lbnRSb2xsYmFjay5VcGRh'
    'dGVkQW5ub3RhdGlvbnNFbnRyeVISdXBkYXRlZEFubm90YXRpb25zEkAKCnJvbGxiYWNrVG8YAy'
    'ABKAsyIC5hcGkuYXBwcy52MWJldGExLlJvbGxiYWNrQ29uZmlnUgpyb2xsYmFja1RvGkUKF1Vw'
    'ZGF0ZWRBbm5vdGF0aW9uc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUg'
    'V2YWx1ZToCOAE=');

@$core.Deprecated('Use deploymentSpecDescriptor instead')
const DeploymentSpec$json = {
  '1': 'DeploymentSpec',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'selector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'template', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PodTemplateSpec', '10': 'template'},
    {'1': 'strategy', '3': 4, '4': 1, '5': 11, '6': '.api.apps.v1beta1.DeploymentStrategy', '10': 'strategy'},
    {'1': 'minReadySeconds', '3': 5, '4': 1, '5': 5, '10': 'minReadySeconds'},
    {'1': 'revisionHistoryLimit', '3': 6, '4': 1, '5': 5, '10': 'revisionHistoryLimit'},
    {'1': 'paused', '3': 7, '4': 1, '5': 8, '10': 'paused'},
    {'1': 'rollbackTo', '3': 8, '4': 1, '5': 11, '6': '.api.apps.v1beta1.RollbackConfig', '10': 'rollbackTo'},
    {'1': 'progressDeadlineSeconds', '3': 9, '4': 1, '5': 5, '10': 'progressDeadlineSeconds'},
  ],
};

/// Descriptor for `DeploymentSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentSpecDescriptor = $convert.base64Decode(
    'Cg5EZXBsb3ltZW50U3BlYxIaCghyZXBsaWNhcxgBIAEoBVIIcmVwbGljYXMSSAoIc2VsZWN0b3'
    'IYAiABKAsyLC5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG9yUghz'
    'ZWxlY3RvchI4Cgh0ZW1wbGF0ZRgDIAEoCzIcLmFwaS5jb3JlLnYxLlBvZFRlbXBsYXRlU3BlY1'
    'IIdGVtcGxhdGUSQAoIc3RyYXRlZ3kYBCABKAsyJC5hcGkuYXBwcy52MWJldGExLkRlcGxveW1l'
    'bnRTdHJhdGVneVIIc3RyYXRlZ3kSKAoPbWluUmVhZHlTZWNvbmRzGAUgASgFUg9taW5SZWFkeV'
    'NlY29uZHMSMgoUcmV2aXNpb25IaXN0b3J5TGltaXQYBiABKAVSFHJldmlzaW9uSGlzdG9yeUxp'
    'bWl0EhYKBnBhdXNlZBgHIAEoCFIGcGF1c2VkEkAKCnJvbGxiYWNrVG8YCCABKAsyIC5hcGkuYX'
    'Bwcy52MWJldGExLlJvbGxiYWNrQ29uZmlnUgpyb2xsYmFja1RvEjgKF3Byb2dyZXNzRGVhZGxp'
    'bmVTZWNvbmRzGAkgASgFUhdwcm9ncmVzc0RlYWRsaW5lU2Vjb25kcw==');

@$core.Deprecated('Use deploymentStatusDescriptor instead')
const DeploymentStatus$json = {
  '1': 'DeploymentStatus',
  '2': [
    {'1': 'observedGeneration', '3': 1, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'replicas', '3': 2, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'updatedReplicas', '3': 3, '4': 1, '5': 5, '10': 'updatedReplicas'},
    {'1': 'readyReplicas', '3': 7, '4': 1, '5': 5, '10': 'readyReplicas'},
    {'1': 'availableReplicas', '3': 4, '4': 1, '5': 5, '10': 'availableReplicas'},
    {'1': 'unavailableReplicas', '3': 5, '4': 1, '5': 5, '10': 'unavailableReplicas'},
    {'1': 'conditions', '3': 6, '4': 3, '5': 11, '6': '.api.apps.v1beta1.DeploymentCondition', '10': 'conditions'},
    {'1': 'collisionCount', '3': 8, '4': 1, '5': 5, '10': 'collisionCount'},
  ],
};

/// Descriptor for `DeploymentStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentStatusDescriptor = $convert.base64Decode(
    'ChBEZXBsb3ltZW50U3RhdHVzEi4KEm9ic2VydmVkR2VuZXJhdGlvbhgBIAEoA1ISb2JzZXJ2ZW'
    'RHZW5lcmF0aW9uEhoKCHJlcGxpY2FzGAIgASgFUghyZXBsaWNhcxIoCg91cGRhdGVkUmVwbGlj'
    'YXMYAyABKAVSD3VwZGF0ZWRSZXBsaWNhcxIkCg1yZWFkeVJlcGxpY2FzGAcgASgFUg1yZWFkeV'
    'JlcGxpY2FzEiwKEWF2YWlsYWJsZVJlcGxpY2FzGAQgASgFUhFhdmFpbGFibGVSZXBsaWNhcxIw'
    'ChN1bmF2YWlsYWJsZVJlcGxpY2FzGAUgASgFUhN1bmF2YWlsYWJsZVJlcGxpY2FzEkUKCmNvbm'
    'RpdGlvbnMYBiADKAsyJS5hcGkuYXBwcy52MWJldGExLkRlcGxveW1lbnRDb25kaXRpb25SCmNv'
    'bmRpdGlvbnMSJgoOY29sbGlzaW9uQ291bnQYCCABKAVSDmNvbGxpc2lvbkNvdW50');

@$core.Deprecated('Use deploymentStrategyDescriptor instead')
const DeploymentStrategy$json = {
  '1': 'DeploymentStrategy',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'rollingUpdate', '3': 2, '4': 1, '5': 11, '6': '.api.apps.v1beta1.RollingUpdateDeployment', '10': 'rollingUpdate'},
  ],
};

/// Descriptor for `DeploymentStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deploymentStrategyDescriptor = $convert.base64Decode(
    'ChJEZXBsb3ltZW50U3RyYXRlZ3kSEgoEdHlwZRgBIAEoCVIEdHlwZRJPCg1yb2xsaW5nVXBkYX'
    'RlGAIgASgLMikuYXBpLmFwcHMudjFiZXRhMS5Sb2xsaW5nVXBkYXRlRGVwbG95bWVudFINcm9s'
    'bGluZ1VwZGF0ZQ==');

@$core.Deprecated('Use rollbackConfigDescriptor instead')
const RollbackConfig$json = {
  '1': 'RollbackConfig',
  '2': [
    {'1': 'revision', '3': 1, '4': 1, '5': 3, '10': 'revision'},
  ],
};

/// Descriptor for `RollbackConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollbackConfigDescriptor = $convert.base64Decode(
    'Cg5Sb2xsYmFja0NvbmZpZxIaCghyZXZpc2lvbhgBIAEoA1IIcmV2aXNpb24=');

@$core.Deprecated('Use rollingUpdateDeploymentDescriptor instead')
const RollingUpdateDeployment$json = {
  '1': 'RollingUpdateDeployment',
  '2': [
    {'1': 'maxUnavailable', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'maxUnavailable'},
    {'1': 'maxSurge', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'maxSurge'},
  ],
};

/// Descriptor for `RollingUpdateDeployment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollingUpdateDeploymentDescriptor = $convert.base64Decode(
    'ChdSb2xsaW5nVXBkYXRlRGVwbG95bWVudBJRCg5tYXhVbmF2YWlsYWJsZRgBIAEoCzIpLmFwaW'
    '1hY2hpbmVyeS5wa2cudXRpbC5pbnRzdHIuSW50T3JTdHJpbmdSDm1heFVuYXZhaWxhYmxlEkUK'
    'CG1heFN1cmdlGAIgASgLMikuYXBpbWFjaGluZXJ5LnBrZy51dGlsLmludHN0ci5JbnRPclN0cm'
    'luZ1IIbWF4U3VyZ2U=');

@$core.Deprecated('Use rollingUpdateStatefulSetStrategyDescriptor instead')
const RollingUpdateStatefulSetStrategy$json = {
  '1': 'RollingUpdateStatefulSetStrategy',
  '2': [
    {'1': 'partition', '3': 1, '4': 1, '5': 5, '10': 'partition'},
    {'1': 'maxUnavailable', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.util.intstr.IntOrString', '10': 'maxUnavailable'},
  ],
};

/// Descriptor for `RollingUpdateStatefulSetStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List rollingUpdateStatefulSetStrategyDescriptor = $convert.base64Decode(
    'CiBSb2xsaW5nVXBkYXRlU3RhdGVmdWxTZXRTdHJhdGVneRIcCglwYXJ0aXRpb24YASABKAVSCX'
    'BhcnRpdGlvbhJRCg5tYXhVbmF2YWlsYWJsZRgCIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cudXRp'
    'bC5pbnRzdHIuSW50T3JTdHJpbmdSDm1heFVuYXZhaWxhYmxl');

@$core.Deprecated('Use scaleDescriptor instead')
const Scale$json = {
  '1': 'Scale',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.apps.v1beta1.ScaleSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.apps.v1beta1.ScaleStatus', '10': 'status'},
  ],
};

/// Descriptor for `Scale`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleDescriptor = $convert.base64Decode(
    'CgVTY2FsZRJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLn'
    'YxLk9iamVjdE1ldGFSCG1ldGFkYXRhEi8KBHNwZWMYAiABKAsyGy5hcGkuYXBwcy52MWJldGEx'
    'LlNjYWxlU3BlY1IEc3BlYxI1CgZzdGF0dXMYAyABKAsyHS5hcGkuYXBwcy52MWJldGExLlNjYW'
    'xlU3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use scaleSpecDescriptor instead')
const ScaleSpec$json = {
  '1': 'ScaleSpec',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
  ],
};

/// Descriptor for `ScaleSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleSpecDescriptor = $convert.base64Decode(
    'CglTY2FsZVNwZWMSGgoIcmVwbGljYXMYASABKAVSCHJlcGxpY2Fz');

@$core.Deprecated('Use scaleStatusDescriptor instead')
const ScaleStatus$json = {
  '1': 'ScaleStatus',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'selector', '3': 2, '4': 3, '5': 11, '6': '.api.apps.v1beta1.ScaleStatus.SelectorEntry', '10': 'selector'},
    {'1': 'targetSelector', '3': 3, '4': 1, '5': 9, '10': 'targetSelector'},
  ],
  '3': [ScaleStatus_SelectorEntry$json],
};

@$core.Deprecated('Use scaleStatusDescriptor instead')
const ScaleStatus_SelectorEntry$json = {
  '1': 'SelectorEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ScaleStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List scaleStatusDescriptor = $convert.base64Decode(
    'CgtTY2FsZVN0YXR1cxIaCghyZXBsaWNhcxgBIAEoBVIIcmVwbGljYXMSRwoIc2VsZWN0b3IYAi'
    'ADKAsyKy5hcGkuYXBwcy52MWJldGExLlNjYWxlU3RhdHVzLlNlbGVjdG9yRW50cnlSCHNlbGVj'
    'dG9yEiYKDnRhcmdldFNlbGVjdG9yGAMgASgJUg50YXJnZXRTZWxlY3Rvcho7Cg1TZWxlY3Rvck'
    'VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use statefulSetDescriptor instead')
const StatefulSet$json = {
  '1': 'StatefulSet',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.apps.v1beta1.StatefulSetSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.apps.v1beta1.StatefulSetStatus', '10': 'status'},
  ],
};

/// Descriptor for `StatefulSet`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statefulSetDescriptor = $convert.base64Decode(
    'CgtTdGF0ZWZ1bFNldBJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy'
    '5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEjUKBHNwZWMYAiABKAsyIS5hcGkuYXBwcy52'
    'MWJldGExLlN0YXRlZnVsU2V0U3BlY1IEc3BlYxI7CgZzdGF0dXMYAyABKAsyIy5hcGkuYXBwcy'
    '52MWJldGExLlN0YXRlZnVsU2V0U3RhdHVzUgZzdGF0dXM=');

@$core.Deprecated('Use statefulSetConditionDescriptor instead')
const StatefulSetCondition$json = {
  '1': 'StatefulSetCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `StatefulSetCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statefulSetConditionDescriptor = $convert.base64Decode(
    'ChRTdGF0ZWZ1bFNldENvbmRpdGlvbhISCgR0eXBlGAEgASgJUgR0eXBlEhYKBnN0YXR1cxgCIA'
    'EoCVIGc3RhdHVzElMKEmxhc3RUcmFuc2l0aW9uVGltZRgDIAEoCzIjLmFwaW1hY2hpbmVyeS5w'
    'a2cuYXBpcy5tZXRhLnYxLlRpbWVSEmxhc3RUcmFuc2l0aW9uVGltZRIWCgZyZWFzb24YBCABKA'
    'lSBnJlYXNvbhIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use statefulSetListDescriptor instead')
const StatefulSetList$json = {
  '1': 'StatefulSetList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.apps.v1beta1.StatefulSet', '10': 'items'},
  ],
};

/// Descriptor for `StatefulSetList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statefulSetListDescriptor = $convert.base64Decode(
    'Cg9TdGF0ZWZ1bFNldExpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYWNoaW5lcnkucGtnLm'
    'FwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESMwoFaXRlbXMYAiADKAsyHS5hcGkuYXBw'
    'cy52MWJldGExLlN0YXRlZnVsU2V0UgVpdGVtcw==');

@$core.Deprecated('Use statefulSetOrdinalsDescriptor instead')
const StatefulSetOrdinals$json = {
  '1': 'StatefulSetOrdinals',
  '2': [
    {'1': 'start', '3': 1, '4': 1, '5': 5, '10': 'start'},
  ],
};

/// Descriptor for `StatefulSetOrdinals`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statefulSetOrdinalsDescriptor = $convert.base64Decode(
    'ChNTdGF0ZWZ1bFNldE9yZGluYWxzEhQKBXN0YXJ0GAEgASgFUgVzdGFydA==');

@$core.Deprecated('Use statefulSetPersistentVolumeClaimRetentionPolicyDescriptor instead')
const StatefulSetPersistentVolumeClaimRetentionPolicy$json = {
  '1': 'StatefulSetPersistentVolumeClaimRetentionPolicy',
  '2': [
    {'1': 'whenDeleted', '3': 1, '4': 1, '5': 9, '10': 'whenDeleted'},
    {'1': 'whenScaled', '3': 2, '4': 1, '5': 9, '10': 'whenScaled'},
  ],
};

/// Descriptor for `StatefulSetPersistentVolumeClaimRetentionPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statefulSetPersistentVolumeClaimRetentionPolicyDescriptor = $convert.base64Decode(
    'Ci9TdGF0ZWZ1bFNldFBlcnNpc3RlbnRWb2x1bWVDbGFpbVJldGVudGlvblBvbGljeRIgCgt3aG'
    'VuRGVsZXRlZBgBIAEoCVILd2hlbkRlbGV0ZWQSHgoKd2hlblNjYWxlZBgCIAEoCVIKd2hlblNj'
    'YWxlZA==');

@$core.Deprecated('Use statefulSetSpecDescriptor instead')
const StatefulSetSpec$json = {
  '1': 'StatefulSetSpec',
  '2': [
    {'1': 'replicas', '3': 1, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'selector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'template', '3': 3, '4': 1, '5': 11, '6': '.api.core.v1.PodTemplateSpec', '10': 'template'},
    {'1': 'volumeClaimTemplates', '3': 4, '4': 3, '5': 11, '6': '.api.core.v1.PersistentVolumeClaim', '10': 'volumeClaimTemplates'},
    {'1': 'serviceName', '3': 5, '4': 1, '5': 9, '10': 'serviceName'},
    {'1': 'podManagementPolicy', '3': 6, '4': 1, '5': 9, '10': 'podManagementPolicy'},
    {'1': 'updateStrategy', '3': 7, '4': 1, '5': 11, '6': '.api.apps.v1beta1.StatefulSetUpdateStrategy', '10': 'updateStrategy'},
    {'1': 'revisionHistoryLimit', '3': 8, '4': 1, '5': 5, '10': 'revisionHistoryLimit'},
    {'1': 'minReadySeconds', '3': 9, '4': 1, '5': 5, '10': 'minReadySeconds'},
    {'1': 'persistentVolumeClaimRetentionPolicy', '3': 10, '4': 1, '5': 11, '6': '.api.apps.v1beta1.StatefulSetPersistentVolumeClaimRetentionPolicy', '10': 'persistentVolumeClaimRetentionPolicy'},
    {'1': 'ordinals', '3': 11, '4': 1, '5': 11, '6': '.api.apps.v1beta1.StatefulSetOrdinals', '10': 'ordinals'},
  ],
};

/// Descriptor for `StatefulSetSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statefulSetSpecDescriptor = $convert.base64Decode(
    'Cg9TdGF0ZWZ1bFNldFNwZWMSGgoIcmVwbGljYXMYASABKAVSCHJlcGxpY2FzEkgKCHNlbGVjdG'
    '9yGAIgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGFiZWxTZWxlY3RvclII'
    'c2VsZWN0b3ISOAoIdGVtcGxhdGUYAyABKAsyHC5hcGkuY29yZS52MS5Qb2RUZW1wbGF0ZVNwZW'
    'NSCHRlbXBsYXRlElYKFHZvbHVtZUNsYWltVGVtcGxhdGVzGAQgAygLMiIuYXBpLmNvcmUudjEu'
    'UGVyc2lzdGVudFZvbHVtZUNsYWltUhR2b2x1bWVDbGFpbVRlbXBsYXRlcxIgCgtzZXJ2aWNlTm'
    'FtZRgFIAEoCVILc2VydmljZU5hbWUSMAoTcG9kTWFuYWdlbWVudFBvbGljeRgGIAEoCVITcG9k'
    'TWFuYWdlbWVudFBvbGljeRJTCg51cGRhdGVTdHJhdGVneRgHIAEoCzIrLmFwaS5hcHBzLnYxYm'
    'V0YTEuU3RhdGVmdWxTZXRVcGRhdGVTdHJhdGVneVIOdXBkYXRlU3RyYXRlZ3kSMgoUcmV2aXNp'
    'b25IaXN0b3J5TGltaXQYCCABKAVSFHJldmlzaW9uSGlzdG9yeUxpbWl0EigKD21pblJlYWR5U2'
    'Vjb25kcxgJIAEoBVIPbWluUmVhZHlTZWNvbmRzEpUBCiRwZXJzaXN0ZW50Vm9sdW1lQ2xhaW1S'
    'ZXRlbnRpb25Qb2xpY3kYCiABKAsyQS5hcGkuYXBwcy52MWJldGExLlN0YXRlZnVsU2V0UGVyc2'
    'lzdGVudFZvbHVtZUNsYWltUmV0ZW50aW9uUG9saWN5UiRwZXJzaXN0ZW50Vm9sdW1lQ2xhaW1S'
    'ZXRlbnRpb25Qb2xpY3kSQQoIb3JkaW5hbHMYCyABKAsyJS5hcGkuYXBwcy52MWJldGExLlN0YX'
    'RlZnVsU2V0T3JkaW5hbHNSCG9yZGluYWxz');

@$core.Deprecated('Use statefulSetStatusDescriptor instead')
const StatefulSetStatus$json = {
  '1': 'StatefulSetStatus',
  '2': [
    {'1': 'observedGeneration', '3': 1, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'replicas', '3': 2, '4': 1, '5': 5, '10': 'replicas'},
    {'1': 'readyReplicas', '3': 3, '4': 1, '5': 5, '10': 'readyReplicas'},
    {'1': 'currentReplicas', '3': 4, '4': 1, '5': 5, '10': 'currentReplicas'},
    {'1': 'updatedReplicas', '3': 5, '4': 1, '5': 5, '10': 'updatedReplicas'},
    {'1': 'currentRevision', '3': 6, '4': 1, '5': 9, '10': 'currentRevision'},
    {'1': 'updateRevision', '3': 7, '4': 1, '5': 9, '10': 'updateRevision'},
    {'1': 'collisionCount', '3': 9, '4': 1, '5': 5, '10': 'collisionCount'},
    {'1': 'conditions', '3': 10, '4': 3, '5': 11, '6': '.api.apps.v1beta1.StatefulSetCondition', '10': 'conditions'},
    {'1': 'availableReplicas', '3': 11, '4': 1, '5': 5, '10': 'availableReplicas'},
  ],
};

/// Descriptor for `StatefulSetStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statefulSetStatusDescriptor = $convert.base64Decode(
    'ChFTdGF0ZWZ1bFNldFN0YXR1cxIuChJvYnNlcnZlZEdlbmVyYXRpb24YASABKANSEm9ic2Vydm'
    'VkR2VuZXJhdGlvbhIaCghyZXBsaWNhcxgCIAEoBVIIcmVwbGljYXMSJAoNcmVhZHlSZXBsaWNh'
    'cxgDIAEoBVINcmVhZHlSZXBsaWNhcxIoCg9jdXJyZW50UmVwbGljYXMYBCABKAVSD2N1cnJlbn'
    'RSZXBsaWNhcxIoCg91cGRhdGVkUmVwbGljYXMYBSABKAVSD3VwZGF0ZWRSZXBsaWNhcxIoCg9j'
    'dXJyZW50UmV2aXNpb24YBiABKAlSD2N1cnJlbnRSZXZpc2lvbhImCg51cGRhdGVSZXZpc2lvbh'
    'gHIAEoCVIOdXBkYXRlUmV2aXNpb24SJgoOY29sbGlzaW9uQ291bnQYCSABKAVSDmNvbGxpc2lv'
    'bkNvdW50EkYKCmNvbmRpdGlvbnMYCiADKAsyJi5hcGkuYXBwcy52MWJldGExLlN0YXRlZnVsU2'
    'V0Q29uZGl0aW9uUgpjb25kaXRpb25zEiwKEWF2YWlsYWJsZVJlcGxpY2FzGAsgASgFUhFhdmFp'
    'bGFibGVSZXBsaWNhcw==');

@$core.Deprecated('Use statefulSetUpdateStrategyDescriptor instead')
const StatefulSetUpdateStrategy$json = {
  '1': 'StatefulSetUpdateStrategy',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'rollingUpdate', '3': 2, '4': 1, '5': 11, '6': '.api.apps.v1beta1.RollingUpdateStatefulSetStrategy', '10': 'rollingUpdate'},
  ],
};

/// Descriptor for `StatefulSetUpdateStrategy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statefulSetUpdateStrategyDescriptor = $convert.base64Decode(
    'ChlTdGF0ZWZ1bFNldFVwZGF0ZVN0cmF0ZWd5EhIKBHR5cGUYASABKAlSBHR5cGUSWAoNcm9sbG'
    'luZ1VwZGF0ZRgCIAEoCzIyLmFwaS5hcHBzLnYxYmV0YTEuUm9sbGluZ1VwZGF0ZVN0YXRlZnVs'
    'U2V0U3RyYXRlZ3lSDXJvbGxpbmdVcGRhdGU=');

