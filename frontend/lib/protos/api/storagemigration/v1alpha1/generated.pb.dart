//
//  Generated code. Do not modify.
//  source: api/storagemigration/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// The names of the group, the version, and the resource.
class GroupVersionResource extends $pb.GeneratedMessage {
  factory GroupVersionResource({
    $core.String? group,
    $core.String? version,
    $core.String? resource,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (version != null) {
      $result.version = version;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  GroupVersionResource._() : super();
  factory GroupVersionResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupVersionResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupVersionResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storagemigration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'resource')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupVersionResource clone() => GroupVersionResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupVersionResource copyWith(void Function(GroupVersionResource) updates) => super.copyWith((message) => updates(message as GroupVersionResource)) as GroupVersionResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupVersionResource create() => GroupVersionResource._();
  GroupVersionResource createEmptyInstance() => create();
  static $pb.PbList<GroupVersionResource> createRepeated() => $pb.PbList<GroupVersionResource>();
  @$core.pragma('dart2js:noInline')
  static GroupVersionResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupVersionResource>(create);
  static GroupVersionResource? _defaultInstance;

  /// The name of the group.
  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  /// The name of the version.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  /// The name of the resource.
  @$pb.TagNumber(3)
  $core.String get resource => $_getSZ(2);
  @$pb.TagNumber(3)
  set resource($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(2);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);
}

/// Describes the state of a migration at a certain point.
class MigrationCondition extends $pb.GeneratedMessage {
  factory MigrationCondition({
    $core.String? type,
    $core.String? status,
    $0.Time? lastUpdateTime,
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
    if (lastUpdateTime != null) {
      $result.lastUpdateTime = lastUpdateTime;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  MigrationCondition._() : super();
  factory MigrationCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MigrationCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MigrationCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storagemigration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'lastUpdateTime', protoName: 'lastUpdateTime', subBuilder: $0.Time.create)
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MigrationCondition clone() => MigrationCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MigrationCondition copyWith(void Function(MigrationCondition) updates) => super.copyWith((message) => updates(message as MigrationCondition)) as MigrationCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MigrationCondition create() => MigrationCondition._();
  MigrationCondition createEmptyInstance() => create();
  static $pb.PbList<MigrationCondition> createRepeated() => $pb.PbList<MigrationCondition>();
  @$core.pragma('dart2js:noInline')
  static MigrationCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MigrationCondition>(create);
  static MigrationCondition? _defaultInstance;

  /// Type of the condition.
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

  /// The last time this condition was updated.
  /// +optional
  @$pb.TagNumber(3)
  $0.Time get lastUpdateTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastUpdateTime($0.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastUpdateTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastUpdateTime() => clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureLastUpdateTime() => $_ensure(2);

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

/// StorageVersionMigration represents a migration of stored data to the latest
/// storage version.
class StorageVersionMigration extends $pb.GeneratedMessage {
  factory StorageVersionMigration({
    $0.ObjectMeta? metadata,
    StorageVersionMigrationSpec? spec,
    StorageVersionMigrationStatus? status,
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
  StorageVersionMigration._() : super();
  factory StorageVersionMigration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersionMigration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersionMigration', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storagemigration.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<StorageVersionMigrationSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: StorageVersionMigrationSpec.create)
    ..aOM<StorageVersionMigrationStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: StorageVersionMigrationStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersionMigration clone() => StorageVersionMigration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersionMigration copyWith(void Function(StorageVersionMigration) updates) => super.copyWith((message) => updates(message as StorageVersionMigration)) as StorageVersionMigration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersionMigration create() => StorageVersionMigration._();
  StorageVersionMigration createEmptyInstance() => create();
  static $pb.PbList<StorageVersionMigration> createRepeated() => $pb.PbList<StorageVersionMigration>();
  @$core.pragma('dart2js:noInline')
  static StorageVersionMigration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersionMigration>(create);
  static StorageVersionMigration? _defaultInstance;

  /// Standard object metadata.
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

  /// Specification of the migration.
  /// +optional
  @$pb.TagNumber(2)
  StorageVersionMigrationSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(StorageVersionMigrationSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  StorageVersionMigrationSpec ensureSpec() => $_ensure(1);

  /// Status of the migration.
  /// +optional
  @$pb.TagNumber(3)
  StorageVersionMigrationStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(StorageVersionMigrationStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  StorageVersionMigrationStatus ensureStatus() => $_ensure(2);
}

/// StorageVersionMigrationList is a collection of storage version migrations.
class StorageVersionMigrationList extends $pb.GeneratedMessage {
  factory StorageVersionMigrationList({
    $0.ListMeta? metadata,
    $core.Iterable<StorageVersionMigration>? items,
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
  StorageVersionMigrationList._() : super();
  factory StorageVersionMigrationList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersionMigrationList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersionMigrationList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storagemigration.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<StorageVersionMigration>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: StorageVersionMigration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersionMigrationList clone() => StorageVersionMigrationList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersionMigrationList copyWith(void Function(StorageVersionMigrationList) updates) => super.copyWith((message) => updates(message as StorageVersionMigrationList)) as StorageVersionMigrationList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersionMigrationList create() => StorageVersionMigrationList._();
  StorageVersionMigrationList createEmptyInstance() => create();
  static $pb.PbList<StorageVersionMigrationList> createRepeated() => $pb.PbList<StorageVersionMigrationList>();
  @$core.pragma('dart2js:noInline')
  static StorageVersionMigrationList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersionMigrationList>(create);
  static StorageVersionMigrationList? _defaultInstance;

  /// Standard list metadata
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

  /// Items is the list of StorageVersionMigration
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(2)
  $core.List<StorageVersionMigration> get items => $_getList(1);
}

/// Spec of the storage version migration.
class StorageVersionMigrationSpec extends $pb.GeneratedMessage {
  factory StorageVersionMigrationSpec({
    GroupVersionResource? resource,
    $core.String? continueToken,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    if (continueToken != null) {
      $result.continueToken = continueToken;
    }
    return $result;
  }
  StorageVersionMigrationSpec._() : super();
  factory StorageVersionMigrationSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersionMigrationSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersionMigrationSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storagemigration.v1alpha1'), createEmptyInstance: create)
    ..aOM<GroupVersionResource>(1, _omitFieldNames ? '' : 'resource', subBuilder: GroupVersionResource.create)
    ..aOS(2, _omitFieldNames ? '' : 'continueToken', protoName: 'continueToken')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersionMigrationSpec clone() => StorageVersionMigrationSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersionMigrationSpec copyWith(void Function(StorageVersionMigrationSpec) updates) => super.copyWith((message) => updates(message as StorageVersionMigrationSpec)) as StorageVersionMigrationSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersionMigrationSpec create() => StorageVersionMigrationSpec._();
  StorageVersionMigrationSpec createEmptyInstance() => create();
  static $pb.PbList<StorageVersionMigrationSpec> createRepeated() => $pb.PbList<StorageVersionMigrationSpec>();
  @$core.pragma('dart2js:noInline')
  static StorageVersionMigrationSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersionMigrationSpec>(create);
  static StorageVersionMigrationSpec? _defaultInstance;

  /// The resource that is being migrated. The migrator sends requests to
  /// the endpoint serving the resource.
  /// Immutable.
  @$pb.TagNumber(1)
  GroupVersionResource get resource => $_getN(0);
  @$pb.TagNumber(1)
  set resource(GroupVersionResource v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);
  @$pb.TagNumber(1)
  GroupVersionResource ensureResource() => $_ensure(0);

  /// The token used in the list options to get the next chunk of objects
  /// to migrate. When the .status.conditions indicates the migration is
  /// "Running", users can use this token to check the progress of the
  /// migration.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get continueToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set continueToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasContinueToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearContinueToken() => clearField(2);
}

/// Status of the storage version migration.
class StorageVersionMigrationStatus extends $pb.GeneratedMessage {
  factory StorageVersionMigrationStatus({
    $core.Iterable<MigrationCondition>? conditions,
    $core.String? resourceVersion,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    if (resourceVersion != null) {
      $result.resourceVersion = resourceVersion;
    }
    return $result;
  }
  StorageVersionMigrationStatus._() : super();
  factory StorageVersionMigrationStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageVersionMigrationStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageVersionMigrationStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storagemigration.v1alpha1'), createEmptyInstance: create)
    ..pc<MigrationCondition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: MigrationCondition.create)
    ..aOS(2, _omitFieldNames ? '' : 'resourceVersion', protoName: 'resourceVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageVersionMigrationStatus clone() => StorageVersionMigrationStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageVersionMigrationStatus copyWith(void Function(StorageVersionMigrationStatus) updates) => super.copyWith((message) => updates(message as StorageVersionMigrationStatus)) as StorageVersionMigrationStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageVersionMigrationStatus create() => StorageVersionMigrationStatus._();
  StorageVersionMigrationStatus createEmptyInstance() => create();
  static $pb.PbList<StorageVersionMigrationStatus> createRepeated() => $pb.PbList<StorageVersionMigrationStatus>();
  @$core.pragma('dart2js:noInline')
  static StorageVersionMigrationStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageVersionMigrationStatus>(create);
  static StorageVersionMigrationStatus? _defaultInstance;

  /// The latest available observations of the migration's current state.
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=type
  /// +optional
  @$pb.TagNumber(1)
  $core.List<MigrationCondition> get conditions => $_getList(0);

  /// ResourceVersion to compare with the GC cache for performing the migration.
  /// This is the current resource version of given group, version and resource when
  /// kube-controller-manager first observes this StorageVersionMigration resource.
  @$pb.TagNumber(2)
  $core.String get resourceVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set resourceVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResourceVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourceVersion() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
