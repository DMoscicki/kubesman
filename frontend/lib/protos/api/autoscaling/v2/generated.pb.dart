//
//  Generated code. Do not modify.
//  source: api/autoscaling/v2/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/api/resource/generated.pb.dart' as $1;
import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// ContainerResourceMetricSource indicates how to scale on a resource metric known to
/// Kubernetes, as specified in requests and limits, describing each pod in the
/// current scale target (e.g. CPU or memory).  The values will be averaged
/// together before being compared to the target.  Such metrics are built in to
/// Kubernetes, and have special scaling options on top of those available to
/// normal per-pod metrics using the "pods" source.  Only one "target" type
/// should be set.
class ContainerResourceMetricSource extends $pb.GeneratedMessage {
  factory ContainerResourceMetricSource({
    $core.String? name,
    MetricTarget? target,
    $core.String? container,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (target != null) {
      $result.target = target;
    }
    if (container != null) {
      $result.container = container;
    }
    return $result;
  }
  ContainerResourceMetricSource._() : super();
  factory ContainerResourceMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerResourceMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContainerResourceMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<MetricTarget>(2, _omitFieldNames ? '' : 'target', subBuilder: MetricTarget.create)
    ..aOS(3, _omitFieldNames ? '' : 'container')
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

  /// target specifies the target value for the given metric
  @$pb.TagNumber(2)
  MetricTarget get target => $_getN(1);
  @$pb.TagNumber(2)
  set target(MetricTarget v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);
  @$pb.TagNumber(2)
  MetricTarget ensureTarget() => $_ensure(1);

  /// container is the name of the container in the pods of the scaling target
  @$pb.TagNumber(3)
  $core.String get container => $_getSZ(2);
  @$pb.TagNumber(3)
  set container($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContainer() => $_has(2);
  @$pb.TagNumber(3)
  void clearContainer() => clearField(3);
}

/// ContainerResourceMetricStatus indicates the current value of a resource metric known to
/// Kubernetes, as specified in requests and limits, describing a single container in each pod in the
/// current scale target (e.g. CPU or memory).  Such metrics are built in to
/// Kubernetes, and have special scaling options on top of those available to
/// normal per-pod metrics using the "pods" source.
class ContainerResourceMetricStatus extends $pb.GeneratedMessage {
  factory ContainerResourceMetricStatus({
    $core.String? name,
    MetricValueStatus? current,
    $core.String? container,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (current != null) {
      $result.current = current;
    }
    if (container != null) {
      $result.container = container;
    }
    return $result;
  }
  ContainerResourceMetricStatus._() : super();
  factory ContainerResourceMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerResourceMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContainerResourceMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<MetricValueStatus>(2, _omitFieldNames ? '' : 'current', subBuilder: MetricValueStatus.create)
    ..aOS(3, _omitFieldNames ? '' : 'container')
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

  /// current contains the current value for the given metric
  @$pb.TagNumber(2)
  MetricValueStatus get current => $_getN(1);
  @$pb.TagNumber(2)
  set current(MetricValueStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrent() => clearField(2);
  @$pb.TagNumber(2)
  MetricValueStatus ensureCurrent() => $_ensure(1);

  /// container is the name of the container in the pods of the scaling target
  @$pb.TagNumber(3)
  $core.String get container => $_getSZ(2);
  @$pb.TagNumber(3)
  set container($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContainer() => $_has(2);
  @$pb.TagNumber(3)
  void clearContainer() => clearField(3);
}

/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CrossVersionObjectReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
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
    MetricIdentifier? metric,
    MetricTarget? target,
  }) {
    final $result = create();
    if (metric != null) {
      $result.metric = metric;
    }
    if (target != null) {
      $result.target = target;
    }
    return $result;
  }
  ExternalMetricSource._() : super();
  factory ExternalMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExternalMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExternalMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<MetricIdentifier>(1, _omitFieldNames ? '' : 'metric', subBuilder: MetricIdentifier.create)
    ..aOM<MetricTarget>(2, _omitFieldNames ? '' : 'target', subBuilder: MetricTarget.create)
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

  /// metric identifies the target metric by name and selector
  @$pb.TagNumber(1)
  MetricIdentifier get metric => $_getN(0);
  @$pb.TagNumber(1)
  set metric(MetricIdentifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetric() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetric() => clearField(1);
  @$pb.TagNumber(1)
  MetricIdentifier ensureMetric() => $_ensure(0);

  /// target specifies the target value for the given metric
  @$pb.TagNumber(2)
  MetricTarget get target => $_getN(1);
  @$pb.TagNumber(2)
  set target(MetricTarget v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);
  @$pb.TagNumber(2)
  MetricTarget ensureTarget() => $_ensure(1);
}

/// ExternalMetricStatus indicates the current value of a global metric
/// not associated with any Kubernetes object.
class ExternalMetricStatus extends $pb.GeneratedMessage {
  factory ExternalMetricStatus({
    MetricIdentifier? metric,
    MetricValueStatus? current,
  }) {
    final $result = create();
    if (metric != null) {
      $result.metric = metric;
    }
    if (current != null) {
      $result.current = current;
    }
    return $result;
  }
  ExternalMetricStatus._() : super();
  factory ExternalMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExternalMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExternalMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<MetricIdentifier>(1, _omitFieldNames ? '' : 'metric', subBuilder: MetricIdentifier.create)
    ..aOM<MetricValueStatus>(2, _omitFieldNames ? '' : 'current', subBuilder: MetricValueStatus.create)
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

  /// metric identifies the target metric by name and selector
  @$pb.TagNumber(1)
  MetricIdentifier get metric => $_getN(0);
  @$pb.TagNumber(1)
  set metric(MetricIdentifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetric() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetric() => clearField(1);
  @$pb.TagNumber(1)
  MetricIdentifier ensureMetric() => $_ensure(0);

  /// current contains the current value for the given metric
  @$pb.TagNumber(2)
  MetricValueStatus get current => $_getN(1);
  @$pb.TagNumber(2)
  set current(MetricValueStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrent() => clearField(2);
  @$pb.TagNumber(2)
  MetricValueStatus ensureCurrent() => $_ensure(1);
}

/// HPAScalingPolicy is a single policy which must hold true for a specified past interval.
class HPAScalingPolicy extends $pb.GeneratedMessage {
  factory HPAScalingPolicy({
    $core.String? type,
    $core.int? value,
    $core.int? periodSeconds,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (value != null) {
      $result.value = value;
    }
    if (periodSeconds != null) {
      $result.periodSeconds = periodSeconds;
    }
    return $result;
  }
  HPAScalingPolicy._() : super();
  factory HPAScalingPolicy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HPAScalingPolicy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HPAScalingPolicy', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'periodSeconds', $pb.PbFieldType.O3, protoName: 'periodSeconds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HPAScalingPolicy clone() => HPAScalingPolicy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HPAScalingPolicy copyWith(void Function(HPAScalingPolicy) updates) => super.copyWith((message) => updates(message as HPAScalingPolicy)) as HPAScalingPolicy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HPAScalingPolicy create() => HPAScalingPolicy._();
  HPAScalingPolicy createEmptyInstance() => create();
  static $pb.PbList<HPAScalingPolicy> createRepeated() => $pb.PbList<HPAScalingPolicy>();
  @$core.pragma('dart2js:noInline')
  static HPAScalingPolicy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HPAScalingPolicy>(create);
  static HPAScalingPolicy? _defaultInstance;

  /// type is used to specify the scaling policy.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// value contains the amount of change which is permitted by the policy.
  /// It must be greater than zero
  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  /// periodSeconds specifies the window of time for which the policy should hold true.
  /// PeriodSeconds must be greater than zero and less than or equal to 1800 (30 min).
  @$pb.TagNumber(3)
  $core.int get periodSeconds => $_getIZ(2);
  @$pb.TagNumber(3)
  set periodSeconds($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPeriodSeconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearPeriodSeconds() => clearField(3);
}

/// HPAScalingRules configures the scaling behavior for one direction.
/// These Rules are applied after calculating DesiredReplicas from metrics for the HPA.
/// They can limit the scaling velocity by specifying scaling policies.
/// They can prevent flapping by specifying the stabilization window, so that the
/// number of replicas is not set instantly, instead, the safest value from the stabilization
/// window is chosen.
class HPAScalingRules extends $pb.GeneratedMessage {
  factory HPAScalingRules({
    $core.String? selectPolicy,
    $core.Iterable<HPAScalingPolicy>? policies,
    $core.int? stabilizationWindowSeconds,
  }) {
    final $result = create();
    if (selectPolicy != null) {
      $result.selectPolicy = selectPolicy;
    }
    if (policies != null) {
      $result.policies.addAll(policies);
    }
    if (stabilizationWindowSeconds != null) {
      $result.stabilizationWindowSeconds = stabilizationWindowSeconds;
    }
    return $result;
  }
  HPAScalingRules._() : super();
  factory HPAScalingRules.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HPAScalingRules.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HPAScalingRules', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'selectPolicy', protoName: 'selectPolicy')
    ..pc<HPAScalingPolicy>(2, _omitFieldNames ? '' : 'policies', $pb.PbFieldType.PM, subBuilder: HPAScalingPolicy.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'stabilizationWindowSeconds', $pb.PbFieldType.O3, protoName: 'stabilizationWindowSeconds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HPAScalingRules clone() => HPAScalingRules()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HPAScalingRules copyWith(void Function(HPAScalingRules) updates) => super.copyWith((message) => updates(message as HPAScalingRules)) as HPAScalingRules;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HPAScalingRules create() => HPAScalingRules._();
  HPAScalingRules createEmptyInstance() => create();
  static $pb.PbList<HPAScalingRules> createRepeated() => $pb.PbList<HPAScalingRules>();
  @$core.pragma('dart2js:noInline')
  static HPAScalingRules getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HPAScalingRules>(create);
  static HPAScalingRules? _defaultInstance;

  /// selectPolicy is used to specify which policy should be used.
  /// If not set, the default value Max is used.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get selectPolicy => $_getSZ(0);
  @$pb.TagNumber(1)
  set selectPolicy($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelectPolicy() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelectPolicy() => clearField(1);

  /// policies is a list of potential scaling polices which can be used during scaling.
  /// At least one policy must be specified, otherwise the HPAScalingRules will be discarded as invalid
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(2)
  $core.List<HPAScalingPolicy> get policies => $_getList(1);

  /// stabilizationWindowSeconds is the number of seconds for which past recommendations should be
  /// considered while scaling up or scaling down.
  /// StabilizationWindowSeconds must be greater than or equal to zero and less than or equal to 3600 (one hour).
  /// If not set, use the default values:
  /// - For scale up: 0 (i.e. no stabilization is done).
  /// - For scale down: 300 (i.e. the stabilization window is 300 seconds long).
  /// +optional
  @$pb.TagNumber(3)
  $core.int get stabilizationWindowSeconds => $_getIZ(2);
  @$pb.TagNumber(3)
  set stabilizationWindowSeconds($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStabilizationWindowSeconds() => $_has(2);
  @$pb.TagNumber(3)
  void clearStabilizationWindowSeconds() => clearField(3);
}

/// HorizontalPodAutoscaler is the configuration for a horizontal pod
/// autoscaler, which automatically manages the replica count of any resource
/// implementing the scale subresource based on the metrics specified.
class HorizontalPodAutoscaler extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscaler({
    $0.ObjectMeta? metadata,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscaler', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
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

  /// metadata is the standard object metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $0.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ObjectMeta ensureMetadata() => $_ensure(0);

  /// spec is the specification for the behaviour of the autoscaler.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
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

/// HorizontalPodAutoscalerBehavior configures the scaling behavior of the target
/// in both Up and Down directions (scaleUp and scaleDown fields respectively).
class HorizontalPodAutoscalerBehavior extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerBehavior({
    HPAScalingRules? scaleUp,
    HPAScalingRules? scaleDown,
  }) {
    final $result = create();
    if (scaleUp != null) {
      $result.scaleUp = scaleUp;
    }
    if (scaleDown != null) {
      $result.scaleDown = scaleDown;
    }
    return $result;
  }
  HorizontalPodAutoscalerBehavior._() : super();
  factory HorizontalPodAutoscalerBehavior.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HorizontalPodAutoscalerBehavior.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerBehavior', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<HPAScalingRules>(1, _omitFieldNames ? '' : 'scaleUp', protoName: 'scaleUp', subBuilder: HPAScalingRules.create)
    ..aOM<HPAScalingRules>(2, _omitFieldNames ? '' : 'scaleDown', protoName: 'scaleDown', subBuilder: HPAScalingRules.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerBehavior clone() => HorizontalPodAutoscalerBehavior()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HorizontalPodAutoscalerBehavior copyWith(void Function(HorizontalPodAutoscalerBehavior) updates) => super.copyWith((message) => updates(message as HorizontalPodAutoscalerBehavior)) as HorizontalPodAutoscalerBehavior;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerBehavior create() => HorizontalPodAutoscalerBehavior._();
  HorizontalPodAutoscalerBehavior createEmptyInstance() => create();
  static $pb.PbList<HorizontalPodAutoscalerBehavior> createRepeated() => $pb.PbList<HorizontalPodAutoscalerBehavior>();
  @$core.pragma('dart2js:noInline')
  static HorizontalPodAutoscalerBehavior getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HorizontalPodAutoscalerBehavior>(create);
  static HorizontalPodAutoscalerBehavior? _defaultInstance;

  /// scaleUp is scaling policy for scaling Up.
  /// If not set, the default value is the higher of:
  ///   * increase no more than 4 pods per 60 seconds
  ///   * double the number of pods per 60 seconds
  /// No stabilization is used.
  /// +optional
  @$pb.TagNumber(1)
  HPAScalingRules get scaleUp => $_getN(0);
  @$pb.TagNumber(1)
  set scaleUp(HPAScalingRules v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasScaleUp() => $_has(0);
  @$pb.TagNumber(1)
  void clearScaleUp() => clearField(1);
  @$pb.TagNumber(1)
  HPAScalingRules ensureScaleUp() => $_ensure(0);

  /// scaleDown is scaling policy for scaling Down.
  /// If not set, the default value is to allow to scale down to minReplicas pods, with a
  /// 300 second stabilization window (i.e., the highest recommendation for
  /// the last 300sec is used).
  /// +optional
  @$pb.TagNumber(2)
  HPAScalingRules get scaleDown => $_getN(1);
  @$pb.TagNumber(2)
  set scaleDown(HPAScalingRules v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScaleDown() => $_has(1);
  @$pb.TagNumber(2)
  void clearScaleDown() => clearField(2);
  @$pb.TagNumber(2)
  HPAScalingRules ensureScaleDown() => $_ensure(1);
}

/// HorizontalPodAutoscalerCondition describes the state of
/// a HorizontalPodAutoscaler at a certain point.
class HorizontalPodAutoscalerCondition extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerCondition({
    $core.String? type,
    $core.String? status,
    $0.Time? lastTransitionTime,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $0.Time.create)
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
  $0.Time get lastTransitionTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastTransitionTime($0.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastTransitionTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastTransitionTime() => clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureLastTransitionTime() => $_ensure(2);

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

/// HorizontalPodAutoscalerList is a list of horizontal pod autoscaler objects.
class HorizontalPodAutoscalerList extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerList({
    $0.ListMeta? metadata,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
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

  /// metadata is the standard list metadata.
  /// +optional
  @$pb.TagNumber(1)
  $0.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ListMeta ensureMetadata() => $_ensure(0);

  /// items is the list of horizontal pod autoscaler objects.
  @$pb.TagNumber(2)
  $core.List<HorizontalPodAutoscaler> get items => $_getList(1);
}

/// HorizontalPodAutoscalerSpec describes the desired functionality of the HorizontalPodAutoscaler.
class HorizontalPodAutoscalerSpec extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerSpec({
    CrossVersionObjectReference? scaleTargetRef,
    $core.int? minReplicas,
    $core.int? maxReplicas,
    $core.Iterable<MetricSpec>? metrics,
    HorizontalPodAutoscalerBehavior? behavior,
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
    if (metrics != null) {
      $result.metrics.addAll(metrics);
    }
    if (behavior != null) {
      $result.behavior = behavior;
    }
    return $result;
  }
  HorizontalPodAutoscalerSpec._() : super();
  factory HorizontalPodAutoscalerSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HorizontalPodAutoscalerSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<CrossVersionObjectReference>(1, _omitFieldNames ? '' : 'scaleTargetRef', protoName: 'scaleTargetRef', subBuilder: CrossVersionObjectReference.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'minReplicas', $pb.PbFieldType.O3, protoName: 'minReplicas')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'maxReplicas', $pb.PbFieldType.O3, protoName: 'maxReplicas')
    ..pc<MetricSpec>(4, _omitFieldNames ? '' : 'metrics', $pb.PbFieldType.PM, subBuilder: MetricSpec.create)
    ..aOM<HorizontalPodAutoscalerBehavior>(5, _omitFieldNames ? '' : 'behavior', subBuilder: HorizontalPodAutoscalerBehavior.create)
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

  /// scaleTargetRef points to the target resource to scale, and is used to the pods for which metrics
  /// should be collected, as well as to actually change the replica count.
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

  /// maxReplicas is the upper limit for the number of replicas to which the autoscaler can scale up.
  /// It cannot be less that minReplicas.
  @$pb.TagNumber(3)
  $core.int get maxReplicas => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxReplicas($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxReplicas() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxReplicas() => clearField(3);

  /// metrics contains the specifications for which to use to calculate the
  /// desired replica count (the maximum replica count across all metrics will
  /// be used).  The desired replica count is calculated multiplying the
  /// ratio between the target value and the current value by the current
  /// number of pods.  Ergo, metrics used must decrease as the pod count is
  /// increased, and vice-versa.  See the individual metric source types for
  /// more information about how each type of metric must respond.
  /// If not set, the default metric will be set to 80% average CPU utilization.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(4)
  $core.List<MetricSpec> get metrics => $_getList(3);

  /// behavior configures the scaling behavior of the target
  /// in both Up and Down directions (scaleUp and scaleDown fields respectively).
  /// If not set, the default HPAScalingRules for scale up and scale down are used.
  /// +optional
  @$pb.TagNumber(5)
  HorizontalPodAutoscalerBehavior get behavior => $_getN(4);
  @$pb.TagNumber(5)
  set behavior(HorizontalPodAutoscalerBehavior v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasBehavior() => $_has(4);
  @$pb.TagNumber(5)
  void clearBehavior() => clearField(5);
  @$pb.TagNumber(5)
  HorizontalPodAutoscalerBehavior ensureBehavior() => $_ensure(4);
}

/// HorizontalPodAutoscalerStatus describes the current status of a horizontal pod autoscaler.
class HorizontalPodAutoscalerStatus extends $pb.GeneratedMessage {
  factory HorizontalPodAutoscalerStatus({
    $fixnum.Int64? observedGeneration,
    $0.Time? lastScaleTime,
    $core.int? currentReplicas,
    $core.int? desiredReplicas,
    $core.Iterable<MetricStatus>? currentMetrics,
    $core.Iterable<HorizontalPodAutoscalerCondition>? conditions,
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
    if (currentMetrics != null) {
      $result.currentMetrics.addAll(currentMetrics);
    }
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  HorizontalPodAutoscalerStatus._() : super();
  factory HorizontalPodAutoscalerStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HorizontalPodAutoscalerStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HorizontalPodAutoscalerStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..aOM<$0.Time>(2, _omitFieldNames ? '' : 'lastScaleTime', protoName: 'lastScaleTime', subBuilder: $0.Time.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'currentReplicas', $pb.PbFieldType.O3, protoName: 'currentReplicas')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'desiredReplicas', $pb.PbFieldType.O3, protoName: 'desiredReplicas')
    ..pc<MetricStatus>(5, _omitFieldNames ? '' : 'currentMetrics', $pb.PbFieldType.PM, protoName: 'currentMetrics', subBuilder: MetricStatus.create)
    ..pc<HorizontalPodAutoscalerCondition>(6, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: HorizontalPodAutoscalerCondition.create)
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

  /// lastScaleTime is the last time the HorizontalPodAutoscaler scaled the number of pods,
  /// used by the autoscaler to control how often the number of pods is changed.
  /// +optional
  @$pb.TagNumber(2)
  $0.Time get lastScaleTime => $_getN(1);
  @$pb.TagNumber(2)
  set lastScaleTime($0.Time v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastScaleTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastScaleTime() => clearField(2);
  @$pb.TagNumber(2)
  $0.Time ensureLastScaleTime() => $_ensure(1);

  /// currentReplicas is current number of replicas of pods managed by this autoscaler,
  /// as last seen by the autoscaler.
  /// +optional
  @$pb.TagNumber(3)
  $core.int get currentReplicas => $_getIZ(2);
  @$pb.TagNumber(3)
  set currentReplicas($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCurrentReplicas() => $_has(2);
  @$pb.TagNumber(3)
  void clearCurrentReplicas() => clearField(3);

  /// desiredReplicas is the desired number of replicas of pods managed by this autoscaler,
  /// as last calculated by the autoscaler.
  @$pb.TagNumber(4)
  $core.int get desiredReplicas => $_getIZ(3);
  @$pb.TagNumber(4)
  set desiredReplicas($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDesiredReplicas() => $_has(3);
  @$pb.TagNumber(4)
  void clearDesiredReplicas() => clearField(4);

  /// currentMetrics is the last read state of the metrics used by this autoscaler.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(5)
  $core.List<MetricStatus> get currentMetrics => $_getList(4);

  /// conditions is the set of conditions required for this autoscaler to scale its target,
  /// and indicates whether or not those conditions are met.
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=type
  /// +optional
  @$pb.TagNumber(6)
  $core.List<HorizontalPodAutoscalerCondition> get conditions => $_getList(5);
}

/// MetricIdentifier defines the name and optionally selector for a metric
class MetricIdentifier extends $pb.GeneratedMessage {
  factory MetricIdentifier({
    $core.String? name,
    $0.LabelSelector? selector,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    return $result;
  }
  MetricIdentifier._() : super();
  factory MetricIdentifier.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricIdentifier.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricIdentifier', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<$0.LabelSelector>(2, _omitFieldNames ? '' : 'selector', subBuilder: $0.LabelSelector.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricIdentifier clone() => MetricIdentifier()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricIdentifier copyWith(void Function(MetricIdentifier) updates) => super.copyWith((message) => updates(message as MetricIdentifier)) as MetricIdentifier;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetricIdentifier create() => MetricIdentifier._();
  MetricIdentifier createEmptyInstance() => create();
  static $pb.PbList<MetricIdentifier> createRepeated() => $pb.PbList<MetricIdentifier>();
  @$core.pragma('dart2js:noInline')
  static MetricIdentifier getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricIdentifier>(create);
  static MetricIdentifier? _defaultInstance;

  /// name is the name of the given metric
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// selector is the string-encoded form of a standard kubernetes label selector for the given metric
  /// When set, it is passed as an additional parameter to the metrics server for more specific metrics scoping.
  /// When unset, just the metricName will be used to gather metrics.
  /// +optional
  @$pb.TagNumber(2)
  $0.LabelSelector get selector => $_getN(1);
  @$pb.TagNumber(2)
  set selector($0.LabelSelector v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearSelector() => clearField(2);
  @$pb.TagNumber(2)
  $0.LabelSelector ensureSelector() => $_ensure(1);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
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

  /// type is the type of metric source.  It should be one of "ContainerResource", "External",
  /// "Object", "Pods" or "Resource", each mapping to a matching field in the object.
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
  /// requests and limits) known to Kubernetes describing a single container in
  /// each pod of the current scale target (e.g. CPU or memory). Such metrics are
  /// built in to Kubernetes, and have special scaling options on top of those
  /// available to normal per-pod metrics using the "pods" source.
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
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

  /// type is the type of metric source.  It will be one of "ContainerResource", "External",
  /// "Object", "Pods" or "Resource", each corresponds to a matching field in the object.
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

  /// container resource refers to a resource metric (such as those specified in
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

/// MetricTarget defines the target value, average value, or average utilization of a specific metric
class MetricTarget extends $pb.GeneratedMessage {
  factory MetricTarget({
    $core.String? type,
    $1.Quantity? value,
    $1.Quantity? averageValue,
    $core.int? averageUtilization,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (value != null) {
      $result.value = value;
    }
    if (averageValue != null) {
      $result.averageValue = averageValue;
    }
    if (averageUtilization != null) {
      $result.averageUtilization = averageUtilization;
    }
    return $result;
  }
  MetricTarget._() : super();
  factory MetricTarget.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricTarget.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricTarget', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<$1.Quantity>(2, _omitFieldNames ? '' : 'value', subBuilder: $1.Quantity.create)
    ..aOM<$1.Quantity>(3, _omitFieldNames ? '' : 'averageValue', protoName: 'averageValue', subBuilder: $1.Quantity.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'averageUtilization', $pb.PbFieldType.O3, protoName: 'averageUtilization')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricTarget clone() => MetricTarget()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricTarget copyWith(void Function(MetricTarget) updates) => super.copyWith((message) => updates(message as MetricTarget)) as MetricTarget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetricTarget create() => MetricTarget._();
  MetricTarget createEmptyInstance() => create();
  static $pb.PbList<MetricTarget> createRepeated() => $pb.PbList<MetricTarget>();
  @$core.pragma('dart2js:noInline')
  static MetricTarget getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricTarget>(create);
  static MetricTarget? _defaultInstance;

  /// type represents whether the metric type is Utilization, Value, or AverageValue
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// value is the target value of the metric (as a quantity).
  /// +optional
  @$pb.TagNumber(2)
  $1.Quantity get value => $_getN(1);
  @$pb.TagNumber(2)
  set value($1.Quantity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);
  @$pb.TagNumber(2)
  $1.Quantity ensureValue() => $_ensure(1);

  /// averageValue is the target value of the average of the
  /// metric across all relevant pods (as a quantity)
  /// +optional
  @$pb.TagNumber(3)
  $1.Quantity get averageValue => $_getN(2);
  @$pb.TagNumber(3)
  set averageValue($1.Quantity v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAverageValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearAverageValue() => clearField(3);
  @$pb.TagNumber(3)
  $1.Quantity ensureAverageValue() => $_ensure(2);

  /// averageUtilization is the target value of the average of the
  /// resource metric across all relevant pods, represented as a percentage of
  /// the requested value of the resource for the pods.
  /// Currently only valid for Resource metric source type
  /// +optional
  @$pb.TagNumber(4)
  $core.int get averageUtilization => $_getIZ(3);
  @$pb.TagNumber(4)
  set averageUtilization($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAverageUtilization() => $_has(3);
  @$pb.TagNumber(4)
  void clearAverageUtilization() => clearField(4);
}

/// MetricValueStatus holds the current value for a metric
class MetricValueStatus extends $pb.GeneratedMessage {
  factory MetricValueStatus({
    $1.Quantity? value,
    $1.Quantity? averageValue,
    $core.int? averageUtilization,
  }) {
    final $result = create();
    if (value != null) {
      $result.value = value;
    }
    if (averageValue != null) {
      $result.averageValue = averageValue;
    }
    if (averageUtilization != null) {
      $result.averageUtilization = averageUtilization;
    }
    return $result;
  }
  MetricValueStatus._() : super();
  factory MetricValueStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricValueStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricValueStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<$1.Quantity>(1, _omitFieldNames ? '' : 'value', subBuilder: $1.Quantity.create)
    ..aOM<$1.Quantity>(2, _omitFieldNames ? '' : 'averageValue', protoName: 'averageValue', subBuilder: $1.Quantity.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'averageUtilization', $pb.PbFieldType.O3, protoName: 'averageUtilization')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricValueStatus clone() => MetricValueStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricValueStatus copyWith(void Function(MetricValueStatus) updates) => super.copyWith((message) => updates(message as MetricValueStatus)) as MetricValueStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetricValueStatus create() => MetricValueStatus._();
  MetricValueStatus createEmptyInstance() => create();
  static $pb.PbList<MetricValueStatus> createRepeated() => $pb.PbList<MetricValueStatus>();
  @$core.pragma('dart2js:noInline')
  static MetricValueStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricValueStatus>(create);
  static MetricValueStatus? _defaultInstance;

  /// value is the current value of the metric (as a quantity).
  /// +optional
  @$pb.TagNumber(1)
  $1.Quantity get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($1.Quantity v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);
  @$pb.TagNumber(1)
  $1.Quantity ensureValue() => $_ensure(0);

  /// averageValue is the current value of the average of the
  /// metric across all relevant pods (as a quantity)
  /// +optional
  @$pb.TagNumber(2)
  $1.Quantity get averageValue => $_getN(1);
  @$pb.TagNumber(2)
  set averageValue($1.Quantity v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAverageValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearAverageValue() => clearField(2);
  @$pb.TagNumber(2)
  $1.Quantity ensureAverageValue() => $_ensure(1);

  /// currentAverageUtilization is the current value of the average of the
  /// resource metric across all relevant pods, represented as a percentage of
  /// the requested value of the resource for the pods.
  /// +optional
  @$pb.TagNumber(3)
  $core.int get averageUtilization => $_getIZ(2);
  @$pb.TagNumber(3)
  set averageUtilization($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAverageUtilization() => $_has(2);
  @$pb.TagNumber(3)
  void clearAverageUtilization() => clearField(3);
}

/// ObjectMetricSource indicates how to scale on a metric describing a
/// kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricSource extends $pb.GeneratedMessage {
  factory ObjectMetricSource({
    CrossVersionObjectReference? describedObject,
    MetricTarget? target,
    MetricIdentifier? metric,
  }) {
    final $result = create();
    if (describedObject != null) {
      $result.describedObject = describedObject;
    }
    if (target != null) {
      $result.target = target;
    }
    if (metric != null) {
      $result.metric = metric;
    }
    return $result;
  }
  ObjectMetricSource._() : super();
  factory ObjectMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObjectMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<CrossVersionObjectReference>(1, _omitFieldNames ? '' : 'describedObject', protoName: 'describedObject', subBuilder: CrossVersionObjectReference.create)
    ..aOM<MetricTarget>(2, _omitFieldNames ? '' : 'target', subBuilder: MetricTarget.create)
    ..aOM<MetricIdentifier>(3, _omitFieldNames ? '' : 'metric', subBuilder: MetricIdentifier.create)
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

  /// describedObject specifies the descriptions of a object,such as kind,name apiVersion
  @$pb.TagNumber(1)
  CrossVersionObjectReference get describedObject => $_getN(0);
  @$pb.TagNumber(1)
  set describedObject(CrossVersionObjectReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescribedObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescribedObject() => clearField(1);
  @$pb.TagNumber(1)
  CrossVersionObjectReference ensureDescribedObject() => $_ensure(0);

  /// target specifies the target value for the given metric
  @$pb.TagNumber(2)
  MetricTarget get target => $_getN(1);
  @$pb.TagNumber(2)
  set target(MetricTarget v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);
  @$pb.TagNumber(2)
  MetricTarget ensureTarget() => $_ensure(1);

  /// metric identifies the target metric by name and selector
  @$pb.TagNumber(3)
  MetricIdentifier get metric => $_getN(2);
  @$pb.TagNumber(3)
  set metric(MetricIdentifier v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMetric() => $_has(2);
  @$pb.TagNumber(3)
  void clearMetric() => clearField(3);
  @$pb.TagNumber(3)
  MetricIdentifier ensureMetric() => $_ensure(2);
}

/// ObjectMetricStatus indicates the current value of a metric describing a
/// kubernetes object (for example, hits-per-second on an Ingress object).
class ObjectMetricStatus extends $pb.GeneratedMessage {
  factory ObjectMetricStatus({
    MetricIdentifier? metric,
    MetricValueStatus? current,
    CrossVersionObjectReference? describedObject,
  }) {
    final $result = create();
    if (metric != null) {
      $result.metric = metric;
    }
    if (current != null) {
      $result.current = current;
    }
    if (describedObject != null) {
      $result.describedObject = describedObject;
    }
    return $result;
  }
  ObjectMetricStatus._() : super();
  factory ObjectMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObjectMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<MetricIdentifier>(1, _omitFieldNames ? '' : 'metric', subBuilder: MetricIdentifier.create)
    ..aOM<MetricValueStatus>(2, _omitFieldNames ? '' : 'current', subBuilder: MetricValueStatus.create)
    ..aOM<CrossVersionObjectReference>(3, _omitFieldNames ? '' : 'describedObject', protoName: 'describedObject', subBuilder: CrossVersionObjectReference.create)
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

  /// metric identifies the target metric by name and selector
  @$pb.TagNumber(1)
  MetricIdentifier get metric => $_getN(0);
  @$pb.TagNumber(1)
  set metric(MetricIdentifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetric() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetric() => clearField(1);
  @$pb.TagNumber(1)
  MetricIdentifier ensureMetric() => $_ensure(0);

  /// current contains the current value for the given metric
  @$pb.TagNumber(2)
  MetricValueStatus get current => $_getN(1);
  @$pb.TagNumber(2)
  set current(MetricValueStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrent() => clearField(2);
  @$pb.TagNumber(2)
  MetricValueStatus ensureCurrent() => $_ensure(1);

  /// DescribedObject specifies the descriptions of a object,such as kind,name apiVersion
  @$pb.TagNumber(3)
  CrossVersionObjectReference get describedObject => $_getN(2);
  @$pb.TagNumber(3)
  set describedObject(CrossVersionObjectReference v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDescribedObject() => $_has(2);
  @$pb.TagNumber(3)
  void clearDescribedObject() => clearField(3);
  @$pb.TagNumber(3)
  CrossVersionObjectReference ensureDescribedObject() => $_ensure(2);
}

/// PodsMetricSource indicates how to scale on a metric describing each pod in
/// the current scale target (for example, transactions-processed-per-second).
/// The values will be averaged together before being compared to the target
/// value.
class PodsMetricSource extends $pb.GeneratedMessage {
  factory PodsMetricSource({
    MetricIdentifier? metric,
    MetricTarget? target,
  }) {
    final $result = create();
    if (metric != null) {
      $result.metric = metric;
    }
    if (target != null) {
      $result.target = target;
    }
    return $result;
  }
  PodsMetricSource._() : super();
  factory PodsMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodsMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodsMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<MetricIdentifier>(1, _omitFieldNames ? '' : 'metric', subBuilder: MetricIdentifier.create)
    ..aOM<MetricTarget>(2, _omitFieldNames ? '' : 'target', subBuilder: MetricTarget.create)
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

  /// metric identifies the target metric by name and selector
  @$pb.TagNumber(1)
  MetricIdentifier get metric => $_getN(0);
  @$pb.TagNumber(1)
  set metric(MetricIdentifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetric() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetric() => clearField(1);
  @$pb.TagNumber(1)
  MetricIdentifier ensureMetric() => $_ensure(0);

  /// target specifies the target value for the given metric
  @$pb.TagNumber(2)
  MetricTarget get target => $_getN(1);
  @$pb.TagNumber(2)
  set target(MetricTarget v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);
  @$pb.TagNumber(2)
  MetricTarget ensureTarget() => $_ensure(1);
}

/// PodsMetricStatus indicates the current value of a metric describing each pod in
/// the current scale target (for example, transactions-processed-per-second).
class PodsMetricStatus extends $pb.GeneratedMessage {
  factory PodsMetricStatus({
    MetricIdentifier? metric,
    MetricValueStatus? current,
  }) {
    final $result = create();
    if (metric != null) {
      $result.metric = metric;
    }
    if (current != null) {
      $result.current = current;
    }
    return $result;
  }
  PodsMetricStatus._() : super();
  factory PodsMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodsMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodsMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOM<MetricIdentifier>(1, _omitFieldNames ? '' : 'metric', subBuilder: MetricIdentifier.create)
    ..aOM<MetricValueStatus>(2, _omitFieldNames ? '' : 'current', subBuilder: MetricValueStatus.create)
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

  /// metric identifies the target metric by name and selector
  @$pb.TagNumber(1)
  MetricIdentifier get metric => $_getN(0);
  @$pb.TagNumber(1)
  set metric(MetricIdentifier v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetric() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetric() => clearField(1);
  @$pb.TagNumber(1)
  MetricIdentifier ensureMetric() => $_ensure(0);

  /// current contains the current value for the given metric
  @$pb.TagNumber(2)
  MetricValueStatus get current => $_getN(1);
  @$pb.TagNumber(2)
  set current(MetricValueStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrent() => clearField(2);
  @$pb.TagNumber(2)
  MetricValueStatus ensureCurrent() => $_ensure(1);
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
    MetricTarget? target,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (target != null) {
      $result.target = target;
    }
    return $result;
  }
  ResourceMetricSource._() : super();
  factory ResourceMetricSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceMetricSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceMetricSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<MetricTarget>(2, _omitFieldNames ? '' : 'target', subBuilder: MetricTarget.create)
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

  /// target specifies the target value for the given metric
  @$pb.TagNumber(2)
  MetricTarget get target => $_getN(1);
  @$pb.TagNumber(2)
  set target(MetricTarget v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTarget() => $_has(1);
  @$pb.TagNumber(2)
  void clearTarget() => clearField(2);
  @$pb.TagNumber(2)
  MetricTarget ensureTarget() => $_ensure(1);
}

/// ResourceMetricStatus indicates the current value of a resource metric known to
/// Kubernetes, as specified in requests and limits, describing each pod in the
/// current scale target (e.g. CPU or memory).  Such metrics are built in to
/// Kubernetes, and have special scaling options on top of those available to
/// normal per-pod metrics using the "pods" source.
class ResourceMetricStatus extends $pb.GeneratedMessage {
  factory ResourceMetricStatus({
    $core.String? name,
    MetricValueStatus? current,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (current != null) {
      $result.current = current;
    }
    return $result;
  }
  ResourceMetricStatus._() : super();
  factory ResourceMetricStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceMetricStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceMetricStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.autoscaling.v2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<MetricValueStatus>(2, _omitFieldNames ? '' : 'current', subBuilder: MetricValueStatus.create)
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

  /// current contains the current value for the given metric
  @$pb.TagNumber(2)
  MetricValueStatus get current => $_getN(1);
  @$pb.TagNumber(2)
  set current(MetricValueStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasCurrent() => $_has(1);
  @$pb.TagNumber(2)
  void clearCurrent() => clearField(2);
  @$pb.TagNumber(2)
  MetricValueStatus ensureCurrent() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
