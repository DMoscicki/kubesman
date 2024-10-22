//
//  Generated code. Do not modify.
//  source: api/flowcontrol/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// ExemptPriorityLevelConfiguration describes the configurable aspects
/// of the handling of exempt requests.
/// In the mandatory exempt configuration object the values in the fields
/// here can be modified by authorized users, unlike the rest of the `spec`.
class ExemptPriorityLevelConfiguration extends $pb.GeneratedMessage {
  factory ExemptPriorityLevelConfiguration({
    $core.int? nominalConcurrencyShares,
    $core.int? lendablePercent,
  }) {
    final $result = create();
    if (nominalConcurrencyShares != null) {
      $result.nominalConcurrencyShares = nominalConcurrencyShares;
    }
    if (lendablePercent != null) {
      $result.lendablePercent = lendablePercent;
    }
    return $result;
  }
  ExemptPriorityLevelConfiguration._() : super();
  factory ExemptPriorityLevelConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExemptPriorityLevelConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExemptPriorityLevelConfiguration', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'nominalConcurrencyShares', $pb.PbFieldType.O3, protoName: 'nominalConcurrencyShares')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'lendablePercent', $pb.PbFieldType.O3, protoName: 'lendablePercent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExemptPriorityLevelConfiguration clone() => ExemptPriorityLevelConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExemptPriorityLevelConfiguration copyWith(void Function(ExemptPriorityLevelConfiguration) updates) => super.copyWith((message) => updates(message as ExemptPriorityLevelConfiguration)) as ExemptPriorityLevelConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExemptPriorityLevelConfiguration create() => ExemptPriorityLevelConfiguration._();
  ExemptPriorityLevelConfiguration createEmptyInstance() => create();
  static $pb.PbList<ExemptPriorityLevelConfiguration> createRepeated() => $pb.PbList<ExemptPriorityLevelConfiguration>();
  @$core.pragma('dart2js:noInline')
  static ExemptPriorityLevelConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExemptPriorityLevelConfiguration>(create);
  static ExemptPriorityLevelConfiguration? _defaultInstance;

  ///  `nominalConcurrencyShares` (NCS) contributes to the computation of the
  ///  NominalConcurrencyLimit (NominalCL) of this level.
  ///  This is the number of execution seats nominally reserved for this priority level.
  ///  This DOES NOT limit the dispatching from this priority level
  ///  but affects the other priority levels through the borrowing mechanism.
  ///  The server's concurrency limit (ServerCL) is divided among all the
  ///  priority levels in proportion to their NCS values:
  ///
  ///  NominalCL(i)  = ceil( ServerCL * NCS(i) / sum_ncs )
  ///  sum_ncs = sum[priority level k] NCS(k)
  ///
  ///  Bigger numbers mean a larger nominal concurrency limit,
  ///  at the expense of every other priority level.
  ///  This field has a default value of zero.
  ///  +optional
  @$pb.TagNumber(1)
  $core.int get nominalConcurrencyShares => $_getIZ(0);
  @$pb.TagNumber(1)
  set nominalConcurrencyShares($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNominalConcurrencyShares() => $_has(0);
  @$pb.TagNumber(1)
  void clearNominalConcurrencyShares() => clearField(1);

  ///  `lendablePercent` prescribes the fraction of the level's NominalCL that
  ///  can be borrowed by other priority levels.  This value of this
  ///  field must be between 0 and 100, inclusive, and it defaults to 0.
  ///  The number of seats that other levels can borrow from this level, known
  ///  as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
  ///
  ///  LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $core.int get lendablePercent => $_getIZ(1);
  @$pb.TagNumber(2)
  set lendablePercent($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLendablePercent() => $_has(1);
  @$pb.TagNumber(2)
  void clearLendablePercent() => clearField(2);
}

/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethod extends $pb.GeneratedMessage {
  factory FlowDistinguisherMethod({
    $core.String? type,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    return $result;
  }
  FlowDistinguisherMethod._() : super();
  factory FlowDistinguisherMethod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FlowDistinguisherMethod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FlowDistinguisherMethod', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FlowDistinguisherMethod clone() => FlowDistinguisherMethod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FlowDistinguisherMethod copyWith(void Function(FlowDistinguisherMethod) updates) => super.copyWith((message) => updates(message as FlowDistinguisherMethod)) as FlowDistinguisherMethod;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlowDistinguisherMethod create() => FlowDistinguisherMethod._();
  FlowDistinguisherMethod createEmptyInstance() => create();
  static $pb.PbList<FlowDistinguisherMethod> createRepeated() => $pb.PbList<FlowDistinguisherMethod>();
  @$core.pragma('dart2js:noInline')
  static FlowDistinguisherMethod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlowDistinguisherMethod>(create);
  static FlowDistinguisherMethod? _defaultInstance;

  /// `type` is the type of flow distinguisher method
  /// The supported types are "ByUser" and "ByNamespace".
  /// Required.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

/// FlowSchema defines the schema of a group of flows. Note that a flow is made up of a set of inbound API requests with
/// similar attributes and is identified by a pair of strings: the name of the FlowSchema and a "flow distinguisher".
class FlowSchema extends $pb.GeneratedMessage {
  factory FlowSchema({
    $0.ObjectMeta? metadata,
    FlowSchemaSpec? spec,
    FlowSchemaStatus? status,
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
  FlowSchema._() : super();
  factory FlowSchema.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FlowSchema.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FlowSchema', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<FlowSchemaSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: FlowSchemaSpec.create)
    ..aOM<FlowSchemaStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: FlowSchemaStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FlowSchema clone() => FlowSchema()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FlowSchema copyWith(void Function(FlowSchema) updates) => super.copyWith((message) => updates(message as FlowSchema)) as FlowSchema;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlowSchema create() => FlowSchema._();
  FlowSchema createEmptyInstance() => create();
  static $pb.PbList<FlowSchema> createRepeated() => $pb.PbList<FlowSchema>();
  @$core.pragma('dart2js:noInline')
  static FlowSchema getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlowSchema>(create);
  static FlowSchema? _defaultInstance;

  /// `metadata` is the standard object's metadata.
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

  /// `spec` is the specification of the desired behavior of a FlowSchema.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  FlowSchemaSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(FlowSchemaSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  FlowSchemaSpec ensureSpec() => $_ensure(1);

  /// `status` is the current status of a FlowSchema.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  FlowSchemaStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(FlowSchemaStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  FlowSchemaStatus ensureStatus() => $_ensure(2);
}

/// FlowSchemaCondition describes conditions for a FlowSchema.
class FlowSchemaCondition extends $pb.GeneratedMessage {
  factory FlowSchemaCondition({
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
  FlowSchemaCondition._() : super();
  factory FlowSchemaCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FlowSchemaCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FlowSchemaCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
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
  FlowSchemaCondition clone() => FlowSchemaCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FlowSchemaCondition copyWith(void Function(FlowSchemaCondition) updates) => super.copyWith((message) => updates(message as FlowSchemaCondition)) as FlowSchemaCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlowSchemaCondition create() => FlowSchemaCondition._();
  FlowSchemaCondition createEmptyInstance() => create();
  static $pb.PbList<FlowSchemaCondition> createRepeated() => $pb.PbList<FlowSchemaCondition>();
  @$core.pragma('dart2js:noInline')
  static FlowSchemaCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlowSchemaCondition>(create);
  static FlowSchemaCondition? _defaultInstance;

  /// `type` is the type of the condition.
  /// Required.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// `status` is the status of the condition.
  /// Can be True, False, Unknown.
  /// Required.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// `lastTransitionTime` is the last time the condition transitioned from one status to another.
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

  /// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// `message` is a human-readable message indicating details about last transition.
  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

/// FlowSchemaList is a list of FlowSchema objects.
class FlowSchemaList extends $pb.GeneratedMessage {
  factory FlowSchemaList({
    $0.ListMeta? metadata,
    $core.Iterable<FlowSchema>? items,
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
  FlowSchemaList._() : super();
  factory FlowSchemaList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FlowSchemaList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FlowSchemaList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<FlowSchema>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: FlowSchema.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FlowSchemaList clone() => FlowSchemaList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FlowSchemaList copyWith(void Function(FlowSchemaList) updates) => super.copyWith((message) => updates(message as FlowSchemaList)) as FlowSchemaList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlowSchemaList create() => FlowSchemaList._();
  FlowSchemaList createEmptyInstance() => create();
  static $pb.PbList<FlowSchemaList> createRepeated() => $pb.PbList<FlowSchemaList>();
  @$core.pragma('dart2js:noInline')
  static FlowSchemaList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlowSchemaList>(create);
  static FlowSchemaList? _defaultInstance;

  /// `metadata` is the standard list metadata.
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

  /// `items` is a list of FlowSchemas.
  @$pb.TagNumber(2)
  $core.List<FlowSchema> get items => $_getList(1);
}

/// FlowSchemaSpec describes how the FlowSchema's specification looks like.
class FlowSchemaSpec extends $pb.GeneratedMessage {
  factory FlowSchemaSpec({
    PriorityLevelConfigurationReference? priorityLevelConfiguration,
    $core.int? matchingPrecedence,
    FlowDistinguisherMethod? distinguisherMethod,
    $core.Iterable<PolicyRulesWithSubjects>? rules,
  }) {
    final $result = create();
    if (priorityLevelConfiguration != null) {
      $result.priorityLevelConfiguration = priorityLevelConfiguration;
    }
    if (matchingPrecedence != null) {
      $result.matchingPrecedence = matchingPrecedence;
    }
    if (distinguisherMethod != null) {
      $result.distinguisherMethod = distinguisherMethod;
    }
    if (rules != null) {
      $result.rules.addAll(rules);
    }
    return $result;
  }
  FlowSchemaSpec._() : super();
  factory FlowSchemaSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FlowSchemaSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FlowSchemaSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOM<PriorityLevelConfigurationReference>(1, _omitFieldNames ? '' : 'priorityLevelConfiguration', protoName: 'priorityLevelConfiguration', subBuilder: PriorityLevelConfigurationReference.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'matchingPrecedence', $pb.PbFieldType.O3, protoName: 'matchingPrecedence')
    ..aOM<FlowDistinguisherMethod>(3, _omitFieldNames ? '' : 'distinguisherMethod', protoName: 'distinguisherMethod', subBuilder: FlowDistinguisherMethod.create)
    ..pc<PolicyRulesWithSubjects>(4, _omitFieldNames ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: PolicyRulesWithSubjects.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FlowSchemaSpec clone() => FlowSchemaSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FlowSchemaSpec copyWith(void Function(FlowSchemaSpec) updates) => super.copyWith((message) => updates(message as FlowSchemaSpec)) as FlowSchemaSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlowSchemaSpec create() => FlowSchemaSpec._();
  FlowSchemaSpec createEmptyInstance() => create();
  static $pb.PbList<FlowSchemaSpec> createRepeated() => $pb.PbList<FlowSchemaSpec>();
  @$core.pragma('dart2js:noInline')
  static FlowSchemaSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlowSchemaSpec>(create);
  static FlowSchemaSpec? _defaultInstance;

  /// `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot
  /// be resolved, the FlowSchema will be ignored and marked as invalid in its status.
  /// Required.
  @$pb.TagNumber(1)
  PriorityLevelConfigurationReference get priorityLevelConfiguration => $_getN(0);
  @$pb.TagNumber(1)
  set priorityLevelConfiguration(PriorityLevelConfigurationReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPriorityLevelConfiguration() => $_has(0);
  @$pb.TagNumber(1)
  void clearPriorityLevelConfiguration() => clearField(1);
  @$pb.TagNumber(1)
  PriorityLevelConfigurationReference ensurePriorityLevelConfiguration() => $_ensure(0);

  /// `matchingPrecedence` is used to choose among the FlowSchemas that match a given request. The chosen
  /// FlowSchema is among those with the numerically lowest (which we take to be logically highest)
  /// MatchingPrecedence.  Each MatchingPrecedence value must be ranged in [1,10000].
  /// Note that if the precedence is not specified, it will be set to 1000 as default.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get matchingPrecedence => $_getIZ(1);
  @$pb.TagNumber(2)
  set matchingPrecedence($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMatchingPrecedence() => $_has(1);
  @$pb.TagNumber(2)
  void clearMatchingPrecedence() => clearField(2);

  /// `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema.
  /// `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  /// +optional
  @$pb.TagNumber(3)
  FlowDistinguisherMethod get distinguisherMethod => $_getN(2);
  @$pb.TagNumber(3)
  set distinguisherMethod(FlowDistinguisherMethod v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasDistinguisherMethod() => $_has(2);
  @$pb.TagNumber(3)
  void clearDistinguisherMethod() => clearField(3);
  @$pb.TagNumber(3)
  FlowDistinguisherMethod ensureDistinguisherMethod() => $_ensure(2);

  /// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if
  /// at least one member of rules matches the request.
  /// if it is an empty slice, there will be no requests matching the FlowSchema.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(4)
  $core.List<PolicyRulesWithSubjects> get rules => $_getList(3);
}

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatus extends $pb.GeneratedMessage {
  factory FlowSchemaStatus({
    $core.Iterable<FlowSchemaCondition>? conditions,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  FlowSchemaStatus._() : super();
  factory FlowSchemaStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FlowSchemaStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FlowSchemaStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..pc<FlowSchemaCondition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: FlowSchemaCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FlowSchemaStatus clone() => FlowSchemaStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FlowSchemaStatus copyWith(void Function(FlowSchemaStatus) updates) => super.copyWith((message) => updates(message as FlowSchemaStatus)) as FlowSchemaStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FlowSchemaStatus create() => FlowSchemaStatus._();
  FlowSchemaStatus createEmptyInstance() => create();
  static $pb.PbList<FlowSchemaStatus> createRepeated() => $pb.PbList<FlowSchemaStatus>();
  @$core.pragma('dart2js:noInline')
  static FlowSchemaStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FlowSchemaStatus>(create);
  static FlowSchemaStatus? _defaultInstance;

  /// `conditions` is a list of the current states of FlowSchema.
  /// +listType=map
  /// +listMapKey=type
  /// +optional
  @$pb.TagNumber(1)
  $core.List<FlowSchemaCondition> get conditions => $_getList(0);
}

/// GroupSubject holds detailed information for group-kind subject.
class GroupSubject extends $pb.GeneratedMessage {
  factory GroupSubject({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  GroupSubject._() : super();
  factory GroupSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupSubject', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupSubject clone() => GroupSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupSubject copyWith(void Function(GroupSubject) updates) => super.copyWith((message) => updates(message as GroupSubject)) as GroupSubject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupSubject create() => GroupSubject._();
  GroupSubject createEmptyInstance() => create();
  static $pb.PbList<GroupSubject> createRepeated() => $pb.PbList<GroupSubject>();
  @$core.pragma('dart2js:noInline')
  static GroupSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupSubject>(create);
  static GroupSubject? _defaultInstance;

  /// name is the user group that matches, or "*" to match all user groups.
  /// See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some
  /// well-known group names.
  /// Required.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// LimitResponse defines how to handle requests that can not be executed right now.
/// +union
class LimitResponse extends $pb.GeneratedMessage {
  factory LimitResponse({
    $core.String? type,
    QueuingConfiguration? queuing,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (queuing != null) {
      $result.queuing = queuing;
    }
    return $result;
  }
  LimitResponse._() : super();
  factory LimitResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LimitResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<QueuingConfiguration>(2, _omitFieldNames ? '' : 'queuing', subBuilder: QueuingConfiguration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LimitResponse clone() => LimitResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LimitResponse copyWith(void Function(LimitResponse) updates) => super.copyWith((message) => updates(message as LimitResponse)) as LimitResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LimitResponse create() => LimitResponse._();
  LimitResponse createEmptyInstance() => create();
  static $pb.PbList<LimitResponse> createRepeated() => $pb.PbList<LimitResponse>();
  @$core.pragma('dart2js:noInline')
  static LimitResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitResponse>(create);
  static LimitResponse? _defaultInstance;

  /// `type` is "Queue" or "Reject".
  /// "Queue" means that requests that can not be executed upon arrival
  /// are held in a queue until they can be executed or a queuing limit
  /// is reached.
  /// "Reject" means that requests that can not be executed upon arrival
  /// are rejected.
  /// Required.
  /// +unionDiscriminator
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// `queuing` holds the configuration parameters for queuing.
  /// This field may be non-empty only if `type` is `"Queue"`.
  /// +optional
  @$pb.TagNumber(2)
  QueuingConfiguration get queuing => $_getN(1);
  @$pb.TagNumber(2)
  set queuing(QueuingConfiguration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasQueuing() => $_has(1);
  @$pb.TagNumber(2)
  void clearQueuing() => clearField(2);
  @$pb.TagNumber(2)
  QueuingConfiguration ensureQueuing() => $_ensure(1);
}

/// LimitedPriorityLevelConfiguration specifies how to handle requests that are subject to limits.
/// It addresses two issues:
///   - How are requests for this priority level limited?
///   - What should be done with requests that exceed the limit?
class LimitedPriorityLevelConfiguration extends $pb.GeneratedMessage {
  factory LimitedPriorityLevelConfiguration({
    $core.int? assuredConcurrencyShares,
    LimitResponse? limitResponse,
    $core.int? lendablePercent,
    $core.int? borrowingLimitPercent,
  }) {
    final $result = create();
    if (assuredConcurrencyShares != null) {
      $result.assuredConcurrencyShares = assuredConcurrencyShares;
    }
    if (limitResponse != null) {
      $result.limitResponse = limitResponse;
    }
    if (lendablePercent != null) {
      $result.lendablePercent = lendablePercent;
    }
    if (borrowingLimitPercent != null) {
      $result.borrowingLimitPercent = borrowingLimitPercent;
    }
    return $result;
  }
  LimitedPriorityLevelConfiguration._() : super();
  factory LimitedPriorityLevelConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LimitedPriorityLevelConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LimitedPriorityLevelConfiguration', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'assuredConcurrencyShares', $pb.PbFieldType.O3, protoName: 'assuredConcurrencyShares')
    ..aOM<LimitResponse>(2, _omitFieldNames ? '' : 'limitResponse', protoName: 'limitResponse', subBuilder: LimitResponse.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'lendablePercent', $pb.PbFieldType.O3, protoName: 'lendablePercent')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'borrowingLimitPercent', $pb.PbFieldType.O3, protoName: 'borrowingLimitPercent')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LimitedPriorityLevelConfiguration clone() => LimitedPriorityLevelConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LimitedPriorityLevelConfiguration copyWith(void Function(LimitedPriorityLevelConfiguration) updates) => super.copyWith((message) => updates(message as LimitedPriorityLevelConfiguration)) as LimitedPriorityLevelConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LimitedPriorityLevelConfiguration create() => LimitedPriorityLevelConfiguration._();
  LimitedPriorityLevelConfiguration createEmptyInstance() => create();
  static $pb.PbList<LimitedPriorityLevelConfiguration> createRepeated() => $pb.PbList<LimitedPriorityLevelConfiguration>();
  @$core.pragma('dart2js:noInline')
  static LimitedPriorityLevelConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LimitedPriorityLevelConfiguration>(create);
  static LimitedPriorityLevelConfiguration? _defaultInstance;

  ///  `assuredConcurrencyShares` (ACS) configures the execution
  ///  limit, which is a limit on the number of requests of this
  ///  priority level that may be executing at a given time.  ACS must
  ///  be a positive number. The server's concurrency limit (SCL) is
  ///  divided among the concurrency-controlled priority levels in
  ///  proportion to their assured concurrency shares. This produces
  ///  the assured concurrency value (ACV) --- the number of requests
  ///  that may be executing at a time --- for each such priority
  ///  level:
  ///
  ///              ACV(l) = ceil( SCL * ACS(l) / ( sum[priority levels k] ACS(k) ) )
  ///
  ///  bigger numbers of ACS mean more reserved concurrent requests (at the
  ///  expense of every other PL).
  ///  This field has a default value of 30.
  ///  +optional
  @$pb.TagNumber(1)
  $core.int get assuredConcurrencyShares => $_getIZ(0);
  @$pb.TagNumber(1)
  set assuredConcurrencyShares($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAssuredConcurrencyShares() => $_has(0);
  @$pb.TagNumber(1)
  void clearAssuredConcurrencyShares() => clearField(1);

  /// `limitResponse` indicates what to do with requests that can not be executed right now
  @$pb.TagNumber(2)
  LimitResponse get limitResponse => $_getN(1);
  @$pb.TagNumber(2)
  set limitResponse(LimitResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimitResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimitResponse() => clearField(2);
  @$pb.TagNumber(2)
  LimitResponse ensureLimitResponse() => $_ensure(1);

  ///  `lendablePercent` prescribes the fraction of the level's NominalCL that
  ///  can be borrowed by other priority levels. The value of this
  ///  field must be between 0 and 100, inclusive, and it defaults to 0.
  ///  The number of seats that other levels can borrow from this level, known
  ///  as this level's LendableConcurrencyLimit (LendableCL), is defined as follows.
  ///
  ///  LendableCL(i) = round( NominalCL(i) * lendablePercent(i)/100.0 )
  ///
  ///  +optional
  @$pb.TagNumber(3)
  $core.int get lendablePercent => $_getIZ(2);
  @$pb.TagNumber(3)
  set lendablePercent($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLendablePercent() => $_has(2);
  @$pb.TagNumber(3)
  void clearLendablePercent() => clearField(3);

  ///  `borrowingLimitPercent`, if present, configures a limit on how many
  ///  seats this priority level can borrow from other priority levels.
  ///  The limit is known as this level's BorrowingConcurrencyLimit
  ///  (BorrowingCL) and is a limit on the total number of seats that this
  ///  level may borrow at any one time.
  ///  This field holds the ratio of that limit to the level's nominal
  ///  concurrency limit. When this field is non-nil, it must hold a
  ///  non-negative integer and the limit is calculated as follows.
  ///
  ///  BorrowingCL(i) = round( NominalCL(i) * borrowingLimitPercent(i)/100.0 )
  ///
  ///  The value of this field can be more than 100, implying that this
  ///  priority level can borrow a number of seats that is greater than
  ///  its own nominal concurrency limit (NominalCL).
  ///  When this field is left `nil`, the limit is effectively infinite.
  ///  +optional
  @$pb.TagNumber(4)
  $core.int get borrowingLimitPercent => $_getIZ(3);
  @$pb.TagNumber(4)
  set borrowingLimitPercent($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBorrowingLimitPercent() => $_has(3);
  @$pb.TagNumber(4)
  void clearBorrowingLimitPercent() => clearField(4);
}

/// NonResourcePolicyRule is a predicate that matches non-resource requests according to their verb and the
/// target non-resource URL. A NonResourcePolicyRule matches a request if and only if both (a) at least one member
/// of verbs matches the request and (b) at least one member of nonResourceURLs matches the request.
class NonResourcePolicyRule extends $pb.GeneratedMessage {
  factory NonResourcePolicyRule({
    $core.Iterable<$core.String>? verbs,
    $core.Iterable<$core.String>? nonResourceURLs,
  }) {
    final $result = create();
    if (verbs != null) {
      $result.verbs.addAll(verbs);
    }
    if (nonResourceURLs != null) {
      $result.nonResourceURLs.addAll(nonResourceURLs);
    }
    return $result;
  }
  NonResourcePolicyRule._() : super();
  factory NonResourcePolicyRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NonResourcePolicyRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NonResourcePolicyRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'verbs')
    ..pPS(6, _omitFieldNames ? '' : 'nonResourceURLs', protoName: 'nonResourceURLs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NonResourcePolicyRule clone() => NonResourcePolicyRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NonResourcePolicyRule copyWith(void Function(NonResourcePolicyRule) updates) => super.copyWith((message) => updates(message as NonResourcePolicyRule)) as NonResourcePolicyRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NonResourcePolicyRule create() => NonResourcePolicyRule._();
  NonResourcePolicyRule createEmptyInstance() => create();
  static $pb.PbList<NonResourcePolicyRule> createRepeated() => $pb.PbList<NonResourcePolicyRule>();
  @$core.pragma('dart2js:noInline')
  static NonResourcePolicyRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NonResourcePolicyRule>(create);
  static NonResourcePolicyRule? _defaultInstance;

  /// `verbs` is a list of matching verbs and may not be empty.
  /// "*" matches all verbs. If it is present, it must be the only entry.
  /// +listType=set
  /// Required.
  @$pb.TagNumber(1)
  $core.List<$core.String> get verbs => $_getList(0);

  /// `nonResourceURLs` is a set of url prefixes that a user should have access to and may not be empty.
  /// For example:
  ///   - "/healthz" is legal
  ///   - "/hea*" is illegal
  ///   - "/hea" is legal but matches nothing
  ///   - "/hea/*" also matches nothing
  ///   - "/healthz/*" matches all per-component health checks.
  /// "*" matches all non-resource urls. if it is present, it must be the only entry.
  /// +listType=set
  /// Required.
  @$pb.TagNumber(6)
  $core.List<$core.String> get nonResourceURLs => $_getList(1);
}

/// PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The test considers the subject
/// making the request, the verb being requested, and the resource to be acted upon. This PolicyRulesWithSubjects matches
/// a request if and only if both (a) at least one member of subjects matches the request and (b) at least one member
/// of resourceRules or nonResourceRules matches the request.
class PolicyRulesWithSubjects extends $pb.GeneratedMessage {
  factory PolicyRulesWithSubjects({
    $core.Iterable<Subject>? subjects,
    $core.Iterable<ResourcePolicyRule>? resourceRules,
    $core.Iterable<NonResourcePolicyRule>? nonResourceRules,
  }) {
    final $result = create();
    if (subjects != null) {
      $result.subjects.addAll(subjects);
    }
    if (resourceRules != null) {
      $result.resourceRules.addAll(resourceRules);
    }
    if (nonResourceRules != null) {
      $result.nonResourceRules.addAll(nonResourceRules);
    }
    return $result;
  }
  PolicyRulesWithSubjects._() : super();
  factory PolicyRulesWithSubjects.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyRulesWithSubjects.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PolicyRulesWithSubjects', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..pc<Subject>(1, _omitFieldNames ? '' : 'subjects', $pb.PbFieldType.PM, subBuilder: Subject.create)
    ..pc<ResourcePolicyRule>(2, _omitFieldNames ? '' : 'resourceRules', $pb.PbFieldType.PM, protoName: 'resourceRules', subBuilder: ResourcePolicyRule.create)
    ..pc<NonResourcePolicyRule>(3, _omitFieldNames ? '' : 'nonResourceRules', $pb.PbFieldType.PM, protoName: 'nonResourceRules', subBuilder: NonResourcePolicyRule.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PolicyRulesWithSubjects clone() => PolicyRulesWithSubjects()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PolicyRulesWithSubjects copyWith(void Function(PolicyRulesWithSubjects) updates) => super.copyWith((message) => updates(message as PolicyRulesWithSubjects)) as PolicyRulesWithSubjects;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyRulesWithSubjects create() => PolicyRulesWithSubjects._();
  PolicyRulesWithSubjects createEmptyInstance() => create();
  static $pb.PbList<PolicyRulesWithSubjects> createRepeated() => $pb.PbList<PolicyRulesWithSubjects>();
  @$core.pragma('dart2js:noInline')
  static PolicyRulesWithSubjects getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyRulesWithSubjects>(create);
  static PolicyRulesWithSubjects? _defaultInstance;

  /// subjects is the list of normal user, serviceaccount, or group that this rule cares about.
  /// There must be at least one member in this slice.
  /// A slice that includes both the system:authenticated and system:unauthenticated user groups matches every request.
  /// +listType=atomic
  /// Required.
  @$pb.TagNumber(1)
  $core.List<Subject> get subjects => $_getList(0);

  /// `resourceRules` is a slice of ResourcePolicyRules that identify matching requests according to their verb and the
  /// target resource.
  /// At least one of `resourceRules` and `nonResourceRules` has to be non-empty.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(2)
  $core.List<ResourcePolicyRule> get resourceRules => $_getList(1);

  /// `nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests according to their verb
  /// and the target non-resource URL.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(3)
  $core.List<NonResourcePolicyRule> get nonResourceRules => $_getList(2);
}

/// PriorityLevelConfiguration represents the configuration of a priority level.
class PriorityLevelConfiguration extends $pb.GeneratedMessage {
  factory PriorityLevelConfiguration({
    $0.ObjectMeta? metadata,
    PriorityLevelConfigurationSpec? spec,
    PriorityLevelConfigurationStatus? status,
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
  PriorityLevelConfiguration._() : super();
  factory PriorityLevelConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriorityLevelConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PriorityLevelConfiguration', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<PriorityLevelConfigurationSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: PriorityLevelConfigurationSpec.create)
    ..aOM<PriorityLevelConfigurationStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: PriorityLevelConfigurationStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriorityLevelConfiguration clone() => PriorityLevelConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriorityLevelConfiguration copyWith(void Function(PriorityLevelConfiguration) updates) => super.copyWith((message) => updates(message as PriorityLevelConfiguration)) as PriorityLevelConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfiguration create() => PriorityLevelConfiguration._();
  PriorityLevelConfiguration createEmptyInstance() => create();
  static $pb.PbList<PriorityLevelConfiguration> createRepeated() => $pb.PbList<PriorityLevelConfiguration>();
  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriorityLevelConfiguration>(create);
  static PriorityLevelConfiguration? _defaultInstance;

  /// `metadata` is the standard object's metadata.
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

  /// `spec` is the specification of the desired behavior of a "request-priority".
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  PriorityLevelConfigurationSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(PriorityLevelConfigurationSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  PriorityLevelConfigurationSpec ensureSpec() => $_ensure(1);

  /// `status` is the current status of a "request-priority".
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  PriorityLevelConfigurationStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(PriorityLevelConfigurationStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  PriorityLevelConfigurationStatus ensureStatus() => $_ensure(2);
}

/// PriorityLevelConfigurationCondition defines the condition of priority level.
class PriorityLevelConfigurationCondition extends $pb.GeneratedMessage {
  factory PriorityLevelConfigurationCondition({
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
  PriorityLevelConfigurationCondition._() : super();
  factory PriorityLevelConfigurationCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriorityLevelConfigurationCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PriorityLevelConfigurationCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
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
  PriorityLevelConfigurationCondition clone() => PriorityLevelConfigurationCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationCondition copyWith(void Function(PriorityLevelConfigurationCondition) updates) => super.copyWith((message) => updates(message as PriorityLevelConfigurationCondition)) as PriorityLevelConfigurationCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationCondition create() => PriorityLevelConfigurationCondition._();
  PriorityLevelConfigurationCondition createEmptyInstance() => create();
  static $pb.PbList<PriorityLevelConfigurationCondition> createRepeated() => $pb.PbList<PriorityLevelConfigurationCondition>();
  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriorityLevelConfigurationCondition>(create);
  static PriorityLevelConfigurationCondition? _defaultInstance;

  /// `type` is the type of the condition.
  /// Required.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// `status` is the status of the condition.
  /// Can be True, False, Unknown.
  /// Required.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// `lastTransitionTime` is the last time the condition transitioned from one status to another.
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

  /// `reason` is a unique, one-word, CamelCase reason for the condition's last transition.
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// `message` is a human-readable message indicating details about last transition.
  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

/// PriorityLevelConfigurationList is a list of PriorityLevelConfiguration objects.
class PriorityLevelConfigurationList extends $pb.GeneratedMessage {
  factory PriorityLevelConfigurationList({
    $0.ListMeta? metadata,
    $core.Iterable<PriorityLevelConfiguration>? items,
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
  PriorityLevelConfigurationList._() : super();
  factory PriorityLevelConfigurationList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriorityLevelConfigurationList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PriorityLevelConfigurationList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<PriorityLevelConfiguration>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: PriorityLevelConfiguration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationList clone() => PriorityLevelConfigurationList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationList copyWith(void Function(PriorityLevelConfigurationList) updates) => super.copyWith((message) => updates(message as PriorityLevelConfigurationList)) as PriorityLevelConfigurationList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationList create() => PriorityLevelConfigurationList._();
  PriorityLevelConfigurationList createEmptyInstance() => create();
  static $pb.PbList<PriorityLevelConfigurationList> createRepeated() => $pb.PbList<PriorityLevelConfigurationList>();
  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriorityLevelConfigurationList>(create);
  static PriorityLevelConfigurationList? _defaultInstance;

  /// `metadata` is the standard object's metadata.
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

  /// `items` is a list of request-priorities.
  @$pb.TagNumber(2)
  $core.List<PriorityLevelConfiguration> get items => $_getList(1);
}

/// PriorityLevelConfigurationReference contains information that points to the "request-priority" being used.
class PriorityLevelConfigurationReference extends $pb.GeneratedMessage {
  factory PriorityLevelConfigurationReference({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  PriorityLevelConfigurationReference._() : super();
  factory PriorityLevelConfigurationReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriorityLevelConfigurationReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PriorityLevelConfigurationReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationReference clone() => PriorityLevelConfigurationReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationReference copyWith(void Function(PriorityLevelConfigurationReference) updates) => super.copyWith((message) => updates(message as PriorityLevelConfigurationReference)) as PriorityLevelConfigurationReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationReference create() => PriorityLevelConfigurationReference._();
  PriorityLevelConfigurationReference createEmptyInstance() => create();
  static $pb.PbList<PriorityLevelConfigurationReference> createRepeated() => $pb.PbList<PriorityLevelConfigurationReference>();
  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriorityLevelConfigurationReference>(create);
  static PriorityLevelConfigurationReference? _defaultInstance;

  /// `name` is the name of the priority level configuration being referenced
  /// Required.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
/// +union
class PriorityLevelConfigurationSpec extends $pb.GeneratedMessage {
  factory PriorityLevelConfigurationSpec({
    $core.String? type,
    LimitedPriorityLevelConfiguration? limited,
    ExemptPriorityLevelConfiguration? exempt,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (limited != null) {
      $result.limited = limited;
    }
    if (exempt != null) {
      $result.exempt = exempt;
    }
    return $result;
  }
  PriorityLevelConfigurationSpec._() : super();
  factory PriorityLevelConfigurationSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriorityLevelConfigurationSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PriorityLevelConfigurationSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<LimitedPriorityLevelConfiguration>(2, _omitFieldNames ? '' : 'limited', subBuilder: LimitedPriorityLevelConfiguration.create)
    ..aOM<ExemptPriorityLevelConfiguration>(3, _omitFieldNames ? '' : 'exempt', subBuilder: ExemptPriorityLevelConfiguration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationSpec clone() => PriorityLevelConfigurationSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationSpec copyWith(void Function(PriorityLevelConfigurationSpec) updates) => super.copyWith((message) => updates(message as PriorityLevelConfigurationSpec)) as PriorityLevelConfigurationSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationSpec create() => PriorityLevelConfigurationSpec._();
  PriorityLevelConfigurationSpec createEmptyInstance() => create();
  static $pb.PbList<PriorityLevelConfigurationSpec> createRepeated() => $pb.PbList<PriorityLevelConfigurationSpec>();
  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriorityLevelConfigurationSpec>(create);
  static PriorityLevelConfigurationSpec? _defaultInstance;

  /// `type` indicates whether this priority level is subject to
  /// limitation on request execution.  A value of `"Exempt"` means
  /// that requests of this priority level are not subject to a limit
  /// (and thus are never queued) and do not detract from the
  /// capacity made available to other priority levels.  A value of
  /// `"Limited"` means that (a) requests of this priority level
  /// _are_ subject to limits and (b) some of the server's limited
  /// capacity is made available exclusively to this priority level.
  /// Required.
  /// +unionDiscriminator
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// `limited` specifies how requests are handled for a Limited priority level.
  /// This field must be non-empty if and only if `type` is `"Limited"`.
  /// +optional
  @$pb.TagNumber(2)
  LimitedPriorityLevelConfiguration get limited => $_getN(1);
  @$pb.TagNumber(2)
  set limited(LimitedPriorityLevelConfiguration v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimited() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimited() => clearField(2);
  @$pb.TagNumber(2)
  LimitedPriorityLevelConfiguration ensureLimited() => $_ensure(1);

  /// `exempt` specifies how requests are handled for an exempt priority level.
  /// This field MUST be empty if `type` is `"Limited"`.
  /// This field MAY be non-empty if `type` is `"Exempt"`.
  /// If empty and `type` is `"Exempt"` then the default values
  /// for `ExemptPriorityLevelConfiguration` apply.
  /// +optional
  @$pb.TagNumber(3)
  ExemptPriorityLevelConfiguration get exempt => $_getN(2);
  @$pb.TagNumber(3)
  set exempt(ExemptPriorityLevelConfiguration v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasExempt() => $_has(2);
  @$pb.TagNumber(3)
  void clearExempt() => clearField(3);
  @$pb.TagNumber(3)
  ExemptPriorityLevelConfiguration ensureExempt() => $_ensure(2);
}

/// PriorityLevelConfigurationStatus represents the current state of a "request-priority".
class PriorityLevelConfigurationStatus extends $pb.GeneratedMessage {
  factory PriorityLevelConfigurationStatus({
    $core.Iterable<PriorityLevelConfigurationCondition>? conditions,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  PriorityLevelConfigurationStatus._() : super();
  factory PriorityLevelConfigurationStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriorityLevelConfigurationStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PriorityLevelConfigurationStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..pc<PriorityLevelConfigurationCondition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: PriorityLevelConfigurationCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationStatus clone() => PriorityLevelConfigurationStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriorityLevelConfigurationStatus copyWith(void Function(PriorityLevelConfigurationStatus) updates) => super.copyWith((message) => updates(message as PriorityLevelConfigurationStatus)) as PriorityLevelConfigurationStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationStatus create() => PriorityLevelConfigurationStatus._();
  PriorityLevelConfigurationStatus createEmptyInstance() => create();
  static $pb.PbList<PriorityLevelConfigurationStatus> createRepeated() => $pb.PbList<PriorityLevelConfigurationStatus>();
  @$core.pragma('dart2js:noInline')
  static PriorityLevelConfigurationStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriorityLevelConfigurationStatus>(create);
  static PriorityLevelConfigurationStatus? _defaultInstance;

  /// `conditions` is the current state of "request-priority".
  /// +listType=map
  /// +listMapKey=type
  /// +optional
  @$pb.TagNumber(1)
  $core.List<PriorityLevelConfigurationCondition> get conditions => $_getList(0);
}

/// QueuingConfiguration holds the configuration parameters for queuing
class QueuingConfiguration extends $pb.GeneratedMessage {
  factory QueuingConfiguration({
    $core.int? queues,
    $core.int? handSize,
    $core.int? queueLengthLimit,
  }) {
    final $result = create();
    if (queues != null) {
      $result.queues = queues;
    }
    if (handSize != null) {
      $result.handSize = handSize;
    }
    if (queueLengthLimit != null) {
      $result.queueLengthLimit = queueLengthLimit;
    }
    return $result;
  }
  QueuingConfiguration._() : super();
  factory QueuingConfiguration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueuingConfiguration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QueuingConfiguration', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'queues', $pb.PbFieldType.O3)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'handSize', $pb.PbFieldType.O3, protoName: 'handSize')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'queueLengthLimit', $pb.PbFieldType.O3, protoName: 'queueLengthLimit')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueuingConfiguration clone() => QueuingConfiguration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueuingConfiguration copyWith(void Function(QueuingConfiguration) updates) => super.copyWith((message) => updates(message as QueuingConfiguration)) as QueuingConfiguration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QueuingConfiguration create() => QueuingConfiguration._();
  QueuingConfiguration createEmptyInstance() => create();
  static $pb.PbList<QueuingConfiguration> createRepeated() => $pb.PbList<QueuingConfiguration>();
  @$core.pragma('dart2js:noInline')
  static QueuingConfiguration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueuingConfiguration>(create);
  static QueuingConfiguration? _defaultInstance;

  /// `queues` is the number of queues for this priority level. The
  /// queues exist independently at each apiserver. The value must be
  /// positive.  Setting it to 1 effectively precludes
  /// shufflesharding and thus makes the distinguisher method of
  /// associated flow schemas irrelevant.  This field has a default
  /// value of 64.
  /// +optional
  @$pb.TagNumber(1)
  $core.int get queues => $_getIZ(0);
  @$pb.TagNumber(1)
  set queues($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasQueues() => $_has(0);
  @$pb.TagNumber(1)
  void clearQueues() => clearField(1);

  /// `handSize` is a small positive number that configures the
  /// shuffle sharding of requests into queues.  When enqueuing a request
  /// at this priority level the request's flow identifier (a string
  /// pair) is hashed and the hash value is used to shuffle the list
  /// of queues and deal a hand of the size specified here.  The
  /// request is put into one of the shortest queues in that hand.
  /// `handSize` must be no larger than `queues`, and should be
  /// significantly smaller (so that a few heavy flows do not
  /// saturate most of the queues).  See the user-facing
  /// documentation for more extensive guidance on setting this
  /// field.  This field has a default value of 8.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get handSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set handSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHandSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearHandSize() => clearField(2);

  /// `queueLengthLimit` is the maximum number of requests allowed to
  /// be waiting in a given queue of this priority level at a time;
  /// excess requests are rejected.  This value must be positive.  If
  /// not specified, it will be defaulted to 50.
  /// +optional
  @$pb.TagNumber(3)
  $core.int get queueLengthLimit => $_getIZ(2);
  @$pb.TagNumber(3)
  set queueLengthLimit($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasQueueLengthLimit() => $_has(2);
  @$pb.TagNumber(3)
  void clearQueueLengthLimit() => clearField(3);
}

/// ResourcePolicyRule is a predicate that matches some resource
/// requests, testing the request's verb and the target resource. A
/// ResourcePolicyRule matches a resource request if and only if: (a)
/// at least one member of verbs matches the request, (b) at least one
/// member of apiGroups matches the request, (c) at least one member of
/// resources matches the request, and (d) either (d1) the request does
/// not specify a namespace (i.e., `Namespace==""`) and clusterScope is
/// true or (d2) the request specifies a namespace and least one member
/// of namespaces matches the request's namespace.
class ResourcePolicyRule extends $pb.GeneratedMessage {
  factory ResourcePolicyRule({
    $core.Iterable<$core.String>? verbs,
    $core.Iterable<$core.String>? apiGroups,
    $core.Iterable<$core.String>? resources,
    $core.bool? clusterScope,
    $core.Iterable<$core.String>? namespaces,
  }) {
    final $result = create();
    if (verbs != null) {
      $result.verbs.addAll(verbs);
    }
    if (apiGroups != null) {
      $result.apiGroups.addAll(apiGroups);
    }
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    if (clusterScope != null) {
      $result.clusterScope = clusterScope;
    }
    if (namespaces != null) {
      $result.namespaces.addAll(namespaces);
    }
    return $result;
  }
  ResourcePolicyRule._() : super();
  factory ResourcePolicyRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourcePolicyRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourcePolicyRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'verbs')
    ..pPS(2, _omitFieldNames ? '' : 'apiGroups', protoName: 'apiGroups')
    ..pPS(3, _omitFieldNames ? '' : 'resources')
    ..aOB(4, _omitFieldNames ? '' : 'clusterScope', protoName: 'clusterScope')
    ..pPS(5, _omitFieldNames ? '' : 'namespaces')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourcePolicyRule clone() => ResourcePolicyRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourcePolicyRule copyWith(void Function(ResourcePolicyRule) updates) => super.copyWith((message) => updates(message as ResourcePolicyRule)) as ResourcePolicyRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourcePolicyRule create() => ResourcePolicyRule._();
  ResourcePolicyRule createEmptyInstance() => create();
  static $pb.PbList<ResourcePolicyRule> createRepeated() => $pb.PbList<ResourcePolicyRule>();
  @$core.pragma('dart2js:noInline')
  static ResourcePolicyRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourcePolicyRule>(create);
  static ResourcePolicyRule? _defaultInstance;

  /// `verbs` is a list of matching verbs and may not be empty.
  /// "*" matches all verbs and, if present, must be the only entry.
  /// +listType=set
  /// Required.
  @$pb.TagNumber(1)
  $core.List<$core.String> get verbs => $_getList(0);

  /// `apiGroups` is a list of matching API groups and may not be empty.
  /// "*" matches all API groups and, if present, must be the only entry.
  /// +listType=set
  /// Required.
  @$pb.TagNumber(2)
  $core.List<$core.String> get apiGroups => $_getList(1);

  /// `resources` is a list of matching resources (i.e., lowercase
  /// and plural) with, if desired, subresource.  For example, [
  /// "services", "nodes/status" ].  This list may not be empty.
  /// "*" matches all resources and, if present, must be the only entry.
  /// Required.
  /// +listType=set
  @$pb.TagNumber(3)
  $core.List<$core.String> get resources => $_getList(2);

  /// `clusterScope` indicates whether to match requests that do not
  /// specify a namespace (which happens either because the resource
  /// is not namespaced or the request targets all namespaces).
  /// If this field is omitted or false then the `namespaces` field
  /// must contain a non-empty list.
  /// +optional
  @$pb.TagNumber(4)
  $core.bool get clusterScope => $_getBF(3);
  @$pb.TagNumber(4)
  set clusterScope($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClusterScope() => $_has(3);
  @$pb.TagNumber(4)
  void clearClusterScope() => clearField(4);

  /// `namespaces` is a list of target namespaces that restricts
  /// matches.  A request that specifies a target namespace matches
  /// only if either (a) this list contains that target namespace or
  /// (b) this list contains "*".  Note that "*" matches any
  /// specified namespace but does not match a request that _does
  /// not specify_ a namespace (see the `clusterScope` field for
  /// that).
  /// This list may be empty, but only if `clusterScope` is true.
  /// +optional
  /// +listType=set
  @$pb.TagNumber(5)
  $core.List<$core.String> get namespaces => $_getList(4);
}

/// ServiceAccountSubject holds detailed information for service-account-kind subject.
class ServiceAccountSubject extends $pb.GeneratedMessage {
  factory ServiceAccountSubject({
    $core.String? namespace,
    $core.String? name,
  }) {
    final $result = create();
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ServiceAccountSubject._() : super();
  factory ServiceAccountSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceAccountSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceAccountSubject', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'namespace')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceAccountSubject clone() => ServiceAccountSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceAccountSubject copyWith(void Function(ServiceAccountSubject) updates) => super.copyWith((message) => updates(message as ServiceAccountSubject)) as ServiceAccountSubject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceAccountSubject create() => ServiceAccountSubject._();
  ServiceAccountSubject createEmptyInstance() => create();
  static $pb.PbList<ServiceAccountSubject> createRepeated() => $pb.PbList<ServiceAccountSubject>();
  @$core.pragma('dart2js:noInline')
  static ServiceAccountSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceAccountSubject>(create);
  static ServiceAccountSubject? _defaultInstance;

  /// `namespace` is the namespace of matching ServiceAccount objects.
  /// Required.
  @$pb.TagNumber(1)
  $core.String get namespace => $_getSZ(0);
  @$pb.TagNumber(1)
  set namespace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamespace() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespace() => clearField(1);

  /// `name` is the name of matching ServiceAccount objects, or "*" to match regardless of name.
  /// Required.
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);
}

/// Subject matches the originator of a request, as identified by the request authentication system. There are three
/// ways of matching an originator; by user, group, or service account.
/// +union
class Subject extends $pb.GeneratedMessage {
  factory Subject({
    $core.String? kind,
    UserSubject? user,
    GroupSubject? group,
    ServiceAccountSubject? serviceAccount,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (user != null) {
      $result.user = user;
    }
    if (group != null) {
      $result.group = group;
    }
    if (serviceAccount != null) {
      $result.serviceAccount = serviceAccount;
    }
    return $result;
  }
  Subject._() : super();
  factory Subject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Subject', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aOM<UserSubject>(2, _omitFieldNames ? '' : 'user', subBuilder: UserSubject.create)
    ..aOM<GroupSubject>(3, _omitFieldNames ? '' : 'group', subBuilder: GroupSubject.create)
    ..aOM<ServiceAccountSubject>(4, _omitFieldNames ? '' : 'serviceAccount', protoName: 'serviceAccount', subBuilder: ServiceAccountSubject.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Subject clone() => Subject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Subject copyWith(void Function(Subject) updates) => super.copyWith((message) => updates(message as Subject)) as Subject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Subject create() => Subject._();
  Subject createEmptyInstance() => create();
  static $pb.PbList<Subject> createRepeated() => $pb.PbList<Subject>();
  @$core.pragma('dart2js:noInline')
  static Subject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Subject>(create);
  static Subject? _defaultInstance;

  /// `kind` indicates which one of the other fields is non-empty.
  /// Required
  /// +unionDiscriminator
  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  /// `user` matches based on username.
  /// +optional
  @$pb.TagNumber(2)
  UserSubject get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(UserSubject v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  UserSubject ensureUser() => $_ensure(1);

  /// `group` matches based on user group name.
  /// +optional
  @$pb.TagNumber(3)
  GroupSubject get group => $_getN(2);
  @$pb.TagNumber(3)
  set group(GroupSubject v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroup() => clearField(3);
  @$pb.TagNumber(3)
  GroupSubject ensureGroup() => $_ensure(2);

  /// `serviceAccount` matches ServiceAccounts.
  /// +optional
  @$pb.TagNumber(4)
  ServiceAccountSubject get serviceAccount => $_getN(3);
  @$pb.TagNumber(4)
  set serviceAccount(ServiceAccountSubject v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasServiceAccount() => $_has(3);
  @$pb.TagNumber(4)
  void clearServiceAccount() => clearField(4);
  @$pb.TagNumber(4)
  ServiceAccountSubject ensureServiceAccount() => $_ensure(3);
}

/// UserSubject holds detailed information for user-kind subject.
class UserSubject extends $pb.GeneratedMessage {
  factory UserSubject({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  UserSubject._() : super();
  factory UserSubject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserSubject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserSubject', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.flowcontrol.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserSubject clone() => UserSubject()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserSubject copyWith(void Function(UserSubject) updates) => super.copyWith((message) => updates(message as UserSubject)) as UserSubject;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserSubject create() => UserSubject._();
  UserSubject createEmptyInstance() => create();
  static $pb.PbList<UserSubject> createRepeated() => $pb.PbList<UserSubject>();
  @$core.pragma('dart2js:noInline')
  static UserSubject getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserSubject>(create);
  static UserSubject? _defaultInstance;

  /// `name` is the username that matches, or "*" to match all usernames.
  /// Required.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
