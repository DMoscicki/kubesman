//
//  Generated code. Do not modify.
//  source: api/autoscaling/v2/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use containerResourceMetricSourceDescriptor instead')
const ContainerResourceMetricSource$json = {
  '1': 'ContainerResourceMetricSource',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricTarget', '10': 'target'},
    {'1': 'container', '3': 3, '4': 1, '5': 9, '10': 'container'},
  ],
};

/// Descriptor for `ContainerResourceMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerResourceMetricSourceDescriptor = $convert.base64Decode(
    'Ch1Db250YWluZXJSZXNvdXJjZU1ldHJpY1NvdXJjZRISCgRuYW1lGAEgASgJUgRuYW1lEjgKBn'
    'RhcmdldBgCIAEoCzIgLmFwaS5hdXRvc2NhbGluZy52Mi5NZXRyaWNUYXJnZXRSBnRhcmdldBIc'
    'Cgljb250YWluZXIYAyABKAlSCWNvbnRhaW5lcg==');

@$core.Deprecated('Use containerResourceMetricStatusDescriptor instead')
const ContainerResourceMetricStatus$json = {
  '1': 'ContainerResourceMetricStatus',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'current', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricValueStatus', '10': 'current'},
    {'1': 'container', '3': 3, '4': 1, '5': 9, '10': 'container'},
  ],
};

/// Descriptor for `ContainerResourceMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerResourceMetricStatusDescriptor = $convert.base64Decode(
    'Ch1Db250YWluZXJSZXNvdXJjZU1ldHJpY1N0YXR1cxISCgRuYW1lGAEgASgJUgRuYW1lEj8KB2'
    'N1cnJlbnQYAiABKAsyJS5hcGkuYXV0b3NjYWxpbmcudjIuTWV0cmljVmFsdWVTdGF0dXNSB2N1'
    'cnJlbnQSHAoJY29udGFpbmVyGAMgASgJUgljb250YWluZXI=');

@$core.Deprecated('Use crossVersionObjectReferenceDescriptor instead')
const CrossVersionObjectReference$json = {
  '1': 'CrossVersionObjectReference',
  '2': [
    {'1': 'kind', '3': 1, '4': 1, '5': 9, '10': 'kind'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {'1': 'apiVersion', '3': 3, '4': 1, '5': 9, '10': 'apiVersion'},
  ],
};

/// Descriptor for `CrossVersionObjectReference`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List crossVersionObjectReferenceDescriptor = $convert.base64Decode(
    'ChtDcm9zc1ZlcnNpb25PYmplY3RSZWZlcmVuY2USEgoEa2luZBgBIAEoCVIEa2luZBISCgRuYW'
    '1lGAIgASgJUgRuYW1lEh4KCmFwaVZlcnNpb24YAyABKAlSCmFwaVZlcnNpb24=');

@$core.Deprecated('Use externalMetricSourceDescriptor instead')
const ExternalMetricSource$json = {
  '1': 'ExternalMetricSource',
  '2': [
    {'1': 'metric', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricIdentifier', '10': 'metric'},
    {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricTarget', '10': 'target'},
  ],
};

/// Descriptor for `ExternalMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List externalMetricSourceDescriptor = $convert.base64Decode(
    'ChRFeHRlcm5hbE1ldHJpY1NvdXJjZRI8CgZtZXRyaWMYASABKAsyJC5hcGkuYXV0b3NjYWxpbm'
    'cudjIuTWV0cmljSWRlbnRpZmllclIGbWV0cmljEjgKBnRhcmdldBgCIAEoCzIgLmFwaS5hdXRv'
    'c2NhbGluZy52Mi5NZXRyaWNUYXJnZXRSBnRhcmdldA==');

@$core.Deprecated('Use externalMetricStatusDescriptor instead')
const ExternalMetricStatus$json = {
  '1': 'ExternalMetricStatus',
  '2': [
    {'1': 'metric', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricIdentifier', '10': 'metric'},
    {'1': 'current', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricValueStatus', '10': 'current'},
  ],
};

/// Descriptor for `ExternalMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List externalMetricStatusDescriptor = $convert.base64Decode(
    'ChRFeHRlcm5hbE1ldHJpY1N0YXR1cxI8CgZtZXRyaWMYASABKAsyJC5hcGkuYXV0b3NjYWxpbm'
    'cudjIuTWV0cmljSWRlbnRpZmllclIGbWV0cmljEj8KB2N1cnJlbnQYAiABKAsyJS5hcGkuYXV0'
    'b3NjYWxpbmcudjIuTWV0cmljVmFsdWVTdGF0dXNSB2N1cnJlbnQ=');

@$core.Deprecated('Use hPAScalingPolicyDescriptor instead')
const HPAScalingPolicy$json = {
  '1': 'HPAScalingPolicy',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'value', '3': 2, '4': 1, '5': 5, '10': 'value'},
    {'1': 'periodSeconds', '3': 3, '4': 1, '5': 5, '10': 'periodSeconds'},
  ],
};

/// Descriptor for `HPAScalingPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hPAScalingPolicyDescriptor = $convert.base64Decode(
    'ChBIUEFTY2FsaW5nUG9saWN5EhIKBHR5cGUYASABKAlSBHR5cGUSFAoFdmFsdWUYAiABKAVSBX'
    'ZhbHVlEiQKDXBlcmlvZFNlY29uZHMYAyABKAVSDXBlcmlvZFNlY29uZHM=');

@$core.Deprecated('Use hPAScalingRulesDescriptor instead')
const HPAScalingRules$json = {
  '1': 'HPAScalingRules',
  '2': [
    {'1': 'stabilizationWindowSeconds', '3': 3, '4': 1, '5': 5, '10': 'stabilizationWindowSeconds'},
    {'1': 'selectPolicy', '3': 1, '4': 1, '5': 9, '10': 'selectPolicy'},
    {'1': 'policies', '3': 2, '4': 3, '5': 11, '6': '.api.autoscaling.v2.HPAScalingPolicy', '10': 'policies'},
  ],
};

/// Descriptor for `HPAScalingRules`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hPAScalingRulesDescriptor = $convert.base64Decode(
    'Cg9IUEFTY2FsaW5nUnVsZXMSPgoac3RhYmlsaXphdGlvbldpbmRvd1NlY29uZHMYAyABKAVSGn'
    'N0YWJpbGl6YXRpb25XaW5kb3dTZWNvbmRzEiIKDHNlbGVjdFBvbGljeRgBIAEoCVIMc2VsZWN0'
    'UG9saWN5EkAKCHBvbGljaWVzGAIgAygLMiQuYXBpLmF1dG9zY2FsaW5nLnYyLkhQQVNjYWxpbm'
    'dQb2xpY3lSCHBvbGljaWVz');

@$core.Deprecated('Use horizontalPodAutoscalerDescriptor instead')
const HorizontalPodAutoscaler$json = {
  '1': 'HorizontalPodAutoscaler',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.HorizontalPodAutoscalerSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.autoscaling.v2.HorizontalPodAutoscalerStatus', '10': 'status'},
  ],
};

/// Descriptor for `HorizontalPodAutoscaler`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerDescriptor = $convert.base64Decode(
    'ChdIb3Jpem9udGFsUG9kQXV0b3NjYWxlchJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkMKBHNwZWMYAiABKAsy'
    'Ly5hcGkuYXV0b3NjYWxpbmcudjIuSG9yaXpvbnRhbFBvZEF1dG9zY2FsZXJTcGVjUgRzcGVjEk'
    'kKBnN0YXR1cxgDIAEoCzIxLmFwaS5hdXRvc2NhbGluZy52Mi5Ib3Jpem9udGFsUG9kQXV0b3Nj'
    'YWxlclN0YXR1c1IGc3RhdHVz');

@$core.Deprecated('Use horizontalPodAutoscalerBehaviorDescriptor instead')
const HorizontalPodAutoscalerBehavior$json = {
  '1': 'HorizontalPodAutoscalerBehavior',
  '2': [
    {'1': 'scaleUp', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2.HPAScalingRules', '10': 'scaleUp'},
    {'1': 'scaleDown', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.HPAScalingRules', '10': 'scaleDown'},
  ],
};

/// Descriptor for `HorizontalPodAutoscalerBehavior`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerBehaviorDescriptor = $convert.base64Decode(
    'Ch9Ib3Jpem9udGFsUG9kQXV0b3NjYWxlckJlaGF2aW9yEj0KB3NjYWxlVXAYASABKAsyIy5hcG'
    'kuYXV0b3NjYWxpbmcudjIuSFBBU2NhbGluZ1J1bGVzUgdzY2FsZVVwEkEKCXNjYWxlRG93bhgC'
    'IAEoCzIjLmFwaS5hdXRvc2NhbGluZy52Mi5IUEFTY2FsaW5nUnVsZXNSCXNjYWxlRG93bg==');

@$core.Deprecated('Use horizontalPodAutoscalerConditionDescriptor instead')
const HorizontalPodAutoscalerCondition$json = {
  '1': 'HorizontalPodAutoscalerCondition',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'status', '3': 2, '4': 1, '5': 9, '10': 'status'},
    {'1': 'lastTransitionTime', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastTransitionTime'},
    {'1': 'reason', '3': 4, '4': 1, '5': 9, '10': 'reason'},
    {'1': 'message', '3': 5, '4': 1, '5': 9, '10': 'message'},
  ],
};

/// Descriptor for `HorizontalPodAutoscalerCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerConditionDescriptor = $convert.base64Decode(
    'CiBIb3Jpem9udGFsUG9kQXV0b3NjYWxlckNvbmRpdGlvbhISCgR0eXBlGAEgASgJUgR0eXBlEh'
    'YKBnN0YXR1cxgCIAEoCVIGc3RhdHVzElMKEmxhc3RUcmFuc2l0aW9uVGltZRgDIAEoCzIjLmFw'
    'aW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLlRpbWVSEmxhc3RUcmFuc2l0aW9uVGltZRIWCg'
    'ZyZWFzb24YBCABKAlSBnJlYXNvbhIYCgdtZXNzYWdlGAUgASgJUgdtZXNzYWdl');

@$core.Deprecated('Use horizontalPodAutoscalerListDescriptor instead')
const HorizontalPodAutoscalerList$json = {
  '1': 'HorizontalPodAutoscalerList',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ListMeta', '10': 'metadata'},
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.autoscaling.v2.HorizontalPodAutoscaler', '10': 'items'},
  ],
};

/// Descriptor for `HorizontalPodAutoscalerList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerListDescriptor = $convert.base64Decode(
    'ChtIb3Jpem9udGFsUG9kQXV0b3NjYWxlckxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYW'
    'NoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESQQoFaXRlbXMYAiAD'
    'KAsyKy5hcGkuYXV0b3NjYWxpbmcudjIuSG9yaXpvbnRhbFBvZEF1dG9zY2FsZXJSBWl0ZW1z');

@$core.Deprecated('Use horizontalPodAutoscalerSpecDescriptor instead')
const HorizontalPodAutoscalerSpec$json = {
  '1': 'HorizontalPodAutoscalerSpec',
  '2': [
    {'1': 'scaleTargetRef', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2.CrossVersionObjectReference', '10': 'scaleTargetRef'},
    {'1': 'minReplicas', '3': 2, '4': 1, '5': 5, '10': 'minReplicas'},
    {'1': 'maxReplicas', '3': 3, '4': 1, '5': 5, '10': 'maxReplicas'},
    {'1': 'metrics', '3': 4, '4': 3, '5': 11, '6': '.api.autoscaling.v2.MetricSpec', '10': 'metrics'},
    {'1': 'behavior', '3': 5, '4': 1, '5': 11, '6': '.api.autoscaling.v2.HorizontalPodAutoscalerBehavior', '10': 'behavior'},
  ],
};

/// Descriptor for `HorizontalPodAutoscalerSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerSpecDescriptor = $convert.base64Decode(
    'ChtIb3Jpem9udGFsUG9kQXV0b3NjYWxlclNwZWMSVwoOc2NhbGVUYXJnZXRSZWYYASABKAsyLy'
    '5hcGkuYXV0b3NjYWxpbmcudjIuQ3Jvc3NWZXJzaW9uT2JqZWN0UmVmZXJlbmNlUg5zY2FsZVRh'
    'cmdldFJlZhIgCgttaW5SZXBsaWNhcxgCIAEoBVILbWluUmVwbGljYXMSIAoLbWF4UmVwbGljYX'
    'MYAyABKAVSC21heFJlcGxpY2FzEjgKB21ldHJpY3MYBCADKAsyHi5hcGkuYXV0b3NjYWxpbmcu'
    'djIuTWV0cmljU3BlY1IHbWV0cmljcxJPCghiZWhhdmlvchgFIAEoCzIzLmFwaS5hdXRvc2NhbG'
    'luZy52Mi5Ib3Jpem9udGFsUG9kQXV0b3NjYWxlckJlaGF2aW9yUghiZWhhdmlvcg==');

@$core.Deprecated('Use horizontalPodAutoscalerStatusDescriptor instead')
const HorizontalPodAutoscalerStatus$json = {
  '1': 'HorizontalPodAutoscalerStatus',
  '2': [
    {'1': 'observedGeneration', '3': 1, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'lastScaleTime', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastScaleTime'},
    {'1': 'currentReplicas', '3': 3, '4': 1, '5': 5, '10': 'currentReplicas'},
    {'1': 'desiredReplicas', '3': 4, '4': 1, '5': 5, '10': 'desiredReplicas'},
    {'1': 'currentMetrics', '3': 5, '4': 3, '5': 11, '6': '.api.autoscaling.v2.MetricStatus', '10': 'currentMetrics'},
    {'1': 'conditions', '3': 6, '4': 3, '5': 11, '6': '.api.autoscaling.v2.HorizontalPodAutoscalerCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `HorizontalPodAutoscalerStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerStatusDescriptor = $convert.base64Decode(
    'Ch1Ib3Jpem9udGFsUG9kQXV0b3NjYWxlclN0YXR1cxIuChJvYnNlcnZlZEdlbmVyYXRpb24YAS'
    'ABKANSEm9ic2VydmVkR2VuZXJhdGlvbhJJCg1sYXN0U2NhbGVUaW1lGAIgASgLMiMuYXBpbWFj'
    'aGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVINbGFzdFNjYWxlVGltZRIoCg9jdXJyZW50Um'
    'VwbGljYXMYAyABKAVSD2N1cnJlbnRSZXBsaWNhcxIoCg9kZXNpcmVkUmVwbGljYXMYBCABKAVS'
    'D2Rlc2lyZWRSZXBsaWNhcxJICg5jdXJyZW50TWV0cmljcxgFIAMoCzIgLmFwaS5hdXRvc2NhbG'
    'luZy52Mi5NZXRyaWNTdGF0dXNSDmN1cnJlbnRNZXRyaWNzElQKCmNvbmRpdGlvbnMYBiADKAsy'
    'NC5hcGkuYXV0b3NjYWxpbmcudjIuSG9yaXpvbnRhbFBvZEF1dG9zY2FsZXJDb25kaXRpb25SCm'
    'NvbmRpdGlvbnM=');

@$core.Deprecated('Use metricIdentifierDescriptor instead')
const MetricIdentifier$json = {
  '1': 'MetricIdentifier',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'selector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
  ],
};

/// Descriptor for `MetricIdentifier`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricIdentifierDescriptor = $convert.base64Decode(
    'ChBNZXRyaWNJZGVudGlmaWVyEhIKBG5hbWUYASABKAlSBG5hbWUSSAoIc2VsZWN0b3IYAiABKA'
    'syLC5hcGltYWNoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MYWJlbFNlbGVjdG9yUghzZWxlY3Rv'
    'cg==');

@$core.Deprecated('Use metricSpecDescriptor instead')
const MetricSpec$json = {
  '1': 'MetricSpec',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'object', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.ObjectMetricSource', '10': 'object'},
    {'1': 'pods', '3': 3, '4': 1, '5': 11, '6': '.api.autoscaling.v2.PodsMetricSource', '10': 'pods'},
    {'1': 'resource', '3': 4, '4': 1, '5': 11, '6': '.api.autoscaling.v2.ResourceMetricSource', '10': 'resource'},
    {'1': 'containerResource', '3': 7, '4': 1, '5': 11, '6': '.api.autoscaling.v2.ContainerResourceMetricSource', '10': 'containerResource'},
    {'1': 'external', '3': 5, '4': 1, '5': 11, '6': '.api.autoscaling.v2.ExternalMetricSource', '10': 'external'},
  ],
};

/// Descriptor for `MetricSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricSpecDescriptor = $convert.base64Decode(
    'CgpNZXRyaWNTcGVjEhIKBHR5cGUYASABKAlSBHR5cGUSPgoGb2JqZWN0GAIgASgLMiYuYXBpLm'
    'F1dG9zY2FsaW5nLnYyLk9iamVjdE1ldHJpY1NvdXJjZVIGb2JqZWN0EjgKBHBvZHMYAyABKAsy'
    'JC5hcGkuYXV0b3NjYWxpbmcudjIuUG9kc01ldHJpY1NvdXJjZVIEcG9kcxJECghyZXNvdXJjZR'
    'gEIAEoCzIoLmFwaS5hdXRvc2NhbGluZy52Mi5SZXNvdXJjZU1ldHJpY1NvdXJjZVIIcmVzb3Vy'
    'Y2USXwoRY29udGFpbmVyUmVzb3VyY2UYByABKAsyMS5hcGkuYXV0b3NjYWxpbmcudjIuQ29udG'
    'FpbmVyUmVzb3VyY2VNZXRyaWNTb3VyY2VSEWNvbnRhaW5lclJlc291cmNlEkQKCGV4dGVybmFs'
    'GAUgASgLMiguYXBpLmF1dG9zY2FsaW5nLnYyLkV4dGVybmFsTWV0cmljU291cmNlUghleHRlcm'
    '5hbA==');

@$core.Deprecated('Use metricStatusDescriptor instead')
const MetricStatus$json = {
  '1': 'MetricStatus',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'object', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.ObjectMetricStatus', '10': 'object'},
    {'1': 'pods', '3': 3, '4': 1, '5': 11, '6': '.api.autoscaling.v2.PodsMetricStatus', '10': 'pods'},
    {'1': 'resource', '3': 4, '4': 1, '5': 11, '6': '.api.autoscaling.v2.ResourceMetricStatus', '10': 'resource'},
    {'1': 'containerResource', '3': 7, '4': 1, '5': 11, '6': '.api.autoscaling.v2.ContainerResourceMetricStatus', '10': 'containerResource'},
    {'1': 'external', '3': 5, '4': 1, '5': 11, '6': '.api.autoscaling.v2.ExternalMetricStatus', '10': 'external'},
  ],
};

/// Descriptor for `MetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricStatusDescriptor = $convert.base64Decode(
    'CgxNZXRyaWNTdGF0dXMSEgoEdHlwZRgBIAEoCVIEdHlwZRI+CgZvYmplY3QYAiABKAsyJi5hcG'
    'kuYXV0b3NjYWxpbmcudjIuT2JqZWN0TWV0cmljU3RhdHVzUgZvYmplY3QSOAoEcG9kcxgDIAEo'
    'CzIkLmFwaS5hdXRvc2NhbGluZy52Mi5Qb2RzTWV0cmljU3RhdHVzUgRwb2RzEkQKCHJlc291cm'
    'NlGAQgASgLMiguYXBpLmF1dG9zY2FsaW5nLnYyLlJlc291cmNlTWV0cmljU3RhdHVzUghyZXNv'
    'dXJjZRJfChFjb250YWluZXJSZXNvdXJjZRgHIAEoCzIxLmFwaS5hdXRvc2NhbGluZy52Mi5Db2'
    '50YWluZXJSZXNvdXJjZU1ldHJpY1N0YXR1c1IRY29udGFpbmVyUmVzb3VyY2USRAoIZXh0ZXJu'
    'YWwYBSABKAsyKC5hcGkuYXV0b3NjYWxpbmcudjIuRXh0ZXJuYWxNZXRyaWNTdGF0dXNSCGV4dG'
    'VybmFs');

@$core.Deprecated('Use metricTargetDescriptor instead')
const MetricTarget$json = {
  '1': 'MetricTarget',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
    {'1': 'averageValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'averageValue'},
    {'1': 'averageUtilization', '3': 4, '4': 1, '5': 5, '10': 'averageUtilization'},
  ],
};

/// Descriptor for `MetricTarget`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricTargetDescriptor = $convert.base64Decode(
    'CgxNZXRyaWNUYXJnZXQSEgoEdHlwZRgBIAEoCVIEdHlwZRI9CgV2YWx1ZRgCIAEoCzInLmFwaW'
    '1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZRJLCgxhdmVyYWdlVmFs'
    'dWUYAyABKAsyJy5hcGltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIMYXZlcm'
    'FnZVZhbHVlEi4KEmF2ZXJhZ2VVdGlsaXphdGlvbhgEIAEoBVISYXZlcmFnZVV0aWxpemF0aW9u');

@$core.Deprecated('Use metricValueStatusDescriptor instead')
const MetricValueStatus$json = {
  '1': 'MetricValueStatus',
  '2': [
    {'1': 'value', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'value'},
    {'1': 'averageValue', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'averageValue'},
    {'1': 'averageUtilization', '3': 3, '4': 1, '5': 5, '10': 'averageUtilization'},
  ],
};

/// Descriptor for `MetricValueStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricValueStatusDescriptor = $convert.base64Decode(
    'ChFNZXRyaWNWYWx1ZVN0YXR1cxI9CgV2YWx1ZRgBIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYX'
    'BpLnJlc291cmNlLlF1YW50aXR5UgV2YWx1ZRJLCgxhdmVyYWdlVmFsdWUYAiABKAsyJy5hcGlt'
    'YWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIMYXZlcmFnZVZhbHVlEi4KEmF2ZX'
    'JhZ2VVdGlsaXphdGlvbhgDIAEoBVISYXZlcmFnZVV0aWxpemF0aW9u');

@$core.Deprecated('Use objectMetricSourceDescriptor instead')
const ObjectMetricSource$json = {
  '1': 'ObjectMetricSource',
  '2': [
    {'1': 'describedObject', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2.CrossVersionObjectReference', '10': 'describedObject'},
    {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricTarget', '10': 'target'},
    {'1': 'metric', '3': 3, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricIdentifier', '10': 'metric'},
  ],
};

/// Descriptor for `ObjectMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectMetricSourceDescriptor = $convert.base64Decode(
    'ChJPYmplY3RNZXRyaWNTb3VyY2USWQoPZGVzY3JpYmVkT2JqZWN0GAEgASgLMi8uYXBpLmF1dG'
    '9zY2FsaW5nLnYyLkNyb3NzVmVyc2lvbk9iamVjdFJlZmVyZW5jZVIPZGVzY3JpYmVkT2JqZWN0'
    'EjgKBnRhcmdldBgCIAEoCzIgLmFwaS5hdXRvc2NhbGluZy52Mi5NZXRyaWNUYXJnZXRSBnRhcm'
    'dldBI8CgZtZXRyaWMYAyABKAsyJC5hcGkuYXV0b3NjYWxpbmcudjIuTWV0cmljSWRlbnRpZmll'
    'clIGbWV0cmlj');

@$core.Deprecated('Use objectMetricStatusDescriptor instead')
const ObjectMetricStatus$json = {
  '1': 'ObjectMetricStatus',
  '2': [
    {'1': 'metric', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricIdentifier', '10': 'metric'},
    {'1': 'current', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricValueStatus', '10': 'current'},
    {'1': 'describedObject', '3': 3, '4': 1, '5': 11, '6': '.api.autoscaling.v2.CrossVersionObjectReference', '10': 'describedObject'},
  ],
};

/// Descriptor for `ObjectMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectMetricStatusDescriptor = $convert.base64Decode(
    'ChJPYmplY3RNZXRyaWNTdGF0dXMSPAoGbWV0cmljGAEgASgLMiQuYXBpLmF1dG9zY2FsaW5nLn'
    'YyLk1ldHJpY0lkZW50aWZpZXJSBm1ldHJpYxI/CgdjdXJyZW50GAIgASgLMiUuYXBpLmF1dG9z'
    'Y2FsaW5nLnYyLk1ldHJpY1ZhbHVlU3RhdHVzUgdjdXJyZW50ElkKD2Rlc2NyaWJlZE9iamVjdB'
    'gDIAEoCzIvLmFwaS5hdXRvc2NhbGluZy52Mi5Dcm9zc1ZlcnNpb25PYmplY3RSZWZlcmVuY2VS'
    'D2Rlc2NyaWJlZE9iamVjdA==');

@$core.Deprecated('Use podsMetricSourceDescriptor instead')
const PodsMetricSource$json = {
  '1': 'PodsMetricSource',
  '2': [
    {'1': 'metric', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricIdentifier', '10': 'metric'},
    {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricTarget', '10': 'target'},
  ],
};

/// Descriptor for `PodsMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podsMetricSourceDescriptor = $convert.base64Decode(
    'ChBQb2RzTWV0cmljU291cmNlEjwKBm1ldHJpYxgBIAEoCzIkLmFwaS5hdXRvc2NhbGluZy52Mi'
    '5NZXRyaWNJZGVudGlmaWVyUgZtZXRyaWMSOAoGdGFyZ2V0GAIgASgLMiAuYXBpLmF1dG9zY2Fs'
    'aW5nLnYyLk1ldHJpY1RhcmdldFIGdGFyZ2V0');

@$core.Deprecated('Use podsMetricStatusDescriptor instead')
const PodsMetricStatus$json = {
  '1': 'PodsMetricStatus',
  '2': [
    {'1': 'metric', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricIdentifier', '10': 'metric'},
    {'1': 'current', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricValueStatus', '10': 'current'},
  ],
};

/// Descriptor for `PodsMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podsMetricStatusDescriptor = $convert.base64Decode(
    'ChBQb2RzTWV0cmljU3RhdHVzEjwKBm1ldHJpYxgBIAEoCzIkLmFwaS5hdXRvc2NhbGluZy52Mi'
    '5NZXRyaWNJZGVudGlmaWVyUgZtZXRyaWMSPwoHY3VycmVudBgCIAEoCzIlLmFwaS5hdXRvc2Nh'
    'bGluZy52Mi5NZXRyaWNWYWx1ZVN0YXR1c1IHY3VycmVudA==');

@$core.Deprecated('Use resourceMetricSourceDescriptor instead')
const ResourceMetricSource$json = {
  '1': 'ResourceMetricSource',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'target', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricTarget', '10': 'target'},
  ],
};

/// Descriptor for `ResourceMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceMetricSourceDescriptor = $convert.base64Decode(
    'ChRSZXNvdXJjZU1ldHJpY1NvdXJjZRISCgRuYW1lGAEgASgJUgRuYW1lEjgKBnRhcmdldBgCIA'
    'EoCzIgLmFwaS5hdXRvc2NhbGluZy52Mi5NZXRyaWNUYXJnZXRSBnRhcmdldA==');

@$core.Deprecated('Use resourceMetricStatusDescriptor instead')
const ResourceMetricStatus$json = {
  '1': 'ResourceMetricStatus',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'current', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2.MetricValueStatus', '10': 'current'},
  ],
};

/// Descriptor for `ResourceMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceMetricStatusDescriptor = $convert.base64Decode(
    'ChRSZXNvdXJjZU1ldHJpY1N0YXR1cxISCgRuYW1lGAEgASgJUgRuYW1lEj8KB2N1cnJlbnQYAi'
    'ABKAsyJS5hcGkuYXV0b3NjYWxpbmcudjIuTWV0cmljVmFsdWVTdGF0dXNSB2N1cnJlbnQ=');

