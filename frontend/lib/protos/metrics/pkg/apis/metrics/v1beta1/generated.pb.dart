//
//  Generated code. Do not modify.
//  source: metrics/pkg/apis/metrics/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../apimachinery/pkg/api/resource/generated.pb.dart' as $0;
import '../../../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $1;

/// ContainerMetrics sets resource usage metrics of a container.
class ContainerMetrics extends $pb.GeneratedMessage {
  factory ContainerMetrics({
    $core.String? name,
    $core.Map<$core.String, $0.Quantity>? usage,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (usage != null) {
      $result.usage.addAll(usage);
    }
    return $result;
  }
  ContainerMetrics._() : super();
  factory ContainerMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ContainerMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ContainerMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.metrics.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $0.Quantity>(2, _omitFieldNames ? '' : 'usage', entryClassName: 'ContainerMetrics.UsageEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.Quantity.create, valueDefaultOrMaker: $0.Quantity.getDefault, packageName: const $pb.PackageName('metrics.pkg.apis.metrics.v1beta1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ContainerMetrics clone() => ContainerMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ContainerMetrics copyWith(void Function(ContainerMetrics) updates) => super.copyWith((message) => updates(message as ContainerMetrics)) as ContainerMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ContainerMetrics create() => ContainerMetrics._();
  ContainerMetrics createEmptyInstance() => create();
  static $pb.PbList<ContainerMetrics> createRepeated() => $pb.PbList<ContainerMetrics>();
  @$core.pragma('dart2js:noInline')
  static ContainerMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ContainerMetrics>(create);
  static ContainerMetrics? _defaultInstance;

  /// Container name corresponding to the one from pod.spec.containers.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// The memory usage is the memory working set.
  @$pb.TagNumber(2)
  $core.Map<$core.String, $0.Quantity> get usage => $_getMap(1);
}

/// NodeMetrics sets resource usage metrics of a node.
class NodeMetrics extends $pb.GeneratedMessage {
  factory NodeMetrics({
    $1.ObjectMeta? metadata,
    $1.Time? timestamp,
    $1.Duration? window,
    $core.Map<$core.String, $0.Quantity>? usage,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (window != null) {
      $result.window = window;
    }
    if (usage != null) {
      $result.usage.addAll(usage);
    }
    return $result;
  }
  NodeMetrics._() : super();
  factory NodeMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.metrics.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ObjectMeta.create)
    ..aOM<$1.Time>(2, _omitFieldNames ? '' : 'timestamp', subBuilder: $1.Time.create)
    ..aOM<$1.Duration>(3, _omitFieldNames ? '' : 'window', subBuilder: $1.Duration.create)
    ..m<$core.String, $0.Quantity>(4, _omitFieldNames ? '' : 'usage', entryClassName: 'NodeMetrics.UsageEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.Quantity.create, valueDefaultOrMaker: $0.Quantity.getDefault, packageName: const $pb.PackageName('metrics.pkg.apis.metrics.v1beta1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeMetrics clone() => NodeMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeMetrics copyWith(void Function(NodeMetrics) updates) => super.copyWith((message) => updates(message as NodeMetrics)) as NodeMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeMetrics create() => NodeMetrics._();
  NodeMetrics createEmptyInstance() => create();
  static $pb.PbList<NodeMetrics> createRepeated() => $pb.PbList<NodeMetrics>();
  @$core.pragma('dart2js:noInline')
  static NodeMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeMetrics>(create);
  static NodeMetrics? _defaultInstance;

  /// Standard object's metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// The following fields define time interval from which metrics were
  /// collected from the interval [Timestamp-Window, Timestamp].
  @$pb.TagNumber(2)
  $1.Time get timestamp => $_getN(1);
  @$pb.TagNumber(2)
  set timestamp($1.Time v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => clearField(2);
  @$pb.TagNumber(2)
  $1.Time ensureTimestamp() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Duration get window => $_getN(2);
  @$pb.TagNumber(3)
  set window($1.Duration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWindow() => $_has(2);
  @$pb.TagNumber(3)
  void clearWindow() => clearField(3);
  @$pb.TagNumber(3)
  $1.Duration ensureWindow() => $_ensure(2);

  /// The memory usage is the memory working set.
  @$pb.TagNumber(4)
  $core.Map<$core.String, $0.Quantity> get usage => $_getMap(3);
}

/// NodeMetricsList is a list of NodeMetrics.
class NodeMetricsList extends $pb.GeneratedMessage {
  factory NodeMetricsList({
    $1.ListMeta? metadata,
    $core.Iterable<NodeMetrics>? items,
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
  NodeMetricsList._() : super();
  factory NodeMetricsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeMetricsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NodeMetricsList', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.metrics.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ListMeta.create)
    ..pc<NodeMetrics>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: NodeMetrics.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeMetricsList clone() => NodeMetricsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeMetricsList copyWith(void Function(NodeMetricsList) updates) => super.copyWith((message) => updates(message as NodeMetricsList)) as NodeMetricsList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NodeMetricsList create() => NodeMetricsList._();
  NodeMetricsList createEmptyInstance() => create();
  static $pb.PbList<NodeMetricsList> createRepeated() => $pb.PbList<NodeMetricsList>();
  @$core.pragma('dart2js:noInline')
  static NodeMetricsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeMetricsList>(create);
  static NodeMetricsList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
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

  /// List of node metrics.
  @$pb.TagNumber(2)
  $core.List<NodeMetrics> get items => $_getList(1);
}

/// PodMetrics sets resource usage metrics of a pod.
class PodMetrics extends $pb.GeneratedMessage {
  factory PodMetrics({
    $1.ObjectMeta? metadata,
    $1.Time? timestamp,
    $1.Duration? window,
    $core.Iterable<ContainerMetrics>? containers,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (window != null) {
      $result.window = window;
    }
    if (containers != null) {
      $result.containers.addAll(containers);
    }
    return $result;
  }
  PodMetrics._() : super();
  factory PodMetrics.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodMetrics.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodMetrics', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.metrics.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ObjectMeta.create)
    ..aOM<$1.Time>(2, _omitFieldNames ? '' : 'timestamp', subBuilder: $1.Time.create)
    ..aOM<$1.Duration>(3, _omitFieldNames ? '' : 'window', subBuilder: $1.Duration.create)
    ..pc<ContainerMetrics>(4, _omitFieldNames ? '' : 'containers', $pb.PbFieldType.PM, subBuilder: ContainerMetrics.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodMetrics clone() => PodMetrics()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodMetrics copyWith(void Function(PodMetrics) updates) => super.copyWith((message) => updates(message as PodMetrics)) as PodMetrics;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodMetrics create() => PodMetrics._();
  PodMetrics createEmptyInstance() => create();
  static $pb.PbList<PodMetrics> createRepeated() => $pb.PbList<PodMetrics>();
  @$core.pragma('dart2js:noInline')
  static PodMetrics getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodMetrics>(create);
  static PodMetrics? _defaultInstance;

  /// Standard object's metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// The following fields define time interval from which metrics were
  /// collected from the interval [Timestamp-Window, Timestamp].
  @$pb.TagNumber(2)
  $1.Time get timestamp => $_getN(1);
  @$pb.TagNumber(2)
  set timestamp($1.Time v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimestamp() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimestamp() => clearField(2);
  @$pb.TagNumber(2)
  $1.Time ensureTimestamp() => $_ensure(1);

  @$pb.TagNumber(3)
  $1.Duration get window => $_getN(2);
  @$pb.TagNumber(3)
  set window($1.Duration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasWindow() => $_has(2);
  @$pb.TagNumber(3)
  void clearWindow() => clearField(3);
  @$pb.TagNumber(3)
  $1.Duration ensureWindow() => $_ensure(2);

  /// Metrics for all containers are collected within the same time window.
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<ContainerMetrics> get containers => $_getList(3);
}

/// PodMetricsList is a list of PodMetrics.
class PodMetricsList extends $pb.GeneratedMessage {
  factory PodMetricsList({
    $1.ListMeta? metadata,
    $core.Iterable<PodMetrics>? items,
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
  PodMetricsList._() : super();
  factory PodMetricsList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodMetricsList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodMetricsList', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.metrics.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ListMeta.create)
    ..pc<PodMetrics>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: PodMetrics.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodMetricsList clone() => PodMetricsList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodMetricsList copyWith(void Function(PodMetricsList) updates) => super.copyWith((message) => updates(message as PodMetricsList)) as PodMetricsList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodMetricsList create() => PodMetricsList._();
  PodMetricsList createEmptyInstance() => create();
  static $pb.PbList<PodMetricsList> createRepeated() => $pb.PbList<PodMetricsList>();
  @$core.pragma('dart2js:noInline')
  static PodMetricsList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodMetricsList>(create);
  static PodMetricsList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
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

  /// List of pod metrics.
  @$pb.TagNumber(2)
  $core.List<PodMetrics> get items => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
