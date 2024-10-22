//
//  Generated code. Do not modify.
//  source: api/policy/v1beta1/generated.proto
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
import '../../../apimachinery/pkg/util/intstr/generated.pb.dart' as $1;

/// Eviction evicts a pod from its node subject to certain policies and safety constraints.
/// This is a subresource of Pod.  A request to cause such an eviction is
/// created by POSTing to .../pods/<pod name>/evictions.
class Eviction extends $pb.GeneratedMessage {
  factory Eviction({
    $0.ObjectMeta? metadata,
    $0.DeleteOptions? deleteOptions,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (deleteOptions != null) {
      $result.deleteOptions = deleteOptions;
    }
    return $result;
  }
  Eviction._() : super();
  factory Eviction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Eviction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Eviction', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.policy.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<$0.DeleteOptions>(2, _omitFieldNames ? '' : 'deleteOptions', protoName: 'deleteOptions', subBuilder: $0.DeleteOptions.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Eviction clone() => Eviction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Eviction copyWith(void Function(Eviction) updates) => super.copyWith((message) => updates(message as Eviction)) as Eviction;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Eviction create() => Eviction._();
  Eviction createEmptyInstance() => create();
  static $pb.PbList<Eviction> createRepeated() => $pb.PbList<Eviction>();
  @$core.pragma('dart2js:noInline')
  static Eviction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Eviction>(create);
  static Eviction? _defaultInstance;

  /// ObjectMeta describes the pod that is being evicted.
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

  /// DeleteOptions may be provided
  /// +optional
  @$pb.TagNumber(2)
  $0.DeleteOptions get deleteOptions => $_getN(1);
  @$pb.TagNumber(2)
  set deleteOptions($0.DeleteOptions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasDeleteOptions() => $_has(1);
  @$pb.TagNumber(2)
  void clearDeleteOptions() => clearField(2);
  @$pb.TagNumber(2)
  $0.DeleteOptions ensureDeleteOptions() => $_ensure(1);
}

/// PodDisruptionBudget is an object to define the max disruption that can be caused to a collection of pods
class PodDisruptionBudget extends $pb.GeneratedMessage {
  factory PodDisruptionBudget({
    $0.ObjectMeta? metadata,
    PodDisruptionBudgetSpec? spec,
    PodDisruptionBudgetStatus? status,
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
  PodDisruptionBudget._() : super();
  factory PodDisruptionBudget.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodDisruptionBudget.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodDisruptionBudget', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.policy.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<PodDisruptionBudgetSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: PodDisruptionBudgetSpec.create)
    ..aOM<PodDisruptionBudgetStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: PodDisruptionBudgetStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodDisruptionBudget clone() => PodDisruptionBudget()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodDisruptionBudget copyWith(void Function(PodDisruptionBudget) updates) => super.copyWith((message) => updates(message as PodDisruptionBudget)) as PodDisruptionBudget;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodDisruptionBudget create() => PodDisruptionBudget._();
  PodDisruptionBudget createEmptyInstance() => create();
  static $pb.PbList<PodDisruptionBudget> createRepeated() => $pb.PbList<PodDisruptionBudget>();
  @$core.pragma('dart2js:noInline')
  static PodDisruptionBudget getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodDisruptionBudget>(create);
  static PodDisruptionBudget? _defaultInstance;

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

  /// Specification of the desired behavior of the PodDisruptionBudget.
  /// +optional
  @$pb.TagNumber(2)
  PodDisruptionBudgetSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(PodDisruptionBudgetSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  PodDisruptionBudgetSpec ensureSpec() => $_ensure(1);

  /// Most recently observed status of the PodDisruptionBudget.
  /// +optional
  @$pb.TagNumber(3)
  PodDisruptionBudgetStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(PodDisruptionBudgetStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  PodDisruptionBudgetStatus ensureStatus() => $_ensure(2);
}

/// PodDisruptionBudgetList is a collection of PodDisruptionBudgets.
class PodDisruptionBudgetList extends $pb.GeneratedMessage {
  factory PodDisruptionBudgetList({
    $0.ListMeta? metadata,
    $core.Iterable<PodDisruptionBudget>? items,
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
  PodDisruptionBudgetList._() : super();
  factory PodDisruptionBudgetList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodDisruptionBudgetList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodDisruptionBudgetList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.policy.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<PodDisruptionBudget>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: PodDisruptionBudget.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodDisruptionBudgetList clone() => PodDisruptionBudgetList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodDisruptionBudgetList copyWith(void Function(PodDisruptionBudgetList) updates) => super.copyWith((message) => updates(message as PodDisruptionBudgetList)) as PodDisruptionBudgetList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodDisruptionBudgetList create() => PodDisruptionBudgetList._();
  PodDisruptionBudgetList createEmptyInstance() => create();
  static $pb.PbList<PodDisruptionBudgetList> createRepeated() => $pb.PbList<PodDisruptionBudgetList>();
  @$core.pragma('dart2js:noInline')
  static PodDisruptionBudgetList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodDisruptionBudgetList>(create);
  static PodDisruptionBudgetList? _defaultInstance;

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

  /// items list individual PodDisruptionBudget objects
  @$pb.TagNumber(2)
  $core.List<PodDisruptionBudget> get items => $_getList(1);
}

/// PodDisruptionBudgetSpec is a description of a PodDisruptionBudget.
class PodDisruptionBudgetSpec extends $pb.GeneratedMessage {
  factory PodDisruptionBudgetSpec({
    $1.IntOrString? minAvailable,
    $0.LabelSelector? selector,
    $1.IntOrString? maxUnavailable,
    $core.String? unhealthyPodEvictionPolicy,
  }) {
    final $result = create();
    if (minAvailable != null) {
      $result.minAvailable = minAvailable;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (maxUnavailable != null) {
      $result.maxUnavailable = maxUnavailable;
    }
    if (unhealthyPodEvictionPolicy != null) {
      $result.unhealthyPodEvictionPolicy = unhealthyPodEvictionPolicy;
    }
    return $result;
  }
  PodDisruptionBudgetSpec._() : super();
  factory PodDisruptionBudgetSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodDisruptionBudgetSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodDisruptionBudgetSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.policy.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.IntOrString>(1, _omitFieldNames ? '' : 'minAvailable', protoName: 'minAvailable', subBuilder: $1.IntOrString.create)
    ..aOM<$0.LabelSelector>(2, _omitFieldNames ? '' : 'selector', subBuilder: $0.LabelSelector.create)
    ..aOM<$1.IntOrString>(3, _omitFieldNames ? '' : 'maxUnavailable', protoName: 'maxUnavailable', subBuilder: $1.IntOrString.create)
    ..aOS(4, _omitFieldNames ? '' : 'unhealthyPodEvictionPolicy', protoName: 'unhealthyPodEvictionPolicy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodDisruptionBudgetSpec clone() => PodDisruptionBudgetSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodDisruptionBudgetSpec copyWith(void Function(PodDisruptionBudgetSpec) updates) => super.copyWith((message) => updates(message as PodDisruptionBudgetSpec)) as PodDisruptionBudgetSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodDisruptionBudgetSpec create() => PodDisruptionBudgetSpec._();
  PodDisruptionBudgetSpec createEmptyInstance() => create();
  static $pb.PbList<PodDisruptionBudgetSpec> createRepeated() => $pb.PbList<PodDisruptionBudgetSpec>();
  @$core.pragma('dart2js:noInline')
  static PodDisruptionBudgetSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodDisruptionBudgetSpec>(create);
  static PodDisruptionBudgetSpec? _defaultInstance;

  /// An eviction is allowed if at least "minAvailable" pods selected by
  /// "selector" will still be available after the eviction, i.e. even in the
  /// absence of the evicted pod.  So for example you can prevent all voluntary
  /// evictions by specifying "100%".
  /// +optional
  @$pb.TagNumber(1)
  $1.IntOrString get minAvailable => $_getN(0);
  @$pb.TagNumber(1)
  set minAvailable($1.IntOrString v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMinAvailable() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinAvailable() => clearField(1);
  @$pb.TagNumber(1)
  $1.IntOrString ensureMinAvailable() => $_ensure(0);

  /// Label query over pods whose evictions are managed by the disruption
  /// budget.
  /// A null selector selects no pods.
  /// An empty selector ({}) also selects no pods, which differs from standard behavior of selecting all pods.
  /// In policy/v1, an empty selector will select all pods in the namespace.
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

  /// An eviction is allowed if at most "maxUnavailable" pods selected by
  /// "selector" are unavailable after the eviction, i.e. even in absence of
  /// the evicted pod. For example, one can prevent all voluntary evictions
  /// by specifying 0. This is a mutually exclusive setting with "minAvailable".
  /// +optional
  @$pb.TagNumber(3)
  $1.IntOrString get maxUnavailable => $_getN(2);
  @$pb.TagNumber(3)
  set maxUnavailable($1.IntOrString v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxUnavailable() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxUnavailable() => clearField(3);
  @$pb.TagNumber(3)
  $1.IntOrString ensureMaxUnavailable() => $_ensure(2);

  ///  UnhealthyPodEvictionPolicy defines the criteria for when unhealthy pods
  ///  should be considered for eviction. Current implementation considers healthy pods,
  ///  as pods that have status.conditions item with type="Ready",status="True".
  ///
  ///  Valid policies are IfHealthyBudget and AlwaysAllow.
  ///  If no policy is specified, the default behavior will be used,
  ///  which corresponds to the IfHealthyBudget policy.
  ///
  ///  IfHealthyBudget policy means that running pods (status.phase="Running"),
  ///  but not yet healthy can be evicted only if the guarded application is not
  ///  disrupted (status.currentHealthy is at least equal to status.desiredHealthy).
  ///  Healthy pods will be subject to the PDB for eviction.
  ///
  ///  AlwaysAllow policy means that all running pods (status.phase="Running"),
  ///  but not yet healthy are considered disrupted and can be evicted regardless
  ///  of whether the criteria in a PDB is met. This means perspective running
  ///  pods of a disrupted application might not get a chance to become healthy.
  ///  Healthy pods will be subject to the PDB for eviction.
  ///
  ///  Additional policies may be added in the future.
  ///  Clients making eviction decisions should disallow eviction of unhealthy pods
  ///  if they encounter an unrecognized policy in this field.
  ///
  ///  This field is beta-level. The eviction API uses this field when
  ///  the feature gate PDBUnhealthyPodEvictionPolicy is enabled (enabled by default).
  ///  +optional
  @$pb.TagNumber(4)
  $core.String get unhealthyPodEvictionPolicy => $_getSZ(3);
  @$pb.TagNumber(4)
  set unhealthyPodEvictionPolicy($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUnhealthyPodEvictionPolicy() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnhealthyPodEvictionPolicy() => clearField(4);
}

/// PodDisruptionBudgetStatus represents information about the status of a
/// PodDisruptionBudget. Status may trail the actual state of a system.
class PodDisruptionBudgetStatus extends $pb.GeneratedMessage {
  factory PodDisruptionBudgetStatus({
    $fixnum.Int64? observedGeneration,
    $core.Map<$core.String, $0.Time>? disruptedPods,
    $core.int? disruptionsAllowed,
    $core.int? currentHealthy,
    $core.int? desiredHealthy,
    $core.int? expectedPods,
    $core.Iterable<$0.Condition>? conditions,
  }) {
    final $result = create();
    if (observedGeneration != null) {
      $result.observedGeneration = observedGeneration;
    }
    if (disruptedPods != null) {
      $result.disruptedPods.addAll(disruptedPods);
    }
    if (disruptionsAllowed != null) {
      $result.disruptionsAllowed = disruptionsAllowed;
    }
    if (currentHealthy != null) {
      $result.currentHealthy = currentHealthy;
    }
    if (desiredHealthy != null) {
      $result.desiredHealthy = desiredHealthy;
    }
    if (expectedPods != null) {
      $result.expectedPods = expectedPods;
    }
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  PodDisruptionBudgetStatus._() : super();
  factory PodDisruptionBudgetStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodDisruptionBudgetStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodDisruptionBudgetStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.policy.v1beta1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..m<$core.String, $0.Time>(2, _omitFieldNames ? '' : 'disruptedPods', protoName: 'disruptedPods', entryClassName: 'PodDisruptionBudgetStatus.DisruptedPodsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.Time.create, valueDefaultOrMaker: $0.Time.getDefault, packageName: const $pb.PackageName('api.policy.v1beta1'))
    ..a<$core.int>(3, _omitFieldNames ? '' : 'disruptionsAllowed', $pb.PbFieldType.O3, protoName: 'disruptionsAllowed')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'currentHealthy', $pb.PbFieldType.O3, protoName: 'currentHealthy')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'desiredHealthy', $pb.PbFieldType.O3, protoName: 'desiredHealthy')
    ..a<$core.int>(6, _omitFieldNames ? '' : 'expectedPods', $pb.PbFieldType.O3, protoName: 'expectedPods')
    ..pc<$0.Condition>(7, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: $0.Condition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodDisruptionBudgetStatus clone() => PodDisruptionBudgetStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodDisruptionBudgetStatus copyWith(void Function(PodDisruptionBudgetStatus) updates) => super.copyWith((message) => updates(message as PodDisruptionBudgetStatus)) as PodDisruptionBudgetStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodDisruptionBudgetStatus create() => PodDisruptionBudgetStatus._();
  PodDisruptionBudgetStatus createEmptyInstance() => create();
  static $pb.PbList<PodDisruptionBudgetStatus> createRepeated() => $pb.PbList<PodDisruptionBudgetStatus>();
  @$core.pragma('dart2js:noInline')
  static PodDisruptionBudgetStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodDisruptionBudgetStatus>(create);
  static PodDisruptionBudgetStatus? _defaultInstance;

  /// Most recent generation observed when updating this PDB status. DisruptionsAllowed and other
  /// status information is valid only if observedGeneration equals to PDB's object generation.
  /// +optional
  @$pb.TagNumber(1)
  $fixnum.Int64 get observedGeneration => $_getI64(0);
  @$pb.TagNumber(1)
  set observedGeneration($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasObservedGeneration() => $_has(0);
  @$pb.TagNumber(1)
  void clearObservedGeneration() => clearField(1);

  /// DisruptedPods contains information about pods whose eviction was
  /// processed by the API server eviction subresource handler but has not
  /// yet been observed by the PodDisruptionBudget controller.
  /// A pod will be in this map from the time when the API server processed the
  /// eviction request to the time when the pod is seen by PDB controller
  /// as having been marked for deletion (or after a timeout). The key in the map is the name of the pod
  /// and the value is the time when the API server processed the eviction request. If
  /// the deletion didn't occur and a pod is still there it will be removed from
  /// the list automatically by PodDisruptionBudget controller after some time.
  /// If everything goes smooth this map should be empty for the most of the time.
  /// Large number of entries in the map may indicate problems with pod deletions.
  /// +optional
  @$pb.TagNumber(2)
  $core.Map<$core.String, $0.Time> get disruptedPods => $_getMap(1);

  /// Number of pod disruptions that are currently allowed.
  @$pb.TagNumber(3)
  $core.int get disruptionsAllowed => $_getIZ(2);
  @$pb.TagNumber(3)
  set disruptionsAllowed($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDisruptionsAllowed() => $_has(2);
  @$pb.TagNumber(3)
  void clearDisruptionsAllowed() => clearField(3);

  /// current number of healthy pods
  @$pb.TagNumber(4)
  $core.int get currentHealthy => $_getIZ(3);
  @$pb.TagNumber(4)
  set currentHealthy($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasCurrentHealthy() => $_has(3);
  @$pb.TagNumber(4)
  void clearCurrentHealthy() => clearField(4);

  /// minimum desired number of healthy pods
  @$pb.TagNumber(5)
  $core.int get desiredHealthy => $_getIZ(4);
  @$pb.TagNumber(5)
  set desiredHealthy($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDesiredHealthy() => $_has(4);
  @$pb.TagNumber(5)
  void clearDesiredHealthy() => clearField(5);

  /// total number of pods counted by this disruption budget
  @$pb.TagNumber(6)
  $core.int get expectedPods => $_getIZ(5);
  @$pb.TagNumber(6)
  set expectedPods($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasExpectedPods() => $_has(5);
  @$pb.TagNumber(6)
  void clearExpectedPods() => clearField(6);

  ///  Conditions contain conditions for PDB. The disruption controller sets the
  ///  DisruptionAllowed condition. The following are known values for the reason field
  ///  (additional reasons could be added in the future):
  ///  - SyncFailed: The controller encountered an error and wasn't able to compute
  ///                the number of allowed disruptions. Therefore no disruptions are
  ///                allowed and the status of the condition will be False.
  ///  - InsufficientPods: The number of pods are either at or below the number
  ///                      required by the PodDisruptionBudget. No disruptions are
  ///                      allowed and the status of the condition will be False.
  ///  - SufficientPods: There are more pods than required by the PodDisruptionBudget.
  ///                    The condition will be True, and the number of allowed
  ///                    disruptions are provided by the disruptionsAllowed property.
  ///
  ///  +optional
  ///  +patchMergeKey=type
  ///  +patchStrategy=merge
  ///  +listType=map
  ///  +listMapKey=type
  @$pb.TagNumber(7)
  $core.List<$0.Condition> get conditions => $_getList(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
