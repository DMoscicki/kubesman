//
//  Generated code. Do not modify.
//  source: metrics/pkg/apis/external_metrics/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../apimachinery/pkg/api/resource/generated.pb.dart' as $1;
import '../../../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// ExternalMetricValue is a metric value for external metric
/// A single metric value is identified by metric name and a set of string labels.
/// For one metric there can be multiple values with different sets of labels.
class ExternalMetricValue extends $pb.GeneratedMessage {
  factory ExternalMetricValue({
    $core.String? metricName,
    $core.Map<$core.String, $core.String>? metricLabels,
    $0.Time? timestamp,
    $fixnum.Int64? window,
    $1.Quantity? value,
  }) {
    final $result = create();
    if (metricName != null) {
      $result.metricName = metricName;
    }
    if (metricLabels != null) {
      $result.metricLabels.addAll(metricLabels);
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
    return $result;
  }
  ExternalMetricValue._() : super();
  factory ExternalMetricValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExternalMetricValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExternalMetricValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.external_metrics.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'metricName', protoName: 'metricName')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'metricLabels', protoName: 'metricLabels', entryClassName: 'ExternalMetricValue.MetricLabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('metrics.pkg.apis.external_metrics.v1beta1'))
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'timestamp', subBuilder: $0.Time.create)
    ..aInt64(4, _omitFieldNames ? '' : 'window')
    ..aOM<$1.Quantity>(5, _omitFieldNames ? '' : 'value', subBuilder: $1.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExternalMetricValue clone() => ExternalMetricValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExternalMetricValue copyWith(void Function(ExternalMetricValue) updates) => super.copyWith((message) => updates(message as ExternalMetricValue)) as ExternalMetricValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExternalMetricValue create() => ExternalMetricValue._();
  ExternalMetricValue createEmptyInstance() => create();
  static $pb.PbList<ExternalMetricValue> createRepeated() => $pb.PbList<ExternalMetricValue>();
  @$core.pragma('dart2js:noInline')
  static ExternalMetricValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExternalMetricValue>(create);
  static ExternalMetricValue? _defaultInstance;

  /// the name of the metric
  @$pb.TagNumber(1)
  $core.String get metricName => $_getSZ(0);
  @$pb.TagNumber(1)
  set metricName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetricName() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetricName() => clearField(1);

  /// a set of labels that identify a single time series for the metric
  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get metricLabels => $_getMap(1);

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
  $fixnum.Int64 get window => $_getI64(3);
  @$pb.TagNumber(4)
  set window($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasWindow() => $_has(3);
  @$pb.TagNumber(4)
  void clearWindow() => clearField(4);

  /// the value of the metric
  @$pb.TagNumber(5)
  $1.Quantity get value => $_getN(4);
  @$pb.TagNumber(5)
  set value($1.Quantity v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(4);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);
  @$pb.TagNumber(5)
  $1.Quantity ensureValue() => $_ensure(4);
}

/// ExternalMetricValueList is a list of values for a given metric for some set labels
class ExternalMetricValueList extends $pb.GeneratedMessage {
  factory ExternalMetricValueList({
    $0.ListMeta? metadata,
    $core.Iterable<ExternalMetricValue>? items,
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
  ExternalMetricValueList._() : super();
  factory ExternalMetricValueList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExternalMetricValueList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExternalMetricValueList', package: const $pb.PackageName(_omitMessageNames ? '' : 'metrics.pkg.apis.external_metrics.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<ExternalMetricValue>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ExternalMetricValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExternalMetricValueList clone() => ExternalMetricValueList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExternalMetricValueList copyWith(void Function(ExternalMetricValueList) updates) => super.copyWith((message) => updates(message as ExternalMetricValueList)) as ExternalMetricValueList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExternalMetricValueList create() => ExternalMetricValueList._();
  ExternalMetricValueList createEmptyInstance() => create();
  static $pb.PbList<ExternalMetricValueList> createRepeated() => $pb.PbList<ExternalMetricValueList>();
  @$core.pragma('dart2js:noInline')
  static ExternalMetricValueList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExternalMetricValueList>(create);
  static ExternalMetricValueList? _defaultInstance;

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

  /// value of the metric matching a given set of labels
  @$pb.TagNumber(2)
  $core.List<ExternalMetricValue> get items => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
