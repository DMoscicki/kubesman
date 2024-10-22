//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/apis/meta/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../runtime/generated.pb.dart' as $0;

/// APIGroup contains the name, the supported versions, and the preferred version
/// of a group.
class APIGroup extends $pb.GeneratedMessage {
  factory APIGroup({
    $core.String? name,
    $core.Iterable<GroupVersionForDiscovery>? versions,
    GroupVersionForDiscovery? preferredVersion,
    $core.Iterable<ServerAddressByClientCIDR>? serverAddressByClientCIDRs,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (versions != null) {
      $result.versions.addAll(versions);
    }
    if (preferredVersion != null) {
      $result.preferredVersion = preferredVersion;
    }
    if (serverAddressByClientCIDRs != null) {
      $result.serverAddressByClientCIDRs.addAll(serverAddressByClientCIDRs);
    }
    return $result;
  }
  APIGroup._() : super();
  factory APIGroup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIGroup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIGroup', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<GroupVersionForDiscovery>(2, _omitFieldNames ? '' : 'versions', $pb.PbFieldType.PM, subBuilder: GroupVersionForDiscovery.create)
    ..aOM<GroupVersionForDiscovery>(3, _omitFieldNames ? '' : 'preferredVersion', protoName: 'preferredVersion', subBuilder: GroupVersionForDiscovery.create)
    ..pc<ServerAddressByClientCIDR>(4, _omitFieldNames ? '' : 'serverAddressByClientCIDRs', $pb.PbFieldType.PM, protoName: 'serverAddressByClientCIDRs', subBuilder: ServerAddressByClientCIDR.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIGroup clone() => APIGroup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIGroup copyWith(void Function(APIGroup) updates) => super.copyWith((message) => updates(message as APIGroup)) as APIGroup;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIGroup create() => APIGroup._();
  APIGroup createEmptyInstance() => create();
  static $pb.PbList<APIGroup> createRepeated() => $pb.PbList<APIGroup>();
  @$core.pragma('dart2js:noInline')
  static APIGroup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIGroup>(create);
  static APIGroup? _defaultInstance;

  /// name is the name of the group.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// versions are the versions supported in this group.
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<GroupVersionForDiscovery> get versions => $_getList(1);

  /// preferredVersion is the version preferred by the API server, which
  /// probably is the storage version.
  /// +optional
  @$pb.TagNumber(3)
  GroupVersionForDiscovery get preferredVersion => $_getN(2);
  @$pb.TagNumber(3)
  set preferredVersion(GroupVersionForDiscovery v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPreferredVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearPreferredVersion() => clearField(3);
  @$pb.TagNumber(3)
  GroupVersionForDiscovery ensurePreferredVersion() => $_ensure(2);

  /// a map of client CIDR to server address that is serving this group.
  /// This is to help clients reach servers in the most network-efficient way possible.
  /// Clients can use the appropriate server address as per the CIDR that they match.
  /// In case of multiple matches, clients should use the longest matching CIDR.
  /// The server returns only those CIDRs that it thinks that the client can match.
  /// For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP.
  /// Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<ServerAddressByClientCIDR> get serverAddressByClientCIDRs => $_getList(3);
}

/// APIGroupList is a list of APIGroup, to allow clients to discover the API at
/// /apis.
class APIGroupList extends $pb.GeneratedMessage {
  factory APIGroupList({
    $core.Iterable<APIGroup>? groups,
  }) {
    final $result = create();
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    return $result;
  }
  APIGroupList._() : super();
  factory APIGroupList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIGroupList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIGroupList', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..pc<APIGroup>(1, _omitFieldNames ? '' : 'groups', $pb.PbFieldType.PM, subBuilder: APIGroup.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIGroupList clone() => APIGroupList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIGroupList copyWith(void Function(APIGroupList) updates) => super.copyWith((message) => updates(message as APIGroupList)) as APIGroupList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIGroupList create() => APIGroupList._();
  APIGroupList createEmptyInstance() => create();
  static $pb.PbList<APIGroupList> createRepeated() => $pb.PbList<APIGroupList>();
  @$core.pragma('dart2js:noInline')
  static APIGroupList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIGroupList>(create);
  static APIGroupList? _defaultInstance;

  /// groups is a list of APIGroup.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<APIGroup> get groups => $_getList(0);
}

/// APIResource specifies the name of a resource and whether it is namespaced.
class APIResource extends $pb.GeneratedMessage {
  factory APIResource({
    $core.String? name,
    $core.bool? namespaced,
    $core.String? kind,
    Verbs? verbs,
    $core.Iterable<$core.String>? shortNames,
    $core.String? singularName,
    $core.Iterable<$core.String>? categories,
    $core.String? group,
    $core.String? version,
    $core.String? storageVersionHash,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (namespaced != null) {
      $result.namespaced = namespaced;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (verbs != null) {
      $result.verbs = verbs;
    }
    if (shortNames != null) {
      $result.shortNames.addAll(shortNames);
    }
    if (singularName != null) {
      $result.singularName = singularName;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (group != null) {
      $result.group = group;
    }
    if (version != null) {
      $result.version = version;
    }
    if (storageVersionHash != null) {
      $result.storageVersionHash = storageVersionHash;
    }
    return $result;
  }
  APIResource._() : super();
  factory APIResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'namespaced')
    ..aOS(3, _omitFieldNames ? '' : 'kind')
    ..aOM<Verbs>(4, _omitFieldNames ? '' : 'verbs', subBuilder: Verbs.create)
    ..pPS(5, _omitFieldNames ? '' : 'shortNames', protoName: 'shortNames')
    ..aOS(6, _omitFieldNames ? '' : 'singularName', protoName: 'singularName')
    ..pPS(7, _omitFieldNames ? '' : 'categories')
    ..aOS(8, _omitFieldNames ? '' : 'group')
    ..aOS(9, _omitFieldNames ? '' : 'version')
    ..aOS(10, _omitFieldNames ? '' : 'storageVersionHash', protoName: 'storageVersionHash')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIResource clone() => APIResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIResource copyWith(void Function(APIResource) updates) => super.copyWith((message) => updates(message as APIResource)) as APIResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIResource create() => APIResource._();
  APIResource createEmptyInstance() => create();
  static $pb.PbList<APIResource> createRepeated() => $pb.PbList<APIResource>();
  @$core.pragma('dart2js:noInline')
  static APIResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIResource>(create);
  static APIResource? _defaultInstance;

  /// name is the plural name of the resource.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// namespaced indicates if a resource is namespaced or not.
  @$pb.TagNumber(2)
  $core.bool get namespaced => $_getBF(1);
  @$pb.TagNumber(2)
  set namespaced($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNamespaced() => $_has(1);
  @$pb.TagNumber(2)
  void clearNamespaced() => clearField(2);

  /// kind is the kind for the resource (e.g. 'Foo' is the kind for a resource 'foo')
  @$pb.TagNumber(3)
  $core.String get kind => $_getSZ(2);
  @$pb.TagNumber(3)
  set kind($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => clearField(3);

  /// verbs is a list of supported kube verbs (this includes get, list, watch, create,
  /// update, patch, delete, deletecollection, and proxy)
  @$pb.TagNumber(4)
  Verbs get verbs => $_getN(3);
  @$pb.TagNumber(4)
  set verbs(Verbs v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasVerbs() => $_has(3);
  @$pb.TagNumber(4)
  void clearVerbs() => clearField(4);
  @$pb.TagNumber(4)
  Verbs ensureVerbs() => $_ensure(3);

  /// shortNames is a list of suggested short names of the resource.
  /// +listType=atomic
  @$pb.TagNumber(5)
  $core.List<$core.String> get shortNames => $_getList(4);

  /// singularName is the singular name of the resource.  This allows clients to handle plural and singular opaquely.
  /// The singularName is more correct for reporting status on a single item and both singular and plural are allowed
  /// from the kubectl CLI interface.
  @$pb.TagNumber(6)
  $core.String get singularName => $_getSZ(5);
  @$pb.TagNumber(6)
  set singularName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSingularName() => $_has(5);
  @$pb.TagNumber(6)
  void clearSingularName() => clearField(6);

  /// categories is a list of the grouped resources this resource belongs to (e.g. 'all')
  /// +listType=atomic
  @$pb.TagNumber(7)
  $core.List<$core.String> get categories => $_getList(6);

  /// group is the preferred group of the resource.  Empty implies the group of the containing resource list.
  /// For subresources, this may have a different value, for example: Scale".
  @$pb.TagNumber(8)
  $core.String get group => $_getSZ(7);
  @$pb.TagNumber(8)
  set group($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasGroup() => $_has(7);
  @$pb.TagNumber(8)
  void clearGroup() => clearField(8);

  /// version is the preferred version of the resource.  Empty implies the version of the containing resource list
  /// For subresources, this may have a different value, for example: v1 (while inside a v1beta1 version of the core resource's group)".
  @$pb.TagNumber(9)
  $core.String get version => $_getSZ(8);
  @$pb.TagNumber(9)
  set version($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearVersion() => clearField(9);

  /// The hash value of the storage version, the version this resource is
  /// converted to when written to the data store. Value must be treated
  /// as opaque by clients. Only equality comparison on the value is valid.
  /// This is an alpha feature and may change or be removed in the future.
  /// The field is populated by the apiserver only if the
  /// StorageVersionHash feature gate is enabled.
  /// This field will remain optional even if it graduates.
  /// +optional
  @$pb.TagNumber(10)
  $core.String get storageVersionHash => $_getSZ(9);
  @$pb.TagNumber(10)
  set storageVersionHash($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasStorageVersionHash() => $_has(9);
  @$pb.TagNumber(10)
  void clearStorageVersionHash() => clearField(10);
}

/// APIResourceList is a list of APIResource, it is used to expose the name of the
/// resources supported in a specific group and version, and if the resource
/// is namespaced.
class APIResourceList extends $pb.GeneratedMessage {
  factory APIResourceList({
    $core.String? groupVersion,
    $core.Iterable<APIResource>? resources,
  }) {
    final $result = create();
    if (groupVersion != null) {
      $result.groupVersion = groupVersion;
    }
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    return $result;
  }
  APIResourceList._() : super();
  factory APIResourceList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIResourceList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIResourceList', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'groupVersion', protoName: 'groupVersion')
    ..pc<APIResource>(2, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: APIResource.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIResourceList clone() => APIResourceList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIResourceList copyWith(void Function(APIResourceList) updates) => super.copyWith((message) => updates(message as APIResourceList)) as APIResourceList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIResourceList create() => APIResourceList._();
  APIResourceList createEmptyInstance() => create();
  static $pb.PbList<APIResourceList> createRepeated() => $pb.PbList<APIResourceList>();
  @$core.pragma('dart2js:noInline')
  static APIResourceList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIResourceList>(create);
  static APIResourceList? _defaultInstance;

  /// groupVersion is the group and version this APIResourceList is for.
  @$pb.TagNumber(1)
  $core.String get groupVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupVersion() => clearField(1);

  /// resources contains the name of the resources and if they are namespaced.
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<APIResource> get resources => $_getList(1);
}

///  APIVersions lists the versions that are available, to allow clients to
///  discover the API at /api, which is the root path of the legacy v1 API.
///
///  +protobuf.options.(gogoproto.goproto_stringer)=false
///  +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
class APIVersions extends $pb.GeneratedMessage {
  factory APIVersions({
    $core.Iterable<$core.String>? versions,
    $core.Iterable<ServerAddressByClientCIDR>? serverAddressByClientCIDRs,
  }) {
    final $result = create();
    if (versions != null) {
      $result.versions.addAll(versions);
    }
    if (serverAddressByClientCIDRs != null) {
      $result.serverAddressByClientCIDRs.addAll(serverAddressByClientCIDRs);
    }
    return $result;
  }
  APIVersions._() : super();
  factory APIVersions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIVersions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIVersions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'versions')
    ..pc<ServerAddressByClientCIDR>(2, _omitFieldNames ? '' : 'serverAddressByClientCIDRs', $pb.PbFieldType.PM, protoName: 'serverAddressByClientCIDRs', subBuilder: ServerAddressByClientCIDR.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIVersions clone() => APIVersions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIVersions copyWith(void Function(APIVersions) updates) => super.copyWith((message) => updates(message as APIVersions)) as APIVersions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIVersions create() => APIVersions._();
  APIVersions createEmptyInstance() => create();
  static $pb.PbList<APIVersions> createRepeated() => $pb.PbList<APIVersions>();
  @$core.pragma('dart2js:noInline')
  static APIVersions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIVersions>(create);
  static APIVersions? _defaultInstance;

  /// versions are the api versions that are available.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get versions => $_getList(0);

  /// a map of client CIDR to server address that is serving this group.
  /// This is to help clients reach servers in the most network-efficient way possible.
  /// Clients can use the appropriate server address as per the CIDR that they match.
  /// In case of multiple matches, clients should use the longest matching CIDR.
  /// The server returns only those CIDRs that it thinks that the client can match.
  /// For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP.
  /// Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<ServerAddressByClientCIDR> get serverAddressByClientCIDRs => $_getList(1);
}

/// ApplyOptions may be provided when applying an API object.
/// FieldManager is required for apply requests.
/// ApplyOptions is equivalent to PatchOptions. It is provided as a convenience with documentation
/// that speaks specifically to how the options fields relate to apply.
class ApplyOptions extends $pb.GeneratedMessage {
  factory ApplyOptions({
    $core.Iterable<$core.String>? dryRun,
    $core.bool? force,
    $core.String? fieldManager,
  }) {
    final $result = create();
    if (dryRun != null) {
      $result.dryRun.addAll(dryRun);
    }
    if (force != null) {
      $result.force = force;
    }
    if (fieldManager != null) {
      $result.fieldManager = fieldManager;
    }
    return $result;
  }
  ApplyOptions._() : super();
  factory ApplyOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ApplyOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ApplyOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aOB(2, _omitFieldNames ? '' : 'force')
    ..aOS(3, _omitFieldNames ? '' : 'fieldManager', protoName: 'fieldManager')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ApplyOptions clone() => ApplyOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ApplyOptions copyWith(void Function(ApplyOptions) updates) => super.copyWith((message) => updates(message as ApplyOptions)) as ApplyOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ApplyOptions create() => ApplyOptions._();
  ApplyOptions createEmptyInstance() => create();
  static $pb.PbList<ApplyOptions> createRepeated() => $pb.PbList<ApplyOptions>();
  @$core.pragma('dart2js:noInline')
  static ApplyOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ApplyOptions>(create);
  static ApplyOptions? _defaultInstance;

  /// When present, indicates that modifications should not be
  /// persisted. An invalid or unrecognized dryRun directive will
  /// result in an error response and no further processing of the
  /// request. Valid values are:
  /// - All: all dry run stages will be processed
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get dryRun => $_getList(0);

  /// Force is going to "force" Apply requests. It means user will
  /// re-acquire conflicting fields owned by other people.
  @$pb.TagNumber(2)
  $core.bool get force => $_getBF(1);
  @$pb.TagNumber(2)
  set force($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasForce() => $_has(1);
  @$pb.TagNumber(2)
  void clearForce() => clearField(2);

  /// fieldManager is a name associated with the actor or entity
  /// that is making these changes. The value must be less than or
  /// 128 characters long, and only contain printable characters,
  /// as defined by https://golang.org/pkg/unicode/#IsPrint. This
  /// field is required.
  @$pb.TagNumber(3)
  $core.String get fieldManager => $_getSZ(2);
  @$pb.TagNumber(3)
  set fieldManager($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldManager() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldManager() => clearField(3);
}

///  Condition contains details for one aspect of the current state of this API Resource.
///  ---
///  This struct is intended for direct use as an array at the field path .status.conditions.  For example,
///
///  	type FooStatus struct{
///  	    // Represents the observations of a foo's current state.
///  	    // Known .status.conditions.type are: "Available", "Progressing", and "Degraded"
///  	    // +patchMergeKey=type
///  	    // +patchStrategy=merge
///  	    // +listType=map
///  	    // +listMapKey=type
///  	    Conditions []metav1.Condition `json:"conditions,omitempty" patchStrategy:"merge" patchMergeKey:"type" protobuf:"bytes,1,rep,name=conditions"`
///
///  	    // other fields
///  	}
class Condition extends $pb.GeneratedMessage {
  factory Condition({
    $core.String? type,
    $core.String? status,
    $fixnum.Int64? observedGeneration,
    Time? lastTransitionTime,
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
  Condition._() : super();
  factory Condition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Condition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Condition', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aInt64(3, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..aOM<Time>(4, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: Time.create)
    ..aOS(5, _omitFieldNames ? '' : 'reason')
    ..aOS(6, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Condition clone() => Condition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Condition copyWith(void Function(Condition) updates) => super.copyWith((message) => updates(message as Condition)) as Condition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Condition create() => Condition._();
  Condition createEmptyInstance() => create();
  static $pb.PbList<Condition> createRepeated() => $pb.PbList<Condition>();
  @$core.pragma('dart2js:noInline')
  static Condition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Condition>(create);
  static Condition? _defaultInstance;

  /// type of condition in CamelCase or in foo.example.com/CamelCase.
  /// ---
  /// Many .condition.type values are consistent across resources like Available, but because arbitrary conditions can be
  /// useful (see .node.status.conditions), the ability to deconflict is important.
  /// The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
  /// +required
  /// +kubebuilder:validation:Required
  /// +kubebuilder:validation:Pattern=`^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$`
  /// +kubebuilder:validation:MaxLength=316
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// status of the condition, one of True, False, Unknown.
  /// +required
  /// +kubebuilder:validation:Required
  /// +kubebuilder:validation:Enum=True;False;Unknown
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// observedGeneration represents the .metadata.generation that the condition was set based upon.
  /// For instance, if .metadata.generation is currently 12, but the .status.conditions[x].observedGeneration is 9, the condition is out of date
  /// with respect to the current state of the instance.
  /// +optional
  /// +kubebuilder:validation:Minimum=0
  @$pb.TagNumber(3)
  $fixnum.Int64 get observedGeneration => $_getI64(2);
  @$pb.TagNumber(3)
  set observedGeneration($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasObservedGeneration() => $_has(2);
  @$pb.TagNumber(3)
  void clearObservedGeneration() => clearField(3);

  /// lastTransitionTime is the last time the condition transitioned from one status to another.
  /// This should be when the underlying condition changed.  If that is not known, then using the time when the API field changed is acceptable.
  /// +required
  /// +kubebuilder:validation:Required
  /// +kubebuilder:validation:Type=string
  /// +kubebuilder:validation:Format=date-time
  @$pb.TagNumber(4)
  Time get lastTransitionTime => $_getN(3);
  @$pb.TagNumber(4)
  set lastTransitionTime(Time v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastTransitionTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastTransitionTime() => clearField(4);
  @$pb.TagNumber(4)
  Time ensureLastTransitionTime() => $_ensure(3);

  /// reason contains a programmatic identifier indicating the reason for the condition's last transition.
  /// Producers of specific condition types may define expected values and meanings for this field,
  /// and whether the values are considered a guaranteed API.
  /// The value should be a CamelCase string.
  /// This field may not be empty.
  /// +required
  /// +kubebuilder:validation:Required
  /// +kubebuilder:validation:MaxLength=1024
  /// +kubebuilder:validation:MinLength=1
  /// +kubebuilder:validation:Pattern=`^[A-Za-z]([A-Za-z0-9_,:]*[A-Za-z0-9_])?$`
  @$pb.TagNumber(5)
  $core.String get reason => $_getSZ(4);
  @$pb.TagNumber(5)
  set reason($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearReason() => clearField(5);

  /// message is a human readable message indicating details about the transition.
  /// This may be an empty string.
  /// +required
  /// +kubebuilder:validation:Required
  /// +kubebuilder:validation:MaxLength=32768
  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(5);
  @$pb.TagNumber(6)
  set message($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessage() => clearField(6);
}

/// CreateOptions may be provided when creating an API object.
class CreateOptions extends $pb.GeneratedMessage {
  factory CreateOptions({
    $core.Iterable<$core.String>? dryRun,
    $core.String? fieldManager,
    $core.String? fieldValidation,
  }) {
    final $result = create();
    if (dryRun != null) {
      $result.dryRun.addAll(dryRun);
    }
    if (fieldManager != null) {
      $result.fieldManager = fieldManager;
    }
    if (fieldValidation != null) {
      $result.fieldValidation = fieldValidation;
    }
    return $result;
  }
  CreateOptions._() : super();
  factory CreateOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CreateOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aOS(3, _omitFieldNames ? '' : 'fieldManager', protoName: 'fieldManager')
    ..aOS(4, _omitFieldNames ? '' : 'fieldValidation', protoName: 'fieldValidation')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateOptions clone() => CreateOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateOptions copyWith(void Function(CreateOptions) updates) => super.copyWith((message) => updates(message as CreateOptions)) as CreateOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CreateOptions create() => CreateOptions._();
  CreateOptions createEmptyInstance() => create();
  static $pb.PbList<CreateOptions> createRepeated() => $pb.PbList<CreateOptions>();
  @$core.pragma('dart2js:noInline')
  static CreateOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateOptions>(create);
  static CreateOptions? _defaultInstance;

  /// When present, indicates that modifications should not be
  /// persisted. An invalid or unrecognized dryRun directive will
  /// result in an error response and no further processing of the
  /// request. Valid values are:
  /// - All: all dry run stages will be processed
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get dryRun => $_getList(0);

  /// fieldManager is a name associated with the actor or entity
  /// that is making these changes. The value must be less than or
  /// 128 characters long, and only contain printable characters,
  /// as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get fieldManager => $_getSZ(1);
  @$pb.TagNumber(3)
  set fieldManager($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldManager() => $_has(1);
  @$pb.TagNumber(3)
  void clearFieldManager() => clearField(3);

  /// fieldValidation instructs the server on how to handle
  /// objects in the request (POST/PUT/PATCH) containing unknown
  /// or duplicate fields. Valid values are:
  /// - Ignore: This will ignore any unknown fields that are silently
  /// dropped from the object, and will ignore all but the last duplicate
  /// field that the decoder encounters. This is the default behavior
  /// prior to v1.23.
  /// - Warn: This will send a warning via the standard warning response
  /// header for each unknown field that is dropped from the object, and
  /// for each duplicate field that is encountered. The request will
  /// still succeed if there are no other errors, and will only persist
  /// the last of any duplicate fields. This is the default in v1.23+
  /// - Strict: This will fail the request with a BadRequest error if
  /// any unknown fields would be dropped from the object, or if any
  /// duplicate fields are present. The error returned from the server
  /// will contain all unknown and duplicate fields encountered.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get fieldValidation => $_getSZ(2);
  @$pb.TagNumber(4)
  set fieldValidation($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasFieldValidation() => $_has(2);
  @$pb.TagNumber(4)
  void clearFieldValidation() => clearField(4);
}

/// DeleteOptions may be provided when deleting an API object.
class DeleteOptions extends $pb.GeneratedMessage {
  factory DeleteOptions({
    $fixnum.Int64? gracePeriodSeconds,
    Preconditions? preconditions,
    $core.bool? orphanDependents,
    $core.String? propagationPolicy,
    $core.Iterable<$core.String>? dryRun,
  }) {
    final $result = create();
    if (gracePeriodSeconds != null) {
      $result.gracePeriodSeconds = gracePeriodSeconds;
    }
    if (preconditions != null) {
      $result.preconditions = preconditions;
    }
    if (orphanDependents != null) {
      $result.orphanDependents = orphanDependents;
    }
    if (propagationPolicy != null) {
      $result.propagationPolicy = propagationPolicy;
    }
    if (dryRun != null) {
      $result.dryRun.addAll(dryRun);
    }
    return $result;
  }
  DeleteOptions._() : super();
  factory DeleteOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DeleteOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'gracePeriodSeconds', protoName: 'gracePeriodSeconds')
    ..aOM<Preconditions>(2, _omitFieldNames ? '' : 'preconditions', subBuilder: Preconditions.create)
    ..aOB(3, _omitFieldNames ? '' : 'orphanDependents', protoName: 'orphanDependents')
    ..aOS(4, _omitFieldNames ? '' : 'propagationPolicy', protoName: 'propagationPolicy')
    ..pPS(5, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteOptions clone() => DeleteOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteOptions copyWith(void Function(DeleteOptions) updates) => super.copyWith((message) => updates(message as DeleteOptions)) as DeleteOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DeleteOptions create() => DeleteOptions._();
  DeleteOptions createEmptyInstance() => create();
  static $pb.PbList<DeleteOptions> createRepeated() => $pb.PbList<DeleteOptions>();
  @$core.pragma('dart2js:noInline')
  static DeleteOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteOptions>(create);
  static DeleteOptions? _defaultInstance;

  /// The duration in seconds before the object should be deleted. Value must be non-negative integer.
  /// The value zero indicates delete immediately. If this value is nil, the default grace period for the
  /// specified type will be used.
  /// Defaults to a per object value if not specified. zero means delete immediately.
  /// +optional
  @$pb.TagNumber(1)
  $fixnum.Int64 get gracePeriodSeconds => $_getI64(0);
  @$pb.TagNumber(1)
  set gracePeriodSeconds($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGracePeriodSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearGracePeriodSeconds() => clearField(1);

  /// Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be
  /// returned.
  /// +k8s:conversion-gen=false
  /// +optional
  @$pb.TagNumber(2)
  Preconditions get preconditions => $_getN(1);
  @$pb.TagNumber(2)
  set preconditions(Preconditions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPreconditions() => $_has(1);
  @$pb.TagNumber(2)
  void clearPreconditions() => clearField(2);
  @$pb.TagNumber(2)
  Preconditions ensurePreconditions() => $_ensure(1);

  /// Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7.
  /// Should the dependent objects be orphaned. If true/false, the "orphan"
  /// finalizer will be added to/removed from the object's finalizers list.
  /// Either this field or PropagationPolicy may be set, but not both.
  /// +optional
  @$pb.TagNumber(3)
  $core.bool get orphanDependents => $_getBF(2);
  @$pb.TagNumber(3)
  set orphanDependents($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOrphanDependents() => $_has(2);
  @$pb.TagNumber(3)
  void clearOrphanDependents() => clearField(3);

  /// Whether and how garbage collection will be performed.
  /// Either this field or OrphanDependents may be set, but not both.
  /// The default policy is decided by the existing finalizer set in the
  /// metadata.finalizers and the resource-specific default policy.
  /// Acceptable values are: 'Orphan' - orphan the dependents; 'Background' -
  /// allow the garbage collector to delete the dependents in the background;
  /// 'Foreground' - a cascading policy that deletes all dependents in the
  /// foreground.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get propagationPolicy => $_getSZ(3);
  @$pb.TagNumber(4)
  set propagationPolicy($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPropagationPolicy() => $_has(3);
  @$pb.TagNumber(4)
  void clearPropagationPolicy() => clearField(4);

  /// When present, indicates that modifications should not be
  /// persisted. An invalid or unrecognized dryRun directive will
  /// result in an error response and no further processing of the
  /// request. Valid values are:
  /// - All: all dry run stages will be processed
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(5)
  $core.List<$core.String> get dryRun => $_getList(4);
}

/// Duration is a wrapper around time.Duration which supports correct
/// marshaling to YAML and JSON. In particular, it marshals into strings, which
/// can be used as map keys in json.
class Duration extends $pb.GeneratedMessage {
  factory Duration({
    $fixnum.Int64? duration,
  }) {
    final $result = create();
    if (duration != null) {
      $result.duration = duration;
    }
    return $result;
  }
  Duration._() : super();
  factory Duration.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Duration.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Duration', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'duration')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Duration clone() => Duration()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Duration copyWith(void Function(Duration) updates) => super.copyWith((message) => updates(message as Duration)) as Duration;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Duration create() => Duration._();
  Duration createEmptyInstance() => create();
  static $pb.PbList<Duration> createRepeated() => $pb.PbList<Duration>();
  @$core.pragma('dart2js:noInline')
  static Duration getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Duration>(create);
  static Duration? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get duration => $_getI64(0);
  @$pb.TagNumber(1)
  set duration($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDuration() => $_has(0);
  @$pb.TagNumber(1)
  void clearDuration() => clearField(1);
}

///  FieldsV1 stores a set of fields in a data structure like a Trie, in JSON format.
///
///  Each key is either a '.' representing the field itself, and will always map to an empty set,
///  or a string representing a sub-field or item. The string will follow one of these four formats:
///  'f:<name>', where <name> is the name of a field in a struct, or key in a map
///  'v:<value>', where <value> is the exact json formatted value of a list item
///  'i:<index>', where <index> is position of a item in a list
///  'k:<keys>', where <keys> is a map of  a list item's key fields to their unique values
///  If a key maps to an empty Fields value, the field that key represents is part of the set.
///
///  The exact format is defined in sigs.k8s.io/structured-merge-diff
///  +protobuf.options.(gogoproto.goproto_stringer)=false
class FieldsV1 extends $pb.GeneratedMessage {
  factory FieldsV1({
    $core.List<$core.int>? raw,
  }) {
    final $result = create();
    if (raw != null) {
      $result.raw = raw;
    }
    return $result;
  }
  FieldsV1._() : super();
  factory FieldsV1.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FieldsV1.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'FieldsV1', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'Raw', $pb.PbFieldType.OY, protoName: 'Raw')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FieldsV1 clone() => FieldsV1()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FieldsV1 copyWith(void Function(FieldsV1) updates) => super.copyWith((message) => updates(message as FieldsV1)) as FieldsV1;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static FieldsV1 create() => FieldsV1._();
  FieldsV1 createEmptyInstance() => create();
  static $pb.PbList<FieldsV1> createRepeated() => $pb.PbList<FieldsV1>();
  @$core.pragma('dart2js:noInline')
  static FieldsV1 getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FieldsV1>(create);
  static FieldsV1? _defaultInstance;

  /// Raw is the underlying serialization of this object.
  @$pb.TagNumber(1)
  $core.List<$core.int> get raw => $_getN(0);
  @$pb.TagNumber(1)
  set raw($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRaw() => $_has(0);
  @$pb.TagNumber(1)
  void clearRaw() => clearField(1);
}

/// GetOptions is the standard query options to the standard REST get call.
class GetOptions extends $pb.GeneratedMessage {
  factory GetOptions({
    $core.String? resourceVersion,
  }) {
    final $result = create();
    if (resourceVersion != null) {
      $result.resourceVersion = resourceVersion;
    }
    return $result;
  }
  GetOptions._() : super();
  factory GetOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GetOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'resourceVersion', protoName: 'resourceVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetOptions clone() => GetOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetOptions copyWith(void Function(GetOptions) updates) => super.copyWith((message) => updates(message as GetOptions)) as GetOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetOptions create() => GetOptions._();
  GetOptions createEmptyInstance() => create();
  static $pb.PbList<GetOptions> createRepeated() => $pb.PbList<GetOptions>();
  @$core.pragma('dart2js:noInline')
  static GetOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetOptions>(create);
  static GetOptions? _defaultInstance;

  ///  resourceVersion sets a constraint on what resource versions a request may be served from.
  ///  See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for
  ///  details.
  ///
  ///  Defaults to unset
  ///  +optional
  @$pb.TagNumber(1)
  $core.String get resourceVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set resourceVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResourceVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearResourceVersion() => clearField(1);
}

///  GroupKind specifies a Group and a Kind, but does not force a version.  This is useful for identifying
///  concepts during lookup stages without having partially valid types
///
///  +protobuf.options.(gogoproto.goproto_stringer)=false
class GroupKind extends $pb.GeneratedMessage {
  factory GroupKind({
    $core.String? group,
    $core.String? kind,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    return $result;
  }
  GroupKind._() : super();
  factory GroupKind.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupKind.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupKind', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupKind clone() => GroupKind()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupKind copyWith(void Function(GroupKind) updates) => super.copyWith((message) => updates(message as GroupKind)) as GroupKind;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupKind create() => GroupKind._();
  GroupKind createEmptyInstance() => create();
  static $pb.PbList<GroupKind> createRepeated() => $pb.PbList<GroupKind>();
  @$core.pragma('dart2js:noInline')
  static GroupKind getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupKind>(create);
  static GroupKind? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);
}

///  GroupResource specifies a Group and a Resource, but does not force a version.  This is useful for identifying
///  concepts during lookup stages without having partially valid types
///
///  +protobuf.options.(gogoproto.goproto_stringer)=false
class GroupResource extends $pb.GeneratedMessage {
  factory GroupResource({
    $core.String? group,
    $core.String? resource,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  GroupResource._() : super();
  factory GroupResource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupResource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'resource')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupResource clone() => GroupResource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupResource copyWith(void Function(GroupResource) updates) => super.copyWith((message) => updates(message as GroupResource)) as GroupResource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupResource create() => GroupResource._();
  GroupResource createEmptyInstance() => create();
  static $pb.PbList<GroupResource> createRepeated() => $pb.PbList<GroupResource>();
  @$core.pragma('dart2js:noInline')
  static GroupResource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupResource>(create);
  static GroupResource? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get resource => $_getSZ(1);
  @$pb.TagNumber(2)
  set resource($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResource() => $_has(1);
  @$pb.TagNumber(2)
  void clearResource() => clearField(2);
}

///  GroupVersion contains the "group" and the "version", which uniquely identifies the API.
///
///  +protobuf.options.(gogoproto.goproto_stringer)=false
class GroupVersion extends $pb.GeneratedMessage {
  factory GroupVersion({
    $core.String? group,
    $core.String? version,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  GroupVersion._() : super();
  factory GroupVersion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupVersion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupVersion', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupVersion clone() => GroupVersion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupVersion copyWith(void Function(GroupVersion) updates) => super.copyWith((message) => updates(message as GroupVersion)) as GroupVersion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupVersion create() => GroupVersion._();
  GroupVersion createEmptyInstance() => create();
  static $pb.PbList<GroupVersion> createRepeated() => $pb.PbList<GroupVersion>();
  @$core.pragma('dart2js:noInline')
  static GroupVersion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupVersion>(create);
  static GroupVersion? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

/// GroupVersion contains the "group/version" and "version" string of a version.
/// It is made a struct to keep extensibility.
class GroupVersionForDiscovery extends $pb.GeneratedMessage {
  factory GroupVersionForDiscovery({
    $core.String? groupVersion,
    $core.String? version,
  }) {
    final $result = create();
    if (groupVersion != null) {
      $result.groupVersion = groupVersion;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  GroupVersionForDiscovery._() : super();
  factory GroupVersionForDiscovery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupVersionForDiscovery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupVersionForDiscovery', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'groupVersion', protoName: 'groupVersion')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupVersionForDiscovery clone() => GroupVersionForDiscovery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupVersionForDiscovery copyWith(void Function(GroupVersionForDiscovery) updates) => super.copyWith((message) => updates(message as GroupVersionForDiscovery)) as GroupVersionForDiscovery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupVersionForDiscovery create() => GroupVersionForDiscovery._();
  GroupVersionForDiscovery createEmptyInstance() => create();
  static $pb.PbList<GroupVersionForDiscovery> createRepeated() => $pb.PbList<GroupVersionForDiscovery>();
  @$core.pragma('dart2js:noInline')
  static GroupVersionForDiscovery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupVersionForDiscovery>(create);
  static GroupVersionForDiscovery? _defaultInstance;

  /// groupVersion specifies the API group and version in the form "group/version"
  @$pb.TagNumber(1)
  $core.String get groupVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroupVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupVersion() => clearField(1);

  /// version specifies the version in the form of "version". This is to save
  /// the clients the trouble of splitting the GroupVersion.
  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);
}

///  GroupVersionKind unambiguously identifies a kind.  It doesn't anonymously include GroupVersion
///  to avoid automatic coercion.  It doesn't use a GroupVersion to avoid custom marshalling
///
///  +protobuf.options.(gogoproto.goproto_stringer)=false
class GroupVersionKind extends $pb.GeneratedMessage {
  factory GroupVersionKind({
    $core.String? group,
    $core.String? version,
    $core.String? kind,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (version != null) {
      $result.version = version;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    return $result;
  }
  GroupVersionKind._() : super();
  factory GroupVersionKind.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GroupVersionKind.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupVersionKind', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'version')
    ..aOS(3, _omitFieldNames ? '' : 'kind')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GroupVersionKind clone() => GroupVersionKind()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GroupVersionKind copyWith(void Function(GroupVersionKind) updates) => super.copyWith((message) => updates(message as GroupVersionKind)) as GroupVersionKind;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GroupVersionKind create() => GroupVersionKind._();
  GroupVersionKind createEmptyInstance() => create();
  static $pb.PbList<GroupVersionKind> createRepeated() => $pb.PbList<GroupVersionKind>();
  @$core.pragma('dart2js:noInline')
  static GroupVersionKind getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GroupVersionKind>(create);
  static GroupVersionKind? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get kind => $_getSZ(2);
  @$pb.TagNumber(3)
  set kind($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => clearField(3);
}

///  GroupVersionResource unambiguously identifies a resource.  It doesn't anonymously include GroupVersion
///  to avoid automatic coercion.  It doesn't use a GroupVersion to avoid custom marshalling
///
///  +protobuf.options.(gogoproto.goproto_stringer)=false
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'GroupVersionResource', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
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

  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get version => $_getSZ(1);
  @$pb.TagNumber(2)
  set version($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVersion() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get resource => $_getSZ(2);
  @$pb.TagNumber(3)
  set resource($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(2);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);
}

/// A label selector is a label query over a set of resources. The result of matchLabels and
/// matchExpressions are ANDed. An empty label selector matches all objects. A null
/// label selector matches no objects.
/// +structType=atomic
class LabelSelector extends $pb.GeneratedMessage {
  factory LabelSelector({
    $core.Map<$core.String, $core.String>? matchLabels,
    $core.Iterable<LabelSelectorRequirement>? matchExpressions,
  }) {
    final $result = create();
    if (matchLabels != null) {
      $result.matchLabels.addAll(matchLabels);
    }
    if (matchExpressions != null) {
      $result.matchExpressions.addAll(matchExpressions);
    }
    return $result;
  }
  LabelSelector._() : super();
  factory LabelSelector.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelSelector.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabelSelector', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'matchLabels', protoName: 'matchLabels', entryClassName: 'LabelSelector.MatchLabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('apimachinery.pkg.apis.meta.v1'))
    ..pc<LabelSelectorRequirement>(2, _omitFieldNames ? '' : 'matchExpressions', $pb.PbFieldType.PM, protoName: 'matchExpressions', subBuilder: LabelSelectorRequirement.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelSelector clone() => LabelSelector()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelSelector copyWith(void Function(LabelSelector) updates) => super.copyWith((message) => updates(message as LabelSelector)) as LabelSelector;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelSelector create() => LabelSelector._();
  LabelSelector createEmptyInstance() => create();
  static $pb.PbList<LabelSelector> createRepeated() => $pb.PbList<LabelSelector>();
  @$core.pragma('dart2js:noInline')
  static LabelSelector getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelSelector>(create);
  static LabelSelector? _defaultInstance;

  /// matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels
  /// map is equivalent to an element of matchExpressions, whose key field is "key", the
  /// operator is "In", and the values array contains only "value". The requirements are ANDed.
  /// +optional
  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get matchLabels => $_getMap(0);

  /// matchExpressions is a list of label selector requirements. The requirements are ANDed.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<LabelSelectorRequirement> get matchExpressions => $_getList(1);
}

/// A label selector requirement is a selector that contains values, a key, and an operator that
/// relates the key and values.
class LabelSelectorRequirement extends $pb.GeneratedMessage {
  factory LabelSelectorRequirement({
    $core.String? key,
    $core.String? operator,
    $core.Iterable<$core.String>? values,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (operator != null) {
      $result.operator = operator;
    }
    if (values != null) {
      $result.values.addAll(values);
    }
    return $result;
  }
  LabelSelectorRequirement._() : super();
  factory LabelSelectorRequirement.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LabelSelectorRequirement.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LabelSelectorRequirement', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'operator')
    ..pPS(3, _omitFieldNames ? '' : 'values')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LabelSelectorRequirement clone() => LabelSelectorRequirement()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LabelSelectorRequirement copyWith(void Function(LabelSelectorRequirement) updates) => super.copyWith((message) => updates(message as LabelSelectorRequirement)) as LabelSelectorRequirement;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LabelSelectorRequirement create() => LabelSelectorRequirement._();
  LabelSelectorRequirement createEmptyInstance() => create();
  static $pb.PbList<LabelSelectorRequirement> createRepeated() => $pb.PbList<LabelSelectorRequirement>();
  @$core.pragma('dart2js:noInline')
  static LabelSelectorRequirement getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LabelSelectorRequirement>(create);
  static LabelSelectorRequirement? _defaultInstance;

  /// key is the label key that the selector applies to.
  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  /// operator represents a key's relationship to a set of values.
  /// Valid operators are In, NotIn, Exists and DoesNotExist.
  @$pb.TagNumber(2)
  $core.String get operator => $_getSZ(1);
  @$pb.TagNumber(2)
  set operator($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperator() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperator() => clearField(2);

  /// values is an array of string values. If the operator is In or NotIn,
  /// the values array must be non-empty. If the operator is Exists or DoesNotExist,
  /// the values array must be empty. This array is replaced during a strategic
  /// merge patch.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$core.String> get values => $_getList(2);
}

/// List holds a list of objects, which may not be known by the server.
class List_ extends $pb.GeneratedMessage {
  factory List_({
    ListMeta? metadata,
    $core.Iterable<$0.RawExtension>? items,
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
  List_._() : super();
  factory List_.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory List_.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'List', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOM<ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: ListMeta.create)
    ..pc<$0.RawExtension>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: $0.RawExtension.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  List_ clone() => List_()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  List_ copyWith(void Function(List_) updates) => super.copyWith((message) => updates(message as List_)) as List_;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static List_ create() => List_._();
  List_ createEmptyInstance() => create();
  static $pb.PbList<List_> createRepeated() => $pb.PbList<List_>();
  @$core.pragma('dart2js:noInline')
  static List_ getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<List_>(create);
  static List_? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// +optional
  @$pb.TagNumber(1)
  ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  ListMeta ensureMetadata() => $_ensure(0);

  /// List of objects
  @$pb.TagNumber(2)
  $core.List<$0.RawExtension> get items => $_getList(1);
}

/// ListMeta describes metadata that synthetic resources must have, including lists and
/// various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
class ListMeta extends $pb.GeneratedMessage {
  factory ListMeta({
    $core.String? selfLink,
    $core.String? resourceVersion,
    $core.String? continue_3,
    $fixnum.Int64? remainingItemCount,
  }) {
    final $result = create();
    if (selfLink != null) {
      $result.selfLink = selfLink;
    }
    if (resourceVersion != null) {
      $result.resourceVersion = resourceVersion;
    }
    if (continue_3 != null) {
      $result.continue_3 = continue_3;
    }
    if (remainingItemCount != null) {
      $result.remainingItemCount = remainingItemCount;
    }
    return $result;
  }
  ListMeta._() : super();
  factory ListMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListMeta', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'selfLink', protoName: 'selfLink')
    ..aOS(2, _omitFieldNames ? '' : 'resourceVersion', protoName: 'resourceVersion')
    ..aOS(3, _omitFieldNames ? '' : 'continue')
    ..aInt64(4, _omitFieldNames ? '' : 'remainingItemCount', protoName: 'remainingItemCount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListMeta clone() => ListMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListMeta copyWith(void Function(ListMeta) updates) => super.copyWith((message) => updates(message as ListMeta)) as ListMeta;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListMeta create() => ListMeta._();
  ListMeta createEmptyInstance() => create();
  static $pb.PbList<ListMeta> createRepeated() => $pb.PbList<ListMeta>();
  @$core.pragma('dart2js:noInline')
  static ListMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListMeta>(create);
  static ListMeta? _defaultInstance;

  /// Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get selfLink => $_getSZ(0);
  @$pb.TagNumber(1)
  set selfLink($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelfLink() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelfLink() => clearField(1);

  /// String that identifies the server's internal version of this object that
  /// can be used by clients to determine when objects have changed.
  /// Value must be treated as opaque by clients and passed unmodified back to the server.
  /// Populated by the system.
  /// Read-only.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  /// +optional
  @$pb.TagNumber(2)
  $core.String get resourceVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set resourceVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResourceVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourceVersion() => clearField(2);

  /// continue may be set if the user set a limit on the number of items returned, and indicates that
  /// the server has more data available. The value is opaque and may be used to issue another request
  /// to the endpoint that served this list to retrieve the next set of available objects. Continuing a
  /// consistent list may not be possible if the server configuration has changed or more than a few
  /// minutes have passed. The resourceVersion field returned when using this continue value will be
  /// identical to the value in the first response, unless you have received this token from an error
  /// message.
  @$pb.TagNumber(3)
  $core.String get continue_3 => $_getSZ(2);
  @$pb.TagNumber(3)
  set continue_3($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContinue_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearContinue_3() => clearField(3);

  /// remainingItemCount is the number of subsequent items in the list which are not included in this
  /// list response. If the list request contained label or field selectors, then the number of
  /// remaining items is unknown and the field will be left unset and omitted during serialization.
  /// If the list is complete (either because it is not chunking or because this is the last chunk),
  /// then there are no more remaining items and this field will be left unset and omitted during
  /// serialization.
  /// Servers older than v1.15 do not set this field.
  /// The intended use of the remainingItemCount is *estimating* the size of a collection. Clients
  /// should not rely on the remainingItemCount to be set or to be exact.
  /// +optional
  @$pb.TagNumber(4)
  $fixnum.Int64 get remainingItemCount => $_getI64(3);
  @$pb.TagNumber(4)
  set remainingItemCount($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemainingItemCount() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemainingItemCount() => clearField(4);
}

/// ListOptions is the query options to a standard REST list call.
class ListOptions extends $pb.GeneratedMessage {
  factory ListOptions({
    $core.String? labelSelector,
    $core.String? fieldSelector,
    $core.bool? watch,
    $core.String? resourceVersion,
    $fixnum.Int64? timeoutSeconds,
    $fixnum.Int64? limit,
    $core.String? continue_8,
    $core.bool? allowWatchBookmarks,
    $core.String? resourceVersionMatch,
    $core.bool? sendInitialEvents,
  }) {
    final $result = create();
    if (labelSelector != null) {
      $result.labelSelector = labelSelector;
    }
    if (fieldSelector != null) {
      $result.fieldSelector = fieldSelector;
    }
    if (watch != null) {
      $result.watch = watch;
    }
    if (resourceVersion != null) {
      $result.resourceVersion = resourceVersion;
    }
    if (timeoutSeconds != null) {
      $result.timeoutSeconds = timeoutSeconds;
    }
    if (limit != null) {
      $result.limit = limit;
    }
    if (continue_8 != null) {
      $result.continue_8 = continue_8;
    }
    if (allowWatchBookmarks != null) {
      $result.allowWatchBookmarks = allowWatchBookmarks;
    }
    if (resourceVersionMatch != null) {
      $result.resourceVersionMatch = resourceVersionMatch;
    }
    if (sendInitialEvents != null) {
      $result.sendInitialEvents = sendInitialEvents;
    }
    return $result;
  }
  ListOptions._() : super();
  factory ListOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ListOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'labelSelector', protoName: 'labelSelector')
    ..aOS(2, _omitFieldNames ? '' : 'fieldSelector', protoName: 'fieldSelector')
    ..aOB(3, _omitFieldNames ? '' : 'watch')
    ..aOS(4, _omitFieldNames ? '' : 'resourceVersion', protoName: 'resourceVersion')
    ..aInt64(5, _omitFieldNames ? '' : 'timeoutSeconds', protoName: 'timeoutSeconds')
    ..aInt64(7, _omitFieldNames ? '' : 'limit')
    ..aOS(8, _omitFieldNames ? '' : 'continue')
    ..aOB(9, _omitFieldNames ? '' : 'allowWatchBookmarks', protoName: 'allowWatchBookmarks')
    ..aOS(10, _omitFieldNames ? '' : 'resourceVersionMatch', protoName: 'resourceVersionMatch')
    ..aOB(11, _omitFieldNames ? '' : 'sendInitialEvents', protoName: 'sendInitialEvents')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListOptions clone() => ListOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListOptions copyWith(void Function(ListOptions) updates) => super.copyWith((message) => updates(message as ListOptions)) as ListOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ListOptions create() => ListOptions._();
  ListOptions createEmptyInstance() => create();
  static $pb.PbList<ListOptions> createRepeated() => $pb.PbList<ListOptions>();
  @$core.pragma('dart2js:noInline')
  static ListOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListOptions>(create);
  static ListOptions? _defaultInstance;

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

  /// A selector to restrict the list of returned objects by their fields.
  /// Defaults to everything.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get fieldSelector => $_getSZ(1);
  @$pb.TagNumber(2)
  set fieldSelector($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldSelector() => clearField(2);

  /// Watch for changes to the described resources and return them as a stream of
  /// add, update, and remove notifications. Specify resourceVersion.
  /// +optional
  @$pb.TagNumber(3)
  $core.bool get watch => $_getBF(2);
  @$pb.TagNumber(3)
  set watch($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWatch() => $_has(2);
  @$pb.TagNumber(3)
  void clearWatch() => clearField(3);

  ///  resourceVersion sets a constraint on what resource versions a request may be served from.
  ///  See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for
  ///  details.
  ///
  ///  Defaults to unset
  ///  +optional
  @$pb.TagNumber(4)
  $core.String get resourceVersion => $_getSZ(3);
  @$pb.TagNumber(4)
  set resourceVersion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasResourceVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearResourceVersion() => clearField(4);

  /// Timeout for the list/watch call.
  /// This limits the duration of the call, regardless of any activity or inactivity.
  /// +optional
  @$pb.TagNumber(5)
  $fixnum.Int64 get timeoutSeconds => $_getI64(4);
  @$pb.TagNumber(5)
  set timeoutSeconds($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeoutSeconds() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeoutSeconds() => clearField(5);

  ///  limit is a maximum number of responses to return for a list call. If more items exist, the
  ///  server will set the `continue` field on the list metadata to a value that can be used with the
  ///  same initial query to retrieve the next set of results. Setting a limit may return fewer than
  ///  the requested amount of items (up to zero items) in the event all requested objects are
  ///  filtered out and clients should only use the presence of the continue field to determine whether
  ///  more results are available. Servers may choose not to support the limit argument and will return
  ///  all of the available results. If limit is specified and the continue field is empty, clients may
  ///  assume that no more results are available. This field is not supported if watch is true.
  ///
  ///  The server guarantees that the objects returned when using continue will be identical to issuing
  ///  a single list call without a limit - that is, no objects created, modified, or deleted after the
  ///  first request is issued will be included in any subsequent continued requests. This is sometimes
  ///  referred to as a consistent snapshot, and ensures that a client that is using limit to receive
  ///  smaller chunks of a very large result can ensure they see all possible objects. If objects are
  ///  updated during a chunked list the version of the object that was present at the time the first list
  ///  result was calculated is returned.
  @$pb.TagNumber(7)
  $fixnum.Int64 get limit => $_getI64(5);
  @$pb.TagNumber(7)
  set limit($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasLimit() => $_has(5);
  @$pb.TagNumber(7)
  void clearLimit() => clearField(7);

  ///  The continue option should be set when retrieving more results from the server. Since this value is
  ///  server defined, clients may only use the continue value from a previous query result with identical
  ///  query parameters (except for the value of continue) and the server may reject a continue value it
  ///  does not recognize. If the specified continue value is no longer valid whether due to expiration
  ///  (generally five to fifteen minutes) or a configuration change on the server, the server will
  ///  respond with a 410 ResourceExpired error together with a continue token. If the client needs a
  ///  consistent list, it must restart their list without the continue field. Otherwise, the client may
  ///  send another list request with the token received with the 410 error, the server will respond with
  ///  a list starting from the next key, but from the latest snapshot, which is inconsistent from the
  ///  previous list results - objects that are created, modified, or deleted after the first list request
  ///  will be included in the response, as long as their keys are after the "next key".
  ///
  ///  This field is not supported when watch is true. Clients may start a watch from the last
  ///  resourceVersion value returned by the server and not miss any modifications.
  @$pb.TagNumber(8)
  $core.String get continue_8 => $_getSZ(6);
  @$pb.TagNumber(8)
  set continue_8($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasContinue_8() => $_has(6);
  @$pb.TagNumber(8)
  void clearContinue_8() => clearField(8);

  /// allowWatchBookmarks requests watch events with type "BOOKMARK".
  /// Servers that do not implement bookmarks may ignore this flag and
  /// bookmarks are sent at the server's discretion. Clients should not
  /// assume bookmarks are returned at any specific interval, nor may they
  /// assume the server will send any BOOKMARK event during a session.
  /// If this is not a watch, this field is ignored.
  /// +optional
  @$pb.TagNumber(9)
  $core.bool get allowWatchBookmarks => $_getBF(7);
  @$pb.TagNumber(9)
  set allowWatchBookmarks($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasAllowWatchBookmarks() => $_has(7);
  @$pb.TagNumber(9)
  void clearAllowWatchBookmarks() => clearField(9);

  ///  resourceVersionMatch determines how resourceVersion is applied to list calls.
  ///  It is highly recommended that resourceVersionMatch be set for list calls where
  ///  resourceVersion is set
  ///  See https://kubernetes.io/docs/reference/using-api/api-concepts/#resource-versions for
  ///  details.
  ///
  ///  Defaults to unset
  ///  +optional
  @$pb.TagNumber(10)
  $core.String get resourceVersionMatch => $_getSZ(8);
  @$pb.TagNumber(10)
  set resourceVersionMatch($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasResourceVersionMatch() => $_has(8);
  @$pb.TagNumber(10)
  void clearResourceVersionMatch() => clearField(10);

  ///  `sendInitialEvents=true` may be set together with `watch=true`.
  ///  In that case, the watch stream will begin with synthetic events to
  ///  produce the current state of objects in the collection. Once all such
  ///  events have been sent, a synthetic "Bookmark" event  will be sent.
  ///  The bookmark will report the ResourceVersion (RV) corresponding to the
  ///  set of objects, and be marked with `"k8s.io/initial-events-end": "true"` annotation.
  ///  Afterwards, the watch stream will proceed as usual, sending watch events
  ///  corresponding to changes (subsequent to the RV) to objects watched.
  ///
  ///  When `sendInitialEvents` option is set, we require `resourceVersionMatch`
  ///  option to also be set. The semantic of the watch request is as following:
  ///  - `resourceVersionMatch` = NotOlderThan
  ///    is interpreted as "data at least as new as the provided `resourceVersion`"
  ///    and the bookmark event is send when the state is synced
  ///    to a `resourceVersion` at least as fresh as the one provided by the ListOptions.
  ///    If `resourceVersion` is unset, this is interpreted as "consistent read" and the
  ///    bookmark event is send when the state is synced at least to the moment
  ///    when request started being processed.
  ///  - `resourceVersionMatch` set to any other value or unset
  ///    Invalid error is returned.
  ///
  ///  Defaults to true if `resourceVersion=""` or `resourceVersion="0"` (for backward
  ///  compatibility reasons) and to false otherwise.
  ///  +optional
  @$pb.TagNumber(11)
  $core.bool get sendInitialEvents => $_getBF(9);
  @$pb.TagNumber(11)
  set sendInitialEvents($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasSendInitialEvents() => $_has(9);
  @$pb.TagNumber(11)
  void clearSendInitialEvents() => clearField(11);
}

/// ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource
/// that the fieldset applies to.
class ManagedFieldsEntry extends $pb.GeneratedMessage {
  factory ManagedFieldsEntry({
    $core.String? manager,
    $core.String? operation,
    $core.String? apiVersion,
    Time? time,
    $core.String? fieldsType,
    FieldsV1? fieldsV1,
    $core.String? subresource,
  }) {
    final $result = create();
    if (manager != null) {
      $result.manager = manager;
    }
    if (operation != null) {
      $result.operation = operation;
    }
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    if (time != null) {
      $result.time = time;
    }
    if (fieldsType != null) {
      $result.fieldsType = fieldsType;
    }
    if (fieldsV1 != null) {
      $result.fieldsV1 = fieldsV1;
    }
    if (subresource != null) {
      $result.subresource = subresource;
    }
    return $result;
  }
  ManagedFieldsEntry._() : super();
  factory ManagedFieldsEntry.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ManagedFieldsEntry.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ManagedFieldsEntry', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'manager')
    ..aOS(2, _omitFieldNames ? '' : 'operation')
    ..aOS(3, _omitFieldNames ? '' : 'apiVersion', protoName: 'apiVersion')
    ..aOM<Time>(4, _omitFieldNames ? '' : 'time', subBuilder: Time.create)
    ..aOS(6, _omitFieldNames ? '' : 'fieldsType', protoName: 'fieldsType')
    ..aOM<FieldsV1>(7, _omitFieldNames ? '' : 'fieldsV1', protoName: 'fieldsV1', subBuilder: FieldsV1.create)
    ..aOS(8, _omitFieldNames ? '' : 'subresource')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ManagedFieldsEntry clone() => ManagedFieldsEntry()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ManagedFieldsEntry copyWith(void Function(ManagedFieldsEntry) updates) => super.copyWith((message) => updates(message as ManagedFieldsEntry)) as ManagedFieldsEntry;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ManagedFieldsEntry create() => ManagedFieldsEntry._();
  ManagedFieldsEntry createEmptyInstance() => create();
  static $pb.PbList<ManagedFieldsEntry> createRepeated() => $pb.PbList<ManagedFieldsEntry>();
  @$core.pragma('dart2js:noInline')
  static ManagedFieldsEntry getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ManagedFieldsEntry>(create);
  static ManagedFieldsEntry? _defaultInstance;

  /// Manager is an identifier of the workflow managing these fields.
  @$pb.TagNumber(1)
  $core.String get manager => $_getSZ(0);
  @$pb.TagNumber(1)
  set manager($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasManager() => $_has(0);
  @$pb.TagNumber(1)
  void clearManager() => clearField(1);

  /// Operation is the type of operation which lead to this ManagedFieldsEntry being created.
  /// The only valid values for this field are 'Apply' and 'Update'.
  @$pb.TagNumber(2)
  $core.String get operation => $_getSZ(1);
  @$pb.TagNumber(2)
  set operation($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOperation() => $_has(1);
  @$pb.TagNumber(2)
  void clearOperation() => clearField(2);

  /// APIVersion defines the version of this resource that this field set
  /// applies to. The format is "group/version" just like the top-level
  /// APIVersion field. It is necessary to track the version of a field
  /// set because it cannot be automatically converted.
  @$pb.TagNumber(3)
  $core.String get apiVersion => $_getSZ(2);
  @$pb.TagNumber(3)
  set apiVersion($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasApiVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearApiVersion() => clearField(3);

  /// Time is the timestamp of when the ManagedFields entry was added. The
  /// timestamp will also be updated if a field is added, the manager
  /// changes any of the owned fields value or removes a field. The
  /// timestamp does not update when a field is removed from the entry
  /// because another manager took it over.
  /// +optional
  @$pb.TagNumber(4)
  Time get time => $_getN(3);
  @$pb.TagNumber(4)
  set time(Time v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearTime() => clearField(4);
  @$pb.TagNumber(4)
  Time ensureTime() => $_ensure(3);

  /// FieldsType is the discriminator for the different fields format and version.
  /// There is currently only one possible value: "FieldsV1"
  @$pb.TagNumber(6)
  $core.String get fieldsType => $_getSZ(4);
  @$pb.TagNumber(6)
  set fieldsType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasFieldsType() => $_has(4);
  @$pb.TagNumber(6)
  void clearFieldsType() => clearField(6);

  /// FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
  /// +optional
  @$pb.TagNumber(7)
  FieldsV1 get fieldsV1 => $_getN(5);
  @$pb.TagNumber(7)
  set fieldsV1(FieldsV1 v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasFieldsV1() => $_has(5);
  @$pb.TagNumber(7)
  void clearFieldsV1() => clearField(7);
  @$pb.TagNumber(7)
  FieldsV1 ensureFieldsV1() => $_ensure(5);

  /// Subresource is the name of the subresource used to update that object, or
  /// empty string if the object was updated through the main resource. The
  /// value of this field is used to distinguish between managers, even if they
  /// share the same name. For example, a status update will be distinct from a
  /// regular update using the same manager name.
  /// Note that the APIVersion field is not related to the Subresource field and
  /// it always corresponds to the version of the main resource.
  @$pb.TagNumber(8)
  $core.String get subresource => $_getSZ(6);
  @$pb.TagNumber(8)
  set subresource($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasSubresource() => $_has(6);
  @$pb.TagNumber(8)
  void clearSubresource() => clearField(8);
}

///  MicroTime is version of Time with microsecond level precision.
///
///  +protobuf.options.marshal=false
///  +protobuf.as=Timestamp
///  +protobuf.options.(gogoproto.goproto_stringer)=false
class MicroTime extends $pb.GeneratedMessage {
  factory MicroTime({
    $fixnum.Int64? seconds,
    $core.int? nanos,
  }) {
    final $result = create();
    if (seconds != null) {
      $result.seconds = seconds;
    }
    if (nanos != null) {
      $result.nanos = nanos;
    }
    return $result;
  }
  MicroTime._() : super();
  factory MicroTime.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MicroTime.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MicroTime', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'seconds')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'nanos', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MicroTime clone() => MicroTime()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MicroTime copyWith(void Function(MicroTime) updates) => super.copyWith((message) => updates(message as MicroTime)) as MicroTime;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MicroTime create() => MicroTime._();
  MicroTime createEmptyInstance() => create();
  static $pb.PbList<MicroTime> createRepeated() => $pb.PbList<MicroTime>();
  @$core.pragma('dart2js:noInline')
  static MicroTime getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MicroTime>(create);
  static MicroTime? _defaultInstance;

  /// Represents seconds of UTC time since Unix epoch
  /// 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to
  /// 9999-12-31T23:59:59Z inclusive.
  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  /// Non-negative fractions of a second at nanosecond resolution. Negative
  /// second values with fractions must still have non-negative nanos values
  /// that count forward in time. Must be from 0 to 999,999,999
  /// inclusive. This field may be limited in precision depending on context.
  @$pb.TagNumber(2)
  $core.int get nanos => $_getIZ(1);
  @$pb.TagNumber(2)
  set nanos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNanos() => $_has(1);
  @$pb.TagNumber(2)
  void clearNanos() => clearField(2);
}

/// ObjectMeta is metadata that all persisted resources must have, which includes all objects
/// users must create.
class ObjectMeta extends $pb.GeneratedMessage {
  factory ObjectMeta({
    $core.String? name,
    $core.String? generateName,
    $core.String? namespace,
    $core.String? selfLink,
    $core.String? uid,
    $core.String? resourceVersion,
    $fixnum.Int64? generation,
    Time? creationTimestamp,
    Time? deletionTimestamp,
    $fixnum.Int64? deletionGracePeriodSeconds,
    $core.Map<$core.String, $core.String>? labels,
    $core.Map<$core.String, $core.String>? annotations,
    $core.Iterable<OwnerReference>? ownerReferences,
    $core.Iterable<$core.String>? finalizers,
    $core.Iterable<ManagedFieldsEntry>? managedFields,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (generateName != null) {
      $result.generateName = generateName;
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (selfLink != null) {
      $result.selfLink = selfLink;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (resourceVersion != null) {
      $result.resourceVersion = resourceVersion;
    }
    if (generation != null) {
      $result.generation = generation;
    }
    if (creationTimestamp != null) {
      $result.creationTimestamp = creationTimestamp;
    }
    if (deletionTimestamp != null) {
      $result.deletionTimestamp = deletionTimestamp;
    }
    if (deletionGracePeriodSeconds != null) {
      $result.deletionGracePeriodSeconds = deletionGracePeriodSeconds;
    }
    if (labels != null) {
      $result.labels.addAll(labels);
    }
    if (annotations != null) {
      $result.annotations.addAll(annotations);
    }
    if (ownerReferences != null) {
      $result.ownerReferences.addAll(ownerReferences);
    }
    if (finalizers != null) {
      $result.finalizers.addAll(finalizers);
    }
    if (managedFields != null) {
      $result.managedFields.addAll(managedFields);
    }
    return $result;
  }
  ObjectMeta._() : super();
  factory ObjectMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ObjectMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ObjectMeta', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'generateName', protoName: 'generateName')
    ..aOS(3, _omitFieldNames ? '' : 'namespace')
    ..aOS(4, _omitFieldNames ? '' : 'selfLink', protoName: 'selfLink')
    ..aOS(5, _omitFieldNames ? '' : 'uid')
    ..aOS(6, _omitFieldNames ? '' : 'resourceVersion', protoName: 'resourceVersion')
    ..aInt64(7, _omitFieldNames ? '' : 'generation')
    ..aOM<Time>(8, _omitFieldNames ? '' : 'creationTimestamp', protoName: 'creationTimestamp', subBuilder: Time.create)
    ..aOM<Time>(9, _omitFieldNames ? '' : 'deletionTimestamp', protoName: 'deletionTimestamp', subBuilder: Time.create)
    ..aInt64(10, _omitFieldNames ? '' : 'deletionGracePeriodSeconds', protoName: 'deletionGracePeriodSeconds')
    ..m<$core.String, $core.String>(11, _omitFieldNames ? '' : 'labels', entryClassName: 'ObjectMeta.LabelsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('apimachinery.pkg.apis.meta.v1'))
    ..m<$core.String, $core.String>(12, _omitFieldNames ? '' : 'annotations', entryClassName: 'ObjectMeta.AnnotationsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('apimachinery.pkg.apis.meta.v1'))
    ..pc<OwnerReference>(13, _omitFieldNames ? '' : 'ownerReferences', $pb.PbFieldType.PM, protoName: 'ownerReferences', subBuilder: OwnerReference.create)
    ..pPS(14, _omitFieldNames ? '' : 'finalizers')
    ..pc<ManagedFieldsEntry>(17, _omitFieldNames ? '' : 'managedFields', $pb.PbFieldType.PM, protoName: 'managedFields', subBuilder: ManagedFieldsEntry.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ObjectMeta clone() => ObjectMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ObjectMeta copyWith(void Function(ObjectMeta) updates) => super.copyWith((message) => updates(message as ObjectMeta)) as ObjectMeta;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ObjectMeta create() => ObjectMeta._();
  ObjectMeta createEmptyInstance() => create();
  static $pb.PbList<ObjectMeta> createRepeated() => $pb.PbList<ObjectMeta>();
  @$core.pragma('dart2js:noInline')
  static ObjectMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ObjectMeta>(create);
  static ObjectMeta? _defaultInstance;

  /// Name must be unique within a namespace. Is required when creating resources, although
  /// some resources may allow a client to request the generation of an appropriate name
  /// automatically. Name is primarily intended for creation idempotence and configuration
  /// definition.
  /// Cannot be updated.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
  /// +optional
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  ///  GenerateName is an optional prefix, used by the server, to generate a unique
  ///  name ONLY IF the Name field has not been provided.
  ///  If this field is used, the name returned to the client will be different
  ///  than the name passed. This value will also be combined with a unique suffix.
  ///  The provided value has the same validation rules as the Name field,
  ///  and may be truncated by the length of the suffix required to make the value
  ///  unique on the server.
  ///
  ///  If this field is specified and the generated name exists, the server will return a 409.
  ///
  ///  Applied only if Name is not specified.
  ///  More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
  ///  +optional
  @$pb.TagNumber(2)
  $core.String get generateName => $_getSZ(1);
  @$pb.TagNumber(2)
  set generateName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGenerateName() => $_has(1);
  @$pb.TagNumber(2)
  void clearGenerateName() => clearField(2);

  ///  Namespace defines the space within which each name must be unique. An empty namespace is
  ///  equivalent to the "default" namespace, but "default" is the canonical representation.
  ///  Not all objects are required to be scoped to a namespace - the value of this field for
  ///  those objects will be empty.
  ///
  ///  Must be a DNS_LABEL.
  ///  Cannot be updated.
  ///  More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces
  ///  +optional
  @$pb.TagNumber(3)
  $core.String get namespace => $_getSZ(2);
  @$pb.TagNumber(3)
  set namespace($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNamespace() => $_has(2);
  @$pb.TagNumber(3)
  void clearNamespace() => clearField(3);

  /// Deprecated: selfLink is a legacy read-only field that is no longer populated by the system.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get selfLink => $_getSZ(3);
  @$pb.TagNumber(4)
  set selfLink($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSelfLink() => $_has(3);
  @$pb.TagNumber(4)
  void clearSelfLink() => clearField(4);

  ///  UID is the unique in time and space value for this object. It is typically generated by
  ///  the server on successful creation of a resource and is not allowed to change on PUT
  ///  operations.
  ///
  ///  Populated by the system.
  ///  Read-only.
  ///  More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  ///  +optional
  @$pb.TagNumber(5)
  $core.String get uid => $_getSZ(4);
  @$pb.TagNumber(5)
  set uid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasUid() => $_has(4);
  @$pb.TagNumber(5)
  void clearUid() => clearField(5);

  ///  An opaque value that represents the internal version of this object that can
  ///  be used by clients to determine when objects have changed. May be used for optimistic
  ///  concurrency, change detection, and the watch operation on a resource or set of resources.
  ///  Clients must treat these values as opaque and passed unmodified back to the server.
  ///  They may only be valid for a particular resource or set of resources.
  ///
  ///  Populated by the system.
  ///  Read-only.
  ///  Value must be treated as opaque by clients and .
  ///  More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
  ///  +optional
  @$pb.TagNumber(6)
  $core.String get resourceVersion => $_getSZ(5);
  @$pb.TagNumber(6)
  set resourceVersion($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasResourceVersion() => $_has(5);
  @$pb.TagNumber(6)
  void clearResourceVersion() => clearField(6);

  /// A sequence number representing a specific generation of the desired state.
  /// Populated by the system. Read-only.
  /// +optional
  @$pb.TagNumber(7)
  $fixnum.Int64 get generation => $_getI64(6);
  @$pb.TagNumber(7)
  set generation($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasGeneration() => $_has(6);
  @$pb.TagNumber(7)
  void clearGeneration() => clearField(7);

  ///  CreationTimestamp is a timestamp representing the server time when this object was
  ///  created. It is not guaranteed to be set in happens-before order across separate operations.
  ///  Clients may not set this value. It is represented in RFC3339 form and is in UTC.
  ///
  ///  Populated by the system.
  ///  Read-only.
  ///  Null for lists.
  ///  More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  ///  +optional
  @$pb.TagNumber(8)
  Time get creationTimestamp => $_getN(7);
  @$pb.TagNumber(8)
  set creationTimestamp(Time v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasCreationTimestamp() => $_has(7);
  @$pb.TagNumber(8)
  void clearCreationTimestamp() => clearField(8);
  @$pb.TagNumber(8)
  Time ensureCreationTimestamp() => $_ensure(7);

  ///  DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This
  ///  field is set by the server when a graceful deletion is requested by the user, and is not
  ///  directly settable by a client. The resource is expected to be deleted (no longer visible
  ///  from resource lists, and not reachable by name) after the time in this field, once the
  ///  finalizers list is empty. As long as the finalizers list contains items, deletion is blocked.
  ///  Once the deletionTimestamp is set, this value may not be unset or be set further into the
  ///  future, although it may be shortened or the resource may be deleted prior to this time.
  ///  For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react
  ///  by sending a graceful termination signal to the containers in the pod. After that 30 seconds,
  ///  the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup,
  ///  remove the pod from the API. In the presence of network partitions, this object may still
  ///  exist after this timestamp, until an administrator or automated process can determine the
  ///  resource is fully terminated.
  ///  If not set, graceful deletion of the object has not been requested.
  ///
  ///  Populated by the system when a graceful deletion is requested.
  ///  Read-only.
  ///  More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  ///  +optional
  @$pb.TagNumber(9)
  Time get deletionTimestamp => $_getN(8);
  @$pb.TagNumber(9)
  set deletionTimestamp(Time v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasDeletionTimestamp() => $_has(8);
  @$pb.TagNumber(9)
  void clearDeletionTimestamp() => clearField(9);
  @$pb.TagNumber(9)
  Time ensureDeletionTimestamp() => $_ensure(8);

  /// Number of seconds allowed for this object to gracefully terminate before
  /// it will be removed from the system. Only set when deletionTimestamp is also set.
  /// May only be shortened.
  /// Read-only.
  /// +optional
  @$pb.TagNumber(10)
  $fixnum.Int64 get deletionGracePeriodSeconds => $_getI64(9);
  @$pb.TagNumber(10)
  set deletionGracePeriodSeconds($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasDeletionGracePeriodSeconds() => $_has(9);
  @$pb.TagNumber(10)
  void clearDeletionGracePeriodSeconds() => clearField(10);

  /// Map of string keys and values that can be used to organize and categorize
  /// (scope and select) objects. May match selectors of replication controllers
  /// and services.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/labels
  /// +optional
  @$pb.TagNumber(11)
  $core.Map<$core.String, $core.String> get labels => $_getMap(10);

  /// Annotations is an unstructured key value map stored with a resource that may be
  /// set by external tools to store and retrieve arbitrary metadata. They are not
  /// queryable and should be preserved when modifying objects.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations
  /// +optional
  @$pb.TagNumber(12)
  $core.Map<$core.String, $core.String> get annotations => $_getMap(11);

  /// List of objects depended by this object. If ALL objects in the list have
  /// been deleted, this object will be garbage collected. If this object is managed by a controller,
  /// then an entry in this list will point to this controller, with the controller field set to true.
  /// There cannot be more than one managing controller.
  /// +optional
  /// +patchMergeKey=uid
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=uid
  @$pb.TagNumber(13)
  $core.List<OwnerReference> get ownerReferences => $_getList(12);

  /// Must be empty before the object is deleted from the registry. Each entry
  /// is an identifier for the responsible component that will remove the entry
  /// from the list. If the deletionTimestamp of the object is non-nil, entries
  /// in this list can only be removed.
  /// Finalizers may be processed and removed in any order.  Order is NOT enforced
  /// because it introduces significant risk of stuck finalizers.
  /// finalizers is a shared field, any actor with permission can reorder it.
  /// If the finalizer list is processed in order, then this can lead to a situation
  /// in which the component responsible for the first finalizer in the list is
  /// waiting for a signal (field value, external system, or other) produced by a
  /// component responsible for a finalizer later in the list, resulting in a deadlock.
  /// Without enforced ordering finalizers are free to order amongst themselves and
  /// are not vulnerable to ordering changes in the list.
  /// +optional
  /// +patchStrategy=merge
  /// +listType=set
  @$pb.TagNumber(14)
  $core.List<$core.String> get finalizers => $_getList(13);

  ///  ManagedFields maps workflow-id and version to the set of fields
  ///  that are managed by that workflow. This is mostly for internal
  ///  housekeeping, and users typically shouldn't need to set or
  ///  understand this field. A workflow can be the user's name, a
  ///  controller's name, or the name of a specific apply path like
  ///  "ci-cd". The set of fields is always in the version that the
  ///  workflow used when modifying the object.
  ///
  ///  +optional
  ///  +listType=atomic
  @$pb.TagNumber(17)
  $core.List<ManagedFieldsEntry> get managedFields => $_getList(14);
}

/// OwnerReference contains enough information to let you identify an owning
/// object. An owning object must be in the same namespace as the dependent, or
/// be cluster-scoped, so there is no namespace field.
/// +structType=atomic
class OwnerReference extends $pb.GeneratedMessage {
  factory OwnerReference({
    $core.String? kind,
    $core.String? name,
    $core.String? uid,
    $core.String? apiVersion,
    $core.bool? controller,
    $core.bool? blockOwnerDeletion,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (name != null) {
      $result.name = name;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    if (controller != null) {
      $result.controller = controller;
    }
    if (blockOwnerDeletion != null) {
      $result.blockOwnerDeletion = blockOwnerDeletion;
    }
    return $result;
  }
  OwnerReference._() : super();
  factory OwnerReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OwnerReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'OwnerReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'uid')
    ..aOS(5, _omitFieldNames ? '' : 'apiVersion', protoName: 'apiVersion')
    ..aOB(6, _omitFieldNames ? '' : 'controller')
    ..aOB(7, _omitFieldNames ? '' : 'blockOwnerDeletion', protoName: 'blockOwnerDeletion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OwnerReference clone() => OwnerReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OwnerReference copyWith(void Function(OwnerReference) updates) => super.copyWith((message) => updates(message as OwnerReference)) as OwnerReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static OwnerReference create() => OwnerReference._();
  OwnerReference createEmptyInstance() => create();
  static $pb.PbList<OwnerReference> createRepeated() => $pb.PbList<OwnerReference>();
  @$core.pragma('dart2js:noInline')
  static OwnerReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OwnerReference>(create);
  static OwnerReference? _defaultInstance;

  /// Kind of the referent.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  /// Name of the referent.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  /// UID of the referent.
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  @$pb.TagNumber(4)
  $core.String get uid => $_getSZ(2);
  @$pb.TagNumber(4)
  set uid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(4)
  void clearUid() => clearField(4);

  /// API version of the referent.
  @$pb.TagNumber(5)
  $core.String get apiVersion => $_getSZ(3);
  @$pb.TagNumber(5)
  set apiVersion($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasApiVersion() => $_has(3);
  @$pb.TagNumber(5)
  void clearApiVersion() => clearField(5);

  /// If true, this reference points to the managing controller.
  /// +optional
  @$pb.TagNumber(6)
  $core.bool get controller => $_getBF(4);
  @$pb.TagNumber(6)
  set controller($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasController() => $_has(4);
  @$pb.TagNumber(6)
  void clearController() => clearField(6);

  /// If true, AND if the owner has the "foregroundDeletion" finalizer, then
  /// the owner cannot be deleted from the key-value store until this
  /// reference is removed.
  /// See https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion
  /// for how the garbage collector interacts with this field and enforces the foreground deletion.
  /// Defaults to false.
  /// To set this field, a user needs "delete" permission of the owner,
  /// otherwise 422 (Unprocessable Entity) will be returned.
  /// +optional
  @$pb.TagNumber(7)
  $core.bool get blockOwnerDeletion => $_getBF(5);
  @$pb.TagNumber(7)
  set blockOwnerDeletion($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasBlockOwnerDeletion() => $_has(5);
  @$pb.TagNumber(7)
  void clearBlockOwnerDeletion() => clearField(7);
}

/// PartialObjectMetadata is a generic representation of any object with ObjectMeta. It allows clients
/// to get access to a particular ObjectMeta schema without knowing the details of the version.
/// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
class PartialObjectMetadata extends $pb.GeneratedMessage {
  factory PartialObjectMetadata({
    ObjectMeta? metadata,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    return $result;
  }
  PartialObjectMetadata._() : super();
  factory PartialObjectMetadata.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartialObjectMetadata.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PartialObjectMetadata', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOM<ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: ObjectMeta.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PartialObjectMetadata clone() => PartialObjectMetadata()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PartialObjectMetadata copyWith(void Function(PartialObjectMetadata) updates) => super.copyWith((message) => updates(message as PartialObjectMetadata)) as PartialObjectMetadata;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartialObjectMetadata create() => PartialObjectMetadata._();
  PartialObjectMetadata createEmptyInstance() => create();
  static $pb.PbList<PartialObjectMetadata> createRepeated() => $pb.PbList<PartialObjectMetadata>();
  @$core.pragma('dart2js:noInline')
  static PartialObjectMetadata getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartialObjectMetadata>(create);
  static PartialObjectMetadata? _defaultInstance;

  /// Standard object's metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  ObjectMeta ensureMetadata() => $_ensure(0);
}

/// PartialObjectMetadataList contains a list of objects containing only their metadata
/// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
class PartialObjectMetadataList extends $pb.GeneratedMessage {
  factory PartialObjectMetadataList({
    ListMeta? metadata,
    $core.Iterable<PartialObjectMetadata>? items,
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
  PartialObjectMetadataList._() : super();
  factory PartialObjectMetadataList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartialObjectMetadataList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PartialObjectMetadataList', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOM<ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: ListMeta.create)
    ..pc<PartialObjectMetadata>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: PartialObjectMetadata.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PartialObjectMetadataList clone() => PartialObjectMetadataList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PartialObjectMetadataList copyWith(void Function(PartialObjectMetadataList) updates) => super.copyWith((message) => updates(message as PartialObjectMetadataList)) as PartialObjectMetadataList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartialObjectMetadataList create() => PartialObjectMetadataList._();
  PartialObjectMetadataList createEmptyInstance() => create();
  static $pb.PbList<PartialObjectMetadataList> createRepeated() => $pb.PbList<PartialObjectMetadataList>();
  @$core.pragma('dart2js:noInline')
  static PartialObjectMetadataList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartialObjectMetadataList>(create);
  static PartialObjectMetadataList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// +optional
  @$pb.TagNumber(1)
  ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  ListMeta ensureMetadata() => $_ensure(0);

  /// items contains each of the included items.
  @$pb.TagNumber(2)
  $core.List<PartialObjectMetadata> get items => $_getList(1);
}

/// Patch is provided to give a concrete name and type to the Kubernetes PATCH request body.
class Patch extends $pb.GeneratedMessage {
  factory Patch() => create();
  Patch._() : super();
  factory Patch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Patch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Patch', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Patch clone() => Patch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Patch copyWith(void Function(Patch) updates) => super.copyWith((message) => updates(message as Patch)) as Patch;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Patch create() => Patch._();
  Patch createEmptyInstance() => create();
  static $pb.PbList<Patch> createRepeated() => $pb.PbList<Patch>();
  @$core.pragma('dart2js:noInline')
  static Patch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Patch>(create);
  static Patch? _defaultInstance;
}

/// PatchOptions may be provided when patching an API object.
/// PatchOptions is meant to be a superset of UpdateOptions.
class PatchOptions extends $pb.GeneratedMessage {
  factory PatchOptions({
    $core.Iterable<$core.String>? dryRun,
    $core.bool? force,
    $core.String? fieldManager,
    $core.String? fieldValidation,
  }) {
    final $result = create();
    if (dryRun != null) {
      $result.dryRun.addAll(dryRun);
    }
    if (force != null) {
      $result.force = force;
    }
    if (fieldManager != null) {
      $result.fieldManager = fieldManager;
    }
    if (fieldValidation != null) {
      $result.fieldValidation = fieldValidation;
    }
    return $result;
  }
  PatchOptions._() : super();
  factory PatchOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PatchOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PatchOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aOB(2, _omitFieldNames ? '' : 'force')
    ..aOS(3, _omitFieldNames ? '' : 'fieldManager', protoName: 'fieldManager')
    ..aOS(4, _omitFieldNames ? '' : 'fieldValidation', protoName: 'fieldValidation')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PatchOptions clone() => PatchOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PatchOptions copyWith(void Function(PatchOptions) updates) => super.copyWith((message) => updates(message as PatchOptions)) as PatchOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PatchOptions create() => PatchOptions._();
  PatchOptions createEmptyInstance() => create();
  static $pb.PbList<PatchOptions> createRepeated() => $pb.PbList<PatchOptions>();
  @$core.pragma('dart2js:noInline')
  static PatchOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PatchOptions>(create);
  static PatchOptions? _defaultInstance;

  /// When present, indicates that modifications should not be
  /// persisted. An invalid or unrecognized dryRun directive will
  /// result in an error response and no further processing of the
  /// request. Valid values are:
  /// - All: all dry run stages will be processed
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get dryRun => $_getList(0);

  /// Force is going to "force" Apply requests. It means user will
  /// re-acquire conflicting fields owned by other people. Force
  /// flag must be unset for non-apply patch requests.
  /// +optional
  @$pb.TagNumber(2)
  $core.bool get force => $_getBF(1);
  @$pb.TagNumber(2)
  set force($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasForce() => $_has(1);
  @$pb.TagNumber(2)
  void clearForce() => clearField(2);

  /// fieldManager is a name associated with the actor or entity
  /// that is making these changes. The value must be less than or
  /// 128 characters long, and only contain printable characters,
  /// as defined by https://golang.org/pkg/unicode/#IsPrint. This
  /// field is required for apply requests
  /// (application/apply-patch) but optional for non-apply patch
  /// types (JsonPatch, MergePatch, StrategicMergePatch).
  /// +optional
  @$pb.TagNumber(3)
  $core.String get fieldManager => $_getSZ(2);
  @$pb.TagNumber(3)
  set fieldManager($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldManager() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldManager() => clearField(3);

  /// fieldValidation instructs the server on how to handle
  /// objects in the request (POST/PUT/PATCH) containing unknown
  /// or duplicate fields. Valid values are:
  /// - Ignore: This will ignore any unknown fields that are silently
  /// dropped from the object, and will ignore all but the last duplicate
  /// field that the decoder encounters. This is the default behavior
  /// prior to v1.23.
  /// - Warn: This will send a warning via the standard warning response
  /// header for each unknown field that is dropped from the object, and
  /// for each duplicate field that is encountered. The request will
  /// still succeed if there are no other errors, and will only persist
  /// the last of any duplicate fields. This is the default in v1.23+
  /// - Strict: This will fail the request with a BadRequest error if
  /// any unknown fields would be dropped from the object, or if any
  /// duplicate fields are present. The error returned from the server
  /// will contain all unknown and duplicate fields encountered.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get fieldValidation => $_getSZ(3);
  @$pb.TagNumber(4)
  set fieldValidation($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFieldValidation() => $_has(3);
  @$pb.TagNumber(4)
  void clearFieldValidation() => clearField(4);
}

/// Preconditions must be fulfilled before an operation (update, delete, etc.) is carried out.
class Preconditions extends $pb.GeneratedMessage {
  factory Preconditions({
    $core.String? uid,
    $core.String? resourceVersion,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (resourceVersion != null) {
      $result.resourceVersion = resourceVersion;
    }
    return $result;
  }
  Preconditions._() : super();
  factory Preconditions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Preconditions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Preconditions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'resourceVersion', protoName: 'resourceVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Preconditions clone() => Preconditions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Preconditions copyWith(void Function(Preconditions) updates) => super.copyWith((message) => updates(message as Preconditions)) as Preconditions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Preconditions create() => Preconditions._();
  Preconditions createEmptyInstance() => create();
  static $pb.PbList<Preconditions> createRepeated() => $pb.PbList<Preconditions>();
  @$core.pragma('dart2js:noInline')
  static Preconditions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Preconditions>(create);
  static Preconditions? _defaultInstance;

  /// Specifies the target UID.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  /// Specifies the target ResourceVersion
  /// +optional
  @$pb.TagNumber(2)
  $core.String get resourceVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set resourceVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResourceVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourceVersion() => clearField(2);
}

/// RootPaths lists the paths available at root.
/// For example: "/healthz", "/apis".
class RootPaths extends $pb.GeneratedMessage {
  factory RootPaths({
    $core.Iterable<$core.String>? paths,
  }) {
    final $result = create();
    if (paths != null) {
      $result.paths.addAll(paths);
    }
    return $result;
  }
  RootPaths._() : super();
  factory RootPaths.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RootPaths.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RootPaths', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'paths')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RootPaths clone() => RootPaths()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RootPaths copyWith(void Function(RootPaths) updates) => super.copyWith((message) => updates(message as RootPaths)) as RootPaths;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RootPaths create() => RootPaths._();
  RootPaths createEmptyInstance() => create();
  static $pb.PbList<RootPaths> createRepeated() => $pb.PbList<RootPaths>();
  @$core.pragma('dart2js:noInline')
  static RootPaths getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RootPaths>(create);
  static RootPaths? _defaultInstance;

  /// paths are the paths available at root.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get paths => $_getList(0);
}

/// ServerAddressByClientCIDR helps the client to determine the server address that they should use, depending on the clientCIDR that they match.
class ServerAddressByClientCIDR extends $pb.GeneratedMessage {
  factory ServerAddressByClientCIDR({
    $core.String? clientCIDR,
    $core.String? serverAddress,
  }) {
    final $result = create();
    if (clientCIDR != null) {
      $result.clientCIDR = clientCIDR;
    }
    if (serverAddress != null) {
      $result.serverAddress = serverAddress;
    }
    return $result;
  }
  ServerAddressByClientCIDR._() : super();
  factory ServerAddressByClientCIDR.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServerAddressByClientCIDR.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServerAddressByClientCIDR', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'clientCIDR', protoName: 'clientCIDR')
    ..aOS(2, _omitFieldNames ? '' : 'serverAddress', protoName: 'serverAddress')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServerAddressByClientCIDR clone() => ServerAddressByClientCIDR()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServerAddressByClientCIDR copyWith(void Function(ServerAddressByClientCIDR) updates) => super.copyWith((message) => updates(message as ServerAddressByClientCIDR)) as ServerAddressByClientCIDR;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServerAddressByClientCIDR create() => ServerAddressByClientCIDR._();
  ServerAddressByClientCIDR createEmptyInstance() => create();
  static $pb.PbList<ServerAddressByClientCIDR> createRepeated() => $pb.PbList<ServerAddressByClientCIDR>();
  @$core.pragma('dart2js:noInline')
  static ServerAddressByClientCIDR getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServerAddressByClientCIDR>(create);
  static ServerAddressByClientCIDR? _defaultInstance;

  /// The CIDR with which clients can match their IP to figure out the server address that they should use.
  @$pb.TagNumber(1)
  $core.String get clientCIDR => $_getSZ(0);
  @$pb.TagNumber(1)
  set clientCIDR($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClientCIDR() => $_has(0);
  @$pb.TagNumber(1)
  void clearClientCIDR() => clearField(1);

  /// Address of this server, suitable for a client that matches the above CIDR.
  /// This can be a hostname, hostname:port, IP or IP:port.
  @$pb.TagNumber(2)
  $core.String get serverAddress => $_getSZ(1);
  @$pb.TagNumber(2)
  set serverAddress($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServerAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearServerAddress() => clearField(2);
}

/// Status is a return value for calls that don't return other objects.
class Status extends $pb.GeneratedMessage {
  factory Status({
    ListMeta? metadata,
    $core.String? status,
    $core.String? message,
    $core.String? reason,
    StatusDetails? details,
    $core.int? code,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (status != null) {
      $result.status = status;
    }
    if (message != null) {
      $result.message = message;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (details != null) {
      $result.details = details;
    }
    if (code != null) {
      $result.code = code;
    }
    return $result;
  }
  Status._() : super();
  factory Status.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Status.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Status', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOM<ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: ListMeta.create)
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOM<StatusDetails>(5, _omitFieldNames ? '' : 'details', subBuilder: StatusDetails.create)
    ..a<$core.int>(6, _omitFieldNames ? '' : 'code', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Status clone() => Status()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Status copyWith(void Function(Status) updates) => super.copyWith((message) => updates(message as Status)) as Status;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Status create() => Status._();
  Status createEmptyInstance() => create();
  static $pb.PbList<Status> createRepeated() => $pb.PbList<Status>();
  @$core.pragma('dart2js:noInline')
  static Status getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Status>(create);
  static Status? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// +optional
  @$pb.TagNumber(1)
  ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata(ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  ListMeta ensureMetadata() => $_ensure(0);

  /// Status of the operation.
  /// One of: "Success" or "Failure".
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// A human-readable description of the status of this operation.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  /// A machine-readable description of why this operation is in the
  /// "Failure" status. If this value is empty there
  /// is no information available. A Reason clarifies an HTTP status
  /// code but does not override it.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// Extended data associated with the reason.  Each reason may define its
  /// own extended details. This field is optional and the data returned
  /// is not guaranteed to conform to any schema except that defined by
  /// the reason type.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(5)
  StatusDetails get details => $_getN(4);
  @$pb.TagNumber(5)
  set details(StatusDetails v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasDetails() => $_has(4);
  @$pb.TagNumber(5)
  void clearDetails() => clearField(5);
  @$pb.TagNumber(5)
  StatusDetails ensureDetails() => $_ensure(4);

  /// Suggested HTTP return code for this status, 0 if not set.
  /// +optional
  @$pb.TagNumber(6)
  $core.int get code => $_getIZ(5);
  @$pb.TagNumber(6)
  set code($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCode() => $_has(5);
  @$pb.TagNumber(6)
  void clearCode() => clearField(6);
}

/// StatusCause provides more information about an api.Status failure, including
/// cases when multiple errors are encountered.
class StatusCause extends $pb.GeneratedMessage {
  factory StatusCause({
    $core.String? reason,
    $core.String? message,
    $core.String? field_3,
  }) {
    final $result = create();
    if (reason != null) {
      $result.reason = reason;
    }
    if (message != null) {
      $result.message = message;
    }
    if (field_3 != null) {
      $result.field_3 = field_3;
    }
    return $result;
  }
  StatusCause._() : super();
  factory StatusCause.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusCause.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusCause', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'reason')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'field')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusCause clone() => StatusCause()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusCause copyWith(void Function(StatusCause) updates) => super.copyWith((message) => updates(message as StatusCause)) as StatusCause;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusCause create() => StatusCause._();
  StatusCause createEmptyInstance() => create();
  static $pb.PbList<StatusCause> createRepeated() => $pb.PbList<StatusCause>();
  @$core.pragma('dart2js:noInline')
  static StatusCause getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusCause>(create);
  static StatusCause? _defaultInstance;

  /// A machine-readable description of the cause of the error. If this value is
  /// empty there is no information available.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get reason => $_getSZ(0);
  @$pb.TagNumber(1)
  set reason($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReason() => $_has(0);
  @$pb.TagNumber(1)
  void clearReason() => clearField(1);

  /// A human-readable description of the cause of the error.  This field may be
  /// presented as-is to a reader.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  ///  The field of the resource that has caused this error, as named by its JSON
  ///  serialization. May include dot and postfix notation for nested attributes.
  ///  Arrays are zero-indexed.  Fields may appear more than once in an array of
  ///  causes due to fields having multiple errors.
  ///  Optional.
  ///
  ///  Examples:
  ///    "name" - the field "name" on the current resource
  ///    "items[0].name" - the field "name" on the first array entry in "items"
  ///  +optional
  @$pb.TagNumber(3)
  $core.String get field_3 => $_getSZ(2);
  @$pb.TagNumber(3)
  set field_3($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasField_3() => $_has(2);
  @$pb.TagNumber(3)
  void clearField_3() => clearField(3);
}

/// StatusDetails is a set of additional properties that MAY be set by the
/// server to provide additional information about a response. The Reason
/// field of a Status object defines what attributes will be set. Clients
/// must ignore fields that do not match the defined type of each attribute,
/// and should assume that any attribute may be empty, invalid, or under
/// defined.
class StatusDetails extends $pb.GeneratedMessage {
  factory StatusDetails({
    $core.String? name,
    $core.String? group,
    $core.String? kind,
    $core.Iterable<StatusCause>? causes,
    $core.int? retryAfterSeconds,
    $core.String? uid,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (group != null) {
      $result.group = group;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (causes != null) {
      $result.causes.addAll(causes);
    }
    if (retryAfterSeconds != null) {
      $result.retryAfterSeconds = retryAfterSeconds;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  StatusDetails._() : super();
  factory StatusDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StatusDetails', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'group')
    ..aOS(3, _omitFieldNames ? '' : 'kind')
    ..pc<StatusCause>(4, _omitFieldNames ? '' : 'causes', $pb.PbFieldType.PM, subBuilder: StatusCause.create)
    ..a<$core.int>(5, _omitFieldNames ? '' : 'retryAfterSeconds', $pb.PbFieldType.O3, protoName: 'retryAfterSeconds')
    ..aOS(6, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusDetails clone() => StatusDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusDetails copyWith(void Function(StatusDetails) updates) => super.copyWith((message) => updates(message as StatusDetails)) as StatusDetails;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StatusDetails create() => StatusDetails._();
  StatusDetails createEmptyInstance() => create();
  static $pb.PbList<StatusDetails> createRepeated() => $pb.PbList<StatusDetails>();
  @$core.pragma('dart2js:noInline')
  static StatusDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusDetails>(create);
  static StatusDetails? _defaultInstance;

  /// The name attribute of the resource associated with the status StatusReason
  /// (when there is a single name which can be described).
  /// +optional
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// The group attribute of the resource associated with the status StatusReason.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get group => $_getSZ(1);
  @$pb.TagNumber(2)
  set group($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroup() => clearField(2);

  /// The kind attribute of the resource associated with the status StatusReason.
  /// On some operations may differ from the requested resource Kind.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// +optional
  @$pb.TagNumber(3)
  $core.String get kind => $_getSZ(2);
  @$pb.TagNumber(3)
  set kind($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasKind() => $_has(2);
  @$pb.TagNumber(3)
  void clearKind() => clearField(3);

  /// The Causes array includes more details associated with the StatusReason
  /// failure. Not all StatusReasons may provide detailed causes.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<StatusCause> get causes => $_getList(3);

  /// If specified, the time in seconds before the operation should be retried. Some errors may indicate
  /// the client must take an alternate action - for those errors this field may indicate how long to wait
  /// before taking the alternate action.
  /// +optional
  @$pb.TagNumber(5)
  $core.int get retryAfterSeconds => $_getIZ(4);
  @$pb.TagNumber(5)
  set retryAfterSeconds($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRetryAfterSeconds() => $_has(4);
  @$pb.TagNumber(5)
  void clearRetryAfterSeconds() => clearField(5);

  /// UID of the resource.
  /// (when there is a single resource which can be described).
  /// More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  /// +optional
  @$pb.TagNumber(6)
  $core.String get uid => $_getSZ(5);
  @$pb.TagNumber(6)
  set uid($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasUid() => $_has(5);
  @$pb.TagNumber(6)
  void clearUid() => clearField(6);
}

/// TableOptions are used when a Table is requested by the caller.
/// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
class TableOptions extends $pb.GeneratedMessage {
  factory TableOptions({
    $core.String? includeObject,
  }) {
    final $result = create();
    if (includeObject != null) {
      $result.includeObject = includeObject;
    }
    return $result;
  }
  TableOptions._() : super();
  factory TableOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TableOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TableOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'includeObject', protoName: 'includeObject')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TableOptions clone() => TableOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TableOptions copyWith(void Function(TableOptions) updates) => super.copyWith((message) => updates(message as TableOptions)) as TableOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TableOptions create() => TableOptions._();
  TableOptions createEmptyInstance() => create();
  static $pb.PbList<TableOptions> createRepeated() => $pb.PbList<TableOptions>();
  @$core.pragma('dart2js:noInline')
  static TableOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TableOptions>(create);
  static TableOptions? _defaultInstance;

  /// includeObject decides whether to include each object along with its columnar information.
  /// Specifying "None" will return no object, specifying "Object" will return the full object contents, and
  /// specifying "Metadata" (the default) will return the object's metadata in the PartialObjectMetadata kind
  /// in version v1beta1 of the meta.k8s.io API group.
  @$pb.TagNumber(1)
  $core.String get includeObject => $_getSZ(0);
  @$pb.TagNumber(1)
  set includeObject($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeObject() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeObject() => clearField(1);
}

///  Time is a wrapper around time.Time which supports correct
///  marshaling to YAML and JSON.  Wrappers are provided for many
///  of the factory methods that the time package offers.
///
///  +protobuf.options.marshal=false
///  +protobuf.as=Timestamp
///  +protobuf.options.(gogoproto.goproto_stringer)=false
class Time extends $pb.GeneratedMessage {
  factory Time({
    $fixnum.Int64? seconds,
    $core.int? nanos,
  }) {
    final $result = create();
    if (seconds != null) {
      $result.seconds = seconds;
    }
    if (nanos != null) {
      $result.nanos = nanos;
    }
    return $result;
  }
  Time._() : super();
  factory Time.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Time.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Time', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'seconds')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'nanos', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Time clone() => Time()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Time copyWith(void Function(Time) updates) => super.copyWith((message) => updates(message as Time)) as Time;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Time create() => Time._();
  Time createEmptyInstance() => create();
  static $pb.PbList<Time> createRepeated() => $pb.PbList<Time>();
  @$core.pragma('dart2js:noInline')
  static Time getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Time>(create);
  static Time? _defaultInstance;

  /// Represents seconds of UTC time since Unix epoch
  /// 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to
  /// 9999-12-31T23:59:59Z inclusive.
  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  /// Non-negative fractions of a second at nanosecond resolution. Negative
  /// second values with fractions must still have non-negative nanos values
  /// that count forward in time. Must be from 0 to 999,999,999
  /// inclusive. This field may be limited in precision depending on context.
  @$pb.TagNumber(2)
  $core.int get nanos => $_getIZ(1);
  @$pb.TagNumber(2)
  set nanos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNanos() => $_has(1);
  @$pb.TagNumber(2)
  void clearNanos() => clearField(2);
}

/// Timestamp is a struct that is equivalent to Time, but intended for
/// protobuf marshalling/unmarshalling. It is generated into a serialization
/// that matches Time. Do not use in Go structs.
class Timestamp extends $pb.GeneratedMessage {
  factory Timestamp({
    $fixnum.Int64? seconds,
    $core.int? nanos,
  }) {
    final $result = create();
    if (seconds != null) {
      $result.seconds = seconds;
    }
    if (nanos != null) {
      $result.nanos = nanos;
    }
    return $result;
  }
  Timestamp._() : super();
  factory Timestamp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Timestamp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Timestamp', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'seconds')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'nanos', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Timestamp clone() => Timestamp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Timestamp copyWith(void Function(Timestamp) updates) => super.copyWith((message) => updates(message as Timestamp)) as Timestamp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Timestamp create() => Timestamp._();
  Timestamp createEmptyInstance() => create();
  static $pb.PbList<Timestamp> createRepeated() => $pb.PbList<Timestamp>();
  @$core.pragma('dart2js:noInline')
  static Timestamp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Timestamp>(create);
  static Timestamp? _defaultInstance;

  /// Represents seconds of UTC time since Unix epoch
  /// 1970-01-01T00:00:00Z. Must be from 0001-01-01T00:00:00Z to
  /// 9999-12-31T23:59:59Z inclusive.
  @$pb.TagNumber(1)
  $fixnum.Int64 get seconds => $_getI64(0);
  @$pb.TagNumber(1)
  set seconds($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSeconds() => $_has(0);
  @$pb.TagNumber(1)
  void clearSeconds() => clearField(1);

  /// Non-negative fractions of a second at nanosecond resolution. Negative
  /// second values with fractions must still have non-negative nanos values
  /// that count forward in time. Must be from 0 to 999,999,999
  /// inclusive. This field may be limited in precision depending on context.
  @$pb.TagNumber(2)
  $core.int get nanos => $_getIZ(1);
  @$pb.TagNumber(2)
  set nanos($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNanos() => $_has(1);
  @$pb.TagNumber(2)
  void clearNanos() => clearField(2);
}

///  TypeMeta describes an individual object in an API response or request
///  with strings representing the type of the object and its API schema version.
///  Structures that are versioned or persisted should inline TypeMeta.
///
///  +k8s:deepcopy-gen=false
class TypeMeta extends $pb.GeneratedMessage {
  factory TypeMeta({
    $core.String? kind,
    $core.String? apiVersion,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    return $result;
  }
  TypeMeta._() : super();
  factory TypeMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TypeMeta', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aOS(2, _omitFieldNames ? '' : 'apiVersion', protoName: 'apiVersion')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeMeta clone() => TypeMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeMeta copyWith(void Function(TypeMeta) updates) => super.copyWith((message) => updates(message as TypeMeta)) as TypeMeta;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TypeMeta create() => TypeMeta._();
  TypeMeta createEmptyInstance() => create();
  static $pb.PbList<TypeMeta> createRepeated() => $pb.PbList<TypeMeta>();
  @$core.pragma('dart2js:noInline')
  static TypeMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeMeta>(create);
  static TypeMeta? _defaultInstance;

  /// Kind is a string value representing the REST resource this object represents.
  /// Servers may infer this from the endpoint the client submits requests to.
  /// Cannot be updated.
  /// In CamelCase.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// +optional
  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  /// APIVersion defines the versioned schema of this representation of an object.
  /// Servers should convert recognized schemas to the latest internal value, and
  /// may reject unrecognized values.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// +optional
  @$pb.TagNumber(2)
  $core.String get apiVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set apiVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApiVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearApiVersion() => clearField(2);
}

/// UpdateOptions may be provided when updating an API object.
/// All fields in UpdateOptions should also be present in PatchOptions.
class UpdateOptions extends $pb.GeneratedMessage {
  factory UpdateOptions({
    $core.Iterable<$core.String>? dryRun,
    $core.String? fieldManager,
    $core.String? fieldValidation,
  }) {
    final $result = create();
    if (dryRun != null) {
      $result.dryRun.addAll(dryRun);
    }
    if (fieldManager != null) {
      $result.fieldManager = fieldManager;
    }
    if (fieldValidation != null) {
      $result.fieldValidation = fieldValidation;
    }
    return $result;
  }
  UpdateOptions._() : super();
  factory UpdateOptions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateOptions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UpdateOptions', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aOS(2, _omitFieldNames ? '' : 'fieldManager', protoName: 'fieldManager')
    ..aOS(3, _omitFieldNames ? '' : 'fieldValidation', protoName: 'fieldValidation')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateOptions clone() => UpdateOptions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateOptions copyWith(void Function(UpdateOptions) updates) => super.copyWith((message) => updates(message as UpdateOptions)) as UpdateOptions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UpdateOptions create() => UpdateOptions._();
  UpdateOptions createEmptyInstance() => create();
  static $pb.PbList<UpdateOptions> createRepeated() => $pb.PbList<UpdateOptions>();
  @$core.pragma('dart2js:noInline')
  static UpdateOptions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateOptions>(create);
  static UpdateOptions? _defaultInstance;

  /// When present, indicates that modifications should not be
  /// persisted. An invalid or unrecognized dryRun directive will
  /// result in an error response and no further processing of the
  /// request. Valid values are:
  /// - All: all dry run stages will be processed
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get dryRun => $_getList(0);

  /// fieldManager is a name associated with the actor or entity
  /// that is making these changes. The value must be less than or
  /// 128 characters long, and only contain printable characters,
  /// as defined by https://golang.org/pkg/unicode/#IsPrint.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get fieldManager => $_getSZ(1);
  @$pb.TagNumber(2)
  set fieldManager($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldManager() => $_has(1);
  @$pb.TagNumber(2)
  void clearFieldManager() => clearField(2);

  /// fieldValidation instructs the server on how to handle
  /// objects in the request (POST/PUT/PATCH) containing unknown
  /// or duplicate fields. Valid values are:
  /// - Ignore: This will ignore any unknown fields that are silently
  /// dropped from the object, and will ignore all but the last duplicate
  /// field that the decoder encounters. This is the default behavior
  /// prior to v1.23.
  /// - Warn: This will send a warning via the standard warning response
  /// header for each unknown field that is dropped from the object, and
  /// for each duplicate field that is encountered. The request will
  /// still succeed if there are no other errors, and will only persist
  /// the last of any duplicate fields. This is the default in v1.23+
  /// - Strict: This will fail the request with a BadRequest error if
  /// any unknown fields would be dropped from the object, or if any
  /// duplicate fields are present. The error returned from the server
  /// will contain all unknown and duplicate fields encountered.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get fieldValidation => $_getSZ(2);
  @$pb.TagNumber(3)
  set fieldValidation($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFieldValidation() => $_has(2);
  @$pb.TagNumber(3)
  void clearFieldValidation() => clearField(3);
}

///  Verbs masks the value so protobuf can generate
///
///  +protobuf.nullable=true
///  +protobuf.options.(gogoproto.goproto_stringer)=false
class Verbs extends $pb.GeneratedMessage {
  factory Verbs({
    $core.Iterable<$core.String>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  Verbs._() : super();
  factory Verbs.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Verbs.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Verbs', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Verbs clone() => Verbs()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Verbs copyWith(void Function(Verbs) updates) => super.copyWith((message) => updates(message as Verbs)) as Verbs;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Verbs create() => Verbs._();
  Verbs createEmptyInstance() => create();
  static $pb.PbList<Verbs> createRepeated() => $pb.PbList<Verbs>();
  @$core.pragma('dart2js:noInline')
  static Verbs getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Verbs>(create);
  static Verbs? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);
}

///  Event represents a single event to a watched resource.
///
///  +protobuf=true
///  +k8s:deepcopy-gen=true
///  +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
class WatchEvent extends $pb.GeneratedMessage {
  factory WatchEvent({
    $core.String? type,
    $0.RawExtension? object,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (object != null) {
      $result.object = object;
    }
    return $result;
  }
  WatchEvent._() : super();
  factory WatchEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WatchEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WatchEvent', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOM<$0.RawExtension>(2, _omitFieldNames ? '' : 'object', subBuilder: $0.RawExtension.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WatchEvent clone() => WatchEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WatchEvent copyWith(void Function(WatchEvent) updates) => super.copyWith((message) => updates(message as WatchEvent)) as WatchEvent;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WatchEvent create() => WatchEvent._();
  WatchEvent createEmptyInstance() => create();
  static $pb.PbList<WatchEvent> createRepeated() => $pb.PbList<WatchEvent>();
  @$core.pragma('dart2js:noInline')
  static WatchEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WatchEvent>(create);
  static WatchEvent? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Object is:
  ///  * If Type is Added or Modified: the new state of the object.
  ///  * If Type is Deleted: the state of the object immediately before deletion.
  ///  * If Type is Error: *Status is recommended; other types may make sense
  ///    depending on context.
  @$pb.TagNumber(2)
  $0.RawExtension get object => $_getN(1);
  @$pb.TagNumber(2)
  set object($0.RawExtension v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasObject() => $_has(1);
  @$pb.TagNumber(2)
  void clearObject() => clearField(2);
  @$pb.TagNumber(2)
  $0.RawExtension ensureObject() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
