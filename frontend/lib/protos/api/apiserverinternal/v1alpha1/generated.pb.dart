//
//  Generated code. Do not modify.
//  source: api/apiserverinternal/v1alpha1/generated.proto
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

/// An API server instance reports the version it can decode and the version it
/// encodes objects to when persisting objects in the backend.
class ServerStorageVersion extends $pb.GeneratedMessage {
  factory ServerStorageVersion({
    $core.String? apiServerID,
    $core.String? encodingVersion,
    $core.Iterable<$core.String>? decodableVersions,
    $core.Iterable<$core.String>? servedVersions,
  }) {
    final $result = create();
    if (apiServerID != null) {
      $result.apiServerID = apiServerID;
    }
    if (encodingVersion != null) {
      $result.encodingVersion = encodingVersion;
    }
    if (decodableVersions != null) {
      $result.decodableVersions.addAll(decodableVersions);
    }
    if (servedVersions != null) {
      $result.servedVersions.addAll(servedVersions);
    }
    return $result;
  }
  ServerStorageVersion._() : super();
  factory ServerStorageVersion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerStorageVersion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerStorageVersion', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apiserverinternal.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiServerID', protoName: 'apiServerID')
    ..aOS(2, _omitFieldNames ? '' : 'encodingVersion', protoName: 'encodingVersion')
    ..pPS(3, _omitFieldNames ? '' : 'decodableVersions', protoName: 'decodableVersions')
    ..pPS(4, _omitFieldNames ? '' : 'servedVersions', protoName: 'servedVersions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerStorageVersion clone() => ServerStorageVersion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerStorageVersion copyWith(void Function(ServerStorageVersion) updates) => super.copyWith((message) => updates(message as ServerStorageVersion)) as ServerStorageVersion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerStorageVersion create() => ServerStorageVersion._();
  ServerStorageVersion createEmptyInstance() => create();
  static $pb.PbList<ServerStorageVersion> createRepeated() => $pb.PbList<ServerStorageVersion>();
  @$core.pragma('dart2js:noInline')
  static ServerStorageVersion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerStorageVersion>(create);
  static ServerStorageVersion? _defaultInstance;

  /// The ID of the reporting API server.
  @$pb.TagNumber(1)
  $core.String get apiServerID => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiServerID($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiServerID() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiServerID() => clearField(1);

  /// The API server encodes the object to this version when persisting it in
  /// the backend (e.g., etcd).
  @$pb.TagNumber(2)
  $core.String get encodingVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set encodingVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEncodingVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearEncodingVersion() => clearField(2);

  /// The API server can decode objects encoded in these versions.
  /// The encodingVersion must be included in the decodableVersions.
  /// +listType=set
  @$pb.TagNumber(3)
  $core.List<$core.String> get decodableVersions => $_getList(2);

  /// The API server can serve these versions.
  /// DecodableVersions must include all ServedVersions.
  /// +listType=set
  @$pb.TagNumber(4)
  $core.List<$core.String> get servedVersions => $_getList(3);
}

/// Storage version of a specific resource.
class StorageVersion extends $pb.GeneratedMessage {
  factory StorageVersion({
    $0.ObjectMeta? metadata,
    StorageVersionSpec? spec,
    StorageVersionStatus? status,
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
  StorageVersion._() : super();
  factory StorageVersion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersion', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apiserverinternal.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<StorageVersionSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: StorageVersionSpec.create)
    ..aOM<StorageVersionStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: StorageVersionStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersion clone() => StorageVersion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersion copyWith(void Function(StorageVersion) updates) => super.copyWith((message) => updates(message as StorageVersion)) as StorageVersion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersion create() => StorageVersion._();
  StorageVersion createEmptyInstance() => create();
  static $pb.PbList<StorageVersion> createRepeated() => $pb.PbList<StorageVersion>();
  @$core.pragma('dart2js:noInline')
  static StorageVersion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersion>(create);
  static StorageVersion? _defaultInstance;

  /// The name is <group>.<resource>.
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

  /// Spec is an empty spec. It is here to comply with Kubernetes API style.
  @$pb.TagNumber(2)
  StorageVersionSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(StorageVersionSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  StorageVersionSpec ensureSpec() => $_ensure(1);

  /// API server instances report the version they can decode and the version they
  /// encode objects to when persisting objects in the backend.
  @$pb.TagNumber(3)
  StorageVersionStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(StorageVersionStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  StorageVersionStatus ensureStatus() => $_ensure(2);
}

/// Describes the state of the storageVersion at a certain point.
class StorageVersionCondition extends $pb.GeneratedMessage {
  factory StorageVersionCondition({
    $core.String? type,
    $core.String? status,
    $fixnum.Int64? observedGeneration,
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
    if (observedGeneration != null) {
      $result.observedGeneration = observedGeneration;
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
  StorageVersionCondition._() : super();
  factory StorageVersionCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersionCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersionCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apiserverinternal.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aInt64(3, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..aOM<$0.Time>(4, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $0.Time.create)
    ..aOS(5, _omitFieldNames ? '' : 'reason')
    ..aOS(6, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersionCondition clone() => StorageVersionCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersionCondition copyWith(void Function(StorageVersionCondition) updates) => super.copyWith((message) => updates(message as StorageVersionCondition)) as StorageVersionCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersionCondition create() => StorageVersionCondition._();
  StorageVersionCondition createEmptyInstance() => create();
  static $pb.PbList<StorageVersionCondition> createRepeated() => $pb.PbList<StorageVersionCondition>();
  @$core.pragma('dart2js:noInline')
  static StorageVersionCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersionCondition>(create);
  static StorageVersionCondition? _defaultInstance;

  /// Type of the condition.
  /// +required
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Status of the condition, one of True, False, Unknown.
  /// +required
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// If set, this represents the .metadata.generation that the condition was set based upon.
  /// +optional
  @$pb.TagNumber(3)
  $fixnum.Int64 get observedGeneration => $_getI64(2);
  @$pb.TagNumber(3)
  set observedGeneration($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasObservedGeneration() => $_has(2);
  @$pb.TagNumber(3)
  void clearObservedGeneration() => clearField(3);

  /// Last time the condition transitioned from one status to another.
  @$pb.TagNumber(4)
  $0.Time get lastTransitionTime => $_getN(3);
  @$pb.TagNumber(4)
  set lastTransitionTime($0.Time v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastTransitionTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastTransitionTime() => clearField(4);
  @$pb.TagNumber(4)
  $0.Time ensureLastTransitionTime() => $_ensure(3);

  /// The reason for the condition's last transition.
  /// +required
  @$pb.TagNumber(5)
  $core.String get reason => $_getSZ(4);
  @$pb.TagNumber(5)
  set reason($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearReason() => clearField(5);

  /// A human readable message indicating details about the transition.
  /// +required
  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(5);
  @$pb.TagNumber(6)
  set message($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessage() => clearField(6);
}

/// A list of StorageVersions.
class StorageVersionList extends $pb.GeneratedMessage {
  factory StorageVersionList({
    $0.ListMeta? metadata,
    $core.Iterable<StorageVersion>? items,
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
  StorageVersionList._() : super();
  factory StorageVersionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersionList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apiserverinternal.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<StorageVersion>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: StorageVersion.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersionList clone() => StorageVersionList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersionList copyWith(void Function(StorageVersionList) updates) => super.copyWith((message) => updates(message as StorageVersionList)) as StorageVersionList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersionList create() => StorageVersionList._();
  StorageVersionList createEmptyInstance() => create();
  static $pb.PbList<StorageVersionList> createRepeated() => $pb.PbList<StorageVersionList>();
  @$core.pragma('dart2js:noInline')
  static StorageVersionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersionList>(create);
  static StorageVersionList? _defaultInstance;

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

  /// Items holds a list of StorageVersion
  @$pb.TagNumber(2)
  $core.List<StorageVersion> get items => $_getList(1);
}

/// StorageVersionSpec is an empty spec.
class StorageVersionSpec extends $pb.GeneratedMessage {
  factory StorageVersionSpec() => create();
  StorageVersionSpec._() : super();
  factory StorageVersionSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersionSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersionSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apiserverinternal.v1alpha1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersionSpec clone() => StorageVersionSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersionSpec copyWith(void Function(StorageVersionSpec) updates) => super.copyWith((message) => updates(message as StorageVersionSpec)) as StorageVersionSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersionSpec create() => StorageVersionSpec._();
  StorageVersionSpec createEmptyInstance() => create();
  static $pb.PbList<StorageVersionSpec> createRepeated() => $pb.PbList<StorageVersionSpec>();
  @$core.pragma('dart2js:noInline')
  static StorageVersionSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersionSpec>(create);
  static StorageVersionSpec? _defaultInstance;
}

/// API server instances report the versions they can decode and the version they
/// encode objects to when persisting objects in the backend.
class StorageVersionStatus extends $pb.GeneratedMessage {
  factory StorageVersionStatus({
    $core.Iterable<ServerStorageVersion>? storageVersions,
    $core.String? commonEncodingVersion,
    $core.Iterable<StorageVersionCondition>? conditions,
  }) {
    final $result = create();
    if (storageVersions != null) {
      $result.storageVersions.addAll(storageVersions);
    }
    if (commonEncodingVersion != null) {
      $result.commonEncodingVersion = commonEncodingVersion;
    }
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  StorageVersionStatus._() : super();
  factory StorageVersionStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersionStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersionStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apiserverinternal.v1alpha1'), createEmptyInstance: create)
    ..pc<ServerStorageVersion>(1, _omitFieldNames ? '' : 'storageVersions', $pb.PbFieldType.PM, protoName: 'storageVersions', subBuilder: ServerStorageVersion.create)
    ..aOS(2, _omitFieldNames ? '' : 'commonEncodingVersion', protoName: 'commonEncodingVersion')
    ..pc<StorageVersionCondition>(3, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: StorageVersionCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersionStatus clone() => StorageVersionStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersionStatus copyWith(void Function(StorageVersionStatus) updates) => super.copyWith((message) => updates(message as StorageVersionStatus)) as StorageVersionStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersionStatus create() => StorageVersionStatus._();
  StorageVersionStatus createEmptyInstance() => create();
  static $pb.PbList<StorageVersionStatus> createRepeated() => $pb.PbList<StorageVersionStatus>();
  @$core.pragma('dart2js:noInline')
  static StorageVersionStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersionStatus>(create);
  static StorageVersionStatus? _defaultInstance;

  /// The reported versions per API server instance.
  /// +optional
  /// +listType=map
  /// +listMapKey=apiServerID
  @$pb.TagNumber(1)
  $core.List<ServerStorageVersion> get storageVersions => $_getList(0);

  /// If all API server instances agree on the same encoding storage version,
  /// then this field is set to that version. Otherwise this field is left empty.
  /// API servers should finish updating its storageVersionStatus entry before
  /// serving write operations, so that this field will be in sync with the reality.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get commonEncodingVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set commonEncodingVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommonEncodingVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommonEncodingVersion() => clearField(2);

  /// The latest available observations of the storageVersion's state.
  /// +optional
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(3)
  $core.List<StorageVersionCondition> get conditions => $_getList(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
