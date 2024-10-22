//
//  Generated code. Do not modify.
//  source: api/extensions/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../../../apimachinery/pkg/util/intstr/generated.pb.dart' as $2;
import '../../core/v1/generated.pb.dart' as $1;

/// DEPRECATED - This group version of DaemonSet is deprecated by apps/v1beta2/DaemonSet. See the release notes for
/// more information.
/// DaemonSet represents the configuration of a daemon set.
class DaemonSet extends $pb.GeneratedMessage {
  factory DaemonSet({
    $0.ObjectMeta? metadata,
    DaemonSetSpec? spec,
    DaemonSetStatus? status,
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
  DaemonSet._() : super();
  factory DaemonSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DaemonSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DaemonSet', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<DaemonSetSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: DaemonSetSpec.create)
    ..aOM<DaemonSetStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: DaemonSetStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DaemonSet clone() => DaemonSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DaemonSet copyWith(void Function(DaemonSet) updates) => super.copyWith((message) => updates(message as DaemonSet)) as DaemonSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DaemonSet create() => DaemonSet._();
  DaemonSet createEmptyInstance() => create();
  static $pb.PbList<DaemonSet> createRepeated() => $pb.PbList<DaemonSet>();
  @$core.pragma('dart2js:noInline')
  static DaemonSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DaemonSet>(create);
  static DaemonSet? _defaultInstance;

  /// Standard object's metadata.
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

  /// The desired behavior of this daemon set.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  DaemonSetSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(DaemonSetSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  DaemonSetSpec ensureSpec() => $_ensure(1);

  /// The current status of this daemon set. This data may be
  /// out of date by some window of time.
  /// Populated by the system.
  /// Read-only.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  DaemonSetStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(DaemonSetStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  DaemonSetStatus ensureStatus() => $_ensure(2);
}

/// DaemonSetCondition describes the state of a DaemonSet at a certain point.
class DaemonSetCondition extends $pb.GeneratedMessage {
  factory DaemonSetCondition({
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
  DaemonSetCondition._() : super();
  factory DaemonSetCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DaemonSetCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DaemonSetCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
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
  DaemonSetCondition clone() => DaemonSetCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DaemonSetCondition copyWith(void Function(DaemonSetCondition) updates) => super.copyWith((message) => updates(message as DaemonSetCondition)) as DaemonSetCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DaemonSetCondition create() => DaemonSetCondition._();
  DaemonSetCondition createEmptyInstance() => create();
  static $pb.PbList<DaemonSetCondition> createRepeated() => $pb.PbList<DaemonSetCondition>();
  @$core.pragma('dart2js:noInline')
  static DaemonSetCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DaemonSetCondition>(create);
  static DaemonSetCondition? _defaultInstance;

  /// Type of DaemonSet condition.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Status of the condition, one of True, False, Unknown.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// Last time the condition transitioned from one status to another.
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

  /// The reason for the condition's last transition.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// A human readable message indicating details about the transition.
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

/// DaemonSetList is a collection of daemon sets.
class DaemonSetList extends $pb.GeneratedMessage {
  factory DaemonSetList({
    $0.ListMeta? metadata,
    $core.Iterable<DaemonSet>? items,
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
  DaemonSetList._() : super();
  factory DaemonSetList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DaemonSetList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DaemonSetList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<DaemonSet>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: DaemonSet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DaemonSetList clone() => DaemonSetList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DaemonSetList copyWith(void Function(DaemonSetList) updates) => super.copyWith((message) => updates(message as DaemonSetList)) as DaemonSetList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DaemonSetList create() => DaemonSetList._();
  DaemonSetList createEmptyInstance() => create();
  static $pb.PbList<DaemonSetList> createRepeated() => $pb.PbList<DaemonSetList>();
  @$core.pragma('dart2js:noInline')
  static DaemonSetList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DaemonSetList>(create);
  static DaemonSetList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// A list of daemon sets.
  @$pb.TagNumber(2)
  $core.List<DaemonSet> get items => $_getList(1);
}

/// DaemonSetSpec is the specification of a daemon set.
class DaemonSetSpec extends $pb.GeneratedMessage {
  factory DaemonSetSpec({
    $0.LabelSelector? selector,
    $1.PodTemplateSpec? template,
    DaemonSetUpdateStrategy? updateStrategy,
    $core.int? minReadySeconds,
    $fixnum.Int64? templateGeneration,
    $core.int? revisionHistoryLimit,
  }) {
    final $result = create();
    if (selector != null) {
      $result.selector = selector;
    }
    if (template != null) {
      $result.template = template;
    }
    if (updateStrategy != null) {
      $result.updateStrategy = updateStrategy;
    }
    if (minReadySeconds != null) {
      $result.minReadySeconds = minReadySeconds;
    }
    if (templateGeneration != null) {
      $result.templateGeneration = templateGeneration;
    }
    if (revisionHistoryLimit != null) {
      $result.revisionHistoryLimit = revisionHistoryLimit;
    }
    return $result;
  }
  DaemonSetSpec._() : super();
  factory DaemonSetSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DaemonSetSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DaemonSetSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.LabelSelector>(1, _omitFieldNames ? '' : 'selector', subBuilder: $0.LabelSelector.create)
    ..aOM<$1.PodTemplateSpec>(2, _omitFieldNames ? '' : 'template', subBuilder: $1.PodTemplateSpec.create)
    ..aOM<DaemonSetUpdateStrategy>(3, _omitFieldNames ? '' : 'updateStrategy', protoName: 'updateStrategy', subBuilder: DaemonSetUpdateStrategy.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'minReadySeconds', $pb.PbFieldType.O3, protoName: 'minReadySeconds')
    ..aInt64(5, _omitFieldNames ? '' : 'templateGeneration', protoName: 'templateGeneration')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'revisionHistoryLimit', $pb.PbFieldType.O3, protoName: 'revisionHistoryLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DaemonSetSpec clone() => DaemonSetSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DaemonSetSpec copyWith(void Function(DaemonSetSpec) updates) => super.copyWith((message) => updates(message as DaemonSetSpec)) as DaemonSetSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DaemonSetSpec create() => DaemonSetSpec._();
  DaemonSetSpec createEmptyInstance() => create();
  static $pb.PbList<DaemonSetSpec> createRepeated() => $pb.PbList<DaemonSetSpec>();
  @$core.pragma('dart2js:noInline')
  static DaemonSetSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DaemonSetSpec>(create);
  static DaemonSetSpec? _defaultInstance;

  /// A label query over pods that are managed by the daemon set.
  /// Must match in order to be controlled.
  /// If empty, defaulted to labels on Pod template.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// +optional
  @$pb.TagNumber(1)
  $0.LabelSelector get selector => $_getN(0);
  @$pb.TagNumber(1)
  set selector($0.LabelSelector v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelector() => clearField(1);
  @$pb.TagNumber(1)
  $0.LabelSelector ensureSelector() => $_ensure(0);

  /// An object that describes the pod that will be created.
  /// The DaemonSet will create exactly one copy of this pod on every node
  /// that matches the template's node selector (or on every node if no node
  /// selector is specified).
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  @$pb.TagNumber(2)
  $1.PodTemplateSpec get template => $_getN(1);
  @$pb.TagNumber(2)
  set template($1.PodTemplateSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTemplate() => $_has(1);
  @$pb.TagNumber(2)
  void clearTemplate() => clearField(2);
  @$pb.TagNumber(2)
  $1.PodTemplateSpec ensureTemplate() => $_ensure(1);

  /// An update strategy to replace existing DaemonSet pods with new pods.
  /// +optional
  @$pb.TagNumber(3)
  DaemonSetUpdateStrategy get updateStrategy => $_getN(2);
  @$pb.TagNumber(3)
  set updateStrategy(DaemonSetUpdateStrategy v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdateStrategy() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdateStrategy() => clearField(3);
  @$pb.TagNumber(3)
  DaemonSetUpdateStrategy ensureUpdateStrategy() => $_ensure(2);

  /// The minimum number of seconds for which a newly created DaemonSet pod should
  /// be ready without any of its container crashing, for it to be considered
  /// available. Defaults to 0 (pod will be considered available as soon as it
  /// is ready).
  /// +optional
  @$pb.TagNumber(4)
  $core.int get minReadySeconds => $_getIZ(3);
  @$pb.TagNumber(4)
  set minReadySeconds($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinReadySeconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinReadySeconds() => clearField(4);

  /// DEPRECATED.
  /// A sequence number representing a specific generation of the template.
  /// Populated by the system. It can be set only during the creation.
  /// +optional
  @$pb.TagNumber(5)
  $fixnum.Int64 get templateGeneration => $_getI64(4);
  @$pb.TagNumber(5)
  set templateGeneration($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTemplateGeneration() => $_has(4);
  @$pb.TagNumber(5)
  void clearTemplateGeneration() => clearField(5);

  /// The number of old history to retain to allow rollback.
  /// This is a pointer to distinguish between explicit zero and not specified.
  /// Defaults to 10.
  /// +optional
  @$pb.TagNumber(6)
  $core.int get revisionHistoryLimit => $_getIZ(5);
  @$pb.TagNumber(6)
  set revisionHistoryLimit($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRevisionHistoryLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearRevisionHistoryLimit() => clearField(6);
}

/// DaemonSetStatus represents the current status of a daemon set.
class DaemonSetStatus extends $pb.GeneratedMessage {
  factory DaemonSetStatus({
    $core.int? currentNumberScheduled,
    $core.int? numberMisscheduled,
    $core.int? desiredNumberScheduled,
    $core.int? numberReady,
    $fixnum.Int64? observedGeneration,
    $core.int? updatedNumberScheduled,
    $core.int? numberAvailable,
    $core.int? numberUnavailable,
    $core.int? collisionCount,
    $core.Iterable<DaemonSetCondition>? conditions,
  }) {
    final $result = create();
    if (currentNumberScheduled != null) {
      $result.currentNumberScheduled = currentNumberScheduled;
    }
    if (numberMisscheduled != null) {
      $result.numberMisscheduled = numberMisscheduled;
    }
    if (desiredNumberScheduled != null) {
      $result.desiredNumberScheduled = desiredNumberScheduled;
    }
    if (numberReady != null) {
      $result.numberReady = numberReady;
    }
    if (observedGeneration != null) {
      $result.observedGeneration = observedGeneration;
    }
    if (updatedNumberScheduled != null) {
      $result.updatedNumberScheduled = updatedNumberScheduled;
    }
    if (numberAvailable != null) {
      $result.numberAvailable = numberAvailable;
    }
    if (numberUnavailable != null) {
      $result.numberUnavailable = numberUnavailable;
    }
    if (collisionCount != null) {
      $result.collisionCount = collisionCount;
    }
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  DaemonSetStatus._() : super();
  factory DaemonSetStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DaemonSetStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DaemonSetStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'currentNumberScheduled', $pb.PbFieldType.O3, protoName: 'currentNumberScheduled')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'numberMisscheduled', $pb.PbFieldType.O3, protoName: 'numberMisscheduled')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'desiredNumberScheduled', $pb.PbFieldType.O3, protoName: 'desiredNumberScheduled')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'numberReady', $pb.PbFieldType.O3, protoName: 'numberReady')
    ..aInt64(5, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'updatedNumberScheduled', $pb.PbFieldType.O3, protoName: 'updatedNumberScheduled')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'numberAvailable', $pb.PbFieldType.O3, protoName: 'numberAvailable')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'numberUnavailable', $pb.PbFieldType.O3, protoName: 'numberUnavailable')
    ..a<$core.int>(9, _omitFieldNames ? '' : 'collisionCount', $pb.PbFieldType.O3, protoName: 'collisionCount')
    ..pc<DaemonSetCondition>(10, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: DaemonSetCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DaemonSetStatus clone() => DaemonSetStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DaemonSetStatus copyWith(void Function(DaemonSetStatus) updates) => super.copyWith((message) => updates(message as DaemonSetStatus)) as DaemonSetStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DaemonSetStatus create() => DaemonSetStatus._();
  DaemonSetStatus createEmptyInstance() => create();
  static $pb.PbList<DaemonSetStatus> createRepeated() => $pb.PbList<DaemonSetStatus>();
  @$core.pragma('dart2js:noInline')
  static DaemonSetStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DaemonSetStatus>(create);
  static DaemonSetStatus? _defaultInstance;

  /// The number of nodes that are running at least 1
  /// daemon pod and are supposed to run the daemon pod.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @$pb.TagNumber(1)
  $core.int get currentNumberScheduled => $_getIZ(0);
  @$pb.TagNumber(1)
  set currentNumberScheduled($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCurrentNumberScheduled() => $_has(0);
  @$pb.TagNumber(1)
  void clearCurrentNumberScheduled() => clearField(1);

  /// The number of nodes that are running the daemon pod, but are
  /// not supposed to run the daemon pod.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @$pb.TagNumber(2)
  $core.int get numberMisscheduled => $_getIZ(1);
  @$pb.TagNumber(2)
  set numberMisscheduled($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumberMisscheduled() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumberMisscheduled() => clearField(2);

  /// The total number of nodes that should be running the daemon
  /// pod (including nodes correctly running the daemon pod).
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/daemonset/
  @$pb.TagNumber(3)
  $core.int get desiredNumberScheduled => $_getIZ(2);
  @$pb.TagNumber(3)
  set desiredNumberScheduled($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDesiredNumberScheduled() => $_has(2);
  @$pb.TagNumber(3)
  void clearDesiredNumberScheduled() => clearField(3);

  /// The number of nodes that should be running the daemon pod and have one
  /// or more of the daemon pod running and ready.
  @$pb.TagNumber(4)
  $core.int get numberReady => $_getIZ(3);
  @$pb.TagNumber(4)
  set numberReady($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumberReady() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumberReady() => clearField(4);

  /// The most recent generation observed by the daemon set controller.
  /// +optional
  @$pb.TagNumber(5)
  $fixnum.Int64 get observedGeneration => $_getI64(4);
  @$pb.TagNumber(5)
  set observedGeneration($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasObservedGeneration() => $_has(4);
  @$pb.TagNumber(5)
  void clearObservedGeneration() => clearField(5);

  /// The total number of nodes that are running updated daemon pod
  /// +optional
  @$pb.TagNumber(6)
  $core.int get updatedNumberScheduled => $_getIZ(5);
  @$pb.TagNumber(6)
  set updatedNumberScheduled($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUpdatedNumberScheduled() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedNumberScheduled() => clearField(6);

  /// The number of nodes that should be running the
  /// daemon pod and have one or more of the daemon pod running and
  /// available (ready for at least spec.minReadySeconds)
  /// +optional
  @$pb.TagNumber(7)
  $core.int get numberAvailable => $_getIZ(6);
  @$pb.TagNumber(7)
  set numberAvailable($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasNumberAvailable() => $_has(6);
  @$pb.TagNumber(7)
  void clearNumberAvailable() => clearField(7);

  /// The number of nodes that should be running the
  /// daemon pod and have none of the daemon pod running and available
  /// (ready for at least spec.minReadySeconds)
  /// +optional
  @$pb.TagNumber(8)
  $core.int get numberUnavailable => $_getIZ(7);
  @$pb.TagNumber(8)
  set numberUnavailable($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasNumberUnavailable() => $_has(7);
  @$pb.TagNumber(8)
  void clearNumberUnavailable() => clearField(8);

  /// Count of hash collisions for the DaemonSet. The DaemonSet controller
  /// uses this field as a collision avoidance mechanism when it needs to
  /// create the name for the newest ControllerRevision.
  /// +optional
  @$pb.TagNumber(9)
  $core.int get collisionCount => $_getIZ(8);
  @$pb.TagNumber(9)
  set collisionCount($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCollisionCount() => $_has(8);
  @$pb.TagNumber(9)
  void clearCollisionCount() => clearField(9);

  /// Represents the latest available observations of a DaemonSet's current state.
  /// +optional
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(10)
  $core.List<DaemonSetCondition> get conditions => $_getList(9);
}

/// DaemonSetUpdateStrategy indicates the strategy that the DaemonSet
/// controller will use to perform updates. It includes any additional parameters
/// necessary to perform the update for the indicated strategy.
class DaemonSetUpdateStrategy extends $pb.GeneratedMessage {
  factory DaemonSetUpdateStrategy({
    $core.String? type,
    RollingUpdateDaemonSet? rollingUpdate,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (rollingUpdate != null) {
      $result.rollingUpdate = rollingUpdate;
    }
    return $result;
  }
  DaemonSetUpdateStrategy._() : super();
  factory DaemonSetUpdateStrategy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DaemonSetUpdateStrategy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DaemonSetUpdateStrategy', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<RollingUpdateDaemonSet>(2, _omitFieldNames ? '' : 'rollingUpdate', protoName: 'rollingUpdate', subBuilder: RollingUpdateDaemonSet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DaemonSetUpdateStrategy clone() => DaemonSetUpdateStrategy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DaemonSetUpdateStrategy copyWith(void Function(DaemonSetUpdateStrategy) updates) => super.copyWith((message) => updates(message as DaemonSetUpdateStrategy)) as DaemonSetUpdateStrategy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DaemonSetUpdateStrategy create() => DaemonSetUpdateStrategy._();
  DaemonSetUpdateStrategy createEmptyInstance() => create();
  static $pb.PbList<DaemonSetUpdateStrategy> createRepeated() => $pb.PbList<DaemonSetUpdateStrategy>();
  @$core.pragma('dart2js:noInline')
  static DaemonSetUpdateStrategy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DaemonSetUpdateStrategy>(create);
  static DaemonSetUpdateStrategy? _defaultInstance;

  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete".
  /// Default is OnDelete.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Rolling update config params. Present only if type = "RollingUpdate".
  /// ---
  /// TODO: Update this to follow our convention for oneOf, whatever we decide it
  /// to be. Same as Deployment `strategy.rollingUpdate`.
  /// See https://github.com/kubernetes/kubernetes/issues/35345
  /// +optional
  @$pb.TagNumber(2)
  RollingUpdateDaemonSet get rollingUpdate => $_getN(1);
  @$pb.TagNumber(2)
  set rollingUpdate(RollingUpdateDaemonSet v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRollingUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearRollingUpdate() => clearField(2);
  @$pb.TagNumber(2)
  RollingUpdateDaemonSet ensureRollingUpdate() => $_ensure(1);
}

/// DEPRECATED - This group version of Deployment is deprecated by apps/v1beta2/Deployment. See the release notes for
/// more information.
/// Deployment enables declarative updates for Pods and ReplicaSets.
class Deployment extends $pb.GeneratedMessage {
  factory Deployment({
    $0.ObjectMeta? metadata,
    DeploymentSpec? spec,
    DeploymentStatus? status,
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
  Deployment._() : super();
  factory Deployment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Deployment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Deployment', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<DeploymentSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: DeploymentSpec.create)
    ..aOM<DeploymentStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: DeploymentStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Deployment clone() => Deployment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Deployment copyWith(void Function(Deployment) updates) => super.copyWith((message) => updates(message as Deployment)) as Deployment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Deployment create() => Deployment._();
  Deployment createEmptyInstance() => create();
  static $pb.PbList<Deployment> createRepeated() => $pb.PbList<Deployment>();
  @$core.pragma('dart2js:noInline')
  static Deployment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Deployment>(create);
  static Deployment? _defaultInstance;

  /// Standard object metadata.
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

  /// Specification of the desired behavior of the Deployment.
  /// +optional
  @$pb.TagNumber(2)
  DeploymentSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(DeploymentSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  DeploymentSpec ensureSpec() => $_ensure(1);

  /// Most recently observed status of the Deployment.
  /// +optional
  @$pb.TagNumber(3)
  DeploymentStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(DeploymentStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  DeploymentStatus ensureStatus() => $_ensure(2);
}

/// DeploymentCondition describes the state of a deployment at a certain point.
class DeploymentCondition extends $pb.GeneratedMessage {
  factory DeploymentCondition({
    $core.String? type,
    $core.String? status,
    $core.String? reason,
    $core.String? message,
    $0.Time? lastUpdateTime,
    $0.Time? lastTransitionTime,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (message != null) {
      $result.message = message;
    }
    if (lastUpdateTime != null) {
      $result.lastUpdateTime = lastUpdateTime;
    }
    if (lastTransitionTime != null) {
      $result.lastTransitionTime = lastTransitionTime;
    }
    return $result;
  }
  DeploymentCondition._() : super();
  factory DeploymentCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeploymentCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeploymentCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Time>(6, _omitFieldNames ? '' : 'lastUpdateTime', protoName: 'lastUpdateTime', subBuilder: $0.Time.create)
    ..aOM<$0.Time>(7, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $0.Time.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeploymentCondition clone() => DeploymentCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeploymentCondition copyWith(void Function(DeploymentCondition) updates) => super.copyWith((message) => updates(message as DeploymentCondition)) as DeploymentCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentCondition create() => DeploymentCondition._();
  DeploymentCondition createEmptyInstance() => create();
  static $pb.PbList<DeploymentCondition> createRepeated() => $pb.PbList<DeploymentCondition>();
  @$core.pragma('dart2js:noInline')
  static DeploymentCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeploymentCondition>(create);
  static DeploymentCondition? _defaultInstance;

  /// Type of deployment condition.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Status of the condition, one of True, False, Unknown.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// The reason for the condition's last transition.
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(2);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(2);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// A human readable message indicating details about the transition.
  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(3);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(3);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);

  /// The last time this condition was updated.
  @$pb.TagNumber(6)
  $0.Time get lastUpdateTime => $_getN(4);
  @$pb.TagNumber(6)
  set lastUpdateTime($0.Time v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasLastUpdateTime() => $_has(4);
  @$pb.TagNumber(6)
  void clearLastUpdateTime() => clearField(6);
  @$pb.TagNumber(6)
  $0.Time ensureLastUpdateTime() => $_ensure(4);

  /// Last time the condition transitioned from one status to another.
  @$pb.TagNumber(7)
  $0.Time get lastTransitionTime => $_getN(5);
  @$pb.TagNumber(7)
  set lastTransitionTime($0.Time v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastTransitionTime() => $_has(5);
  @$pb.TagNumber(7)
  void clearLastTransitionTime() => clearField(7);
  @$pb.TagNumber(7)
  $0.Time ensureLastTransitionTime() => $_ensure(5);
}

/// DeploymentList is a list of Deployments.
class DeploymentList extends $pb.GeneratedMessage {
  factory DeploymentList({
    $0.ListMeta? metadata,
    $core.Iterable<Deployment>? items,
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
  DeploymentList._() : super();
  factory DeploymentList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeploymentList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeploymentList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<Deployment>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Deployment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeploymentList clone() => DeploymentList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeploymentList copyWith(void Function(DeploymentList) updates) => super.copyWith((message) => updates(message as DeploymentList)) as DeploymentList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentList create() => DeploymentList._();
  DeploymentList createEmptyInstance() => create();
  static $pb.PbList<DeploymentList> createRepeated() => $pb.PbList<DeploymentList>();
  @$core.pragma('dart2js:noInline')
  static DeploymentList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeploymentList>(create);
  static DeploymentList? _defaultInstance;

  /// Standard list metadata.
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

  /// Items is the list of Deployments.
  @$pb.TagNumber(2)
  $core.List<Deployment> get items => $_getList(1);
}

/// DEPRECATED.
/// DeploymentRollback stores the information required to rollback a deployment.
class DeploymentRollback extends $pb.GeneratedMessage {
  factory DeploymentRollback({
    $core.String? name,
    $core.Map<$core.String, $core.String>? updatedAnnotations,
    RollbackConfig? rollbackTo,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (updatedAnnotations != null) {
      $result.updatedAnnotations.addAll(updatedAnnotations);
    }
    if (rollbackTo != null) {
      $result.rollbackTo = rollbackTo;
    }
    return $result;
  }
  DeploymentRollback._() : super();
  factory DeploymentRollback.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeploymentRollback.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeploymentRollback', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'updatedAnnotations', protoName: 'updatedAnnotations', entryClassName: 'DeploymentRollback.UpdatedAnnotationsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.extensions.v1beta1'))
    ..aOM<RollbackConfig>(3, _omitFieldNames ? '' : 'rollbackTo', protoName: 'rollbackTo', subBuilder: RollbackConfig.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeploymentRollback clone() => DeploymentRollback()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeploymentRollback copyWith(void Function(DeploymentRollback) updates) => super.copyWith((message) => updates(message as DeploymentRollback)) as DeploymentRollback;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentRollback create() => DeploymentRollback._();
  DeploymentRollback createEmptyInstance() => create();
  static $pb.PbList<DeploymentRollback> createRepeated() => $pb.PbList<DeploymentRollback>();
  @$core.pragma('dart2js:noInline')
  static DeploymentRollback getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeploymentRollback>(create);
  static DeploymentRollback? _defaultInstance;

  /// Required: This must match the Name of a deployment.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// The annotations to be updated to a deployment
  /// +optional
  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get updatedAnnotations => $_getMap(1);

  /// The config of this deployment rollback.
  @$pb.TagNumber(3)
  RollbackConfig get rollbackTo => $_getN(2);
  @$pb.TagNumber(3)
  set rollbackTo(RollbackConfig v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRollbackTo() => $_has(2);
  @$pb.TagNumber(3)
  void clearRollbackTo() => clearField(3);
  @$pb.TagNumber(3)
  RollbackConfig ensureRollbackTo() => $_ensure(2);
}

/// DeploymentSpec is the specification of the desired behavior of the Deployment.
class DeploymentSpec extends $pb.GeneratedMessage {
  factory DeploymentSpec({
    $core.int? replicas,
    $0.LabelSelector? selector,
    $1.PodTemplateSpec? template,
    DeploymentStrategy? strategy,
    $core.int? minReadySeconds,
    $core.int? revisionHistoryLimit,
    $core.bool? paused,
    RollbackConfig? rollbackTo,
    $core.int? progressDeadlineSeconds,
  }) {
    final $result = create();
    if (replicas != null) {
      $result.replicas = replicas;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (template != null) {
      $result.template = template;
    }
    if (strategy != null) {
      $result.strategy = strategy;
    }
    if (minReadySeconds != null) {
      $result.minReadySeconds = minReadySeconds;
    }
    if (revisionHistoryLimit != null) {
      $result.revisionHistoryLimit = revisionHistoryLimit;
    }
    if (paused != null) {
      $result.paused = paused;
    }
    if (rollbackTo != null) {
      $result.rollbackTo = rollbackTo;
    }
    if (progressDeadlineSeconds != null) {
      $result.progressDeadlineSeconds = progressDeadlineSeconds;
    }
    return $result;
  }
  DeploymentSpec._() : super();
  factory DeploymentSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeploymentSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeploymentSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'replicas', $pb.PbFieldType.O3)
    ..aOM<$0.LabelSelector>(2, _omitFieldNames ? '' : 'selector', subBuilder: $0.LabelSelector.create)
    ..aOM<$1.PodTemplateSpec>(3, _omitFieldNames ? '' : 'template', subBuilder: $1.PodTemplateSpec.create)
    ..aOM<DeploymentStrategy>(4, _omitFieldNames ? '' : 'strategy', subBuilder: DeploymentStrategy.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'minReadySeconds', $pb.PbFieldType.O3, protoName: 'minReadySeconds')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'revisionHistoryLimit', $pb.PbFieldType.O3, protoName: 'revisionHistoryLimit')
    ..aOB(7, _omitFieldNames ? '' : 'paused')
    ..aOM<RollbackConfig>(8, _omitFieldNames ? '' : 'rollbackTo', protoName: 'rollbackTo', subBuilder: RollbackConfig.create)
    ..a<$core.int>(9, _omitFieldNames ? '' : 'progressDeadlineSeconds', $pb.PbFieldType.O3, protoName: 'progressDeadlineSeconds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeploymentSpec clone() => DeploymentSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeploymentSpec copyWith(void Function(DeploymentSpec) updates) => super.copyWith((message) => updates(message as DeploymentSpec)) as DeploymentSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentSpec create() => DeploymentSpec._();
  DeploymentSpec createEmptyInstance() => create();
  static $pb.PbList<DeploymentSpec> createRepeated() => $pb.PbList<DeploymentSpec>();
  @$core.pragma('dart2js:noInline')
  static DeploymentSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeploymentSpec>(create);
  static DeploymentSpec? _defaultInstance;

  /// Number of desired pods. This is a pointer to distinguish between explicit
  /// zero and not specified. Defaults to 1.
  /// +optional
  @$pb.TagNumber(1)
  $core.int get replicas => $_getIZ(0);
  @$pb.TagNumber(1)
  set replicas($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReplicas() => $_has(0);
  @$pb.TagNumber(1)
  void clearReplicas() => clearField(1);

  /// Label selector for pods. Existing ReplicaSets whose pods are
  /// selected by this will be the ones affected by this deployment.
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

  /// Template describes the pods that will be created.
  @$pb.TagNumber(3)
  $1.PodTemplateSpec get template => $_getN(2);
  @$pb.TagNumber(3)
  set template($1.PodTemplateSpec v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTemplate() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemplate() => clearField(3);
  @$pb.TagNumber(3)
  $1.PodTemplateSpec ensureTemplate() => $_ensure(2);

  /// The deployment strategy to use to replace existing pods with new ones.
  /// +optional
  /// +patchStrategy=retainKeys
  @$pb.TagNumber(4)
  DeploymentStrategy get strategy => $_getN(3);
  @$pb.TagNumber(4)
  set strategy(DeploymentStrategy v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasStrategy() => $_has(3);
  @$pb.TagNumber(4)
  void clearStrategy() => clearField(4);
  @$pb.TagNumber(4)
  DeploymentStrategy ensureStrategy() => $_ensure(3);

  /// Minimum number of seconds for which a newly created pod should be ready
  /// without any of its container crashing, for it to be considered available.
  /// Defaults to 0 (pod will be considered available as soon as it is ready)
  /// +optional
  @$pb.TagNumber(5)
  $core.int get minReadySeconds => $_getIZ(4);
  @$pb.TagNumber(5)
  set minReadySeconds($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMinReadySeconds() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinReadySeconds() => clearField(5);

  /// The number of old ReplicaSets to retain to allow rollback.
  /// This is a pointer to distinguish between explicit zero and not specified.
  /// This is set to the max value of int32 (i.e. 2147483647) by default, which
  /// means "retaining all old ReplicaSets".
  /// +optional
  @$pb.TagNumber(6)
  $core.int get revisionHistoryLimit => $_getIZ(5);
  @$pb.TagNumber(6)
  set revisionHistoryLimit($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRevisionHistoryLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearRevisionHistoryLimit() => clearField(6);

  /// Indicates that the deployment is paused and will not be processed by the
  /// deployment controller.
  /// +optional
  @$pb.TagNumber(7)
  $core.bool get paused => $_getBF(6);
  @$pb.TagNumber(7)
  set paused($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasPaused() => $_has(6);
  @$pb.TagNumber(7)
  void clearPaused() => clearField(7);

  /// DEPRECATED.
  /// The config this deployment is rolling back to. Will be cleared after rollback is done.
  /// +optional
  @$pb.TagNumber(8)
  RollbackConfig get rollbackTo => $_getN(7);
  @$pb.TagNumber(8)
  set rollbackTo(RollbackConfig v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasRollbackTo() => $_has(7);
  @$pb.TagNumber(8)
  void clearRollbackTo() => clearField(8);
  @$pb.TagNumber(8)
  RollbackConfig ensureRollbackTo() => $_ensure(7);

  /// The maximum time in seconds for a deployment to make progress before it
  /// is considered to be failed. The deployment controller will continue to
  /// process failed deployments and a condition with a ProgressDeadlineExceeded
  /// reason will be surfaced in the deployment status. Note that progress will
  /// not be estimated during the time a deployment is paused. This is set to
  /// the max value of int32 (i.e. 2147483647) by default, which means "no deadline".
  /// +optional
  @$pb.TagNumber(9)
  $core.int get progressDeadlineSeconds => $_getIZ(8);
  @$pb.TagNumber(9)
  set progressDeadlineSeconds($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasProgressDeadlineSeconds() => $_has(8);
  @$pb.TagNumber(9)
  void clearProgressDeadlineSeconds() => clearField(9);
}

/// DeploymentStatus is the most recently observed status of the Deployment.
class DeploymentStatus extends $pb.GeneratedMessage {
  factory DeploymentStatus({
    $fixnum.Int64? observedGeneration,
    $core.int? replicas,
    $core.int? updatedReplicas,
    $core.int? availableReplicas,
    $core.int? unavailableReplicas,
    $core.Iterable<DeploymentCondition>? conditions,
    $core.int? readyReplicas,
    $core.int? collisionCount,
  }) {
    final $result = create();
    if (observedGeneration != null) {
      $result.observedGeneration = observedGeneration;
    }
    if (replicas != null) {
      $result.replicas = replicas;
    }
    if (updatedReplicas != null) {
      $result.updatedReplicas = updatedReplicas;
    }
    if (availableReplicas != null) {
      $result.availableReplicas = availableReplicas;
    }
    if (unavailableReplicas != null) {
      $result.unavailableReplicas = unavailableReplicas;
    }
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    if (readyReplicas != null) {
      $result.readyReplicas = readyReplicas;
    }
    if (collisionCount != null) {
      $result.collisionCount = collisionCount;
    }
    return $result;
  }
  DeploymentStatus._() : super();
  factory DeploymentStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeploymentStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeploymentStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'replicas', $pb.PbFieldType.O3)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'updatedReplicas', $pb.PbFieldType.O3, protoName: 'updatedReplicas')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'availableReplicas', $pb.PbFieldType.O3, protoName: 'availableReplicas')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'unavailableReplicas', $pb.PbFieldType.O3, protoName: 'unavailableReplicas')
    ..pc<DeploymentCondition>(6, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: DeploymentCondition.create)
    ..a<$core.int>(7, _omitFieldNames ? '' : 'readyReplicas', $pb.PbFieldType.O3, protoName: 'readyReplicas')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'collisionCount', $pb.PbFieldType.O3, protoName: 'collisionCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeploymentStatus clone() => DeploymentStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeploymentStatus copyWith(void Function(DeploymentStatus) updates) => super.copyWith((message) => updates(message as DeploymentStatus)) as DeploymentStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentStatus create() => DeploymentStatus._();
  DeploymentStatus createEmptyInstance() => create();
  static $pb.PbList<DeploymentStatus> createRepeated() => $pb.PbList<DeploymentStatus>();
  @$core.pragma('dart2js:noInline')
  static DeploymentStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeploymentStatus>(create);
  static DeploymentStatus? _defaultInstance;

  /// The generation observed by the deployment controller.
  /// +optional
  @$pb.TagNumber(1)
  $fixnum.Int64 get observedGeneration => $_getI64(0);
  @$pb.TagNumber(1)
  set observedGeneration($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasObservedGeneration() => $_has(0);
  @$pb.TagNumber(1)
  void clearObservedGeneration() => clearField(1);

  /// Total number of non-terminated pods targeted by this deployment (their labels match the selector).
  /// +optional
  @$pb.TagNumber(2)
  $core.int get replicas => $_getIZ(1);
  @$pb.TagNumber(2)
  set replicas($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReplicas() => $_has(1);
  @$pb.TagNumber(2)
  void clearReplicas() => clearField(2);

  /// Total number of non-terminated pods targeted by this deployment that have the desired template spec.
  /// +optional
  @$pb.TagNumber(3)
  $core.int get updatedReplicas => $_getIZ(2);
  @$pb.TagNumber(3)
  set updatedReplicas($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUpdatedReplicas() => $_has(2);
  @$pb.TagNumber(3)
  void clearUpdatedReplicas() => clearField(3);

  /// Total number of available pods (ready for at least minReadySeconds) targeted by this deployment.
  /// +optional
  @$pb.TagNumber(4)
  $core.int get availableReplicas => $_getIZ(3);
  @$pb.TagNumber(4)
  set availableReplicas($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAvailableReplicas() => $_has(3);
  @$pb.TagNumber(4)
  void clearAvailableReplicas() => clearField(4);

  /// Total number of unavailable pods targeted by this deployment. This is the total number of
  /// pods that are still required for the deployment to have 100% available capacity. They may
  /// either be pods that are running but not yet available or pods that still have not been created.
  /// +optional
  @$pb.TagNumber(5)
  $core.int get unavailableReplicas => $_getIZ(4);
  @$pb.TagNumber(5)
  set unavailableReplicas($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnavailableReplicas() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnavailableReplicas() => clearField(5);

  /// Represents the latest available observations of a deployment's current state.
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(6)
  $core.List<DeploymentCondition> get conditions => $_getList(5);

  /// Total number of ready pods targeted by this deployment.
  /// +optional
  @$pb.TagNumber(7)
  $core.int get readyReplicas => $_getIZ(6);
  @$pb.TagNumber(7)
  set readyReplicas($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasReadyReplicas() => $_has(6);
  @$pb.TagNumber(7)
  void clearReadyReplicas() => clearField(7);

  /// Count of hash collisions for the Deployment. The Deployment controller uses this
  /// field as a collision avoidance mechanism when it needs to create the name for the
  /// newest ReplicaSet.
  /// +optional
  @$pb.TagNumber(8)
  $core.int get collisionCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set collisionCount($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCollisionCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearCollisionCount() => clearField(8);
}

/// DeploymentStrategy describes how to replace existing pods with new ones.
class DeploymentStrategy extends $pb.GeneratedMessage {
  factory DeploymentStrategy({
    $core.String? type,
    RollingUpdateDeployment? rollingUpdate,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (rollingUpdate != null) {
      $result.rollingUpdate = rollingUpdate;
    }
    return $result;
  }
  DeploymentStrategy._() : super();
  factory DeploymentStrategy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeploymentStrategy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeploymentStrategy', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<RollingUpdateDeployment>(2, _omitFieldNames ? '' : 'rollingUpdate', protoName: 'rollingUpdate', subBuilder: RollingUpdateDeployment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeploymentStrategy clone() => DeploymentStrategy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeploymentStrategy copyWith(void Function(DeploymentStrategy) updates) => super.copyWith((message) => updates(message as DeploymentStrategy)) as DeploymentStrategy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeploymentStrategy create() => DeploymentStrategy._();
  DeploymentStrategy createEmptyInstance() => create();
  static $pb.PbList<DeploymentStrategy> createRepeated() => $pb.PbList<DeploymentStrategy>();
  @$core.pragma('dart2js:noInline')
  static DeploymentStrategy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeploymentStrategy>(create);
  static DeploymentStrategy? _defaultInstance;

  /// Type of deployment. Can be "Recreate" or "RollingUpdate". Default is RollingUpdate.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Rolling update config params. Present only if DeploymentStrategyType =
  /// RollingUpdate.
  /// ---
  /// TODO: Update this to follow our convention for oneOf, whatever we decide it
  /// to be.
  /// +optional
  @$pb.TagNumber(2)
  RollingUpdateDeployment get rollingUpdate => $_getN(1);
  @$pb.TagNumber(2)
  set rollingUpdate(RollingUpdateDeployment v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRollingUpdate() => $_has(1);
  @$pb.TagNumber(2)
  void clearRollingUpdate() => clearField(2);
  @$pb.TagNumber(2)
  RollingUpdateDeployment ensureRollingUpdate() => $_ensure(1);
}

/// HTTPIngressPath associates a path with a backend. Incoming urls matching the
/// path are forwarded to the backend.
class HTTPIngressPath extends $pb.GeneratedMessage {
  factory HTTPIngressPath({
    $core.String? path,
    IngressBackend? backend,
    $core.String? pathType,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (backend != null) {
      $result.backend = backend;
    }
    if (pathType != null) {
      $result.pathType = pathType;
    }
    return $result;
  }
  HTTPIngressPath._() : super();
  factory HTTPIngressPath.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HTTPIngressPath.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HTTPIngressPath', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOM<IngressBackend>(2, _omitFieldNames ? '' : 'backend', subBuilder: IngressBackend.create)
    ..aOS(3, _omitFieldNames ? '' : 'pathType', protoName: 'pathType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HTTPIngressPath clone() => HTTPIngressPath()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HTTPIngressPath copyWith(void Function(HTTPIngressPath) updates) => super.copyWith((message) => updates(message as HTTPIngressPath)) as HTTPIngressPath;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HTTPIngressPath create() => HTTPIngressPath._();
  HTTPIngressPath createEmptyInstance() => create();
  static $pb.PbList<HTTPIngressPath> createRepeated() => $pb.PbList<HTTPIngressPath>();
  @$core.pragma('dart2js:noInline')
  static HTTPIngressPath getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HTTPIngressPath>(create);
  static HTTPIngressPath? _defaultInstance;

  /// Path is matched against the path of an incoming request. Currently it can
  /// contain characters disallowed from the conventional "path" part of a URL
  /// as defined by RFC 3986. Paths must begin with a '/'. When unspecified,
  /// all paths from incoming requests are matched.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  /// Backend defines the referenced service endpoint to which the traffic
  /// will be forwarded to.
  @$pb.TagNumber(2)
  IngressBackend get backend => $_getN(1);
  @$pb.TagNumber(2)
  set backend(IngressBackend v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackend() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackend() => clearField(2);
  @$pb.TagNumber(2)
  IngressBackend ensureBackend() => $_ensure(1);

  /// PathType determines the interpretation of the Path matching. PathType can
  /// be one of the following values:
  /// * Exact: Matches the URL path exactly.
  /// * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  ///   done on a path element by element basis. A path element refers is the
  ///   list of labels in the path split by the '/' separator. A request is a
  ///   match for path p if every p is an element-wise prefix of p of the
  ///   request path. Note that if the last element of the path is a substring
  ///   of the last element in request path, it is not a match (e.g. /foo/bar
  ///   matches /foo/bar/baz, but does not match /foo/barbaz).
  /// * ImplementationSpecific: Interpretation of the Path matching is up to
  ///   the IngressClass. Implementations can treat this as a separate PathType
  ///   or treat it identically to Prefix or Exact path types.
  /// Implementations are required to support all path types.
  /// Defaults to ImplementationSpecific.
  @$pb.TagNumber(3)
  $core.String get pathType => $_getSZ(2);
  @$pb.TagNumber(3)
  set pathType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPathType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPathType() => clearField(3);
}

/// HTTPIngressRuleValue is a list of http selectors pointing to backends.
/// In the example: http://<host>/<path>?<searchpart> -> backend where
/// where parts of the url correspond to RFC 3986, this resource will be used
/// to match against everything after the last '/' and before the first '?'
/// or '#'.
class HTTPIngressRuleValue extends $pb.GeneratedMessage {
  factory HTTPIngressRuleValue({
    $core.Iterable<HTTPIngressPath>? paths,
  }) {
    final $result = create();
    if (paths != null) {
      $result.paths.addAll(paths);
    }
    return $result;
  }
  HTTPIngressRuleValue._() : super();
  factory HTTPIngressRuleValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HTTPIngressRuleValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HTTPIngressRuleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..pc<HTTPIngressPath>(1, _omitFieldNames ? '' : 'paths', $pb.PbFieldType.PM, subBuilder: HTTPIngressPath.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HTTPIngressRuleValue clone() => HTTPIngressRuleValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HTTPIngressRuleValue copyWith(void Function(HTTPIngressRuleValue) updates) => super.copyWith((message) => updates(message as HTTPIngressRuleValue)) as HTTPIngressRuleValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HTTPIngressRuleValue create() => HTTPIngressRuleValue._();
  HTTPIngressRuleValue createEmptyInstance() => create();
  static $pb.PbList<HTTPIngressRuleValue> createRepeated() => $pb.PbList<HTTPIngressRuleValue>();
  @$core.pragma('dart2js:noInline')
  static HTTPIngressRuleValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HTTPIngressRuleValue>(create);
  static HTTPIngressRuleValue? _defaultInstance;

  /// A collection of paths that map requests to backends.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<HTTPIngressPath> get paths => $_getList(0);
}

/// DEPRECATED 1.9 - This group version of IPBlock is deprecated by networking/v1/IPBlock.
/// IPBlock describes a particular CIDR (Ex. "192.168.1.0/24","2001:db8::/64") that is allowed
/// to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs
/// that should not be included within this rule.
class IPBlock extends $pb.GeneratedMessage {
  factory IPBlock({
    $core.String? cidr,
    $core.Iterable<$core.String>? except,
  }) {
    final $result = create();
    if (cidr != null) {
      $result.cidr = cidr;
    }
    if (except != null) {
      $result.except.addAll(except);
    }
    return $result;
  }
  IPBlock._() : super();
  factory IPBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IPBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IPBlock', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cidr')
    ..pPS(2, _omitFieldNames ? '' : 'except')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IPBlock clone() => IPBlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IPBlock copyWith(void Function(IPBlock) updates) => super.copyWith((message) => updates(message as IPBlock)) as IPBlock;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IPBlock create() => IPBlock._();
  IPBlock createEmptyInstance() => create();
  static $pb.PbList<IPBlock> createRepeated() => $pb.PbList<IPBlock>();
  @$core.pragma('dart2js:noInline')
  static IPBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IPBlock>(create);
  static IPBlock? _defaultInstance;

  /// CIDR is a string representing the IP Block
  /// Valid examples are "192.168.1.0/24" or "2001:db8::/64"
  @$pb.TagNumber(1)
  $core.String get cidr => $_getSZ(0);
  @$pb.TagNumber(1)
  set cidr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCidr() => $_has(0);
  @$pb.TagNumber(1)
  void clearCidr() => clearField(1);

  /// Except is a slice of CIDRs that should not be included within an IP Block
  /// Valid examples are "192.168.1.0/24" or "2001:db8::/64"
  /// Except values will be rejected if they are outside the CIDR range
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<$core.String> get except => $_getList(1);
}

/// Ingress is a collection of rules that allow inbound connections to reach the
/// endpoints defined by a backend. An Ingress can be configured to give services
/// externally-reachable urls, load balance traffic, terminate SSL, offer name
/// based virtual hosting etc.
/// DEPRECATED - This group version of Ingress is deprecated by networking.k8s.io/v1beta1 Ingress. See the release notes for more information.
class Ingress extends $pb.GeneratedMessage {
  factory Ingress({
    $0.ObjectMeta? metadata,
    IngressSpec? spec,
    IngressStatus? status,
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
  Ingress._() : super();
  factory Ingress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ingress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ingress', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<IngressSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: IngressSpec.create)
    ..aOM<IngressStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: IngressStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ingress clone() => Ingress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ingress copyWith(void Function(Ingress) updates) => super.copyWith((message) => updates(message as Ingress)) as Ingress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ingress create() => Ingress._();
  Ingress createEmptyInstance() => create();
  static $pb.PbList<Ingress> createRepeated() => $pb.PbList<Ingress>();
  @$core.pragma('dart2js:noInline')
  static Ingress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ingress>(create);
  static Ingress? _defaultInstance;

  /// Standard object's metadata.
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

  /// Spec is the desired state of the Ingress.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  IngressSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(IngressSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  IngressSpec ensureSpec() => $_ensure(1);

  /// Status is the current state of the Ingress.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  IngressStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(IngressStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  IngressStatus ensureStatus() => $_ensure(2);
}

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackend extends $pb.GeneratedMessage {
  factory IngressBackend({
    $core.String? serviceName,
    $2.IntOrString? servicePort,
    $1.TypedLocalObjectReference? resource,
  }) {
    final $result = create();
    if (serviceName != null) {
      $result.serviceName = serviceName;
    }
    if (servicePort != null) {
      $result.servicePort = servicePort;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  IngressBackend._() : super();
  factory IngressBackend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressBackend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressBackend', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serviceName', protoName: 'serviceName')
    ..aOM<$2.IntOrString>(2, _omitFieldNames ? '' : 'servicePort', protoName: 'servicePort', subBuilder: $2.IntOrString.create)
    ..aOM<$1.TypedLocalObjectReference>(3, _omitFieldNames ? '' : 'resource', subBuilder: $1.TypedLocalObjectReference.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressBackend clone() => IngressBackend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressBackend copyWith(void Function(IngressBackend) updates) => super.copyWith((message) => updates(message as IngressBackend)) as IngressBackend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressBackend create() => IngressBackend._();
  IngressBackend createEmptyInstance() => create();
  static $pb.PbList<IngressBackend> createRepeated() => $pb.PbList<IngressBackend>();
  @$core.pragma('dart2js:noInline')
  static IngressBackend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressBackend>(create);
  static IngressBackend? _defaultInstance;

  /// Specifies the name of the referenced service.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceName() => clearField(1);

  /// Specifies the port of the referenced service.
  /// +optional
  @$pb.TagNumber(2)
  $2.IntOrString get servicePort => $_getN(1);
  @$pb.TagNumber(2)
  set servicePort($2.IntOrString v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasServicePort() => $_has(1);
  @$pb.TagNumber(2)
  void clearServicePort() => clearField(2);
  @$pb.TagNumber(2)
  $2.IntOrString ensureServicePort() => $_ensure(1);

  /// Resource is an ObjectRef to another Kubernetes resource in the namespace
  /// of the Ingress object. If resource is specified, serviceName and servicePort
  /// must not be specified.
  /// +optional
  @$pb.TagNumber(3)
  $1.TypedLocalObjectReference get resource => $_getN(2);
  @$pb.TagNumber(3)
  set resource($1.TypedLocalObjectReference v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(2);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);
  @$pb.TagNumber(3)
  $1.TypedLocalObjectReference ensureResource() => $_ensure(2);
}

/// IngressList is a collection of Ingress.
class IngressList extends $pb.GeneratedMessage {
  factory IngressList({
    $0.ListMeta? metadata,
    $core.Iterable<Ingress>? items,
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
  IngressList._() : super();
  factory IngressList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<Ingress>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Ingress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressList clone() => IngressList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressList copyWith(void Function(IngressList) updates) => super.copyWith((message) => updates(message as IngressList)) as IngressList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressList create() => IngressList._();
  IngressList createEmptyInstance() => create();
  static $pb.PbList<IngressList> createRepeated() => $pb.PbList<IngressList>();
  @$core.pragma('dart2js:noInline')
  static IngressList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressList>(create);
  static IngressList? _defaultInstance;

  /// Standard object's metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// Items is the list of Ingress.
  @$pb.TagNumber(2)
  $core.List<Ingress> get items => $_getList(1);
}

/// IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
class IngressLoadBalancerIngress extends $pb.GeneratedMessage {
  factory IngressLoadBalancerIngress({
    $core.String? ip,
    $core.String? hostname,
    $core.Iterable<IngressPortStatus>? ports,
  }) {
    final $result = create();
    if (ip != null) {
      $result.ip = ip;
    }
    if (hostname != null) {
      $result.hostname = hostname;
    }
    if (ports != null) {
      $result.ports.addAll(ports);
    }
    return $result;
  }
  IngressLoadBalancerIngress._() : super();
  factory IngressLoadBalancerIngress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressLoadBalancerIngress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressLoadBalancerIngress', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ip')
    ..aOS(2, _omitFieldNames ? '' : 'hostname')
    ..pc<IngressPortStatus>(4, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.PM, subBuilder: IngressPortStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressLoadBalancerIngress clone() => IngressLoadBalancerIngress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressLoadBalancerIngress copyWith(void Function(IngressLoadBalancerIngress) updates) => super.copyWith((message) => updates(message as IngressLoadBalancerIngress)) as IngressLoadBalancerIngress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressLoadBalancerIngress create() => IngressLoadBalancerIngress._();
  IngressLoadBalancerIngress createEmptyInstance() => create();
  static $pb.PbList<IngressLoadBalancerIngress> createRepeated() => $pb.PbList<IngressLoadBalancerIngress>();
  @$core.pragma('dart2js:noInline')
  static IngressLoadBalancerIngress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressLoadBalancerIngress>(create);
  static IngressLoadBalancerIngress? _defaultInstance;

  /// IP is set for load-balancer ingress points that are IP based.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);

  /// Hostname is set for load-balancer ingress points that are DNS based.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get hostname => $_getSZ(1);
  @$pb.TagNumber(2)
  set hostname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHostname() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostname() => clearField(2);

  /// Ports provides information about the ports exposed by this LoadBalancer.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(4)
  $core.List<IngressPortStatus> get ports => $_getList(2);
}

/// LoadBalancerStatus represents the status of a load-balancer.
class IngressLoadBalancerStatus extends $pb.GeneratedMessage {
  factory IngressLoadBalancerStatus({
    $core.Iterable<IngressLoadBalancerIngress>? ingress,
  }) {
    final $result = create();
    if (ingress != null) {
      $result.ingress.addAll(ingress);
    }
    return $result;
  }
  IngressLoadBalancerStatus._() : super();
  factory IngressLoadBalancerStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressLoadBalancerStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressLoadBalancerStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..pc<IngressLoadBalancerIngress>(1, _omitFieldNames ? '' : 'ingress', $pb.PbFieldType.PM, subBuilder: IngressLoadBalancerIngress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressLoadBalancerStatus clone() => IngressLoadBalancerStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressLoadBalancerStatus copyWith(void Function(IngressLoadBalancerStatus) updates) => super.copyWith((message) => updates(message as IngressLoadBalancerStatus)) as IngressLoadBalancerStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressLoadBalancerStatus create() => IngressLoadBalancerStatus._();
  IngressLoadBalancerStatus createEmptyInstance() => create();
  static $pb.PbList<IngressLoadBalancerStatus> createRepeated() => $pb.PbList<IngressLoadBalancerStatus>();
  @$core.pragma('dart2js:noInline')
  static IngressLoadBalancerStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressLoadBalancerStatus>(create);
  static IngressLoadBalancerStatus? _defaultInstance;

  /// Ingress is a list containing ingress points for the load-balancer.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<IngressLoadBalancerIngress> get ingress => $_getList(0);
}

/// IngressPortStatus represents the error condition of a service port
class IngressPortStatus extends $pb.GeneratedMessage {
  factory IngressPortStatus({
    $core.int? port,
    $core.String? protocol,
    $core.String? error,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    if (protocol != null) {
      $result.protocol = protocol;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  IngressPortStatus._() : super();
  factory IngressPortStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressPortStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressPortStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'protocol')
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressPortStatus clone() => IngressPortStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressPortStatus copyWith(void Function(IngressPortStatus) updates) => super.copyWith((message) => updates(message as IngressPortStatus)) as IngressPortStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressPortStatus create() => IngressPortStatus._();
  IngressPortStatus createEmptyInstance() => create();
  static $pb.PbList<IngressPortStatus> createRepeated() => $pb.PbList<IngressPortStatus>();
  @$core.pragma('dart2js:noInline')
  static IngressPortStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressPortStatus>(create);
  static IngressPortStatus? _defaultInstance;

  /// Port is the port number of the ingress port.
  @$pb.TagNumber(1)
  $core.int get port => $_getIZ(0);
  @$pb.TagNumber(1)
  set port($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);

  /// Protocol is the protocol of the ingress port.
  /// The supported values are: "TCP", "UDP", "SCTP"
  @$pb.TagNumber(2)
  $core.String get protocol => $_getSZ(1);
  @$pb.TagNumber(2)
  set protocol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtocol() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocol() => clearField(2);

  /// Error is to record the problem with the service port
  /// The format of the error shall comply with the following rules:
  /// - built-in error values shall be specified in this file and those shall use
  ///   CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  ///   format foo.example.com/CamelCase.
  /// ---
  /// The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
  /// +optional
  /// +kubebuilder:validation:Required
  /// +kubebuilder:validation:Pattern=`^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$`
  /// +kubebuilder:validation:MaxLength=316
  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

/// IngressRule represents the rules mapping the paths under a specified host to
/// the related backend services. Incoming requests are first evaluated for a host
/// match, then routed to the backend associated with the matching IngressRuleValue.
class IngressRule extends $pb.GeneratedMessage {
  factory IngressRule({
    $core.String? host,
    IngressRuleValue? ingressRuleValue,
  }) {
    final $result = create();
    if (host != null) {
      $result.host = host;
    }
    if (ingressRuleValue != null) {
      $result.ingressRuleValue = ingressRuleValue;
    }
    return $result;
  }
  IngressRule._() : super();
  factory IngressRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'host')
    ..aOM<IngressRuleValue>(2, _omitFieldNames ? '' : 'ingressRuleValue', protoName: 'ingressRuleValue', subBuilder: IngressRuleValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressRule clone() => IngressRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressRule copyWith(void Function(IngressRule) updates) => super.copyWith((message) => updates(message as IngressRule)) as IngressRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressRule create() => IngressRule._();
  IngressRule createEmptyInstance() => create();
  static $pb.PbList<IngressRule> createRepeated() => $pb.PbList<IngressRule>();
  @$core.pragma('dart2js:noInline')
  static IngressRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressRule>(create);
  static IngressRule? _defaultInstance;

  ///  Host is the fully qualified domain name of a network host, as defined by RFC 3986.
  ///  Note the following deviations from the "host" part of the
  ///  URI as defined in RFC 3986:
  ///  1. IPs are not allowed. Currently an IngressRuleValue can only apply to
  ///     the IP in the Spec of the parent Ingress.
  ///  2. The `:` delimiter is not respected because ports are not allowed.
  ///  	  Currently the port of an Ingress is implicitly :80 for http and
  ///  	  :443 for https.
  ///  Both these may change in the future.
  ///  Incoming requests are matched against the host before the
  ///  IngressRuleValue. If the host is unspecified, the Ingress routes all
  ///  traffic based on the specified IngressRuleValue.
  ///
  ///  Host can be "precise" which is a domain name without the terminating dot of
  ///  a network host (e.g. "foo.bar.com") or "wildcard", which is a domain name
  ///  prefixed with a single wildcard label (e.g. "*.foo.com").
  ///  The wildcard character '*' must appear by itself as the first DNS label and
  ///  matches only a single label. You cannot have a wildcard label by itself (e.g. Host == "*").
  ///  Requests will be matched against the Host field in the following way:
  ///  1. If Host is precise, the request matches this rule if the http host header is equal to Host.
  ///  2. If Host is a wildcard, then the request matches this rule if the http host header
  ///  is to equal to the suffix (removing the first label) of the wildcard rule.
  ///  +optional
  @$pb.TagNumber(1)
  $core.String get host => $_getSZ(0);
  @$pb.TagNumber(1)
  set host($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHost() => $_has(0);
  @$pb.TagNumber(1)
  void clearHost() => clearField(1);

  /// IngressRuleValue represents a rule to route requests for this IngressRule.
  /// If unspecified, the rule defaults to a http catch-all. Whether that sends
  /// just traffic matching the host to the default backend or all traffic to the
  /// default backend, is left to the controller fulfilling the Ingress. Http is
  /// currently the only supported IngressRuleValue.
  /// +optional
  @$pb.TagNumber(2)
  IngressRuleValue get ingressRuleValue => $_getN(1);
  @$pb.TagNumber(2)
  set ingressRuleValue(IngressRuleValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIngressRuleValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearIngressRuleValue() => clearField(2);
  @$pb.TagNumber(2)
  IngressRuleValue ensureIngressRuleValue() => $_ensure(1);
}

/// IngressRuleValue represents a rule to apply against incoming requests. If the
/// rule is satisfied, the request is routed to the specified backend. Currently
/// mixing different types of rules in a single Ingress is disallowed, so exactly
/// one of the following must be set.
class IngressRuleValue extends $pb.GeneratedMessage {
  factory IngressRuleValue({
    HTTPIngressRuleValue? http,
  }) {
    final $result = create();
    if (http != null) {
      $result.http = http;
    }
    return $result;
  }
  IngressRuleValue._() : super();
  factory IngressRuleValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressRuleValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressRuleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<HTTPIngressRuleValue>(1, _omitFieldNames ? '' : 'http', subBuilder: HTTPIngressRuleValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressRuleValue clone() => IngressRuleValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressRuleValue copyWith(void Function(IngressRuleValue) updates) => super.copyWith((message) => updates(message as IngressRuleValue)) as IngressRuleValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressRuleValue create() => IngressRuleValue._();
  IngressRuleValue createEmptyInstance() => create();
  static $pb.PbList<IngressRuleValue> createRepeated() => $pb.PbList<IngressRuleValue>();
  @$core.pragma('dart2js:noInline')
  static IngressRuleValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressRuleValue>(create);
  static IngressRuleValue? _defaultInstance;

  /// http is a list of http selectors pointing to backends.
  /// A path is matched against the path of an incoming request. Currently it can
  /// contain characters disallowed from the conventional "path" part of a URL
  /// as defined by RFC 3986. Paths must begin with a '/'.
  /// A backend defines the referenced service endpoint to which the traffic
  /// will be forwarded to.
  @$pb.TagNumber(1)
  HTTPIngressRuleValue get http => $_getN(0);
  @$pb.TagNumber(1)
  set http(HTTPIngressRuleValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHttp() => $_has(0);
  @$pb.TagNumber(1)
  void clearHttp() => clearField(1);
  @$pb.TagNumber(1)
  HTTPIngressRuleValue ensureHttp() => $_ensure(0);
}

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpec extends $pb.GeneratedMessage {
  factory IngressSpec({
    IngressBackend? backend,
    $core.Iterable<IngressTLS>? tls,
    $core.Iterable<IngressRule>? rules,
    $core.String? ingressClassName,
  }) {
    final $result = create();
    if (backend != null) {
      $result.backend = backend;
    }
    if (tls != null) {
      $result.tls.addAll(tls);
    }
    if (rules != null) {
      $result.rules.addAll(rules);
    }
    if (ingressClassName != null) {
      $result.ingressClassName = ingressClassName;
    }
    return $result;
  }
  IngressSpec._() : super();
  factory IngressSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<IngressBackend>(1, _omitFieldNames ? '' : 'backend', subBuilder: IngressBackend.create)
    ..pc<IngressTLS>(2, _omitFieldNames ? '' : 'tls', $pb.PbFieldType.PM, subBuilder: IngressTLS.create)
    ..pc<IngressRule>(3, _omitFieldNames ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: IngressRule.create)
    ..aOS(4, _omitFieldNames ? '' : 'ingressClassName', protoName: 'ingressClassName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressSpec clone() => IngressSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressSpec copyWith(void Function(IngressSpec) updates) => super.copyWith((message) => updates(message as IngressSpec)) as IngressSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressSpec create() => IngressSpec._();
  IngressSpec createEmptyInstance() => create();
  static $pb.PbList<IngressSpec> createRepeated() => $pb.PbList<IngressSpec>();
  @$core.pragma('dart2js:noInline')
  static IngressSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressSpec>(create);
  static IngressSpec? _defaultInstance;

  /// A default backend capable of servicing requests that don't match any
  /// rule. At least one of 'backend' or 'rules' must be specified. This field
  /// is optional to allow the loadbalancer controller or defaulting logic to
  /// specify a global default.
  /// +optional
  @$pb.TagNumber(1)
  IngressBackend get backend => $_getN(0);
  @$pb.TagNumber(1)
  set backend(IngressBackend v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBackend() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackend() => clearField(1);
  @$pb.TagNumber(1)
  IngressBackend ensureBackend() => $_ensure(0);

  /// TLS configuration. Currently the Ingress only supports a single TLS
  /// port, 443. If multiple members of this list specify different hosts, they
  /// will be multiplexed on the same port according to the hostname specified
  /// through the SNI TLS extension, if the ingress controller fulfilling the
  /// ingress supports SNI.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<IngressTLS> get tls => $_getList(1);

  /// A list of host rules used to configure the Ingress. If unspecified, or
  /// no rule matches, all traffic is sent to the default backend.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<IngressRule> get rules => $_getList(2);

  /// IngressClassName is the name of the IngressClass cluster resource. The
  /// associated IngressClass defines which controller will implement the
  /// resource. This replaces the deprecated `kubernetes.io/ingress.class`
  /// annotation. For backwards compatibility, when that annotation is set, it
  /// must be given precedence over this field. The controller may emit a
  /// warning if the field and annotation have different values.
  /// Implementations of this API should ignore Ingresses without a class
  /// specified. An IngressClass resource may be marked as default, which can
  /// be used to set a default value for this field. For more information,
  /// refer to the IngressClass documentation.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get ingressClassName => $_getSZ(3);
  @$pb.TagNumber(4)
  set ingressClassName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIngressClassName() => $_has(3);
  @$pb.TagNumber(4)
  void clearIngressClassName() => clearField(4);
}

/// IngressStatus describe the current state of the Ingress.
class IngressStatus extends $pb.GeneratedMessage {
  factory IngressStatus({
    IngressLoadBalancerStatus? loadBalancer,
  }) {
    final $result = create();
    if (loadBalancer != null) {
      $result.loadBalancer = loadBalancer;
    }
    return $result;
  }
  IngressStatus._() : super();
  factory IngressStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<IngressLoadBalancerStatus>(1, _omitFieldNames ? '' : 'loadBalancer', protoName: 'loadBalancer', subBuilder: IngressLoadBalancerStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressStatus clone() => IngressStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressStatus copyWith(void Function(IngressStatus) updates) => super.copyWith((message) => updates(message as IngressStatus)) as IngressStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressStatus create() => IngressStatus._();
  IngressStatus createEmptyInstance() => create();
  static $pb.PbList<IngressStatus> createRepeated() => $pb.PbList<IngressStatus>();
  @$core.pragma('dart2js:noInline')
  static IngressStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressStatus>(create);
  static IngressStatus? _defaultInstance;

  /// LoadBalancer contains the current status of the load-balancer.
  /// +optional
  @$pb.TagNumber(1)
  IngressLoadBalancerStatus get loadBalancer => $_getN(0);
  @$pb.TagNumber(1)
  set loadBalancer(IngressLoadBalancerStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadBalancer() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadBalancer() => clearField(1);
  @$pb.TagNumber(1)
  IngressLoadBalancerStatus ensureLoadBalancer() => $_ensure(0);
}

/// IngressTLS describes the transport layer security associated with an Ingress.
class IngressTLS extends $pb.GeneratedMessage {
  factory IngressTLS({
    $core.Iterable<$core.String>? hosts,
    $core.String? secretName,
  }) {
    final $result = create();
    if (hosts != null) {
      $result.hosts.addAll(hosts);
    }
    if (secretName != null) {
      $result.secretName = secretName;
    }
    return $result;
  }
  IngressTLS._() : super();
  factory IngressTLS.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressTLS.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressTLS', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'hosts')
    ..aOS(2, _omitFieldNames ? '' : 'secretName', protoName: 'secretName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressTLS clone() => IngressTLS()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressTLS copyWith(void Function(IngressTLS) updates) => super.copyWith((message) => updates(message as IngressTLS)) as IngressTLS;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressTLS create() => IngressTLS._();
  IngressTLS createEmptyInstance() => create();
  static $pb.PbList<IngressTLS> createRepeated() => $pb.PbList<IngressTLS>();
  @$core.pragma('dart2js:noInline')
  static IngressTLS getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressTLS>(create);
  static IngressTLS? _defaultInstance;

  /// Hosts are a list of hosts included in the TLS certificate. The values in
  /// this list must match the name/s used in the tlsSecret. Defaults to the
  /// wildcard host setting for the loadbalancer controller fulfilling this
  /// Ingress, if left unspecified.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get hosts => $_getList(0);

  /// SecretName is the name of the secret used to terminate SSL traffic on 443.
  /// Field is left optional to allow SSL routing based on SNI hostname alone.
  /// If the SNI host in a listener conflicts with the "Host" header field used
  /// by an IngressRule, the SNI host is used for termination and value of the
  /// Host header is used for routing.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get secretName => $_getSZ(1);
  @$pb.TagNumber(2)
  set secretName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecretName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecretName() => clearField(2);
}

/// DEPRECATED 1.9 - This group version of NetworkPolicy is deprecated by networking/v1/NetworkPolicy.
/// NetworkPolicy describes what network traffic is allowed for a set of Pods
class NetworkPolicy extends $pb.GeneratedMessage {
  factory NetworkPolicy({
    $0.ObjectMeta? metadata,
    NetworkPolicySpec? spec,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (spec != null) {
      $result.spec = spec;
    }
    return $result;
  }
  NetworkPolicy._() : super();
  factory NetworkPolicy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicy', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<NetworkPolicySpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: NetworkPolicySpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicy clone() => NetworkPolicy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicy copyWith(void Function(NetworkPolicy) updates) => super.copyWith((message) => updates(message as NetworkPolicy)) as NetworkPolicy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicy create() => NetworkPolicy._();
  NetworkPolicy createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicy> createRepeated() => $pb.PbList<NetworkPolicy>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicy>(create);
  static NetworkPolicy? _defaultInstance;

  /// Standard object's metadata.
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

  /// Specification of the desired behavior for this NetworkPolicy.
  /// +optional
  @$pb.TagNumber(2)
  NetworkPolicySpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(NetworkPolicySpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  NetworkPolicySpec ensureSpec() => $_ensure(1);
}

/// DEPRECATED 1.9 - This group version of NetworkPolicyEgressRule is deprecated by networking/v1/NetworkPolicyEgressRule.
/// NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods
/// matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to.
/// This type is beta-level in 1.8
class NetworkPolicyEgressRule extends $pb.GeneratedMessage {
  factory NetworkPolicyEgressRule({
    $core.Iterable<NetworkPolicyPort>? ports,
    $core.Iterable<NetworkPolicyPeer>? to,
  }) {
    final $result = create();
    if (ports != null) {
      $result.ports.addAll(ports);
    }
    if (to != null) {
      $result.to.addAll(to);
    }
    return $result;
  }
  NetworkPolicyEgressRule._() : super();
  factory NetworkPolicyEgressRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyEgressRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyEgressRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..pc<NetworkPolicyPort>(1, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.PM, subBuilder: NetworkPolicyPort.create)
    ..pc<NetworkPolicyPeer>(2, _omitFieldNames ? '' : 'to', $pb.PbFieldType.PM, subBuilder: NetworkPolicyPeer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyEgressRule clone() => NetworkPolicyEgressRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyEgressRule copyWith(void Function(NetworkPolicyEgressRule) updates) => super.copyWith((message) => updates(message as NetworkPolicyEgressRule)) as NetworkPolicyEgressRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyEgressRule create() => NetworkPolicyEgressRule._();
  NetworkPolicyEgressRule createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyEgressRule> createRepeated() => $pb.PbList<NetworkPolicyEgressRule>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyEgressRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyEgressRule>(create);
  static NetworkPolicyEgressRule? _defaultInstance;

  /// List of destination ports for outgoing traffic.
  /// Each item in this list is combined using a logical OR. If this field is
  /// empty or missing, this rule matches all ports (traffic not restricted by port).
  /// If this field is present and contains at least one item, then this rule allows
  /// traffic only if the traffic matches at least one port in the list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<NetworkPolicyPort> get ports => $_getList(0);

  /// List of destinations for outgoing traffic of pods selected for this rule.
  /// Items in this list are combined using a logical OR operation. If this field is
  /// empty or missing, this rule matches all destinations (traffic not restricted by
  /// destination). If this field is present and contains at least one item, this rule
  /// allows traffic only if the traffic matches at least one item in the to list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<NetworkPolicyPeer> get to => $_getList(1);
}

/// DEPRECATED 1.9 - This group version of NetworkPolicyIngressRule is deprecated by networking/v1/NetworkPolicyIngressRule.
/// This NetworkPolicyIngressRule matches traffic if and only if the traffic matches both ports AND from.
class NetworkPolicyIngressRule extends $pb.GeneratedMessage {
  factory NetworkPolicyIngressRule({
    $core.Iterable<NetworkPolicyPort>? ports,
    $core.Iterable<NetworkPolicyPeer>? from,
  }) {
    final $result = create();
    if (ports != null) {
      $result.ports.addAll(ports);
    }
    if (from != null) {
      $result.from.addAll(from);
    }
    return $result;
  }
  NetworkPolicyIngressRule._() : super();
  factory NetworkPolicyIngressRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyIngressRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyIngressRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..pc<NetworkPolicyPort>(1, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.PM, subBuilder: NetworkPolicyPort.create)
    ..pc<NetworkPolicyPeer>(2, _omitFieldNames ? '' : 'from', $pb.PbFieldType.PM, subBuilder: NetworkPolicyPeer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyIngressRule clone() => NetworkPolicyIngressRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyIngressRule copyWith(void Function(NetworkPolicyIngressRule) updates) => super.copyWith((message) => updates(message as NetworkPolicyIngressRule)) as NetworkPolicyIngressRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyIngressRule create() => NetworkPolicyIngressRule._();
  NetworkPolicyIngressRule createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyIngressRule> createRepeated() => $pb.PbList<NetworkPolicyIngressRule>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyIngressRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyIngressRule>(create);
  static NetworkPolicyIngressRule? _defaultInstance;

  /// List of ports which should be made accessible on the pods selected for this rule.
  /// Each item in this list is combined using a logical OR.
  /// If this field is empty or missing, this rule matches all ports (traffic not restricted by port).
  /// If this field is present and contains at least one item, then this rule allows traffic
  /// only if the traffic matches at least one port in the list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<NetworkPolicyPort> get ports => $_getList(0);

  /// List of sources which should be able to access the pods selected for this rule.
  /// Items in this list are combined using a logical OR operation.
  /// If this field is empty or missing, this rule matches all sources (traffic not restricted by source).
  /// If this field is present and contains at least one item, this rule allows traffic only if the
  /// traffic matches at least one item in the from list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<NetworkPolicyPeer> get from => $_getList(1);
}

/// DEPRECATED 1.9 - This group version of NetworkPolicyList is deprecated by networking/v1/NetworkPolicyList.
/// Network Policy List is a list of NetworkPolicy objects.
class NetworkPolicyList extends $pb.GeneratedMessage {
  factory NetworkPolicyList({
    $0.ListMeta? metadata,
    $core.Iterable<NetworkPolicy>? items,
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
  NetworkPolicyList._() : super();
  factory NetworkPolicyList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<NetworkPolicy>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: NetworkPolicy.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyList clone() => NetworkPolicyList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyList copyWith(void Function(NetworkPolicyList) updates) => super.copyWith((message) => updates(message as NetworkPolicyList)) as NetworkPolicyList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyList create() => NetworkPolicyList._();
  NetworkPolicyList createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyList> createRepeated() => $pb.PbList<NetworkPolicyList>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyList>(create);
  static NetworkPolicyList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// Items is a list of schema objects.
  @$pb.TagNumber(2)
  $core.List<NetworkPolicy> get items => $_getList(1);
}

/// DEPRECATED 1.9 - This group version of NetworkPolicyPeer is deprecated by networking/v1/NetworkPolicyPeer.
class NetworkPolicyPeer extends $pb.GeneratedMessage {
  factory NetworkPolicyPeer({
    $0.LabelSelector? podSelector,
    $0.LabelSelector? namespaceSelector,
    IPBlock? ipBlock,
  }) {
    final $result = create();
    if (podSelector != null) {
      $result.podSelector = podSelector;
    }
    if (namespaceSelector != null) {
      $result.namespaceSelector = namespaceSelector;
    }
    if (ipBlock != null) {
      $result.ipBlock = ipBlock;
    }
    return $result;
  }
  NetworkPolicyPeer._() : super();
  factory NetworkPolicyPeer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyPeer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyPeer', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.LabelSelector>(1, _omitFieldNames ? '' : 'podSelector', protoName: 'podSelector', subBuilder: $0.LabelSelector.create)
    ..aOM<$0.LabelSelector>(2, _omitFieldNames ? '' : 'namespaceSelector', protoName: 'namespaceSelector', subBuilder: $0.LabelSelector.create)
    ..aOM<IPBlock>(3, _omitFieldNames ? '' : 'ipBlock', protoName: 'ipBlock', subBuilder: IPBlock.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyPeer clone() => NetworkPolicyPeer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyPeer copyWith(void Function(NetworkPolicyPeer) updates) => super.copyWith((message) => updates(message as NetworkPolicyPeer)) as NetworkPolicyPeer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyPeer create() => NetworkPolicyPeer._();
  NetworkPolicyPeer createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyPeer> createRepeated() => $pb.PbList<NetworkPolicyPeer>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyPeer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyPeer>(create);
  static NetworkPolicyPeer? _defaultInstance;

  ///  This is a label selector which selects Pods. This field follows standard label
  ///  selector semantics; if present but empty, it selects all pods.
  ///
  ///  If NamespaceSelector is also set, then the NetworkPolicyPeer as a whole selects
  ///  the Pods matching PodSelector in the Namespaces selected by NamespaceSelector.
  ///  Otherwise it selects the Pods matching PodSelector in the policy's own Namespace.
  ///  +optional
  @$pb.TagNumber(1)
  $0.LabelSelector get podSelector => $_getN(0);
  @$pb.TagNumber(1)
  set podSelector($0.LabelSelector v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPodSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearPodSelector() => clearField(1);
  @$pb.TagNumber(1)
  $0.LabelSelector ensurePodSelector() => $_ensure(0);

  ///  Selects Namespaces using cluster-scoped labels. This field follows standard label
  ///  selector semantics; if present but empty, it selects all namespaces.
  ///
  ///  If PodSelector is also set, then the NetworkPolicyPeer as a whole selects
  ///  the Pods matching PodSelector in the Namespaces selected by NamespaceSelector.
  ///  Otherwise it selects all Pods in the Namespaces selected by NamespaceSelector.
  ///  +optional
  @$pb.TagNumber(2)
  $0.LabelSelector get namespaceSelector => $_getN(1);
  @$pb.TagNumber(2)
  set namespaceSelector($0.LabelSelector v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNamespaceSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearNamespaceSelector() => clearField(2);
  @$pb.TagNumber(2)
  $0.LabelSelector ensureNamespaceSelector() => $_ensure(1);

  /// IPBlock defines policy on a particular IPBlock. If this field is set then
  /// neither of the other fields can be.
  /// +optional
  @$pb.TagNumber(3)
  IPBlock get ipBlock => $_getN(2);
  @$pb.TagNumber(3)
  set ipBlock(IPBlock v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIpBlock() => $_has(2);
  @$pb.TagNumber(3)
  void clearIpBlock() => clearField(3);
  @$pb.TagNumber(3)
  IPBlock ensureIpBlock() => $_ensure(2);
}

/// DEPRECATED 1.9 - This group version of NetworkPolicyPort is deprecated by networking/v1/NetworkPolicyPort.
class NetworkPolicyPort extends $pb.GeneratedMessage {
  factory NetworkPolicyPort({
    $core.String? protocol,
    $2.IntOrString? port,
    $core.int? endPort,
  }) {
    final $result = create();
    if (protocol != null) {
      $result.protocol = protocol;
    }
    if (port != null) {
      $result.port = port;
    }
    if (endPort != null) {
      $result.endPort = endPort;
    }
    return $result;
  }
  NetworkPolicyPort._() : super();
  factory NetworkPolicyPort.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyPort.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyPort', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'protocol')
    ..aOM<$2.IntOrString>(2, _omitFieldNames ? '' : 'port', subBuilder: $2.IntOrString.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'endPort', $pb.PbFieldType.O3, protoName: 'endPort')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyPort clone() => NetworkPolicyPort()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyPort copyWith(void Function(NetworkPolicyPort) updates) => super.copyWith((message) => updates(message as NetworkPolicyPort)) as NetworkPolicyPort;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyPort create() => NetworkPolicyPort._();
  NetworkPolicyPort createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyPort> createRepeated() => $pb.PbList<NetworkPolicyPort>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyPort getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyPort>(create);
  static NetworkPolicyPort? _defaultInstance;

  /// Optional.  The protocol (TCP, UDP, or SCTP) which traffic must match.
  /// If not specified, this field defaults to TCP.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get protocol => $_getSZ(0);
  @$pb.TagNumber(1)
  set protocol($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProtocol() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocol() => clearField(1);

  /// The port on the given protocol. This can either be a numerical or named
  /// port on a pod. If this field is not provided, this matches all port names and
  /// numbers.
  /// If present, only traffic on the specified protocol AND port will be matched.
  /// +optional
  @$pb.TagNumber(2)
  $2.IntOrString get port => $_getN(1);
  @$pb.TagNumber(2)
  set port($2.IntOrString v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);
  @$pb.TagNumber(2)
  $2.IntOrString ensurePort() => $_ensure(1);

  /// If set, indicates that the range of ports from port to endPort, inclusive,
  /// should be allowed by the policy. This field cannot be defined if the port field
  /// is not defined or if the port field is defined as a named (string) port.
  /// The endPort must be equal or greater than port.
  /// +optional
  @$pb.TagNumber(3)
  $core.int get endPort => $_getIZ(2);
  @$pb.TagNumber(3)
  set endPort($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndPort() => clearField(3);
}

/// DEPRECATED 1.9 - This group version of NetworkPolicySpec is deprecated by networking/v1/NetworkPolicySpec.
class NetworkPolicySpec extends $pb.GeneratedMessage {
  factory NetworkPolicySpec({
    $0.LabelSelector? podSelector,
    $core.Iterable<NetworkPolicyIngressRule>? ingress,
    $core.Iterable<NetworkPolicyEgressRule>? egress,
    $core.Iterable<$core.String>? policyTypes,
  }) {
    final $result = create();
    if (podSelector != null) {
      $result.podSelector = podSelector;
    }
    if (ingress != null) {
      $result.ingress.addAll(ingress);
    }
    if (egress != null) {
      $result.egress.addAll(egress);
    }
    if (policyTypes != null) {
      $result.policyTypes.addAll(policyTypes);
    }
    return $result;
  }
  NetworkPolicySpec._() : super();
  factory NetworkPolicySpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicySpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicySpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.LabelSelector>(1, _omitFieldNames ? '' : 'podSelector', protoName: 'podSelector', subBuilder: $0.LabelSelector.create)
    ..pc<NetworkPolicyIngressRule>(2, _omitFieldNames ? '' : 'ingress', $pb.PbFieldType.PM, subBuilder: NetworkPolicyIngressRule.create)
    ..pc<NetworkPolicyEgressRule>(3, _omitFieldNames ? '' : 'egress', $pb.PbFieldType.PM, subBuilder: NetworkPolicyEgressRule.create)
    ..pPS(4, _omitFieldNames ? '' : 'policyTypes', protoName: 'policyTypes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicySpec clone() => NetworkPolicySpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicySpec copyWith(void Function(NetworkPolicySpec) updates) => super.copyWith((message) => updates(message as NetworkPolicySpec)) as NetworkPolicySpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicySpec create() => NetworkPolicySpec._();
  NetworkPolicySpec createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicySpec> createRepeated() => $pb.PbList<NetworkPolicySpec>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicySpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicySpec>(create);
  static NetworkPolicySpec? _defaultInstance;

  /// Selects the pods to which this NetworkPolicy object applies.  The array of ingress rules
  /// is applied to any pods selected by this field. Multiple network policies can select the
  /// same set of pods.  In this case, the ingress rules for each are combined additively.
  /// This field is NOT optional and follows standard label selector semantics.
  /// An empty podSelector matches all pods in this namespace.
  @$pb.TagNumber(1)
  $0.LabelSelector get podSelector => $_getN(0);
  @$pb.TagNumber(1)
  set podSelector($0.LabelSelector v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPodSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearPodSelector() => clearField(1);
  @$pb.TagNumber(1)
  $0.LabelSelector ensurePodSelector() => $_ensure(0);

  /// List of ingress rules to be applied to the selected pods.
  /// Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod
  /// OR if the traffic source is the pod's local node,
  /// OR if the traffic matches at least one ingress rule across all of the NetworkPolicy
  /// objects whose podSelector matches the pod.
  /// If this field is empty then this NetworkPolicy does not allow any traffic
  /// (and serves solely to ensure that the pods it selects are isolated by default).
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<NetworkPolicyIngressRule> get ingress => $_getList(1);

  /// List of egress rules to be applied to the selected pods. Outgoing traffic is
  /// allowed if there are no NetworkPolicies selecting the pod (and cluster policy
  /// otherwise allows the traffic), OR if the traffic matches at least one egress rule
  /// across all of the NetworkPolicy objects whose podSelector matches the pod. If
  /// this field is empty then this NetworkPolicy limits all outgoing traffic (and serves
  /// solely to ensure that the pods it selects are isolated by default).
  /// This field is beta-level in 1.8
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<NetworkPolicyEgressRule> get egress => $_getList(2);

  /// List of rule types that the NetworkPolicy relates to.
  /// Valid options are ["Ingress"], ["Egress"], or ["Ingress", "Egress"].
  /// If this field is not specified, it will default based on the existence of Ingress or Egress rules;
  /// policies that contain an Egress section are assumed to affect Egress, and all policies
  /// (whether or not they contain an Ingress section) are assumed to affect Ingress.
  /// If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ].
  /// Likewise, if you want to write a policy that specifies that no egress is allowed,
  /// you must specify a policyTypes value that include "Egress" (since such a policy would not include
  /// an Egress section and would otherwise default to just [ "Ingress" ]).
  /// This field is beta-level in 1.8
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<$core.String> get policyTypes => $_getList(3);
}

/// DEPRECATED - This group version of ReplicaSet is deprecated by apps/v1beta2/ReplicaSet. See the release notes for
/// more information.
/// ReplicaSet ensures that a specified number of pod replicas are running at any given time.
class ReplicaSet extends $pb.GeneratedMessage {
  factory ReplicaSet({
    $0.ObjectMeta? metadata,
    ReplicaSetSpec? spec,
    ReplicaSetStatus? status,
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
  ReplicaSet._() : super();
  factory ReplicaSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicaSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplicaSet', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<ReplicaSetSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ReplicaSetSpec.create)
    ..aOM<ReplicaSetStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: ReplicaSetStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicaSet clone() => ReplicaSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicaSet copyWith(void Function(ReplicaSet) updates) => super.copyWith((message) => updates(message as ReplicaSet)) as ReplicaSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplicaSet create() => ReplicaSet._();
  ReplicaSet createEmptyInstance() => create();
  static $pb.PbList<ReplicaSet> createRepeated() => $pb.PbList<ReplicaSet>();
  @$core.pragma('dart2js:noInline')
  static ReplicaSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicaSet>(create);
  static ReplicaSet? _defaultInstance;

  /// If the Labels of a ReplicaSet are empty, they are defaulted to
  /// be the same as the Pod(s) that the ReplicaSet manages.
  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// Spec defines the specification of the desired behavior of the ReplicaSet.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  ReplicaSetSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ReplicaSetSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ReplicaSetSpec ensureSpec() => $_ensure(1);

  /// Status is the most recently observed status of the ReplicaSet.
  /// This data may be out of date by some window of time.
  /// Populated by the system.
  /// Read-only.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  ReplicaSetStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(ReplicaSetStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  ReplicaSetStatus ensureStatus() => $_ensure(2);
}

/// ReplicaSetCondition describes the state of a replica set at a certain point.
class ReplicaSetCondition extends $pb.GeneratedMessage {
  factory ReplicaSetCondition({
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
  ReplicaSetCondition._() : super();
  factory ReplicaSetCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicaSetCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplicaSetCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
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
  ReplicaSetCondition clone() => ReplicaSetCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicaSetCondition copyWith(void Function(ReplicaSetCondition) updates) => super.copyWith((message) => updates(message as ReplicaSetCondition)) as ReplicaSetCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplicaSetCondition create() => ReplicaSetCondition._();
  ReplicaSetCondition createEmptyInstance() => create();
  static $pb.PbList<ReplicaSetCondition> createRepeated() => $pb.PbList<ReplicaSetCondition>();
  @$core.pragma('dart2js:noInline')
  static ReplicaSetCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicaSetCondition>(create);
  static ReplicaSetCondition? _defaultInstance;

  /// Type of replica set condition.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Status of the condition, one of True, False, Unknown.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// The last time the condition transitioned from one status to another.
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

  /// The reason for the condition's last transition.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// A human readable message indicating details about the transition.
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

/// ReplicaSetList is a collection of ReplicaSets.
class ReplicaSetList extends $pb.GeneratedMessage {
  factory ReplicaSetList({
    $0.ListMeta? metadata,
    $core.Iterable<ReplicaSet>? items,
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
  ReplicaSetList._() : super();
  factory ReplicaSetList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicaSetList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplicaSetList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<ReplicaSet>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ReplicaSet.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicaSetList clone() => ReplicaSetList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicaSetList copyWith(void Function(ReplicaSetList) updates) => super.copyWith((message) => updates(message as ReplicaSetList)) as ReplicaSetList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplicaSetList create() => ReplicaSetList._();
  ReplicaSetList createEmptyInstance() => create();
  static $pb.PbList<ReplicaSetList> createRepeated() => $pb.PbList<ReplicaSetList>();
  @$core.pragma('dart2js:noInline')
  static ReplicaSetList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicaSetList>(create);
  static ReplicaSetList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
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

  /// List of ReplicaSets.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller
  @$pb.TagNumber(2)
  $core.List<ReplicaSet> get items => $_getList(1);
}

/// ReplicaSetSpec is the specification of a ReplicaSet.
class ReplicaSetSpec extends $pb.GeneratedMessage {
  factory ReplicaSetSpec({
    $core.int? replicas,
    $0.LabelSelector? selector,
    $1.PodTemplateSpec? template,
    $core.int? minReadySeconds,
  }) {
    final $result = create();
    if (replicas != null) {
      $result.replicas = replicas;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (template != null) {
      $result.template = template;
    }
    if (minReadySeconds != null) {
      $result.minReadySeconds = minReadySeconds;
    }
    return $result;
  }
  ReplicaSetSpec._() : super();
  factory ReplicaSetSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicaSetSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplicaSetSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'replicas', $pb.PbFieldType.O3)
    ..aOM<$0.LabelSelector>(2, _omitFieldNames ? '' : 'selector', subBuilder: $0.LabelSelector.create)
    ..aOM<$1.PodTemplateSpec>(3, _omitFieldNames ? '' : 'template', subBuilder: $1.PodTemplateSpec.create)
    ..a<$core.int>(4, _omitFieldNames ? '' : 'minReadySeconds', $pb.PbFieldType.O3, protoName: 'minReadySeconds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicaSetSpec clone() => ReplicaSetSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicaSetSpec copyWith(void Function(ReplicaSetSpec) updates) => super.copyWith((message) => updates(message as ReplicaSetSpec)) as ReplicaSetSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplicaSetSpec create() => ReplicaSetSpec._();
  ReplicaSetSpec createEmptyInstance() => create();
  static $pb.PbList<ReplicaSetSpec> createRepeated() => $pb.PbList<ReplicaSetSpec>();
  @$core.pragma('dart2js:noInline')
  static ReplicaSetSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicaSetSpec>(create);
  static ReplicaSetSpec? _defaultInstance;

  /// Replicas is the number of desired replicas.
  /// This is a pointer to distinguish between explicit zero and unspecified.
  /// Defaults to 1.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  /// +optional
  @$pb.TagNumber(1)
  $core.int get replicas => $_getIZ(0);
  @$pb.TagNumber(1)
  set replicas($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReplicas() => $_has(0);
  @$pb.TagNumber(1)
  void clearReplicas() => clearField(1);

  /// Selector is a label query over pods that should match the replica count.
  /// If the selector is empty, it is defaulted to the labels present on the pod template.
  /// Label keys and values that must match in order to be controlled by this replica set.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
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

  /// Template is the object that describes the pod that will be created if
  /// insufficient replicas are detected.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller#pod-template
  /// +optional
  @$pb.TagNumber(3)
  $1.PodTemplateSpec get template => $_getN(2);
  @$pb.TagNumber(3)
  set template($1.PodTemplateSpec v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasTemplate() => $_has(2);
  @$pb.TagNumber(3)
  void clearTemplate() => clearField(3);
  @$pb.TagNumber(3)
  $1.PodTemplateSpec ensureTemplate() => $_ensure(2);

  /// Minimum number of seconds for which a newly created pod should be ready
  /// without any of its container crashing, for it to be considered available.
  /// Defaults to 0 (pod will be considered available as soon as it is ready)
  /// +optional
  @$pb.TagNumber(4)
  $core.int get minReadySeconds => $_getIZ(3);
  @$pb.TagNumber(4)
  set minReadySeconds($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMinReadySeconds() => $_has(3);
  @$pb.TagNumber(4)
  void clearMinReadySeconds() => clearField(4);
}

/// ReplicaSetStatus represents the current status of a ReplicaSet.
class ReplicaSetStatus extends $pb.GeneratedMessage {
  factory ReplicaSetStatus({
    $core.int? replicas,
    $core.int? fullyLabeledReplicas,
    $fixnum.Int64? observedGeneration,
    $core.int? readyReplicas,
    $core.int? availableReplicas,
    $core.Iterable<ReplicaSetCondition>? conditions,
  }) {
    final $result = create();
    if (replicas != null) {
      $result.replicas = replicas;
    }
    if (fullyLabeledReplicas != null) {
      $result.fullyLabeledReplicas = fullyLabeledReplicas;
    }
    if (observedGeneration != null) {
      $result.observedGeneration = observedGeneration;
    }
    if (readyReplicas != null) {
      $result.readyReplicas = readyReplicas;
    }
    if (availableReplicas != null) {
      $result.availableReplicas = availableReplicas;
    }
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  ReplicaSetStatus._() : super();
  factory ReplicaSetStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReplicaSetStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ReplicaSetStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'replicas', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'fullyLabeledReplicas', $pb.PbFieldType.O3, protoName: 'fullyLabeledReplicas')
    ..aInt64(3, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'readyReplicas', $pb.PbFieldType.O3, protoName: 'readyReplicas')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'availableReplicas', $pb.PbFieldType.O3, protoName: 'availableReplicas')
    ..pc<ReplicaSetCondition>(6, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: ReplicaSetCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReplicaSetStatus clone() => ReplicaSetStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReplicaSetStatus copyWith(void Function(ReplicaSetStatus) updates) => super.copyWith((message) => updates(message as ReplicaSetStatus)) as ReplicaSetStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ReplicaSetStatus create() => ReplicaSetStatus._();
  ReplicaSetStatus createEmptyInstance() => create();
  static $pb.PbList<ReplicaSetStatus> createRepeated() => $pb.PbList<ReplicaSetStatus>();
  @$core.pragma('dart2js:noInline')
  static ReplicaSetStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReplicaSetStatus>(create);
  static ReplicaSetStatus? _defaultInstance;

  /// Replicas is the most recently observed number of replicas.
  /// More info: https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/#what-is-a-replicationcontroller
  @$pb.TagNumber(1)
  $core.int get replicas => $_getIZ(0);
  @$pb.TagNumber(1)
  set replicas($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReplicas() => $_has(0);
  @$pb.TagNumber(1)
  void clearReplicas() => clearField(1);

  /// The number of pods that have labels matching the labels of the pod template of the replicaset.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get fullyLabeledReplicas => $_getIZ(1);
  @$pb.TagNumber(2)
  set fullyLabeledReplicas($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFullyLabeledReplicas() => $_has(1);
  @$pb.TagNumber(2)
  void clearFullyLabeledReplicas() => clearField(2);

  /// ObservedGeneration reflects the generation of the most recently observed ReplicaSet.
  /// +optional
  @$pb.TagNumber(3)
  $fixnum.Int64 get observedGeneration => $_getI64(2);
  @$pb.TagNumber(3)
  set observedGeneration($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasObservedGeneration() => $_has(2);
  @$pb.TagNumber(3)
  void clearObservedGeneration() => clearField(3);

  /// The number of ready replicas for this replica set.
  /// +optional
  @$pb.TagNumber(4)
  $core.int get readyReplicas => $_getIZ(3);
  @$pb.TagNumber(4)
  set readyReplicas($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReadyReplicas() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadyReplicas() => clearField(4);

  /// The number of available replicas (ready for at least minReadySeconds) for this replica set.
  /// +optional
  @$pb.TagNumber(5)
  $core.int get availableReplicas => $_getIZ(4);
  @$pb.TagNumber(5)
  set availableReplicas($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAvailableReplicas() => $_has(4);
  @$pb.TagNumber(5)
  void clearAvailableReplicas() => clearField(5);

  /// Represents the latest available observations of a replica set's current state.
  /// +optional
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(6)
  $core.List<ReplicaSetCondition> get conditions => $_getList(5);
}

/// DEPRECATED.
class RollbackConfig extends $pb.GeneratedMessage {
  factory RollbackConfig({
    $fixnum.Int64? revision,
  }) {
    final $result = create();
    if (revision != null) {
      $result.revision = revision;
    }
    return $result;
  }
  RollbackConfig._() : super();
  factory RollbackConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RollbackConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RollbackConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'revision')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RollbackConfig clone() => RollbackConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RollbackConfig copyWith(void Function(RollbackConfig) updates) => super.copyWith((message) => updates(message as RollbackConfig)) as RollbackConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RollbackConfig create() => RollbackConfig._();
  RollbackConfig createEmptyInstance() => create();
  static $pb.PbList<RollbackConfig> createRepeated() => $pb.PbList<RollbackConfig>();
  @$core.pragma('dart2js:noInline')
  static RollbackConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RollbackConfig>(create);
  static RollbackConfig? _defaultInstance;

  /// The revision to rollback to. If set to 0, rollback to the last revision.
  /// +optional
  @$pb.TagNumber(1)
  $fixnum.Int64 get revision => $_getI64(0);
  @$pb.TagNumber(1)
  set revision($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRevision() => $_has(0);
  @$pb.TagNumber(1)
  void clearRevision() => clearField(1);
}

/// Spec to control the desired behavior of daemon set rolling update.
class RollingUpdateDaemonSet extends $pb.GeneratedMessage {
  factory RollingUpdateDaemonSet({
    $2.IntOrString? maxUnavailable,
    $2.IntOrString? maxSurge,
  }) {
    final $result = create();
    if (maxUnavailable != null) {
      $result.maxUnavailable = maxUnavailable;
    }
    if (maxSurge != null) {
      $result.maxSurge = maxSurge;
    }
    return $result;
  }
  RollingUpdateDaemonSet._() : super();
  factory RollingUpdateDaemonSet.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RollingUpdateDaemonSet.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RollingUpdateDaemonSet', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$2.IntOrString>(1, _omitFieldNames ? '' : 'maxUnavailable', protoName: 'maxUnavailable', subBuilder: $2.IntOrString.create)
    ..aOM<$2.IntOrString>(2, _omitFieldNames ? '' : 'maxSurge', protoName: 'maxSurge', subBuilder: $2.IntOrString.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RollingUpdateDaemonSet clone() => RollingUpdateDaemonSet()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RollingUpdateDaemonSet copyWith(void Function(RollingUpdateDaemonSet) updates) => super.copyWith((message) => updates(message as RollingUpdateDaemonSet)) as RollingUpdateDaemonSet;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RollingUpdateDaemonSet create() => RollingUpdateDaemonSet._();
  RollingUpdateDaemonSet createEmptyInstance() => create();
  static $pb.PbList<RollingUpdateDaemonSet> createRepeated() => $pb.PbList<RollingUpdateDaemonSet>();
  @$core.pragma('dart2js:noInline')
  static RollingUpdateDaemonSet getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RollingUpdateDaemonSet>(create);
  static RollingUpdateDaemonSet? _defaultInstance;

  /// The maximum number of DaemonSet pods that can be unavailable during the
  /// update. Value can be an absolute number (ex: 5) or a percentage of total
  /// number of DaemonSet pods at the start of the update (ex: 10%). Absolute
  /// number is calculated from percentage by rounding up.
  /// This cannot be 0 if MaxSurge is 0
  /// Default value is 1.
  /// Example: when this is set to 30%, at most 30% of the total number of nodes
  /// that should be running the daemon pod (i.e. status.desiredNumberScheduled)
  /// can have their pods stopped for an update at any given time. The update
  /// starts by stopping at most 30% of those DaemonSet pods and then brings
  /// up new DaemonSet pods in their place. Once the new pods are available,
  /// it then proceeds onto other DaemonSet pods, thus ensuring that at least
  /// 70% of original number of DaemonSet pods are available at all times during
  /// the update.
  /// +optional
  @$pb.TagNumber(1)
  $2.IntOrString get maxUnavailable => $_getN(0);
  @$pb.TagNumber(1)
  set maxUnavailable($2.IntOrString v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaxUnavailable() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxUnavailable() => clearField(1);
  @$pb.TagNumber(1)
  $2.IntOrString ensureMaxUnavailable() => $_ensure(0);

  /// The maximum number of nodes with an existing available DaemonSet pod that
  /// can have an updated DaemonSet pod during during an update.
  /// Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%).
  /// This can not be 0 if MaxUnavailable is 0.
  /// Absolute number is calculated from percentage by rounding up to a minimum of 1.
  /// Default value is 0.
  /// Example: when this is set to 30%, at most 30% of the total number of nodes
  /// that should be running the daemon pod (i.e. status.desiredNumberScheduled)
  /// can have their a new pod created before the old pod is marked as deleted.
  /// The update starts by launching new pods on 30% of nodes. Once an updated
  /// pod is available (Ready for at least minReadySeconds) the old DaemonSet pod
  /// on that node is marked deleted. If the old pod becomes unavailable for any
  /// reason (Ready transitions to false, is evicted, or is drained) an updated
  /// pod is immediatedly created on that node without considering surge limits.
  /// Allowing surge implies the possibility that the resources consumed by the
  /// daemonset on any given node can double if the readiness check fails, and
  /// so resource intensive daemonsets should take into account that they may
  /// cause evictions during disruption.
  /// This is an alpha field and requires enabling DaemonSetUpdateSurge feature gate.
  /// +optional
  @$pb.TagNumber(2)
  $2.IntOrString get maxSurge => $_getN(1);
  @$pb.TagNumber(2)
  set maxSurge($2.IntOrString v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxSurge() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxSurge() => clearField(2);
  @$pb.TagNumber(2)
  $2.IntOrString ensureMaxSurge() => $_ensure(1);
}

/// Spec to control the desired behavior of rolling update.
class RollingUpdateDeployment extends $pb.GeneratedMessage {
  factory RollingUpdateDeployment({
    $2.IntOrString? maxUnavailable,
    $2.IntOrString? maxSurge,
  }) {
    final $result = create();
    if (maxUnavailable != null) {
      $result.maxUnavailable = maxUnavailable;
    }
    if (maxSurge != null) {
      $result.maxSurge = maxSurge;
    }
    return $result;
  }
  RollingUpdateDeployment._() : super();
  factory RollingUpdateDeployment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RollingUpdateDeployment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RollingUpdateDeployment', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$2.IntOrString>(1, _omitFieldNames ? '' : 'maxUnavailable', protoName: 'maxUnavailable', subBuilder: $2.IntOrString.create)
    ..aOM<$2.IntOrString>(2, _omitFieldNames ? '' : 'maxSurge', protoName: 'maxSurge', subBuilder: $2.IntOrString.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RollingUpdateDeployment clone() => RollingUpdateDeployment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RollingUpdateDeployment copyWith(void Function(RollingUpdateDeployment) updates) => super.copyWith((message) => updates(message as RollingUpdateDeployment)) as RollingUpdateDeployment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RollingUpdateDeployment create() => RollingUpdateDeployment._();
  RollingUpdateDeployment createEmptyInstance() => create();
  static $pb.PbList<RollingUpdateDeployment> createRepeated() => $pb.PbList<RollingUpdateDeployment>();
  @$core.pragma('dart2js:noInline')
  static RollingUpdateDeployment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RollingUpdateDeployment>(create);
  static RollingUpdateDeployment? _defaultInstance;

  /// The maximum number of pods that can be unavailable during the update.
  /// Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%).
  /// Absolute number is calculated from percentage by rounding down.
  /// This can not be 0 if MaxSurge is 0.
  /// By default, a fixed value of 1 is used.
  /// Example: when this is set to 30%, the old RC can be scaled down to 70% of desired pods
  /// immediately when the rolling update starts. Once new pods are ready, old RC
  /// can be scaled down further, followed by scaling up the new RC, ensuring
  /// that the total number of pods available at all times during the update is at
  /// least 70% of desired pods.
  /// +optional
  @$pb.TagNumber(1)
  $2.IntOrString get maxUnavailable => $_getN(0);
  @$pb.TagNumber(1)
  set maxUnavailable($2.IntOrString v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaxUnavailable() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxUnavailable() => clearField(1);
  @$pb.TagNumber(1)
  $2.IntOrString ensureMaxUnavailable() => $_ensure(0);

  /// The maximum number of pods that can be scheduled above the desired number of
  /// pods.
  /// Value can be an absolute number (ex: 5) or a percentage of desired pods (ex: 10%).
  /// This can not be 0 if MaxUnavailable is 0.
  /// Absolute number is calculated from percentage by rounding up.
  /// By default, a value of 1 is used.
  /// Example: when this is set to 30%, the new RC can be scaled up immediately when
  /// the rolling update starts, such that the total number of old and new pods do not exceed
  /// 130% of desired pods. Once old pods have been killed,
  /// new RC can be scaled up further, ensuring that total number of pods running
  /// at any time during the update is at most 130% of desired pods.
  /// +optional
  @$pb.TagNumber(2)
  $2.IntOrString get maxSurge => $_getN(1);
  @$pb.TagNumber(2)
  set maxSurge($2.IntOrString v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxSurge() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxSurge() => clearField(2);
  @$pb.TagNumber(2)
  $2.IntOrString ensureMaxSurge() => $_ensure(1);
}

/// represents a scaling request for a resource.
class Scale extends $pb.GeneratedMessage {
  factory Scale({
    $0.ObjectMeta? metadata,
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scale', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
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
  $0.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($0.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $0.ObjectMeta ensureMetadata() => $_ensure(0);

  /// defines the behavior of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
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

  /// current status of the scale. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status. Read-only.
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

/// describes the attributes of a scale subresource
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScaleSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
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

  /// desired number of instances for the scaled object.
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

/// represents the current status of a scale subresource.
class ScaleStatus extends $pb.GeneratedMessage {
  factory ScaleStatus({
    $core.int? replicas,
    $core.Map<$core.String, $core.String>? selector,
    $core.String? targetSelector,
  }) {
    final $result = create();
    if (replicas != null) {
      $result.replicas = replicas;
    }
    if (selector != null) {
      $result.selector.addAll(selector);
    }
    if (targetSelector != null) {
      $result.targetSelector = targetSelector;
    }
    return $result;
  }
  ScaleStatus._() : super();
  factory ScaleStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ScaleStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ScaleStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.extensions.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'replicas', $pb.PbFieldType.O3)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'selector', entryClassName: 'ScaleStatus.SelectorEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.extensions.v1beta1'))
    ..aOS(3, _omitFieldNames ? '' : 'targetSelector', protoName: 'targetSelector')
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

  /// actual number of observed instances of the scaled object.
  @$pb.TagNumber(1)
  $core.int get replicas => $_getIZ(0);
  @$pb.TagNumber(1)
  set replicas($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReplicas() => $_has(0);
  @$pb.TagNumber(1)
  void clearReplicas() => clearField(1);

  /// selector is a label query over pods that should match the replicas count. More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  /// +optional
  /// +mapType=atomic
  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get selector => $_getMap(1);

  /// label selector for pods that should match the replicas count. This is a serializated
  /// version of both map-based and more expressive set-based selectors. This is done to
  /// avoid introspection in the clients. The string will be in the same format as the
  /// query-param syntax. If the target type only supports map-based selectors, both this
  /// field and map-based selector field are populated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/#label-selectors
  /// +optional
  @$pb.TagNumber(3)
  $core.String get targetSelector => $_getSZ(2);
  @$pb.TagNumber(3)
  set targetSelector($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetSelector() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetSelector() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
