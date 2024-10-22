//
//  Generated code. Do not modify.
//  source: metrics/pkg/apis/custom_metrics/v1beta2/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../api/core/v1/generated.pb.dart' as $1;
import '../../../../../apimachinery/pkg/api/resource/generated.pb.dart' as $2;
import '../../../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// MetricIdentifier identifies a metric by name and, optionally, selector
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricIdentifier', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.custom_metrics.v1beta2'), createEmptyInstance: create)
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

  /// selector represents the label selector that could be used to select
  /// this metric, and will generally just be the selector passed in to
  /// the query used to fetch this metric.
  /// When left blank, only the metric's Name will be used to gather metrics.
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

/// MetricListOptions is used to select metrics by their label selectors
class MetricListOptions extends $pb.GeneratedMessage {
  factory MetricListOptions({
    $core.String? labelSelector,
    $core.String? metricLabelSelector,
  }) {
    final $result = create();
    if (labelSelector != null) {
      $result.labelSelector = labelSelector;
    }
    if (metricLabelSelector != null) {
      $result.metricLabelSelector = metricLabelSelector;
    }
    return $result;
  }
  MetricListOptions._() : super();
  factory MetricListOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricListOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricListOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.custom_metrics.v1beta2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'labelSelector', protoName: 'labelSelector')
    ..aOS(2, _omitFieldNames ? '' : 'metricLabelSelector', protoName: 'metricLabelSelector')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricListOptions clone() => MetricListOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricListOptions copyWith(void Function(MetricListOptions) updates) => super.copyWith((message) => updates(message as MetricListOptions)) as MetricListOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetricListOptions create() => MetricListOptions._();
  MetricListOptions createEmptyInstance() => create();
  static $pb.PbList<MetricListOptions> createRepeated() => $pb.PbList<MetricListOptions>();
  @$core.pragma('dart2js:noInline')
  static MetricListOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricListOptions>(create);
  static MetricListOptions? _defaultInstance;

  /// A selector to restrict the list of returned objects by their labels.
  /// Defaults to everything.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get labelSelector => $_getSZ(0);
  @$pb.TagNumber(1)
  set labelSelector($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLabelSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearLabelSelector() => clearField(1);

  /// A selector to restrict the list of returned metrics by their labels
  /// +optional
  @$pb.TagNumber(2)
  $core.String get metricLabelSelector => $_getSZ(1);
  @$pb.TagNumber(2)
  set metricLabelSelector($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetricLabelSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetricLabelSelector() => clearField(2);
}

/// MetricValue is the metric value for some object
class MetricValue extends $pb.GeneratedMessage {
  factory MetricValue({
    $1.ObjectReference? describedObject,
    MetricIdentifier? metric,
    $0.Time? timestamp,
    $fixnum.Int64? windowSeconds,
    $2.Quantity? value,
  }) {
    final $result = create();
    if (describedObject != null) {
      $result.describedObject = describedObject;
    }
    if (metric != null) {
      $result.metric = metric;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (windowSeconds != null) {
      $result.windowSeconds = windowSeconds;
    }
    if (value != null) {
      $result.value = value;
    }
    return $result;
  }
  MetricValue._() : super();
  factory MetricValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.custom_metrics.v1beta2'), createEmptyInstance: create)
    ..aOM<$1.ObjectReference>(1, _omitFieldNames ? '' : 'describedObject', protoName: 'describedObject', subBuilder: $1.ObjectReference.create)
    ..aOM<MetricIdentifier>(2, _omitFieldNames ? '' : 'metric', subBuilder: MetricIdentifier.create)
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'timestamp', subBuilder: $0.Time.create)
    ..aInt64(4, _omitFieldNames ? '' : 'windowSeconds', protoName: 'windowSeconds')
    ..aOM<$2.Quantity>(5, _omitFieldNames ? '' : 'value', subBuilder: $2.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricValue clone() => MetricValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricValue copyWith(void Function(MetricValue) updates) => super.copyWith((message) => updates(message as MetricValue)) as MetricValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetricValue create() => MetricValue._();
  MetricValue createEmptyInstance() => create();
  static $pb.PbList<MetricValue> createRepeated() => $pb.PbList<MetricValue>();
  @$core.pragma('dart2js:noInline')
  static MetricValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricValue>(create);
  static MetricValue? _defaultInstance;

  /// a reference to the described object
  @$pb.TagNumber(1)
  $1.ObjectReference get describedObject => $_getN(0);
  @$pb.TagNumber(1)
  set describedObject($1.ObjectReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescribedObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescribedObject() => clearField(1);
  @$pb.TagNumber(1)
  $1.ObjectReference ensureDescribedObject() => $_ensure(0);

  @$pb.TagNumber(2)
  MetricIdentifier get metric => $_getN(1);
  @$pb.TagNumber(2)
  set metric(MetricIdentifier v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetric() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetric() => clearField(2);
  @$pb.TagNumber(2)
  MetricIdentifier ensureMetric() => $_ensure(1);

  /// indicates the time at which the metrics were produced
  @$pb.TagNumber(3)
  $0.Time get timestamp => $_getN(2);
  @$pb.TagNumber(3)
  set timestamp($0.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureTimestamp() => $_ensure(2);

  /// indicates the window ([Timestamp-Window, Timestamp]) from
  /// which these metrics were calculated, when returning rate
  /// metrics calculated from cumulative metrics (or zero for
  /// non-calculated instantaneous metrics).
  @$pb.TagNumber(4)
  $fixnum.Int64 get windowSeconds => $_getI64(3);
  @$pb.TagNumber(4)
  set windowSeconds($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWindowSeconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearWindowSeconds() => clearField(4);

  /// the value of the metric for this
  @$pb.TagNumber(5)
  $2.Quantity get value => $_getN(4);
  @$pb.TagNumber(5)
  set value($2.Quantity v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);
  @$pb.TagNumber(5)
  $2.Quantity ensureValue() => $_ensure(4);
}

/// MetricValueList is a list of values for a given metric for some set of objects
class MetricValueList extends $pb.GeneratedMessage {
  factory MetricValueList({
    $0.ListMeta? metadata,
    $core.Iterable<MetricValue>? items,
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
  MetricValueList._() : super();
  factory MetricValueList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricValueList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricValueList', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.custom_metrics.v1beta2'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<MetricValue>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: MetricValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MetricValueList clone() => MetricValueList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MetricValueList copyWith(void Function(MetricValueList) updates) => super.copyWith((message) => updates(message as MetricValueList)) as MetricValueList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MetricValueList create() => MetricValueList._();
  MetricValueList createEmptyInstance() => create();
  static $pb.PbList<MetricValueList> createRepeated() => $pb.PbList<MetricValueList>();
  @$core.pragma('dart2js:noInline')
  static MetricValueList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MetricValueList>(create);
  static MetricValueList? _defaultInstance;

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

  /// the value of the metric across the described objects
  @$pb.TagNumber(2)
  $core.List<MetricValue> get items => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
