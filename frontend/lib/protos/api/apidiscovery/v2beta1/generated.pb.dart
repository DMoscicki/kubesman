//
//  Generated code. Do not modify.
//  source: api/apidiscovery/v2beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// APIGroupDiscovery holds information about which resources are being served for all version of the API Group.
/// It contains a list of APIVersionDiscovery that holds a list of APIResourceDiscovery types served for a version.
/// Versions are in descending order of preference, with the first version being the preferred entry.
class APIGroupDiscovery extends $pb.GeneratedMessage {
  factory APIGroupDiscovery({
    $0.ObjectMeta? metadata,
    $core.Iterable<APIVersionDiscovery>? versions,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (versions != null) {
      $result.versions.addAll(versions);
    }
    return $result;
  }
  APIGroupDiscovery._() : super();
  factory APIGroupDiscovery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIGroupDiscovery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIGroupDiscovery', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apidiscovery.v2beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..pc<APIVersionDiscovery>(2, _omitFieldNames ? '' : 'versions', $pb.PbFieldType.PM, subBuilder: APIVersionDiscovery.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIGroupDiscovery clone() => APIGroupDiscovery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIGroupDiscovery copyWith(void Function(APIGroupDiscovery) updates) => super.copyWith((message) => updates(message as APIGroupDiscovery)) as APIGroupDiscovery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIGroupDiscovery create() => APIGroupDiscovery._();
  APIGroupDiscovery createEmptyInstance() => create();
  static $pb.PbList<APIGroupDiscovery> createRepeated() => $pb.PbList<APIGroupDiscovery>();
  @$core.pragma('dart2js:noInline')
  static APIGroupDiscovery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIGroupDiscovery>(create);
  static APIGroupDiscovery? _defaultInstance;

  /// Standard object's metadata.
  /// The only field completed will be name. For instance, resourceVersion will be empty.
  /// name is the name of the API group whose discovery information is presented here.
  /// name is allowed to be "" to represent the legacy, ungroupified resources.
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

  /// versions are the versions supported in this group. They are sorted in descending order of preference,
  /// with the preferred version being the first entry.
  /// +listType=map
  /// +listMapKey=version
  @$pb.TagNumber(2)
  $core.List<APIVersionDiscovery> get versions => $_getList(1);
}

/// APIGroupDiscoveryList is a resource containing a list of APIGroupDiscovery.
/// This is one of the types able to be returned from the /api and /apis endpoint and contains an aggregated
/// list of API resources (built-ins, Custom Resource Definitions, resources from aggregated servers)
/// that a cluster supports.
class APIGroupDiscoveryList extends $pb.GeneratedMessage {
  factory APIGroupDiscoveryList({
    $0.ListMeta? metadata,
    $core.Iterable<APIGroupDiscovery>? items,
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
  APIGroupDiscoveryList._() : super();
  factory APIGroupDiscoveryList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIGroupDiscoveryList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIGroupDiscoveryList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apidiscovery.v2beta1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<APIGroupDiscovery>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: APIGroupDiscovery.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIGroupDiscoveryList clone() => APIGroupDiscoveryList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIGroupDiscoveryList copyWith(void Function(APIGroupDiscoveryList) updates) => super.copyWith((message) => updates(message as APIGroupDiscoveryList)) as APIGroupDiscoveryList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIGroupDiscoveryList create() => APIGroupDiscoveryList._();
  APIGroupDiscoveryList createEmptyInstance() => create();
  static $pb.PbList<APIGroupDiscoveryList> createRepeated() => $pb.PbList<APIGroupDiscoveryList>();
  @$core.pragma('dart2js:noInline')
  static APIGroupDiscoveryList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIGroupDiscoveryList>(create);
  static APIGroupDiscoveryList? _defaultInstance;

  /// ResourceVersion will not be set, because this does not have a replayable ordering among multiple apiservers.
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

  /// items is the list of groups for discovery. The groups are listed in priority order.
  @$pb.TagNumber(2)
  $core.List<APIGroupDiscovery> get items => $_getList(1);
}

/// APIResourceDiscovery provides information about an API resource for discovery.
class APIResourceDiscovery extends $pb.GeneratedMessage {
  factory APIResourceDiscovery({
    $core.String? resource,
    $0.GroupVersionKind? responseKind,
    $core.String? scope,
    $core.String? singularResource,
    $core.Iterable<$core.String>? verbs,
    $core.Iterable<$core.String>? shortNames,
    $core.Iterable<$core.String>? categories,
    $core.Iterable<APISubresourceDiscovery>? subresources,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    if (responseKind != null) {
      $result.responseKind = responseKind;
    }
    if (scope != null) {
      $result.scope = scope;
    }
    if (singularResource != null) {
      $result.singularResource = singularResource;
    }
    if (verbs != null) {
      $result.verbs.addAll(verbs);
    }
    if (shortNames != null) {
      $result.shortNames.addAll(shortNames);
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    if (subresources != null) {
      $result.subresources.addAll(subresources);
    }
    return $result;
  }
  APIResourceDiscovery._() : super();
  factory APIResourceDiscovery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIResourceDiscovery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIResourceDiscovery', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apidiscovery.v2beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'resource')
    ..aOM<$0.GroupVersionKind>(2, _omitFieldNames ? '' : 'responseKind', protoName: 'responseKind', subBuilder: $0.GroupVersionKind.create)
    ..aOS(3, _omitFieldNames ? '' : 'scope')
    ..aOS(4, _omitFieldNames ? '' : 'singularResource', protoName: 'singularResource')
    ..pPS(5, _omitFieldNames ? '' : 'verbs')
    ..pPS(6, _omitFieldNames ? '' : 'shortNames', protoName: 'shortNames')
    ..pPS(7, _omitFieldNames ? '' : 'categories')
    ..pc<APISubresourceDiscovery>(8, _omitFieldNames ? '' : 'subresources', $pb.PbFieldType.PM, subBuilder: APISubresourceDiscovery.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIResourceDiscovery clone() => APIResourceDiscovery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIResourceDiscovery copyWith(void Function(APIResourceDiscovery) updates) => super.copyWith((message) => updates(message as APIResourceDiscovery)) as APIResourceDiscovery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIResourceDiscovery create() => APIResourceDiscovery._();
  APIResourceDiscovery createEmptyInstance() => create();
  static $pb.PbList<APIResourceDiscovery> createRepeated() => $pb.PbList<APIResourceDiscovery>();
  @$core.pragma('dart2js:noInline')
  static APIResourceDiscovery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIResourceDiscovery>(create);
  static APIResourceDiscovery? _defaultInstance;

  /// resource is the plural name of the resource.  This is used in the URL path and is the unique identifier
  /// for this resource across all versions in the API group.
  /// Resources with non-empty groups are located at /apis/<APIGroupDiscovery.objectMeta.name>/<APIVersionDiscovery.version>/<APIResourceDiscovery.Resource>
  /// Resources with empty groups are located at /api/v1/<APIResourceDiscovery.Resource>
  @$pb.TagNumber(1)
  $core.String get resource => $_getSZ(0);
  @$pb.TagNumber(1)
  set resource($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(1)
  void clearResource() => clearField(1);

  /// responseKind describes the group, version, and kind of the serialization schema for the object type this endpoint typically returns.
  /// APIs may return other objects types at their discretion, such as error conditions, requests for alternate representations, or other operation specific behavior.
  /// This value will be null or empty if an APIService reports subresources but supports no operations on the parent resource
  @$pb.TagNumber(2)
  $0.GroupVersionKind get responseKind => $_getN(1);
  @$pb.TagNumber(2)
  set responseKind($0.GroupVersionKind v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseKind() => clearField(2);
  @$pb.TagNumber(2)
  $0.GroupVersionKind ensureResponseKind() => $_ensure(1);

  /// scope indicates the scope of a resource, either Cluster or Namespaced
  @$pb.TagNumber(3)
  $core.String get scope => $_getSZ(2);
  @$pb.TagNumber(3)
  set scope($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasScope() => $_has(2);
  @$pb.TagNumber(3)
  void clearScope() => clearField(3);

  /// singularResource is the singular name of the resource.  This allows clients to handle plural and singular opaquely.
  /// For many clients the singular form of the resource will be more understandable to users reading messages and should be used when integrating the name of the resource into a sentence.
  /// The command line tool kubectl, for example, allows use of the singular resource name in place of plurals.
  /// The singular form of a resource should always be an optional element - when in doubt use the canonical resource name.
  @$pb.TagNumber(4)
  $core.String get singularResource => $_getSZ(3);
  @$pb.TagNumber(4)
  set singularResource($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSingularResource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSingularResource() => clearField(4);

  /// verbs is a list of supported API operation types (this includes
  /// but is not limited to get, list, watch, create, update, patch,
  /// delete, deletecollection, and proxy).
  /// +listType=set
  @$pb.TagNumber(5)
  $core.List<$core.String> get verbs => $_getList(4);

  /// shortNames is a list of suggested short names of the resource.
  /// +listType=set
  @$pb.TagNumber(6)
  $core.List<$core.String> get shortNames => $_getList(5);

  /// categories is a list of the grouped resources this resource belongs to (e.g. 'all').
  /// Clients may use this to simplify acting on multiple resource types at once.
  /// +listType=set
  @$pb.TagNumber(7)
  $core.List<$core.String> get categories => $_getList(6);

  /// subresources is a list of subresources provided by this resource. Subresources are located at /apis/<APIGroupDiscovery.objectMeta.name>/<APIVersionDiscovery.version>/<APIResourceDiscovery.Resource>/name-of-instance/<APIResourceDiscovery.subresources[i].subresource>
  /// +listType=map
  /// +listMapKey=subresource
  @$pb.TagNumber(8)
  $core.List<APISubresourceDiscovery> get subresources => $_getList(7);
}

/// APISubresourceDiscovery provides information about an API subresource for discovery.
class APISubresourceDiscovery extends $pb.GeneratedMessage {
  factory APISubresourceDiscovery({
    $core.String? subresource,
    $0.GroupVersionKind? responseKind,
    $core.Iterable<$0.GroupVersionKind>? acceptedTypes,
    $core.Iterable<$core.String>? verbs,
  }) {
    final $result = create();
    if (subresource != null) {
      $result.subresource = subresource;
    }
    if (responseKind != null) {
      $result.responseKind = responseKind;
    }
    if (acceptedTypes != null) {
      $result.acceptedTypes.addAll(acceptedTypes);
    }
    if (verbs != null) {
      $result.verbs.addAll(verbs);
    }
    return $result;
  }
  APISubresourceDiscovery._() : super();
  factory APISubresourceDiscovery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APISubresourceDiscovery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APISubresourceDiscovery', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apidiscovery.v2beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'subresource')
    ..aOM<$0.GroupVersionKind>(2, _omitFieldNames ? '' : 'responseKind', protoName: 'responseKind', subBuilder: $0.GroupVersionKind.create)
    ..pc<$0.GroupVersionKind>(3, _omitFieldNames ? '' : 'acceptedTypes', $pb.PbFieldType.PM, protoName: 'acceptedTypes', subBuilder: $0.GroupVersionKind.create)
    ..pPS(4, _omitFieldNames ? '' : 'verbs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APISubresourceDiscovery clone() => APISubresourceDiscovery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APISubresourceDiscovery copyWith(void Function(APISubresourceDiscovery) updates) => super.copyWith((message) => updates(message as APISubresourceDiscovery)) as APISubresourceDiscovery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APISubresourceDiscovery create() => APISubresourceDiscovery._();
  APISubresourceDiscovery createEmptyInstance() => create();
  static $pb.PbList<APISubresourceDiscovery> createRepeated() => $pb.PbList<APISubresourceDiscovery>();
  @$core.pragma('dart2js:noInline')
  static APISubresourceDiscovery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APISubresourceDiscovery>(create);
  static APISubresourceDiscovery? _defaultInstance;

  /// subresource is the name of the subresource.  This is used in the URL path and is the unique identifier
  /// for this resource across all versions.
  @$pb.TagNumber(1)
  $core.String get subresource => $_getSZ(0);
  @$pb.TagNumber(1)
  set subresource($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubresource() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubresource() => clearField(1);

  /// responseKind describes the group, version, and kind of the serialization schema for the object type this endpoint typically returns.
  /// Some subresources do not return normal resources, these will have null or empty return types.
  @$pb.TagNumber(2)
  $0.GroupVersionKind get responseKind => $_getN(1);
  @$pb.TagNumber(2)
  set responseKind($0.GroupVersionKind v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponseKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponseKind() => clearField(2);
  @$pb.TagNumber(2)
  $0.GroupVersionKind ensureResponseKind() => $_ensure(1);

  /// acceptedTypes describes the kinds that this endpoint accepts.
  /// Subresources may accept the standard content types or define
  /// custom negotiation schemes. The list may not be exhaustive for
  /// all operations.
  /// +listType=map
  /// +listMapKey=group
  /// +listMapKey=version
  /// +listMapKey=kind
  @$pb.TagNumber(3)
  $core.List<$0.GroupVersionKind> get acceptedTypes => $_getList(2);

  /// verbs is a list of supported API operation types (this includes
  /// but is not limited to get, list, watch, create, update, patch,
  /// delete, deletecollection, and proxy). Subresources may define
  /// custom verbs outside the standard Kubernetes verb set. Clients
  /// should expect the behavior of standard verbs to align with
  /// Kubernetes interaction conventions.
  /// +listType=set
  @$pb.TagNumber(4)
  $core.List<$core.String> get verbs => $_getList(3);
}

/// APIVersionDiscovery holds a list of APIResourceDiscovery types that are served for a particular version within an API Group.
class APIVersionDiscovery extends $pb.GeneratedMessage {
  factory APIVersionDiscovery({
    $core.String? version,
    $core.Iterable<APIResourceDiscovery>? resources,
    $core.String? freshness,
  }) {
    final $result = create();
    if (version != null) {
      $result.version = version;
    }
    if (resources != null) {
      $result.resources.addAll(resources);
    }
    if (freshness != null) {
      $result.freshness = freshness;
    }
    return $result;
  }
  APIVersionDiscovery._() : super();
  factory APIVersionDiscovery.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIVersionDiscovery.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIVersionDiscovery', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.apidiscovery.v2beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'version')
    ..pc<APIResourceDiscovery>(2, _omitFieldNames ? '' : 'resources', $pb.PbFieldType.PM, subBuilder: APIResourceDiscovery.create)
    ..aOS(3, _omitFieldNames ? '' : 'freshness')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIVersionDiscovery clone() => APIVersionDiscovery()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIVersionDiscovery copyWith(void Function(APIVersionDiscovery) updates) => super.copyWith((message) => updates(message as APIVersionDiscovery)) as APIVersionDiscovery;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIVersionDiscovery create() => APIVersionDiscovery._();
  APIVersionDiscovery createEmptyInstance() => create();
  static $pb.PbList<APIVersionDiscovery> createRepeated() => $pb.PbList<APIVersionDiscovery>();
  @$core.pragma('dart2js:noInline')
  static APIVersionDiscovery getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIVersionDiscovery>(create);
  static APIVersionDiscovery? _defaultInstance;

  /// version is the name of the version within a group version.
  @$pb.TagNumber(1)
  $core.String get version => $_getSZ(0);
  @$pb.TagNumber(1)
  set version($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearVersion() => clearField(1);

  /// resources is a list of APIResourceDiscovery objects for the corresponding group version.
  /// +listType=map
  /// +listMapKey=resource
  @$pb.TagNumber(2)
  $core.List<APIResourceDiscovery> get resources => $_getList(1);

  /// freshness marks whether a group version's discovery document is up to date.
  /// "Current" indicates the discovery document was recently
  /// refreshed. "Stale" indicates the discovery document could not
  /// be retrieved and the returned discovery document may be
  /// significantly out of date. Clients that require the latest
  /// version of the discovery information be retrieved before
  /// performing an operation should not use the aggregated document
  @$pb.TagNumber(3)
  $core.String get freshness => $_getSZ(2);
  @$pb.TagNumber(3)
  set freshness($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFreshness() => $_has(2);
  @$pb.TagNumber(3)
  void clearFreshness() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
