//
//  Generated code. Do not modify.
//  source: api/autoscaling/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/api/resource/generated.pb.dart' as $0;
import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $1;

/// ContainerResourceMetricSource indicates how to scale on a resource metric known to
/// Kubernetes, as specified in the requests and limits, describing a single container in
/// each of the pods of the current scale target(e.g. CPU or memory). The values will be
/// averaged together before being compared to the target. Such metrics are built into
/// Kubernetes, and have special scaling options on top of those available to
/// normal per-pod metrics using the "pods" source. Only one "target" type
/// should be set.
class ContainerResourceMetricSource extends $pb.GeneratedMessage {
  factory ContainerResourceMetricSource({
    $core.String? name,
    $core.int? targetAverageUtilization,
    $0.Quantity? targetAverageValue,
    $core.String? container,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (targetAverageUtilization != null) {
      $result.targetAverageUtilization = targetAverageUtilization;
    }
    if (targetAverageValue != null) {
      $result.targetAverageValue = targetAverageValue;
    }
    if (container != null) {
      $result.container = container;
    }
    return $result;
  }
  ContainerResourceMetricSource._() : super();
  factory ContainerResourceMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerResourceMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContainerResourceMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'targetAverageUtilization', $pb.PbFieldType.O3, protoName: 'targetAverageUtilization')
    ..aOM<$0.Quantity>(3, _omitFieldNames ? '' : 'targetAverageValue', protoName: 'targetAverageValue', subBuilder: $0.Quantity.create)
    ..aOS(5, _omitFieldNames ? '' : 'container')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerResourceMetricSource clone() => ContainerResourceMetricSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerResourceMetricSource copyWith(void Function(ContainerResourceMetricSource) updates) => super.copyWith((message) => updates(message as ContainerResourceMetricSource)) as ContainerResourceMetricSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContainerResourceMetricSource create() => ContainerResourceMetricSource._();
  ContainerResourceMetricSource createEmptyInstance() => create();
  static $pb.PbList<ContainerResourceMetricSource> createRepeated() => $pb.PbList<ContainerResourceMetricSource>();
  @$core.pragma('dart2js:noInline')
  static ContainerResourceMetricSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerResourceMetricSource>(create);
  static ContainerResourceMetricSource? _defaultInstance;

  /// name is the name of the resource in question.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// targetAverageUtilization is the target value of the average of the
  /// resource metric across all relevant pods, represented as a percentage of
  /// the requested value of the resource for the pods.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get targetAverageUtilization => $_getIZ(1);
  @$pb.TagNumber(2)
  set targetAverageUtilization($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetAverageUtilization() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetAverageUtilization() => clearField(2);

  /// targetAverageValue is the target value of the average of the
  /// resource metric across all relevant pods, as a raw value (instead of as
  /// a percentage of the request), similar to the "pods" metric source type.
  /// +optional
  @$pb.TagNumber(3)
  $0.Quantity get targetAverageValue => $_getN(2);
  @$pb.TagNumber(3)
  set targetAverageValue($0.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetAverageValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetAverageValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Quantity ensureTargetAverageValue() => $_ensure(2);

  /// container is the name of the container in the pods of the scaling target.
  @$pb.TagNumber(5)
  $core.String get container => $_getSZ(3);
  @$pb.TagNumber(5)
  set container($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasContainer() => $_has(3);
  @$pb.TagNumber(5)
  void clearContainer() => clearField(5);
}

/// ContainerResourceMetricStatus indicates the current value of a resource metric known to
/// Kubernetes, as specified in requests and limits, describing a single container in each pod in the
/// current scale target (e.g. CPU or memory).  Such metrics are built in to
/// Kubernetes, and have special scaling options on top of those available to
/// normal per-pod metrics using the "pods" source.
class ContainerResourceMetricStatus extends $pb.GeneratedMessage {
  factory ContainerResourceMetricStatus({
    $core.String? name,
    $core.int? currentAverageUtilization,
    $0.Quantity? currentAverageValue,
    $core.String? container,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (currentAverageUtilization != null) {
      $result.currentAverageUtilization = currentAverageUtilization;
    }
    if (currentAverageValue != null) {
      $result.currentAverageValue = currentAverageValue;
    }
    if (container != null) {
      $result.container = container;
    }
    return $result;
  }
  ContainerResourceMetricStatus._() : super();
  factory ContainerResourceMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerResourceMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContainerResourceMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'currentAverageUtilization', $pb.PbFieldType.O3, protoName: 'currentAverageUtilization')
    ..aOM<$0.Quantity>(3, _omitFieldNames ? '' : 'currentAverageValue', protoName: 'currentAverageValue', subBuilder: $0.Quantity.create)
    ..aOS(4, _omitFieldNames ? '' : 'container')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerResourceMetricStatus clone() => ContainerResourceMetricStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerResourceMetricStatus copyWith(void Function(ContainerResourceMetricStatus) updates) => super.copyWith((message) => updates(message as ContainerResourceMetricStatus)) as ContainerResourceMetricStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContainerResourceMetricStatus create() => ContainerResourceMetricStatus._();
  ContainerResourceMetricStatus createEmptyInstance() => create();
  static $pb.PbList<ContainerResourceMetricStatus> createRepeated() => $pb.PbList<ContainerResourceMetricStatus>();
  @$core.pragma('dart2js:noInline')
  static ContainerResourceMetricStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerResourceMetricStatus>(create);
  static ContainerResourceMetricStatus? _defaultInstance;

  /// name is the name of the resource in question.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// currentAverageUtilization is the current value of the average of the
  /// resource metric across all relevant pods, represented as a percentage of
  /// the requested value of the resource for the pods.  It will only be
  /// present if `targetAverageValue` was set in the corresponding metric
  /// specification.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get currentAverageUtilization => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentAverageUtilization($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentAverageUtilization() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentAverageUtilization() => clearField(2);

  /// currentAverageValue is the current value of the average of the
  /// resource metric across all relevant pods, as a raw value (instead of as
  /// a percentage of the request), similar to the "pods" metric source type.
  /// It will always be set, regardless of the corresponding metric specification.
  @$pb.TagNumber(3)
  $0.Quantity get currentAverageValue => $_getN(2);
  @$pb.TagNumber(3)
  set currentAverageValue($0.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentAverageValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentAverageValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Quantity ensureCurrentAverageValue() => $_ensure(2);

  /// container is the name of the container in the pods of the scaling taget
  @$pb.TagNumber(4)
  $core.String get container => $_getSZ(3);
  @$pb.TagNumber(4)
  set container($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContainer() => $_has(3);
  @$pb.TagNumber(4)
  void clearContainer() => clearField(4);
}

/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
/// +structType=atomic
class CrossVersionObjectReference extends $pb.GeneratedMessage {
  factory CrossVersionObjectReference({
    $core.String? kind,
    $core.String? name,
    $core.String? apiVersion,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (name != null) {
      $result.name = name;
    }
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    return $result;
  }
  CrossVersionObjectReference._() : super();
  factory CrossVersionObjectReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CrossVersionObjectReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CrossVersionObjectReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'apiVersion', protoName: 'apiVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CrossVersionObjectReference clone() => CrossVersionObjectReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CrossVersionObjectReference copyWith(void Function(CrossVersionObjectReference) updates) => super.copyWith((message) => updates(message as CrossVersionObjectReference)) as CrossVersionObjectReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CrossVersionObjectReference create() => CrossVersionObjectReference._();
  CrossVersionObjectReference createEmptyInstance() => create();
  static $pb.PbList<CrossVersionObjectReference> createRepeated() => $pb.PbList<CrossVersionObjectReference>();
  @$core.pragma('dart2js:noInline')
  static CrossVersionObjectReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CrossVersionObjectReference>(create);
  static CrossVersionObjectReference? _defaultInstance;

  /// kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  /// name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// apiVersion is the API version of the referent
  /// +optional
  @$pb.TagNumber(3)
  $core.String get apiVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set apiVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApiVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearApiVersion() => clearField(3);
}

/// ExternalMetricSource indicates how to scale on a metric not associated with
/// any Kubernetes object (for example length of queue in cloud
/// messaging service, or QPS from loadbalancer running outside of cluster).
class ExternalMetricSource extends $pb.GeneratedMessage {
  factory ExternalMetricSource({
    $core.String? metricName,
    $1.LabelSelector? metricSelector,
    $0.Quantity? targetValue,
    $0.Quantity? targetAverageValue,
  }) {
    final $result = create();
    if (metricName != null) {
      $result.metricName = metricName;
    }
    if (metricSelector != null) {
      $result.metricSelector = metricSelector;
    }
    if (targetValue != null) {
      $result.targetValue = targetValue;
    }
    if (targetAverageValue != null) {
      $result.targetAverageValue = targetAverageValue;
    }
    return $result;
  }
  ExternalMetricSource._() : super();
  factory ExternalMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExternalMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExternalMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metricName', protoName: 'metricName')
    ..aOM<$1.LabelSelector>(2, _omitFieldNames ? '' : 'metricSelector', protoName: 'metricSelector', subBuilder: $1.LabelSelector.create)
    ..aOM<$0.Quantity>(3, _omitFieldNames ? '' : 'targetValue', protoName: 'targetValue', subBuilder: $0.Quantity.create)
    ..aOM<$0.Quantity>(4, _omitFieldNames ? '' : 'targetAverageValue', protoName: 'targetAverageValue', subBuilder: $0.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExternalMetricSource clone() => ExternalMetricSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExternalMetricSource copyWith(void Function(ExternalMetricSource) updates) => super.copyWith((message) => updates(message as ExternalMetricSource)) as ExternalMetricSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExternalMetricSource create() => ExternalMetricSource._();
  ExternalMetricSource createEmptyInstance() => create();
  static $pb.PbList<ExternalMetricSource> createRepeated() => $pb.PbList<ExternalMetricSource>();
  @$core.pragma('dart2js:noInline')
  static ExternalMetricSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExternalMetricSource>(create);
  static ExternalMetricSource? _defaultInstance;

  /// metricName is the name of the metric in question.
  @$pb.TagNumber(1)
  $core.String get metricName => $_getSZ(0);
  @$pb.TagNumber(1)
  set metricName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetricName() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetricName() => clearField(1);

  /// metricSelector is used to identify a specific time series
  /// within a given metric.
  /// +optional
  @$pb.TagNumber(2)
  $1.LabelSelector get metricSelector => $_getN(1);
  @$pb.TagNumber(2)
  set metricSelector($1.LabelSelector v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetricSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetricSelector() => clearField(2);
  @$pb.TagNumber(2)
  $1.LabelSelector ensureMetricSelector() => $_ensure(1);

  /// targetValue is the target value of the metric (as a quantity).
  /// Mutually exclusive with TargetAverageValue.
  /// +optional
  @$pb.TagNumber(3)
  $0.Quantity get targetValue => $_getN(2);
  @$pb.TagNumber(3)
  set targetValue($0.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Quantity ensureTargetValue() => $_ensure(2);

  /// targetAverageValue is the target per-pod value of global metric (as a quantity).
  /// Mutually exclusive with TargetValue.
  /// +optional
  @$pb.TagNumber(4)
  $0.Quantity get targetAverageValue => $_getN(3);
  @$pb.TagNumber(4)
  set targetAverageValue($0.Quantity v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTargetAverageValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetAverageValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Quantity ensureTargetAverageValue() => $_ensure(3);
}

/// ExternalMetricStatus indicates the current value of a global metric
/// not associated with any Kubernetes object.
class ExternalMetricStatus extends $pb.GeneratedMessage {
  factory ExternalMetricStatus({
    $core.String? metricName,
    $1.LabelSelector? metricSelector,
    $0.Quantity? currentValue,
    $0.Quantity? currentAverageValue,
  }) {
    final $result = create();
    if (metricName != null) {
      $result.metricName = metricName;
    }
    if (metricSelector != null) {
      $result.metricSelector = metricSelector;
    }
    if (currentValue != null) {
      $result.currentValue = currentValue;
    }
    if (currentAverageValue != null) {
      $result.currentAverageValue = currentAverageValue;
    }
    return $result;
  }
  ExternalMetricStatus._() : super();
  factory ExternalMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExternalMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExternalMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metricName', protoName: 'metricName')
    ..aOM<$1.LabelSelector>(2, _omitFieldNames ? '' : 'metricSelector', protoName: 'metricSelector', subBuilder: $1.LabelSelector.create)
    ..aOM<$0.Quantity>(3, _omitFieldNames ? '' : 'currentValue', protoName: 'currentValue', subBuilder: $0.Quantity.create)
    ..aOM<$0.Quantity>(4, _omitFieldNames ? '' : 'currentAverageValue', protoName: 'currentAverageValue', subBuilder: $0.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExternalMetricStatus clone() => ExternalMetricStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExternalMetricStatus copyWith(void Function(ExternalMetricStatus) updates) => super.copyWith((message) => updates(message as ExternalMetricStatus)) as ExternalMetricStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExternalMetricStatus create() => ExternalMetricStatus._();
  ExternalMetricStatus createEmptyInstance() => create();
  static $pb.PbList<ExternalMetricStatus> createRepeated() => $pb.PbList<ExternalMetricStatus>();
  @$core.pragma('dart2js:noInline')
  static ExternalMetricStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExternalMetricStatus>(create);
  static ExternalMetricStatus? _defaultInstance;

  /// metricName is the name of a metric used for autoscaling in
  /// metric system.
  @$pb.TagNumber(1)
  $core.String get metricName => $_getSZ(0);
  @$pb.TagNumber(1)
  set metricName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetricName() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetricName() => clearField(1);

  /// metricSelector is used to identify a specific time series
  /// within a given metric.
  /// +optional
  @$pb.TagNumber(2)
  $1.LabelSelector get metricSelector => $_getN(1);
  @$pb.TagNumber(2)
  set metricSelector($1.LabelSelector v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetricSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetricSelector() => clearField(2);
  @$pb.TagNumber(2)
  $1.LabelSelector ensureMetricSelector() => $_ensure(1);

  /// currentValue is the current value of the metric (as a quantity)
  @$pb.TagNumber(3)
  $0.Quantity get currentValue => $_getN(2);
  @$pb.TagNumber(3)
  set currentValue($0.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Quantity ensureCurrentValue() => $_ensure(2);

  /// currentAverageValue is the current value of metric averaged over autoscaled pods.
  /// +optional
  @$pb.TagNumber(4)
  $0.Quantity get currentAverageValue => $_getN(3);
  @$pb.TagNumber(4)
  set currentAverageValue($0.Quantity v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrentAverageValue() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentAverageValue() => clearField(4);
  @$pb.TagNumber(4)
  $0.Quantity ensureCurrentAverageValue() => $_ensure(3);
}

/// configuration of a horizontal pod autoscaler.
class HorizontalPodAutoscaler extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscaler({
    $1.ObjectMeta? metadata,
    HorizontalPodAutoscalerSpec? spec,
    HorizontalPodAutoscalerStatus? status,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (spec != null) {
      $result.spec = spec;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  HorizontalPodAutoscaler._() : super();
  factory HorizontalPodAutoscaler.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HorizontalPodAutoscaler.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscaler', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOM<$1.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ObjectMeta.create)
    ..aOM<HorizontalPodAutoscalerSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: HorizontalPodAutoscalerSpec.create)
    ..aOM<HorizontalPodAutoscalerStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: HorizontalPodAutoscalerStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscaler clone() => HorizontalPodAutoscaler()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscaler copyWith(void Function(HorizontalPodAutoscaler) updates) => super.copyWith((message) => updates(message as HorizontalPodAutoscaler)) as HorizontalPodAutoscaler;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscaler create() => HorizontalPodAutoscaler._();
  HorizontalPodAutoscaler createEmptyInstance() => create();
  static $pb.PbList<HorizontalPodAutoscaler> createRepeated() => $pb.PbList<HorizontalPodAutoscaler>();
  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscaler getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HorizontalPodAutoscaler>(create);
  static HorizontalPodAutoscaler? _defaultInstance;

  /// Standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $1.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($1.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $1.ObjectMeta ensureMetadata() => $_ensure(0);

  /// spec defines the behaviour of autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  /// +optional
  @$pb.TagNumber(2)
  HorizontalPodAutoscalerSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(HorizontalPodAutoscalerSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  HorizontalPodAutoscalerSpec ensureSpec() => $_ensure(1);

  /// status is the current information about the autoscaler.
  /// +optional
  @$pb.TagNumber(3)
  HorizontalPodAutoscalerStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(HorizontalPodAutoscalerStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  HorizontalPodAutoscalerStatus ensureStatus() => $_ensure(2);
}

/// HorizontalPodAutoscalerCondition describes the state of
/// a HorizontalPodAutoscaler at a certain point.
class HorizontalPodAutoscalerCondition extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerCondition({
    $core.String? type,
    $core.String? status,
    $1.Time? lastTransitionTime,
    $core.String? reason,
    $core.String? message,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (lastTransitionTime != null) {
      $result.lastTransitionTime = lastTransitionTime;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  HorizontalPodAutoscalerCondition._() : super();
  factory HorizontalPodAutoscalerCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HorizontalPodAutoscalerCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOM<$1.Time>(3, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $1.Time.create)
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerCondition clone() => HorizontalPodAutoscalerCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerCondition copyWith(void Function(HorizontalPodAutoscalerCondition) updates) => super.copyWith((message) => updates(message as HorizontalPodAutoscalerCondition)) as HorizontalPodAutoscalerCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerCondition create() => HorizontalPodAutoscalerCondition._();
  HorizontalPodAutoscalerCondition createEmptyInstance() => create();
  static $pb.PbList<HorizontalPodAutoscalerCondition> createRepeated() => $pb.PbList<HorizontalPodAutoscalerCondition>();
  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HorizontalPodAutoscalerCondition>(create);
  static HorizontalPodAutoscalerCondition? _defaultInstance;

  /// type describes the current condition
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// status is the status of the condition (True, False, Unknown)
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// lastTransitionTime is the last time the condition transitioned from
  /// one status to another
  /// +optional
  @$pb.TagNumber(3)
  $1.Time get lastTransitionTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastTransitionTime($1.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastTransitionTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastTransitionTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Time ensureLastTransitionTime() => $_ensure(2);

  /// reason is the reason for the condition's last transition.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// message is a human-readable explanation containing details about
  /// the transition
  /// +optional
  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

/// list of horizontal pod autoscaler objects.
class HorizontalPodAutoscalerList extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerList({
    $1.ListMeta? metadata,
    $core.Iterable<HorizontalPodAutoscaler>? items,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  HorizontalPodAutoscalerList._() : super();
  factory HorizontalPodAutoscalerList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HorizontalPodAutoscalerList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOM<$1.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ListMeta.create)
    ..pc<HorizontalPodAutoscaler>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: HorizontalPodAutoscaler.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerList clone() => HorizontalPodAutoscalerList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerList copyWith(void Function(HorizontalPodAutoscalerList) updates) => super.copyWith((message) => updates(message as HorizontalPodAutoscalerList)) as HorizontalPodAutoscalerList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerList create() => HorizontalPodAutoscalerList._();
  HorizontalPodAutoscalerList createEmptyInstance() => create();
  static $pb.PbList<HorizontalPodAutoscalerList> createRepeated() => $pb.PbList<HorizontalPodAutoscalerList>();
  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HorizontalPodAutoscalerList>(create);
  static HorizontalPodAutoscalerList? _defaultInstance;

  /// Standard list metadata.
  /// +optional
  @$pb.TagNumber(1)
  $1.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($1.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $1.ListMeta ensureMetadata() => $_ensure(0);

  /// items is the list of horizontal pod autoscaler objects.
  @$pb.TagNumber(2)
  $core.List<HorizontalPodAutoscaler> get items => $_getList(1);
}

/// specification of a horizontal pod autoscaler.
class HorizontalPodAutoscalerSpec extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerSpec({
    CrossVersionObjectReference? scaleTargetRef,
    $core.int? minReplicas,
    $core.int? maxReplicas,
    $core.int? targetCPUUtilizationPercentage,
  }) {
    final $result = create();
    if (scaleTargetRef != null) {
      $result.scaleTargetRef = scaleTargetRef;
    }
    if (minReplicas != null) {
      $result.minReplicas = minReplicas;
    }
    if (maxReplicas != null) {
      $result.maxReplicas = maxReplicas;
    }
    if (targetCPUUtilizationPercentage != null) {
      $result.targetCPUUtilizationPercentage = targetCPUUtilizationPercentage;
    }
    return $result;
  }
  HorizontalPodAutoscalerSpec._() : super();
  factory HorizontalPodAutoscalerSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HorizontalPodAutoscalerSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOM<CrossVersionObjectReference>(1, _omitFieldNames ? '' : 'scaleTargetRef', protoName: 'scaleTargetRef', subBuilder: CrossVersionObjectReference.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'minReplicas', $pb.PbFieldType.O3, protoName: 'minReplicas')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'maxReplicas', $pb.PbFieldType.O3, protoName: 'maxReplicas')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'targetCPUUtilizationPercentage', $pb.PbFieldType.O3, protoName: 'targetCPUUtilizationPercentage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerSpec clone() => HorizontalPodAutoscalerSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerSpec copyWith(void Function(HorizontalPodAutoscalerSpec) updates) => super.copyWith((message) => updates(message as HorizontalPodAutoscalerSpec)) as HorizontalPodAutoscalerSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerSpec create() => HorizontalPodAutoscalerSpec._();
  HorizontalPodAutoscalerSpec createEmptyInstance() => create();
  static $pb.PbList<HorizontalPodAutoscalerSpec> createRepeated() => $pb.PbList<HorizontalPodAutoscalerSpec>();
  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HorizontalPodAutoscalerSpec>(create);
  static HorizontalPodAutoscalerSpec? _defaultInstance;

  /// reference to scaled resource; horizontal pod autoscaler will learn the current resource consumption
  /// and will set the desired number of pods by using its Scale subresource.
  @$pb.TagNumber(1)
  CrossVersionObjectReference get scaleTargetRef => $_getN(0);
  @$pb.TagNumber(1)
  set scaleTargetRef(CrossVersionObjectReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScaleTargetRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearScaleTargetRef() => clearField(1);
  @$pb.TagNumber(1)
  CrossVersionObjectReference ensureScaleTargetRef() => $_ensure(0);

  /// minReplicas is the lower limit for the number of replicas to which the autoscaler
  /// can scale down.  It defaults to 1 pod.  minReplicas is allowed to be 0 if the
  /// alpha feature gate HPAScaleToZero is enabled and at least one Object or External
  /// metric is configured.  Scaling is active as long as at least one metric value is
  /// available.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get minReplicas => $_getIZ(1);
  @$pb.TagNumber(2)
  set minReplicas($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMinReplicas() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinReplicas() => clearField(2);

  /// maxReplicas is the upper limit for the number of pods that can be set by the autoscaler; cannot be smaller than MinReplicas.
  @$pb.TagNumber(3)
  $core.int get maxReplicas => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxReplicas($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxReplicas() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxReplicas() => clearField(3);

  /// targetCPUUtilizationPercentage is the target average CPU utilization (represented as a percentage of requested CPU) over all the pods;
  /// if not specified the default autoscaling policy will be used.
  /// +optional
  @$pb.TagNumber(4)
  $core.int get targetCPUUtilizationPercentage => $_getIZ(3);
  @$pb.TagNumber(4)
  set targetCPUUtilizationPercentage($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTargetCPUUtilizationPercentage() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetCPUUtilizationPercentage() => clearField(4);
}

/// current status of a horizontal pod autoscaler
class HorizontalPodAutoscalerStatus extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerStatus({
    $fixnum.Int64? observedGeneration,
    $1.Time? lastScaleTime,
    $core.int? currentReplicas,
    $core.int? desiredReplicas,
    $core.int? currentCPUUtilizationPercentage,
  }) {
    final $result = create();
    if (observedGeneration != null) {
      $result.observedGeneration = observedGeneration;
    }
    if (lastScaleTime != null) {
      $result.lastScaleTime = lastScaleTime;
    }
    if (currentReplicas != null) {
      $result.currentReplicas = currentReplicas;
    }
    if (desiredReplicas != null) {
      $result.desiredReplicas = desiredReplicas;
    }
    if (currentCPUUtilizationPercentage != null) {
      $result.currentCPUUtilizationPercentage = currentCPUUtilizationPercentage;
    }
    return $result;
  }
  HorizontalPodAutoscalerStatus._() : super();
  factory HorizontalPodAutoscalerStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HorizontalPodAutoscalerStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..aOM<$1.Time>(2, _omitFieldNames ? '' : 'lastScaleTime', protoName: 'lastScaleTime', subBuilder: $1.Time.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'currentReplicas', $pb.PbFieldType.O3, protoName: 'currentReplicas')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'desiredReplicas', $pb.PbFieldType.O3, protoName: 'desiredReplicas')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'currentCPUUtilizationPercentage', $pb.PbFieldType.O3, protoName: 'currentCPUUtilizationPercentage')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerStatus clone() => HorizontalPodAutoscalerStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerStatus copyWith(void Function(HorizontalPodAutoscalerStatus) updates) => super.copyWith((message) => updates(message as HorizontalPodAutoscalerStatus)) as HorizontalPodAutoscalerStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerStatus create() => HorizontalPodAutoscalerStatus._();
  HorizontalPodAutoscalerStatus createEmptyInstance() => create();
  static $pb.PbList<HorizontalPodAutoscalerStatus> createRepeated() => $pb.PbList<HorizontalPodAutoscalerStatus>();
  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HorizontalPodAutoscalerStatus>(create);
  static HorizontalPodAutoscalerStatus? _defaultInstance;

  /// observedGeneration is the most recent generation observed by this autoscaler.
  /// +optional
  @$pb.TagNumber(1)
  $fixnum.Int64 get observedGeneration => $_getI64(0);
  @$pb.TagNumber(1)
  set observedGeneration($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasObservedGeneration() => $_has(0);
  @$pb.TagNumber(1)
  void clearObservedGeneration() => clearField(1);

  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods;
  /// used by the autoscaler to control how often the number of pods is changed.
  /// +optional
  @$pb.TagNumber(2)
  $1.Time get lastScaleTime => $_getN(1);
  @$pb.TagNumber(2)
  set lastScaleTime($1.Time v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastScaleTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastScaleTime() => clearField(2);
  @$pb.TagNumber(2)
  $1.Time ensureLastScaleTime() => $_ensure(1);

  /// currentReplicas is the current number of replicas of pods managed by this autoscaler.
  @$pb.TagNumber(3)
  $core.int get currentReplicas => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentReplicas($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentReplicas() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentReplicas() => clearField(3);

  /// desiredReplicas is the  desired number of replicas of pods managed by this autoscaler.
  @$pb.TagNumber(4)
  $core.int get desiredReplicas => $_getIZ(3);
  @$pb.TagNumber(4)
  set desiredReplicas($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesiredReplicas() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesiredReplicas() => clearField(4);

  /// currentCPUUtilizationPercentage is the current average CPU utilization over all pods, represented as a percentage of requested CPU,
  /// e.g. 70 means that an average pod is using now 70% of its requested CPU.
  /// +optional
  @$pb.TagNumber(5)
  $core.int get currentCPUUtilizationPercentage => $_getIZ(4);
  @$pb.TagNumber(5)
  set currentCPUUtilizationPercentage($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCurrentCPUUtilizationPercentage() => $_has(4);
  @$pb.TagNumber(5)
  void clearCurrentCPUUtilizationPercentage() => clearField(5);
}

/// MetricSpec specifies how to scale based on a single metric
/// (only `type` and one other matching field should be set at once).
class MetricSpec extends $pb.GeneratedMessage {
  factory MetricSpec({
    $core.String? type,
    ObjectMetricSource? object,
    PodsMetricSource? pods,
    ResourceMetricSource? resource,
    ExternalMetricSource? external,
    ContainerResourceMetricSource? containerResource,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (object != null) {
      $result.object = object;
    }
    if (pods != null) {
      $result.pods = pods;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (external != null) {
      $result.external = external;
    }
    if (containerResource != null) {
      $result.containerResource = containerResource;
    }
    return $result;
  }
  MetricSpec._() : super();
  factory MetricSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<ObjectMetricSource>(2, _omitFieldNames ? '' : 'object', subBuilder: ObjectMetricSource.create)
    ..aOM<PodsMetricSource>(3, _omitFieldNames ? '' : 'pods', subBuilder: PodsMetricSource.create)
    ..aOM<ResourceMetricSource>(4, _omitFieldNames ? '' : 'resource', subBuilder: ResourceMetricSource.create)
    ..aOM<ExternalMetricSource>(5, _omitFieldNames ? '' : 'external', subBuilder: ExternalMetricSource.create)
    ..aOM<ContainerResourceMetricSource>(7, _omitFieldNames ? '' : 'containerResource', protoName: 'containerResource', subBuilder: ContainerResourceMetricSource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricSpec clone() => MetricSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricSpec copyWith(void Function(MetricSpec) updates) => super.copyWith((message) => updates(message as MetricSpec)) as MetricSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetricSpec create() => MetricSpec._();
  MetricSpec createEmptyInstance() => create();
  static $pb.PbList<MetricSpec> createRepeated() => $pb.PbList<MetricSpec>();
  @$core.pragma('dart2js:noInline')
  static MetricSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricSpec>(create);
  static MetricSpec? _defaultInstance;

  /// type is the type of metric source.  It should be one of "ContainerResource",
  /// "External", "Object", "Pods" or "Resource", each mapping to a matching field in the object.
  /// Note: "ContainerResource" type is available on when the feature-gate
  /// HPAContainerMetrics is enabled
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// object refers to a metric describing a single kubernetes object
  /// (for example, hits-per-second on an Ingress object).
  /// +optional
  @$pb.TagNumber(2)
  ObjectMetricSource get object => $_getN(1);
  @$pb.TagNumber(2)
  set object(ObjectMetricSource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasObject() => $_has(1);
  @$pb.TagNumber(2)
  void clearObject() => clearField(2);
  @$pb.TagNumber(2)
  ObjectMetricSource ensureObject() => $_ensure(1);

  /// pods refers to a metric describing each pod in the current scale target
  /// (for example, transactions-processed-per-second).  The values will be
  /// averaged together before being compared to the target value.
  /// +optional
  @$pb.TagNumber(3)
  PodsMetricSource get pods => $_getN(2);
  @$pb.TagNumber(3)
  set pods(PodsMetricSource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPods() => $_has(2);
  @$pb.TagNumber(3)
  void clearPods() => clearField(3);
  @$pb.TagNumber(3)
  PodsMetricSource ensurePods() => $_ensure(2);

  /// resource refers to a resource metric (such as those specified in
  /// requests and limits) known to Kubernetes describing each pod in the
  /// current scale target (e.g. CPU or memory). Such metrics are built in to
  /// Kubernetes, and have special scaling options on top of those available
  /// to normal per-pod metrics using the "pods" source.
  /// +optional
  @$pb.TagNumber(4)
  ResourceMetricSource get resource => $_getN(3);
  @$pb.TagNumber(4)
  set resource(ResourceMetricSource v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResource() => $_has(3);
  @$pb.TagNumber(4)
  void clearResource() => clearField(4);
  @$pb.TagNumber(4)
  ResourceMetricSource ensureResource() => $_ensure(3);

  /// external refers to a global metric that is not associated
  /// with any Kubernetes object. It allows autoscaling based on information
  /// coming from components running outside of cluster
  /// (for example length of queue in cloud messaging service, or
  /// QPS from loadbalancer running outside of cluster).
  /// +optional
  @$pb.TagNumber(5)
  ExternalMetricSource get external => $_getN(4);
  @$pb.TagNumber(5)
  set external(ExternalMetricSource v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasExternal() => $_has(4);
  @$pb.TagNumber(5)
  void clearExternal() => clearField(5);
  @$pb.TagNumber(5)
  ExternalMetricSource ensureExternal() => $_ensure(4);

  /// containerResource refers to a resource metric (such as those specified in
  /// requests and limits) known to Kubernetes describing a single container in each pod of the
  /// current scale target (e.g. CPU or memory). Such metrics are built in to
  /// Kubernetes, and have special scaling options on top of those available
  /// to normal per-pod metrics using the "pods" source.
  /// This is an alpha feature and can be enabled by the HPAContainerMetrics feature flag.
  /// +optional
  @$pb.TagNumber(7)
  ContainerResourceMetricSource get containerResource => $_getN(5);
  @$pb.TagNumber(7)
  set containerResource(ContainerResourceMetricSource v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasContainerResource() => $_has(5);
  @$pb.TagNumber(7)
  void clearContainerResource() => clearField(7);
  @$pb.TagNumber(7)
  ContainerResourceMetricSource ensureContainerResource() => $_ensure(5);
}

/// MetricStatus describes the last-read state of a single metric.
class MetricStatus extends $pb.GeneratedMessage {
  factory MetricStatus({
    $core.String? type,
    ObjectMetricStatus? object,
    PodsMetricStatus? pods,
    ResourceMetricStatus? resource,
    ExternalMetricStatus? external,
    ContainerResourceMetricStatus? containerResource,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (object != null) {
      $result.object = object;
    }
    if (pods != null) {
      $result.pods = pods;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (external != null) {
      $result.external = external;
    }
    if (containerResource != null) {
      $result.containerResource = containerResource;
    }
    return $result;
  }
  MetricStatus._() : super();
  factory MetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<ObjectMetricStatus>(2, _omitFieldNames ? '' : 'object', subBuilder: ObjectMetricStatus.create)
    ..aOM<PodsMetricStatus>(3, _omitFieldNames ? '' : 'pods', subBuilder: PodsMetricStatus.create)
    ..aOM<ResourceMetricStatus>(4, _omitFieldNames ? '' : 'resource', subBuilder: ResourceMetricStatus.create)
    ..aOM<ExternalMetricStatus>(5, _omitFieldNames ? '' : 'external', subBuilder: ExternalMetricStatus.create)
    ..aOM<ContainerResourceMetricStatus>(7, _omitFieldNames ? '' : 'containerResource', protoName: 'containerResource', subBuilder: ContainerResourceMetricStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricStatus clone() => MetricStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricStatus copyWith(void Function(MetricStatus) updates) => super.copyWith((message) => updates(message as MetricStatus)) as MetricStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetricStatus create() => MetricStatus._();
  MetricStatus createEmptyInstance() => create();
  static $pb.PbList<MetricStatus> createRepeated() => $pb.PbList<MetricStatus>();
  @$core.pragma('dart2js:noInline')
  static MetricStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricStatus>(create);
  static MetricStatus? _defaultInstance;

  /// type is the type of metric source.  It will be one of "ContainerResource",
  /// "External", "Object", "Pods" or "Resource", each corresponds to a matching field in the object.
  /// Note: "ContainerResource" type is available on when the feature-gate
  /// HPAContainerMetrics is enabled
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// object refers to a metric describing a single kubernetes object
  /// (for example, hits-per-second on an Ingress object).
  /// +optional
  @$pb.TagNumber(2)
  ObjectMetricStatus get object => $_getN(1);
  @$pb.TagNumber(2)
  set object(ObjectMetricStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasObject() => $_has(1);
  @$pb.TagNumber(2)
  void clearObject() => clearField(2);
  @$pb.TagNumber(2)
  ObjectMetricStatus ensureObject() => $_ensure(1);

  /// pods refers to a metric describing each pod in the current scale target
  /// (for example, transactions-processed-per-second).  The values will be
  /// averaged together before being compared to the target value.
  /// +optional
  @$pb.TagNumber(3)
  PodsMetricStatus get pods => $_getN(2);
  @$pb.TagNumber(3)
  set pods(PodsMetricStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPods() => $_has(2);
  @$pb.TagNumber(3)
  void clearPods() => clearField(3);
  @$pb.TagNumber(3)
  PodsMetricStatus ensurePods() => $_ensure(2);

  /// resource refers to a resource metric (such as those specified in
  /// requests and limits) known to Kubernetes describing each pod in the
  /// current scale target (e.g. CPU or memory). Such metrics are built in to
  /// Kubernetes, and have special scaling options on top of those available
  /// to normal per-pod metrics using the "pods" source.
  /// +optional
  @$pb.TagNumber(4)
  ResourceMetricStatus get resource => $_getN(3);
  @$pb.TagNumber(4)
  set resource(ResourceMetricStatus v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResource() => $_has(3);
  @$pb.TagNumber(4)
  void clearResource() => clearField(4);
  @$pb.TagNumber(4)
  ResourceMetricStatus ensureResource() => $_ensure(3);

  /// external refers to a global metric that is not associated
  /// with any Kubernetes object. It allows autoscaling based on information
  /// coming from components running outside of cluster
  /// (for example length of queue in cloud messaging service, or
  /// QPS from loadbalancer running outside of cluster).
  /// +optional
  @$pb.TagNumber(5)
  ExternalMetricStatus get external => $_getN(4);
  @$pb.TagNumber(5)
  set external(ExternalMetricStatus v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasExternal() => $_has(4);
  @$pb.TagNumber(5)
  void clearExternal() => clearField(5);
  @$pb.TagNumber(5)
  ExternalMetricStatus ensureExternal() => $_ensure(4);

  /// containerResource refers to a resource metric (such as those specified in
  /// requests and limits) known to Kubernetes describing a single container in each pod in the
  /// current scale target (e.g. CPU or memory). Such metrics are built in to
  /// Kubernetes, and have special scaling options on top of those available
  /// to normal per-pod metrics using the "pods" source.
  /// +optional
  @$pb.TagNumber(7)
  ContainerResourceMetricStatus get containerResource => $_getN(5);
  @$pb.TagNumber(7)
  set containerResource(ContainerResourceMetricStatus v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasContainerResource() => $_has(5);
  @$pb.TagNumber(7)
  void clearContainerResource() => clearField(7);
  @$pb.TagNumber(7)
  ContainerResourceMetricStatus ensureContainerResource() => $_ensure(5);
}

/// ObjectMetricSource indicates how to scale on a metric describing a
/// kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSource extends $pb.GeneratedMessage {
  factory ObjectMetricSource({
    CrossVersionObjectReference? target,
    $core.String? metricName,
    $0.Quantity? targetValue,
    $1.LabelSelector? selector,
    $0.Quantity? averageValue,
  }) {
    final $result = create();
    if (target != null) {
      $result.target = target;
    }
    if (metricName != null) {
      $result.metricName = metricName;
    }
    if (targetValue != null) {
      $result.targetValue = targetValue;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (averageValue != null) {
      $result.averageValue = averageValue;
    }
    return $result;
  }
  ObjectMetricSource._() : super();
  factory ObjectMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObjectMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOM<CrossVersionObjectReference>(1, _omitFieldNames ? '' : 'target', subBuilder: CrossVersionObjectReference.create)
    ..aOS(2, _omitFieldNames ? '' : 'metricName', protoName: 'metricName')
    ..aOM<$0.Quantity>(3, _omitFieldNames ? '' : 'targetValue', protoName: 'targetValue', subBuilder: $0.Quantity.create)
    ..aOM<$1.LabelSelector>(4, _omitFieldNames ? '' : 'selector', subBuilder: $1.LabelSelector.create)
    ..aOM<$0.Quantity>(5, _omitFieldNames ? '' : 'averageValue', protoName: 'averageValue', subBuilder: $0.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ObjectMetricSource clone() => ObjectMetricSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ObjectMetricSource copyWith(void Function(ObjectMetricSource) updates) => super.copyWith((message) => updates(message as ObjectMetricSource)) as ObjectMetricSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectMetricSource create() => ObjectMetricSource._();
  ObjectMetricSource createEmptyInstance() => create();
  static $pb.PbList<ObjectMetricSource> createRepeated() => $pb.PbList<ObjectMetricSource>();
  @$core.pragma('dart2js:noInline')
  static ObjectMetricSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObjectMetricSource>(create);
  static ObjectMetricSource? _defaultInstance;

  /// target is the described Kubernetes object.
  @$pb.TagNumber(1)
  CrossVersionObjectReference get target => $_getN(0);
  @$pb.TagNumber(1)
  set target(CrossVersionObjectReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => clearField(1);
  @$pb.TagNumber(1)
  CrossVersionObjectReference ensureTarget() => $_ensure(0);

  /// metricName is the name of the metric in question.
  @$pb.TagNumber(2)
  $core.String get metricName => $_getSZ(1);
  @$pb.TagNumber(2)
  set metricName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetricName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetricName() => clearField(2);

  /// targetValue is the target value of the metric (as a quantity).
  @$pb.TagNumber(3)
  $0.Quantity get targetValue => $_getN(2);
  @$pb.TagNumber(3)
  set targetValue($0.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Quantity ensureTargetValue() => $_ensure(2);

  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric.
  /// When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping
  /// When unset, just the metricName will be used to gather metrics.
  /// +optional
  @$pb.TagNumber(4)
  $1.LabelSelector get selector => $_getN(3);
  @$pb.TagNumber(4)
  set selector($1.LabelSelector v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSelector() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelector() => clearField(4);
  @$pb.TagNumber(4)
  $1.LabelSelector ensureSelector() => $_ensure(3);

  /// averageValue is the target value of the average of the
  /// metric across all relevant pods (as a quantity)
  /// +optional
  @$pb.TagNumber(5)
  $0.Quantity get averageValue => $_getN(4);
  @$pb.TagNumber(5)
  set averageValue($0.Quantity v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAverageValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearAverageValue() => clearField(5);
  @$pb.TagNumber(5)
  $0.Quantity ensureAverageValue() => $_ensure(4);
}

/// ObjectMetricStatus indicates the current value of a metric describing a
/// kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatus extends $pb.GeneratedMessage {
  factory ObjectMetricStatus({
    CrossVersionObjectReference? target,
    $core.String? metricName,
    $0.Quantity? currentValue,
    $1.LabelSelector? selector,
    $0.Quantity? averageValue,
  }) {
    final $result = create();
    if (target != null) {
      $result.target = target;
    }
    if (metricName != null) {
      $result.metricName = metricName;
    }
    if (currentValue != null) {
      $result.currentValue = currentValue;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (averageValue != null) {
      $result.averageValue = averageValue;
    }
    return $result;
  }
  ObjectMetricStatus._() : super();
  factory ObjectMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObjectMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOM<CrossVersionObjectReference>(1, _omitFieldNames ? '' : 'target', subBuilder: CrossVersionObjectReference.create)
    ..aOS(2, _omitFieldNames ? '' : 'metricName', protoName: 'metricName')
    ..aOM<$0.Quantity>(3, _omitFieldNames ? '' : 'currentValue', protoName: 'currentValue', subBuilder: $0.Quantity.create)
    ..aOM<$1.LabelSelector>(4, _omitFieldNames ? '' : 'selector', subBuilder: $1.LabelSelector.create)
    ..aOM<$0.Quantity>(5, _omitFieldNames ? '' : 'averageValue', protoName: 'averageValue', subBuilder: $0.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ObjectMetricStatus clone() => ObjectMetricStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ObjectMetricStatus copyWith(void Function(ObjectMetricStatus) updates) => super.copyWith((message) => updates(message as ObjectMetricStatus)) as ObjectMetricStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectMetricStatus create() => ObjectMetricStatus._();
  ObjectMetricStatus createEmptyInstance() => create();
  static $pb.PbList<ObjectMetricStatus> createRepeated() => $pb.PbList<ObjectMetricStatus>();
  @$core.pragma('dart2js:noInline')
  static ObjectMetricStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObjectMetricStatus>(create);
  static ObjectMetricStatus? _defaultInstance;

  /// target is the described Kubernetes object.
  @$pb.TagNumber(1)
  CrossVersionObjectReference get target => $_getN(0);
  @$pb.TagNumber(1)
  set target(CrossVersionObjectReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTarget() => $_has(0);
  @$pb.TagNumber(1)
  void clearTarget() => clearField(1);
  @$pb.TagNumber(1)
  CrossVersionObjectReference ensureTarget() => $_ensure(0);

  /// metricName is the name of the metric in question.
  @$pb.TagNumber(2)
  $core.String get metricName => $_getSZ(1);
  @$pb.TagNumber(2)
  set metricName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetricName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetricName() => clearField(2);

  /// currentValue is the current value of the metric (as a quantity).
  @$pb.TagNumber(3)
  $0.Quantity get currentValue => $_getN(2);
  @$pb.TagNumber(3)
  set currentValue($0.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Quantity ensureCurrentValue() => $_ensure(2);

  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric
  /// When set in the ObjectMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping.
  /// When unset, just the metricName will be used to gather metrics.
  /// +optional
  @$pb.TagNumber(4)
  $1.LabelSelector get selector => $_getN(3);
  @$pb.TagNumber(4)
  set selector($1.LabelSelector v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSelector() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelector() => clearField(4);
  @$pb.TagNumber(4)
  $1.LabelSelector ensureSelector() => $_ensure(3);

  /// averageValue is the current value of the average of the
  /// metric across all relevant pods (as a quantity)
  /// +optional
  @$pb.TagNumber(5)
  $0.Quantity get averageValue => $_getN(4);
  @$pb.TagNumber(5)
  set averageValue($0.Quantity v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasAverageValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearAverageValue() => clearField(5);
  @$pb.TagNumber(5)
  $0.Quantity ensureAverageValue() => $_ensure(4);
}

/// PodsMetricSource indicates how to scale on a metric describing each pod in
/// the current scale target (for example, transactions-processed-per-second).
/// The values will be averaged together before being compared to the target
/// value.
class PodsMetricSource extends $pb.GeneratedMessage {
  factory PodsMetricSource({
    $core.String? metricName,
    $0.Quantity? targetAverageValue,
    $1.LabelSelector? selector,
  }) {
    final $result = create();
    if (metricName != null) {
      $result.metricName = metricName;
    }
    if (targetAverageValue != null) {
      $result.targetAverageValue = targetAverageValue;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    return $result;
  }
  PodsMetricSource._() : super();
  factory PodsMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodsMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodsMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metricName', protoName: 'metricName')
    ..aOM<$0.Quantity>(2, _omitFieldNames ? '' : 'targetAverageValue', protoName: 'targetAverageValue', subBuilder: $0.Quantity.create)
    ..aOM<$1.LabelSelector>(3, _omitFieldNames ? '' : 'selector', subBuilder: $1.LabelSelector.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodsMetricSource clone() => PodsMetricSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodsMetricSource copyWith(void Function(PodsMetricSource) updates) => super.copyWith((message) => updates(message as PodsMetricSource)) as PodsMetricSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodsMetricSource create() => PodsMetricSource._();
  PodsMetricSource createEmptyInstance() => create();
  static $pb.PbList<PodsMetricSource> createRepeated() => $pb.PbList<PodsMetricSource>();
  @$core.pragma('dart2js:noInline')
  static PodsMetricSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodsMetricSource>(create);
  static PodsMetricSource? _defaultInstance;

  /// metricName is the name of the metric in question
  @$pb.TagNumber(1)
  $core.String get metricName => $_getSZ(0);
  @$pb.TagNumber(1)
  set metricName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetricName() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetricName() => clearField(1);

  /// targetAverageValue is the target value of the average of the
  /// metric across all relevant pods (as a quantity)
  @$pb.TagNumber(2)
  $0.Quantity get targetAverageValue => $_getN(1);
  @$pb.TagNumber(2)
  set targetAverageValue($0.Quantity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetAverageValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetAverageValue() => clearField(2);
  @$pb.TagNumber(2)
  $0.Quantity ensureTargetAverageValue() => $_ensure(1);

  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric
  /// When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping
  /// When unset, just the metricName will be used to gather metrics.
  /// +optional
  @$pb.TagNumber(3)
  $1.LabelSelector get selector => $_getN(2);
  @$pb.TagNumber(3)
  set selector($1.LabelSelector v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSelector() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelector() => clearField(3);
  @$pb.TagNumber(3)
  $1.LabelSelector ensureSelector() => $_ensure(2);
}

/// PodsMetricStatus indicates the current value of a metric describing each pod in
/// the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatus extends $pb.GeneratedMessage {
  factory PodsMetricStatus({
    $core.String? metricName,
    $0.Quantity? currentAverageValue,
    $1.LabelSelector? selector,
  }) {
    final $result = create();
    if (metricName != null) {
      $result.metricName = metricName;
    }
    if (currentAverageValue != null) {
      $result.currentAverageValue = currentAverageValue;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    return $result;
  }
  PodsMetricStatus._() : super();
  factory PodsMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodsMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodsMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metricName', protoName: 'metricName')
    ..aOM<$0.Quantity>(2, _omitFieldNames ? '' : 'currentAverageValue', protoName: 'currentAverageValue', subBuilder: $0.Quantity.create)
    ..aOM<$1.LabelSelector>(3, _omitFieldNames ? '' : 'selector', subBuilder: $1.LabelSelector.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodsMetricStatus clone() => PodsMetricStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodsMetricStatus copyWith(void Function(PodsMetricStatus) updates) => super.copyWith((message) => updates(message as PodsMetricStatus)) as PodsMetricStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodsMetricStatus create() => PodsMetricStatus._();
  PodsMetricStatus createEmptyInstance() => create();
  static $pb.PbList<PodsMetricStatus> createRepeated() => $pb.PbList<PodsMetricStatus>();
  @$core.pragma('dart2js:noInline')
  static PodsMetricStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodsMetricStatus>(create);
  static PodsMetricStatus? _defaultInstance;

  /// metricName is the name of the metric in question
  @$pb.TagNumber(1)
  $core.String get metricName => $_getSZ(0);
  @$pb.TagNumber(1)
  set metricName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetricName() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetricName() => clearField(1);

  /// currentAverageValue is the current value of the average of the
  /// metric across all relevant pods (as a quantity)
  @$pb.TagNumber(2)
  $0.Quantity get currentAverageValue => $_getN(1);
  @$pb.TagNumber(2)
  set currentAverageValue($0.Quantity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentAverageValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentAverageValue() => clearField(2);
  @$pb.TagNumber(2)
  $0.Quantity ensureCurrentAverageValue() => $_ensure(1);

  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric
  /// When set in the PodsMetricSource, it is passed as an additional parameter to the metrics server for more specific metrics scoping.
  /// When unset, just the metricName will be used to gather metrics.
  /// +optional
  @$pb.TagNumber(3)
  $1.LabelSelector get selector => $_getN(2);
  @$pb.TagNumber(3)
  set selector($1.LabelSelector v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSelector() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelector() => clearField(3);
  @$pb.TagNumber(3)
  $1.LabelSelector ensureSelector() => $_ensure(2);
}

/// ResourceMetricSource indicates how to scale on a resource metric known to
/// Kubernetes, as specified in requests and limits, describing each pod in the
/// current scale target (e.g. CPU or memory).  The values will be averaged
/// together before being compared to the target.  Such metrics are built in to
/// Kubernetes, and have special scaling options on top of those available to
/// normal per-pod metrics using the "pods" source.  Only one "target" type
/// should be set.
class ResourceMetricSource extends $pb.GeneratedMessage {
  factory ResourceMetricSource({
    $core.String? name,
    $core.int? targetAverageUtilization,
    $0.Quantity? targetAverageValue,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (targetAverageUtilization != null) {
      $result.targetAverageUtilization = targetAverageUtilization;
    }
    if (targetAverageValue != null) {
      $result.targetAverageValue = targetAverageValue;
    }
    return $result;
  }
  ResourceMetricSource._() : super();
  factory ResourceMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'targetAverageUtilization', $pb.PbFieldType.O3, protoName: 'targetAverageUtilization')
    ..aOM<$0.Quantity>(3, _omitFieldNames ? '' : 'targetAverageValue', protoName: 'targetAverageValue', subBuilder: $0.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceMetricSource clone() => ResourceMetricSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceMetricSource copyWith(void Function(ResourceMetricSource) updates) => super.copyWith((message) => updates(message as ResourceMetricSource)) as ResourceMetricSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceMetricSource create() => ResourceMetricSource._();
  ResourceMetricSource createEmptyInstance() => create();
  static $pb.PbList<ResourceMetricSource> createRepeated() => $pb.PbList<ResourceMetricSource>();
  @$core.pragma('dart2js:noInline')
  static ResourceMetricSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceMetricSource>(create);
  static ResourceMetricSource? _defaultInstance;

  /// name is the name of the resource in question.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// targetAverageUtilization is the target value of the average of the
  /// resource metric across all relevant pods, represented as a percentage of
  /// the requested value of the resource for the pods.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get targetAverageUtilization => $_getIZ(1);
  @$pb.TagNumber(2)
  set targetAverageUtilization($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetAverageUtilization() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetAverageUtilization() => clearField(2);

  /// targetAverageValue is the target value of the average of the
  /// resource metric across all relevant pods, as a raw value (instead of as
  /// a percentage of the request), similar to the "pods" metric source type.
  /// +optional
  @$pb.TagNumber(3)
  $0.Quantity get targetAverageValue => $_getN(2);
  @$pb.TagNumber(3)
  set targetAverageValue($0.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetAverageValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetAverageValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Quantity ensureTargetAverageValue() => $_ensure(2);
}

/// ResourceMetricStatus indicates the current value of a resource metric known to
/// Kubernetes, as specified in requests and limits, describing each pod in the
/// current scale target (e.g. CPU or memory).  Such metrics are built in to
/// Kubernetes, and have special scaling options on top of those available to
/// normal per-pod metrics using the "pods" source.
class ResourceMetricStatus extends $pb.GeneratedMessage {
  factory ResourceMetricStatus({
    $core.String? name,
    $core.int? currentAverageUtilization,
    $0.Quantity? currentAverageValue,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (currentAverageUtilization != null) {
      $result.currentAverageUtilization = currentAverageUtilization;
    }
    if (currentAverageValue != null) {
      $result.currentAverageValue = currentAverageValue;
    }
    return $result;
  }
  ResourceMetricStatus._() : super();
  factory ResourceMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'currentAverageUtilization', $pb.PbFieldType.O3, protoName: 'currentAverageUtilization')
    ..aOM<$0.Quantity>(3, _omitFieldNames ? '' : 'currentAverageValue', protoName: 'currentAverageValue', subBuilder: $0.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceMetricStatus clone() => ResourceMetricStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceMetricStatus copyWith(void Function(ResourceMetricStatus) updates) => super.copyWith((message) => updates(message as ResourceMetricStatus)) as ResourceMetricStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceMetricStatus create() => ResourceMetricStatus._();
  ResourceMetricStatus createEmptyInstance() => create();
  static $pb.PbList<ResourceMetricStatus> createRepeated() => $pb.PbList<ResourceMetricStatus>();
  @$core.pragma('dart2js:noInline')
  static ResourceMetricStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceMetricStatus>(create);
  static ResourceMetricStatus? _defaultInstance;

  /// name is the name of the resource in question.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// currentAverageUtilization is the current value of the average of the
  /// resource metric across all relevant pods, represented as a percentage of
  /// the requested value of the resource for the pods.  It will only be
  /// present if `targetAverageValue` was set in the corresponding metric
  /// specification.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get currentAverageUtilization => $_getIZ(1);
  @$pb.TagNumber(2)
  set currentAverageUtilization($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrentAverageUtilization() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrentAverageUtilization() => clearField(2);

  /// currentAverageValue is the current value of the average of the
  /// resource metric across all relevant pods, as a raw value (instead of as
  /// a percentage of the request), similar to the "pods" metric source type.
  /// It will always be set, regardless of the corresponding metric specification.
  @$pb.TagNumber(3)
  $0.Quantity get currentAverageValue => $_getN(2);
  @$pb.TagNumber(3)
  set currentAverageValue($0.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentAverageValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentAverageValue() => clearField(3);
  @$pb.TagNumber(3)
  $0.Quantity ensureCurrentAverageValue() => $_ensure(2);
}

/// Scale represents a scaling request for a resource.
class Scale extends $pb.GeneratedMessage {
  factory Scale({
    $1.ObjectMeta? metadata,
    ScaleSpec? spec,
    ScaleStatus? status,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (spec != null) {
      $result.spec = spec;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  Scale._() : super();
  factory Scale.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scale.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scale', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..aOM<$1.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ObjectMeta.create)
    ..aOM<ScaleSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ScaleSpec.create)
    ..aOM<ScaleStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: ScaleStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scale clone() => Scale()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scale copyWith(void Function(Scale) updates) => super.copyWith((message) => updates(message as Scale)) as Scale;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scale create() => Scale._();
  Scale createEmptyInstance() => create();
  static $pb.PbList<Scale> createRepeated() => $pb.PbList<Scale>();
  @$core.pragma('dart2js:noInline')
  static Scale getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scale>(create);
  static Scale? _defaultInstance;

  /// Standard object metadata; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  /// +optional
  @$pb.TagNumber(1)
  $1.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($1.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $1.ObjectMeta ensureMetadata() => $_ensure(0);

  /// spec defines the behavior of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  /// +optional
  @$pb.TagNumber(2)
  ScaleSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ScaleSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ScaleSpec ensureSpec() => $_ensure(1);

  /// status is the current status of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.
  /// +optional
  @$pb.TagNumber(3)
  ScaleStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(ScaleStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  ScaleStatus ensureStatus() => $_ensure(2);
}

/// ScaleSpec describes the attributes of a scale subresource.
class ScaleSpec extends $pb.GeneratedMessage {
  factory ScaleSpec({
    $core.int? replicas,
  }) {
    final $result = create();
    if (replicas != null) {
      $result.replicas = replicas;
    }
    return $result;
  }
  ScaleSpec._() : super();
  factory ScaleSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScaleSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScaleSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'replicas', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScaleSpec clone() => ScaleSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScaleSpec copyWith(void Function(ScaleSpec) updates) => super.copyWith((message) => updates(message as ScaleSpec)) as ScaleSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScaleSpec create() => ScaleSpec._();
  ScaleSpec createEmptyInstance() => create();
  static $pb.PbList<ScaleSpec> createRepeated() => $pb.PbList<ScaleSpec>();
  @$core.pragma('dart2js:noInline')
  static ScaleSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScaleSpec>(create);
  static ScaleSpec? _defaultInstance;

  /// replicas is the desired number of instances for the scaled object.
  /// +optional
  @$pb.TagNumber(1)
  $core.int get replicas => $_getIZ(0);
  @$pb.TagNumber(1)
  set replicas($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReplicas() => $_has(0);
  @$pb.TagNumber(1)
  void clearReplicas() => clearField(1);
}

/// ScaleStatus represents the current status of a scale subresource.
class ScaleStatus extends $pb.GeneratedMessage {
  factory ScaleStatus({
    $core.int? replicas,
    $core.String? selector,
  }) {
    final $result = create();
    if (replicas != null) {
      $result.replicas = replicas;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    return $result;
  }
  ScaleStatus._() : super();
  factory ScaleStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScaleStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScaleStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'replicas', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'selector')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ScaleStatus clone() => ScaleStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ScaleStatus copyWith(void Function(ScaleStatus) updates) => super.copyWith((message) => updates(message as ScaleStatus)) as ScaleStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ScaleStatus create() => ScaleStatus._();
  ScaleStatus createEmptyInstance() => create();
  static $pb.PbList<ScaleStatus> createRepeated() => $pb.PbList<ScaleStatus>();
  @$core.pragma('dart2js:noInline')
  static ScaleStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ScaleStatus>(create);
  static ScaleStatus? _defaultInstance;

  /// replicas is the actual number of observed instances of the scaled object.
  @$pb.TagNumber(1)
  $core.int get replicas => $_getIZ(0);
  @$pb.TagNumber(1)
  set replicas($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReplicas() => $_has(0);
  @$pb.TagNumber(1)
  void clearReplicas() => clearField(1);

  /// selector is the label query over pods that should match the replicas count. This is same
  /// as the label selector but in the string format to avoid introspection
  /// by clients. The string will be in the same format as the query-param syntax.
  /// More info about label selectors: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  /// +optional
  @$pb.TagNumber(2)
  $core.String get selector => $_getSZ(1);
  @$pb.TagNumber(2)
  set selector($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelector() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
