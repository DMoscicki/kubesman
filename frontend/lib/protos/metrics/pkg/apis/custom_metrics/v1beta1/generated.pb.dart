//
//  Generated code. Do not modify.
//  source: metrics/pkg/apis/custom_metrics/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../api/core/v1/generated.pb.dart' as $0;
import '../../../../../apimachinery/pkg/api/resource/generated.pb.dart' as $2;
import '../../../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $1;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricListOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.custom_metrics.v1beta1'), createEmptyInstance: create)
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

/// MetricValue is a metric value for some object
class MetricValue extends $pb.GeneratedMessage {
  factory MetricValue({
    $0.ObjectReference? describedObject,
    $core.String? metricName,
    $1.Time? timestamp,
    $fixnum.Int64? window,
    $2.Quantity? value,
    $1.LabelSelector? selector,
  }) {
    final $result = create();
    if (describedObject != null) {
      $result.describedObject = describedObject;
    }
    if (metricName != null) {
      $result.metricName = metricName;
    }
    if (timestamp != null) {
      $result.timestamp = timestamp;
    }
    if (window != null) {
      $result.window = window;
    }
    if (value != null) {
      $result.value = value;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    return $result;
  }
  MetricValue._() : super();
  factory MetricValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MetricValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.custom_metrics.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectReference>(1, _omitFieldNames ? '' : 'describedObject', protoName: 'describedObject', subBuilder: $0.ObjectReference.create)
    ..aOS(2, _omitFieldNames ? '' : 'metricName', protoName: 'metricName')
    ..aOM<$1.Time>(3, _omitFieldNames ? '' : 'timestamp', subBuilder: $1.Time.create)
    ..aInt64(4, _omitFieldNames ? '' : 'window')
    ..aOM<$2.Quantity>(5, _omitFieldNames ? '' : 'value', subBuilder: $2.Quantity.create)
    ..aOM<$1.LabelSelector>(6, _omitFieldNames ? '' : 'selector', subBuilder: $1.LabelSelector.create)
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
  $0.ObjectReference get describedObject => $_getN(0);
  @$pb.TagNumber(1)
  set describedObject($0.ObjectReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescribedObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescribedObject() => clearField(1);
  @$pb.TagNumber(1)
  $0.ObjectReference ensureDescribedObject() => $_ensure(0);

  /// the name of the metric
  @$pb.TagNumber(2)
  $core.String get metricName => $_getSZ(1);
  @$pb.TagNumber(2)
  set metricName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetricName() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetricName() => clearField(2);

  /// indicates the time at which the metrics were produced
  @$pb.TagNumber(3)
  $1.Time get timestamp => $_getN(2);
  @$pb.TagNumber(3)
  set timestamp($1.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimestamp() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimestamp() => clearField(3);
  @$pb.TagNumber(3)
  $1.Time ensureTimestamp() => $_ensure(2);

  /// indicates the window ([Timestamp-Window, Timestamp]) from
  /// which these metrics were calculated, when returning rate
  /// metrics calculated from cumulative metrics (or zero for
  /// non-calculated instantaneous metrics).
  @$pb.TagNumber(4)
  $fixnum.Int64 get window => $_getI64(3);
  @$pb.TagNumber(4)
  set window($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWindow() => $_has(3);
  @$pb.TagNumber(4)
  void clearWindow() => clearField(4);

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

  /// selector represents the label selector that could be used to select
  /// this metric, and will generally just be the selector passed in to
  /// the query used to fetch this metric.
  /// When left blank, only the metric's Name will be used to gather metrics.
  /// +optional
  @$pb.TagNumber(6)
  $1.LabelSelector get selector => $_getN(5);
  @$pb.TagNumber(6)
  set selector($1.LabelSelector v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasSelector() => $_has(5);
  @$pb.TagNumber(6)
  void clearSelector() => clearField(6);
  @$pb.TagNumber(6)
  $1.LabelSelector ensureSelector() => $_ensure(5);
}

/// MetricValueList is a list of values for a given metric for some set of objects
class MetricValueList extends $pb.GeneratedMessage {
  factory MetricValueList({
    $1.ListMeta? metadata,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MetricValueList', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.custom_metrics.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ListMeta.create)
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
  $1.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($1.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $1.ListMeta ensureMetadata() => $_ensure(0);

  /// the value of the metric across the described objects
  @$pb.TagNumber(2)
  $core.List<MetricValue> get items => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
