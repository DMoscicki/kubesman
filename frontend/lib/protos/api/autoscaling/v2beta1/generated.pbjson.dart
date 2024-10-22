//
//  Generated code. Do not modify.
//  source: api/autoscaling/v2beta1/generated.proto
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
    {'1': 'targetAverageUtilization', '3': 2, '4': 1, '5': 5, '10': 'targetAverageUtilization'},
    {'1': 'targetAverageValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'targetAverageValue'},
    {'1': 'container', '3': 4, '4': 1, '5': 9, '10': 'container'},
  ],
};

/// Descriptor for `ContainerResourceMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerResourceMetricSourceDescriptor = $convert.base64Decode(
    'Ch1Db250YWluZXJSZXNvdXJjZU1ldHJpY1NvdXJjZRISCgRuYW1lGAEgASgJUgRuYW1lEjoKGH'
    'RhcmdldEF2ZXJhZ2VVdGlsaXphdGlvbhgCIAEoBVIYdGFyZ2V0QXZlcmFnZVV0aWxpemF0aW9u'
    'ElcKEnRhcmdldEF2ZXJhZ2VWYWx1ZRgDIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc2'
    '91cmNlLlF1YW50aXR5UhJ0YXJnZXRBdmVyYWdlVmFsdWUSHAoJY29udGFpbmVyGAQgASgJUglj'
    'b250YWluZXI=');

@$core.Deprecated('Use containerResourceMetricStatusDescriptor instead')
const ContainerResourceMetricStatus$json = {
  '1': 'ContainerResourceMetricStatus',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'currentAverageUtilization', '3': 2, '4': 1, '5': 5, '10': 'currentAverageUtilization'},
    {'1': 'currentAverageValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'currentAverageValue'},
    {'1': 'container', '3': 4, '4': 1, '5': 9, '10': 'container'},
  ],
};

/// Descriptor for `ContainerResourceMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List containerResourceMetricStatusDescriptor = $convert.base64Decode(
    'Ch1Db250YWluZXJSZXNvdXJjZU1ldHJpY1N0YXR1cxISCgRuYW1lGAEgASgJUgRuYW1lEjwKGW'
    'N1cnJlbnRBdmVyYWdlVXRpbGl6YXRpb24YAiABKAVSGWN1cnJlbnRBdmVyYWdlVXRpbGl6YXRp'
    'b24SWQoTY3VycmVudEF2ZXJhZ2VWYWx1ZRgDIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLn'
    'Jlc291cmNlLlF1YW50aXR5UhNjdXJyZW50QXZlcmFnZVZhbHVlEhwKCWNvbnRhaW5lchgEIAEo'
    'CVIJY29udGFpbmVy');

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
    {'1': 'metricName', '3': 1, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'metricSelector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'metricSelector'},
    {'1': 'targetValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'targetValue'},
    {'1': 'targetAverageValue', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'targetAverageValue'},
  ],
};

/// Descriptor for `ExternalMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List externalMetricSourceDescriptor = $convert.base64Decode(
    'ChRFeHRlcm5hbE1ldHJpY1NvdXJjZRIeCgptZXRyaWNOYW1lGAEgASgJUgptZXRyaWNOYW1lEl'
    'QKDm1ldHJpY1NlbGVjdG9yGAIgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEu'
    'TGFiZWxTZWxlY3RvclIObWV0cmljU2VsZWN0b3ISSQoLdGFyZ2V0VmFsdWUYAyABKAsyJy5hcG'
    'ltYWNoaW5lcnkucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVILdGFyZ2V0VmFsdWUSVwoSdGFy'
    'Z2V0QXZlcmFnZVZhbHVlGAQgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGkucmVzb3VyY2UuUX'
    'VhbnRpdHlSEnRhcmdldEF2ZXJhZ2VWYWx1ZQ==');

@$core.Deprecated('Use externalMetricStatusDescriptor instead')
const ExternalMetricStatus$json = {
  '1': 'ExternalMetricStatus',
  '2': [
    {'1': 'metricName', '3': 1, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'metricSelector', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'metricSelector'},
    {'1': 'currentValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'currentValue'},
    {'1': 'currentAverageValue', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'currentAverageValue'},
  ],
};

/// Descriptor for `ExternalMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List externalMetricStatusDescriptor = $convert.base64Decode(
    'ChRFeHRlcm5hbE1ldHJpY1N0YXR1cxIeCgptZXRyaWNOYW1lGAEgASgJUgptZXRyaWNOYW1lEl'
    'QKDm1ldHJpY1NlbGVjdG9yGAIgASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEu'
    'TGFiZWxTZWxlY3RvclIObWV0cmljU2VsZWN0b3ISSwoMY3VycmVudFZhbHVlGAMgASgLMicuYX'
    'BpbWFjaGluZXJ5LnBrZy5hcGkucmVzb3VyY2UuUXVhbnRpdHlSDGN1cnJlbnRWYWx1ZRJZChNj'
    'dXJyZW50QXZlcmFnZVZhbHVlGAQgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGkucmVzb3VyY2'
    'UuUXVhbnRpdHlSE2N1cnJlbnRBdmVyYWdlVmFsdWU=');

@$core.Deprecated('Use horizontalPodAutoscalerDescriptor instead')
const HorizontalPodAutoscaler$json = {
  '1': 'HorizontalPodAutoscaler',
  '2': [
    {'1': 'metadata', '3': 1, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.ObjectMeta', '10': 'metadata'},
    {'1': 'spec', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.HorizontalPodAutoscalerSpec', '10': 'spec'},
    {'1': 'status', '3': 3, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.HorizontalPodAutoscalerStatus', '10': 'status'},
  ],
};

/// Descriptor for `HorizontalPodAutoscaler`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerDescriptor = $convert.base64Decode(
    'ChdIb3Jpem9udGFsUG9kQXV0b3NjYWxlchJFCghtZXRhZGF0YRgBIAEoCzIpLmFwaW1hY2hpbm'
    'VyeS5wa2cuYXBpcy5tZXRhLnYxLk9iamVjdE1ldGFSCG1ldGFkYXRhEkgKBHNwZWMYAiABKAsy'
    'NC5hcGkuYXV0b3NjYWxpbmcudjJiZXRhMS5Ib3Jpem9udGFsUG9kQXV0b3NjYWxlclNwZWNSBH'
    'NwZWMSTgoGc3RhdHVzGAMgASgLMjYuYXBpLmF1dG9zY2FsaW5nLnYyYmV0YTEuSG9yaXpvbnRh'
    'bFBvZEF1dG9zY2FsZXJTdGF0dXNSBnN0YXR1cw==');

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
    {'1': 'items', '3': 2, '4': 3, '5': 11, '6': '.api.autoscaling.v2beta1.HorizontalPodAutoscaler', '10': 'items'},
  ],
};

/// Descriptor for `HorizontalPodAutoscalerList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerListDescriptor = $convert.base64Decode(
    'ChtIb3Jpem9udGFsUG9kQXV0b3NjYWxlckxpc3QSQwoIbWV0YWRhdGEYASABKAsyJy5hcGltYW'
    'NoaW5lcnkucGtnLmFwaXMubWV0YS52MS5MaXN0TWV0YVIIbWV0YWRhdGESRgoFaXRlbXMYAiAD'
    'KAsyMC5hcGkuYXV0b3NjYWxpbmcudjJiZXRhMS5Ib3Jpem9udGFsUG9kQXV0b3NjYWxlclIFaX'
    'RlbXM=');

@$core.Deprecated('Use horizontalPodAutoscalerSpecDescriptor instead')
const HorizontalPodAutoscalerSpec$json = {
  '1': 'HorizontalPodAutoscalerSpec',
  '2': [
    {'1': 'scaleTargetRef', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.CrossVersionObjectReference', '10': 'scaleTargetRef'},
    {'1': 'minReplicas', '3': 2, '4': 1, '5': 5, '10': 'minReplicas'},
    {'1': 'maxReplicas', '3': 3, '4': 1, '5': 5, '10': 'maxReplicas'},
    {'1': 'metrics', '3': 4, '4': 3, '5': 11, '6': '.api.autoscaling.v2beta1.MetricSpec', '10': 'metrics'},
  ],
};

/// Descriptor for `HorizontalPodAutoscalerSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerSpecDescriptor = $convert.base64Decode(
    'ChtIb3Jpem9udGFsUG9kQXV0b3NjYWxlclNwZWMSXAoOc2NhbGVUYXJnZXRSZWYYASABKAsyNC'
    '5hcGkuYXV0b3NjYWxpbmcudjJiZXRhMS5Dcm9zc1ZlcnNpb25PYmplY3RSZWZlcmVuY2VSDnNj'
    'YWxlVGFyZ2V0UmVmEiAKC21pblJlcGxpY2FzGAIgASgFUgttaW5SZXBsaWNhcxIgCgttYXhSZX'
    'BsaWNhcxgDIAEoBVILbWF4UmVwbGljYXMSPQoHbWV0cmljcxgEIAMoCzIjLmFwaS5hdXRvc2Nh'
    'bGluZy52MmJldGExLk1ldHJpY1NwZWNSB21ldHJpY3M=');

@$core.Deprecated('Use horizontalPodAutoscalerStatusDescriptor instead')
const HorizontalPodAutoscalerStatus$json = {
  '1': 'HorizontalPodAutoscalerStatus',
  '2': [
    {'1': 'observedGeneration', '3': 1, '4': 1, '5': 3, '10': 'observedGeneration'},
    {'1': 'lastScaleTime', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.Time', '10': 'lastScaleTime'},
    {'1': 'currentReplicas', '3': 3, '4': 1, '5': 5, '10': 'currentReplicas'},
    {'1': 'desiredReplicas', '3': 4, '4': 1, '5': 5, '10': 'desiredReplicas'},
    {'1': 'currentMetrics', '3': 5, '4': 3, '5': 11, '6': '.api.autoscaling.v2beta1.MetricStatus', '10': 'currentMetrics'},
    {'1': 'conditions', '3': 6, '4': 3, '5': 11, '6': '.api.autoscaling.v2beta1.HorizontalPodAutoscalerCondition', '10': 'conditions'},
  ],
};

/// Descriptor for `HorizontalPodAutoscalerStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List horizontalPodAutoscalerStatusDescriptor = $convert.base64Decode(
    'Ch1Ib3Jpem9udGFsUG9kQXV0b3NjYWxlclN0YXR1cxIuChJvYnNlcnZlZEdlbmVyYXRpb24YAS'
    'ABKANSEm9ic2VydmVkR2VuZXJhdGlvbhJJCg1sYXN0U2NhbGVUaW1lGAIgASgLMiMuYXBpbWFj'
    'aGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuVGltZVINbGFzdFNjYWxlVGltZRIoCg9jdXJyZW50Um'
    'VwbGljYXMYAyABKAVSD2N1cnJlbnRSZXBsaWNhcxIoCg9kZXNpcmVkUmVwbGljYXMYBCABKAVS'
    'D2Rlc2lyZWRSZXBsaWNhcxJNCg5jdXJyZW50TWV0cmljcxgFIAMoCzIlLmFwaS5hdXRvc2NhbG'
    'luZy52MmJldGExLk1ldHJpY1N0YXR1c1IOY3VycmVudE1ldHJpY3MSWQoKY29uZGl0aW9ucxgG'
    'IAMoCzI5LmFwaS5hdXRvc2NhbGluZy52MmJldGExLkhvcml6b250YWxQb2RBdXRvc2NhbGVyQ2'
    '9uZGl0aW9uUgpjb25kaXRpb25z');

@$core.Deprecated('Use metricSpecDescriptor instead')
const MetricSpec$json = {
  '1': 'MetricSpec',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'object', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.ObjectMetricSource', '10': 'object'},
    {'1': 'pods', '3': 3, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.PodsMetricSource', '10': 'pods'},
    {'1': 'resource', '3': 4, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.ResourceMetricSource', '10': 'resource'},
    {'1': 'containerResource', '3': 7, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.ContainerResourceMetricSource', '10': 'containerResource'},
    {'1': 'external', '3': 5, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.ExternalMetricSource', '10': 'external'},
  ],
};

/// Descriptor for `MetricSpec`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricSpecDescriptor = $convert.base64Decode(
    'CgpNZXRyaWNTcGVjEhIKBHR5cGUYASABKAlSBHR5cGUSQwoGb2JqZWN0GAIgASgLMisuYXBpLm'
    'F1dG9zY2FsaW5nLnYyYmV0YTEuT2JqZWN0TWV0cmljU291cmNlUgZvYmplY3QSPQoEcG9kcxgD'
    'IAEoCzIpLmFwaS5hdXRvc2NhbGluZy52MmJldGExLlBvZHNNZXRyaWNTb3VyY2VSBHBvZHMSSQ'
    'oIcmVzb3VyY2UYBCABKAsyLS5hcGkuYXV0b3NjYWxpbmcudjJiZXRhMS5SZXNvdXJjZU1ldHJp'
    'Y1NvdXJjZVIIcmVzb3VyY2USZAoRY29udGFpbmVyUmVzb3VyY2UYByABKAsyNi5hcGkuYXV0b3'
    'NjYWxpbmcudjJiZXRhMS5Db250YWluZXJSZXNvdXJjZU1ldHJpY1NvdXJjZVIRY29udGFpbmVy'
    'UmVzb3VyY2USSQoIZXh0ZXJuYWwYBSABKAsyLS5hcGkuYXV0b3NjYWxpbmcudjJiZXRhMS5FeH'
    'Rlcm5hbE1ldHJpY1NvdXJjZVIIZXh0ZXJuYWw=');

@$core.Deprecated('Use metricStatusDescriptor instead')
const MetricStatus$json = {
  '1': 'MetricStatus',
  '2': [
    {'1': 'type', '3': 1, '4': 1, '5': 9, '10': 'type'},
    {'1': 'object', '3': 2, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.ObjectMetricStatus', '10': 'object'},
    {'1': 'pods', '3': 3, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.PodsMetricStatus', '10': 'pods'},
    {'1': 'resource', '3': 4, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.ResourceMetricStatus', '10': 'resource'},
    {'1': 'containerResource', '3': 7, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.ContainerResourceMetricStatus', '10': 'containerResource'},
    {'1': 'external', '3': 5, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.ExternalMetricStatus', '10': 'external'},
  ],
};

/// Descriptor for `MetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List metricStatusDescriptor = $convert.base64Decode(
    'CgxNZXRyaWNTdGF0dXMSEgoEdHlwZRgBIAEoCVIEdHlwZRJDCgZvYmplY3QYAiABKAsyKy5hcG'
    'kuYXV0b3NjYWxpbmcudjJiZXRhMS5PYmplY3RNZXRyaWNTdGF0dXNSBm9iamVjdBI9CgRwb2Rz'
    'GAMgASgLMikuYXBpLmF1dG9zY2FsaW5nLnYyYmV0YTEuUG9kc01ldHJpY1N0YXR1c1IEcG9kcx'
    'JJCghyZXNvdXJjZRgEIAEoCzItLmFwaS5hdXRvc2NhbGluZy52MmJldGExLlJlc291cmNlTWV0'
    'cmljU3RhdHVzUghyZXNvdXJjZRJkChFjb250YWluZXJSZXNvdXJjZRgHIAEoCzI2LmFwaS5hdX'
    'Rvc2NhbGluZy52MmJldGExLkNvbnRhaW5lclJlc291cmNlTWV0cmljU3RhdHVzUhFjb250YWlu'
    'ZXJSZXNvdXJjZRJJCghleHRlcm5hbBgFIAEoCzItLmFwaS5hdXRvc2NhbGluZy52MmJldGExLk'
    'V4dGVybmFsTWV0cmljU3RhdHVzUghleHRlcm5hbA==');

@$core.Deprecated('Use objectMetricSourceDescriptor instead')
const ObjectMetricSource$json = {
  '1': 'ObjectMetricSource',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.CrossVersionObjectReference', '10': 'target'},
    {'1': 'metricName', '3': 2, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'targetValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'targetValue'},
    {'1': 'selector', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'averageValue', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'averageValue'},
  ],
};

/// Descriptor for `ObjectMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectMetricSourceDescriptor = $convert.base64Decode(
    'ChJPYmplY3RNZXRyaWNTb3VyY2USTAoGdGFyZ2V0GAEgASgLMjQuYXBpLmF1dG9zY2FsaW5nLn'
    'YyYmV0YTEuQ3Jvc3NWZXJzaW9uT2JqZWN0UmVmZXJlbmNlUgZ0YXJnZXQSHgoKbWV0cmljTmFt'
    'ZRgCIAEoCVIKbWV0cmljTmFtZRJJCgt0YXJnZXRWYWx1ZRgDIAEoCzInLmFwaW1hY2hpbmVyeS'
    '5wa2cuYXBpLnJlc291cmNlLlF1YW50aXR5Ugt0YXJnZXRWYWx1ZRJICghzZWxlY3RvchgEIAEo'
    'CzIsLmFwaW1hY2hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSCHNlbGVjdG'
    '9yEksKDGF2ZXJhZ2VWYWx1ZRgFIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNl'
    'LlF1YW50aXR5UgxhdmVyYWdlVmFsdWU=');

@$core.Deprecated('Use objectMetricStatusDescriptor instead')
const ObjectMetricStatus$json = {
  '1': 'ObjectMetricStatus',
  '2': [
    {'1': 'target', '3': 1, '4': 1, '5': 11, '6': '.api.autoscaling.v2beta1.CrossVersionObjectReference', '10': 'target'},
    {'1': 'metricName', '3': 2, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'currentValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'currentValue'},
    {'1': 'selector', '3': 4, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
    {'1': 'averageValue', '3': 5, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'averageValue'},
  ],
};

/// Descriptor for `ObjectMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List objectMetricStatusDescriptor = $convert.base64Decode(
    'ChJPYmplY3RNZXRyaWNTdGF0dXMSTAoGdGFyZ2V0GAEgASgLMjQuYXBpLmF1dG9zY2FsaW5nLn'
    'YyYmV0YTEuQ3Jvc3NWZXJzaW9uT2JqZWN0UmVmZXJlbmNlUgZ0YXJnZXQSHgoKbWV0cmljTmFt'
    'ZRgCIAEoCVIKbWV0cmljTmFtZRJLCgxjdXJyZW50VmFsdWUYAyABKAsyJy5hcGltYWNoaW5lcn'
    'kucGtnLmFwaS5yZXNvdXJjZS5RdWFudGl0eVIMY3VycmVudFZhbHVlEkgKCHNlbGVjdG9yGAQg'
    'ASgLMiwuYXBpbWFjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGFiZWxTZWxlY3RvclIIc2VsZW'
    'N0b3ISSwoMYXZlcmFnZVZhbHVlGAUgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGkucmVzb3Vy'
    'Y2UuUXVhbnRpdHlSDGF2ZXJhZ2VWYWx1ZQ==');

@$core.Deprecated('Use podsMetricSourceDescriptor instead')
const PodsMetricSource$json = {
  '1': 'PodsMetricSource',
  '2': [
    {'1': 'metricName', '3': 1, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'targetAverageValue', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'targetAverageValue'},
    {'1': 'selector', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
  ],
};

/// Descriptor for `PodsMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podsMetricSourceDescriptor = $convert.base64Decode(
    'ChBQb2RzTWV0cmljU291cmNlEh4KCm1ldHJpY05hbWUYASABKAlSCm1ldHJpY05hbWUSVwoSdG'
    'FyZ2V0QXZlcmFnZVZhbHVlGAIgASgLMicuYXBpbWFjaGluZXJ5LnBrZy5hcGkucmVzb3VyY2Uu'
    'UXVhbnRpdHlSEnRhcmdldEF2ZXJhZ2VWYWx1ZRJICghzZWxlY3RvchgDIAEoCzIsLmFwaW1hY2'
    'hpbmVyeS5wa2cuYXBpcy5tZXRhLnYxLkxhYmVsU2VsZWN0b3JSCHNlbGVjdG9y');

@$core.Deprecated('Use podsMetricStatusDescriptor instead')
const PodsMetricStatus$json = {
  '1': 'PodsMetricStatus',
  '2': [
    {'1': 'metricName', '3': 1, '4': 1, '5': 9, '10': 'metricName'},
    {'1': 'currentAverageValue', '3': 2, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'currentAverageValue'},
    {'1': 'selector', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.apis.meta.v1.LabelSelector', '10': 'selector'},
  ],
};

/// Descriptor for `PodsMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List podsMetricStatusDescriptor = $convert.base64Decode(
    'ChBQb2RzTWV0cmljU3RhdHVzEh4KCm1ldHJpY05hbWUYASABKAlSCm1ldHJpY05hbWUSWQoTY3'
    'VycmVudEF2ZXJhZ2VWYWx1ZRgCIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNl'
    'LlF1YW50aXR5UhNjdXJyZW50QXZlcmFnZVZhbHVlEkgKCHNlbGVjdG9yGAMgASgLMiwuYXBpbW'
    'FjaGluZXJ5LnBrZy5hcGlzLm1ldGEudjEuTGFiZWxTZWxlY3RvclIIc2VsZWN0b3I=');

@$core.Deprecated('Use resourceMetricSourceDescriptor instead')
const ResourceMetricSource$json = {
  '1': 'ResourceMetricSource',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'targetAverageUtilization', '3': 2, '4': 1, '5': 5, '10': 'targetAverageUtilization'},
    {'1': 'targetAverageValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'targetAverageValue'},
  ],
};

/// Descriptor for `ResourceMetricSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceMetricSourceDescriptor = $convert.base64Decode(
    'ChRSZXNvdXJjZU1ldHJpY1NvdXJjZRISCgRuYW1lGAEgASgJUgRuYW1lEjoKGHRhcmdldEF2ZX'
    'JhZ2VVdGlsaXphdGlvbhgCIAEoBVIYdGFyZ2V0QXZlcmFnZVV0aWxpemF0aW9uElcKEnRhcmdl'
    'dEF2ZXJhZ2VWYWx1ZRgDIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLlF1YW'
    '50aXR5UhJ0YXJnZXRBdmVyYWdlVmFsdWU=');

@$core.Deprecated('Use resourceMetricStatusDescriptor instead')
const ResourceMetricStatus$json = {
  '1': 'ResourceMetricStatus',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'currentAverageUtilization', '3': 2, '4': 1, '5': 5, '10': 'currentAverageUtilization'},
    {'1': 'currentAverageValue', '3': 3, '4': 1, '5': 11, '6': '.apimachinery.pkg.api.resource.Quantity', '10': 'currentAverageValue'},
  ],
};

/// Descriptor for `ResourceMetricStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resourceMetricStatusDescriptor = $convert.base64Decode(
    'ChRSZXNvdXJjZU1ldHJpY1N0YXR1cxISCgRuYW1lGAEgASgJUgRuYW1lEjwKGWN1cnJlbnRBdm'
    'VyYWdlVXRpbGl6YXRpb24YAiABKAVSGWN1cnJlbnRBdmVyYWdlVXRpbGl6YXRpb24SWQoTY3Vy'
    'cmVudEF2ZXJhZ2VWYWx1ZRgDIAEoCzInLmFwaW1hY2hpbmVyeS5wa2cuYXBpLnJlc291cmNlLl'
    'F1YW50aXR5UhNjdXJyZW50QXZlcmFnZVZhbHVl');

