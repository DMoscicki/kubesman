//
//  Generated code. Do not modify.
//  source: api/coordination/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// Lease defines a lease concept.
class Lease extends $pb.GeneratedMessage {
  factory Lease({
    $0.ObjectMeta? metadata,
    LeaseSpec? spec,
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
  Lease._() : super();
  factory Lease.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Lease.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Lease', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.coordination.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<LeaseSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: LeaseSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Lease clone() => Lease()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Lease copyWith(void Function(Lease) updates) => super.copyWith((message) => updates(message as Lease)) as Lease;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Lease create() => Lease._();
  Lease createEmptyInstance() => create();
  static $pb.PbList<Lease> createRepeated() => $pb.PbList<Lease>();
  @$core.pragma('dart2js:noInline')
  static Lease getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lease>(create);
  static Lease? _defaultInstance;

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

  /// spec contains the specification of the Lease.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  LeaseSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(LeaseSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  LeaseSpec ensureSpec() => $_ensure(1);
}

/// LeaseList is a list of Lease objects.
class LeaseList extends $pb.GeneratedMessage {
  factory LeaseList({
    $0.ListMeta? metadata,
    $core.Iterable<Lease>? items,
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
  LeaseList._() : super();
  factory LeaseList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LeaseList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.coordination.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<Lease>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Lease.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseList clone() => LeaseList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseList copyWith(void Function(LeaseList) updates) => super.copyWith((message) => updates(message as LeaseList)) as LeaseList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseList create() => LeaseList._();
  LeaseList createEmptyInstance() => create();
  static $pb.PbList<LeaseList> createRepeated() => $pb.PbList<LeaseList>();
  @$core.pragma('dart2js:noInline')
  static LeaseList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseList>(create);
  static LeaseList? _defaultInstance;

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

  /// items is a list of schema objects.
  @$pb.TagNumber(2)
  $core.List<Lease> get items => $_getList(1);
}

/// LeaseSpec is a specification of a Lease.
class LeaseSpec extends $pb.GeneratedMessage {
  factory LeaseSpec({
    $core.String? holderIdentity,
    $core.int? leaseDurationSeconds,
    $0.MicroTime? acquireTime,
    $0.MicroTime? renewTime,
    $core.int? leaseTransitions,
  }) {
    final $result = create();
    if (holderIdentity != null) {
      $result.holderIdentity = holderIdentity;
    }
    if (leaseDurationSeconds != null) {
      $result.leaseDurationSeconds = leaseDurationSeconds;
    }
    if (acquireTime != null) {
      $result.acquireTime = acquireTime;
    }
    if (renewTime != null) {
      $result.renewTime = renewTime;
    }
    if (leaseTransitions != null) {
      $result.leaseTransitions = leaseTransitions;
    }
    return $result;
  }
  LeaseSpec._() : super();
  factory LeaseSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LeaseSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LeaseSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.coordination.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'holderIdentity', protoName: 'holderIdentity')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'leaseDurationSeconds', $pb.PbFieldType.O3, protoName: 'leaseDurationSeconds')
    ..aOM<$0.MicroTime>(3, _omitFieldNames ? '' : 'acquireTime', protoName: 'acquireTime', subBuilder: $0.MicroTime.create)
    ..aOM<$0.MicroTime>(4, _omitFieldNames ? '' : 'renewTime', protoName: 'renewTime', subBuilder: $0.MicroTime.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'leaseTransitions', $pb.PbFieldType.O3, protoName: 'leaseTransitions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LeaseSpec clone() => LeaseSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LeaseSpec copyWith(void Function(LeaseSpec) updates) => super.copyWith((message) => updates(message as LeaseSpec)) as LeaseSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LeaseSpec create() => LeaseSpec._();
  LeaseSpec createEmptyInstance() => create();
  static $pb.PbList<LeaseSpec> createRepeated() => $pb.PbList<LeaseSpec>();
  @$core.pragma('dart2js:noInline')
  static LeaseSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LeaseSpec>(create);
  static LeaseSpec? _defaultInstance;

  /// holderIdentity contains the identity of the holder of a current lease.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get holderIdentity => $_getSZ(0);
  @$pb.TagNumber(1)
  set holderIdentity($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHolderIdentity() => $_has(0);
  @$pb.TagNumber(1)
  void clearHolderIdentity() => clearField(1);

  /// leaseDurationSeconds is a duration that candidates for a lease need
  /// to wait to force acquire it. This is measure against time of last
  /// observed renewTime.
  /// +optional
  @$pb.TagNumber(2)
  $core.int get leaseDurationSeconds => $_getIZ(1);
  @$pb.TagNumber(2)
  set leaseDurationSeconds($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLeaseDurationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearLeaseDurationSeconds() => clearField(2);

  /// acquireTime is a time when the current lease was acquired.
  /// +optional
  @$pb.TagNumber(3)
  $0.MicroTime get acquireTime => $_getN(2);
  @$pb.TagNumber(3)
  set acquireTime($0.MicroTime v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAcquireTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearAcquireTime() => clearField(3);
  @$pb.TagNumber(3)
  $0.MicroTime ensureAcquireTime() => $_ensure(2);

  /// renewTime is a time when the current holder of a lease has last
  /// updated the lease.
  /// +optional
  @$pb.TagNumber(4)
  $0.MicroTime get renewTime => $_getN(3);
  @$pb.TagNumber(4)
  set renewTime($0.MicroTime v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRenewTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearRenewTime() => clearField(4);
  @$pb.TagNumber(4)
  $0.MicroTime ensureRenewTime() => $_ensure(3);

  /// leaseTransitions is the number of transitions of a lease between
  /// holders.
  /// +optional
  @$pb.TagNumber(5)
  $core.int get leaseTransitions => $_getIZ(4);
  @$pb.TagNumber(5)
  set leaseTransitions($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasLeaseTransitions() => $_has(4);
  @$pb.TagNumber(5)
  void clearLeaseTransitions() => clearField(5);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
