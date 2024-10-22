//
//  Generated code. Do not modify.
//  source: api/authorization/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// ExtraValue masks the value so protobuf can generate
/// +protobuf.nullable=true
/// +protobuf.options.(gogoproto.goproto_stringer)=false
class ExtraValue extends $pb.GeneratedMessage {
  factory ExtraValue({
    $core.Iterable<$core.String>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  ExtraValue._() : super();
  factory ExtraValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtraValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtraValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtraValue clone() => ExtraValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtraValue copyWith(void Function(ExtraValue) updates) => super.copyWith((message) => updates(message as ExtraValue)) as ExtraValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtraValue create() => ExtraValue._();
  ExtraValue createEmptyInstance() => create();
  static $pb.PbList<ExtraValue> createRepeated() => $pb.PbList<ExtraValue>();
  @$core.pragma('dart2js:noInline')
  static ExtraValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtraValue>(create);
  static ExtraValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);
}

/// LocalSubjectAccessReview checks whether or not a user or group can perform an action in a given namespace.
/// Having a namespace scoped resource makes it much easier to grant namespace scoped policy that includes permissions
/// checking.
class LocalSubjectAccessReview extends $pb.GeneratedMessage {
  factory LocalSubjectAccessReview({
    $0.ObjectMeta? metadata,
    SubjectAccessReviewSpec? spec,
    SubjectAccessReviewStatus? status,
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
  LocalSubjectAccessReview._() : super();
  factory LocalSubjectAccessReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LocalSubjectAccessReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'LocalSubjectAccessReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<SubjectAccessReviewSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: SubjectAccessReviewSpec.create)
    ..aOM<SubjectAccessReviewStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: SubjectAccessReviewStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LocalSubjectAccessReview clone() => LocalSubjectAccessReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LocalSubjectAccessReview copyWith(void Function(LocalSubjectAccessReview) updates) => super.copyWith((message) => updates(message as LocalSubjectAccessReview)) as LocalSubjectAccessReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static LocalSubjectAccessReview create() => LocalSubjectAccessReview._();
  LocalSubjectAccessReview createEmptyInstance() => create();
  static $pb.PbList<LocalSubjectAccessReview> createRepeated() => $pb.PbList<LocalSubjectAccessReview>();
  @$core.pragma('dart2js:noInline')
  static LocalSubjectAccessReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LocalSubjectAccessReview>(create);
  static LocalSubjectAccessReview? _defaultInstance;

  /// Standard list metadata.
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

  /// Spec holds information about the request being evaluated.  spec.namespace must be equal to the namespace
  /// you made the request against.  If empty, it is defaulted.
  @$pb.TagNumber(2)
  SubjectAccessReviewSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(SubjectAccessReviewSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  SubjectAccessReviewSpec ensureSpec() => $_ensure(1);

  /// Status is filled in by the server and indicates whether the request is allowed or not
  /// +optional
  @$pb.TagNumber(3)
  SubjectAccessReviewStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(SubjectAccessReviewStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  SubjectAccessReviewStatus ensureStatus() => $_ensure(2);
}

/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface
class NonResourceAttributes extends $pb.GeneratedMessage {
  factory NonResourceAttributes({
    $core.String? path,
    $core.String? verb,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (verb != null) {
      $result.verb = verb;
    }
    return $result;
  }
  NonResourceAttributes._() : super();
  factory NonResourceAttributes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NonResourceAttributes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NonResourceAttributes', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOS(2, _omitFieldNames ? '' : 'verb')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NonResourceAttributes clone() => NonResourceAttributes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NonResourceAttributes copyWith(void Function(NonResourceAttributes) updates) => super.copyWith((message) => updates(message as NonResourceAttributes)) as NonResourceAttributes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NonResourceAttributes create() => NonResourceAttributes._();
  NonResourceAttributes createEmptyInstance() => create();
  static $pb.PbList<NonResourceAttributes> createRepeated() => $pb.PbList<NonResourceAttributes>();
  @$core.pragma('dart2js:noInline')
  static NonResourceAttributes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NonResourceAttributes>(create);
  static NonResourceAttributes? _defaultInstance;

  /// Path is the URL path of the request
  /// +optional
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  /// Verb is the standard HTTP verb
  /// +optional
  @$pb.TagNumber(2)
  $core.String get verb => $_getSZ(1);
  @$pb.TagNumber(2)
  set verb($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerb() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerb() => clearField(2);
}

/// NonResourceRule holds information that describes a rule for the non-resource
class NonResourceRule extends $pb.GeneratedMessage {
  factory NonResourceRule({
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
  NonResourceRule._() : super();
  factory NonResourceRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NonResourceRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NonResourceRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'verbs')
    ..pPS(2, _omitFieldNames ? '' : 'nonResourceURLs', protoName: 'nonResourceURLs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NonResourceRule clone() => NonResourceRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NonResourceRule copyWith(void Function(NonResourceRule) updates) => super.copyWith((message) => updates(message as NonResourceRule)) as NonResourceRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NonResourceRule create() => NonResourceRule._();
  NonResourceRule createEmptyInstance() => create();
  static $pb.PbList<NonResourceRule> createRepeated() => $pb.PbList<NonResourceRule>();
  @$core.pragma('dart2js:noInline')
  static NonResourceRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NonResourceRule>(create);
  static NonResourceRule? _defaultInstance;

  /// Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch, head, options.  "*" means all.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get verbs => $_getList(0);

  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full,
  /// final step in the path.  "*" means all.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<$core.String> get nonResourceURLs => $_getList(1);
}

/// ResourceAttributes includes the authorization attributes available for resource requests to the Authorizer interface
class ResourceAttributes extends $pb.GeneratedMessage {
  factory ResourceAttributes({
    $core.String? namespace,
    $core.String? verb,
    $core.String? group,
    $core.String? version,
    $core.String? resource,
    $core.String? subresource,
    $core.String? name,
  }) {
    final $result = create();
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (verb != null) {
      $result.verb = verb;
    }
    if (group != null) {
      $result.group = group;
    }
    if (version != null) {
      $result.version = version;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (subresource != null) {
      $result.subresource = subresource;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ResourceAttributes._() : super();
  factory ResourceAttributes.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceAttributes.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceAttributes', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'namespace')
    ..aOS(2, _omitFieldNames ? '' : 'verb')
    ..aOS(3, _omitFieldNames ? '' : 'group')
    ..aOS(4, _omitFieldNames ? '' : 'version')
    ..aOS(5, _omitFieldNames ? '' : 'resource')
    ..aOS(6, _omitFieldNames ? '' : 'subresource')
    ..aOS(7, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceAttributes clone() => ResourceAttributes()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceAttributes copyWith(void Function(ResourceAttributes) updates) => super.copyWith((message) => updates(message as ResourceAttributes)) as ResourceAttributes;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceAttributes create() => ResourceAttributes._();
  ResourceAttributes createEmptyInstance() => create();
  static $pb.PbList<ResourceAttributes> createRepeated() => $pb.PbList<ResourceAttributes>();
  @$core.pragma('dart2js:noInline')
  static ResourceAttributes getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceAttributes>(create);
  static ResourceAttributes? _defaultInstance;

  /// Namespace is the namespace of the action being requested.  Currently, there is no distinction between no namespace and all namespaces
  /// "" (empty) is defaulted for LocalSubjectAccessReviews
  /// "" (empty) is empty for cluster-scoped resources
  /// "" (empty) means "all" for namespace scoped resources from a SubjectAccessReview or SelfSubjectAccessReview
  /// +optional
  @$pb.TagNumber(1)
  $core.String get namespace => $_getSZ(0);
  @$pb.TagNumber(1)
  set namespace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamespace() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespace() => clearField(1);

  /// Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get verb => $_getSZ(1);
  @$pb.TagNumber(2)
  set verb($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasVerb() => $_has(1);
  @$pb.TagNumber(2)
  void clearVerb() => clearField(2);

  /// Group is the API Group of the Resource.  "*" means all.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get group => $_getSZ(2);
  @$pb.TagNumber(3)
  set group($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearGroup() => clearField(3);

  /// Version is the API Version of the Resource.  "*" means all.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get version => $_getSZ(3);
  @$pb.TagNumber(4)
  set version($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasVersion() => $_has(3);
  @$pb.TagNumber(4)
  void clearVersion() => clearField(4);

  /// Resource is one of the existing resource types.  "*" means all.
  /// +optional
  @$pb.TagNumber(5)
  $core.String get resource => $_getSZ(4);
  @$pb.TagNumber(5)
  set resource($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasResource() => $_has(4);
  @$pb.TagNumber(5)
  void clearResource() => clearField(5);

  /// Subresource is one of the existing resource types.  "" means none.
  /// +optional
  @$pb.TagNumber(6)
  $core.String get subresource => $_getSZ(5);
  @$pb.TagNumber(6)
  set subresource($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasSubresource() => $_has(5);
  @$pb.TagNumber(6)
  void clearSubresource() => clearField(6);

  /// Name is the name of the resource being requested for a "get" or deleted for a "delete". "" (empty) means all.
  /// +optional
  @$pb.TagNumber(7)
  $core.String get name => $_getSZ(6);
  @$pb.TagNumber(7)
  set name($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasName() => $_has(6);
  @$pb.TagNumber(7)
  void clearName() => clearField(7);
}

/// ResourceRule is the list of actions the subject is allowed to perform on resources. The list ordering isn't significant,
/// may contain duplicates, and possibly be incomplete.
class ResourceRule extends $pb.GeneratedMessage {
  factory ResourceRule({
    $core.Iterable<$core.String>? verbs,
    $core.Iterable<$core.String>? apiGroups,
    $core.Iterable<$core.String>? resources,
    $core.Iterable<$core.String>? resourceNames,
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
    if (resourceNames != null) {
      $result.resourceNames.addAll(resourceNames);
    }
    return $result;
  }
  ResourceRule._() : super();
  factory ResourceRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'verbs')
    ..pPS(2, _omitFieldNames ? '' : 'apiGroups', protoName: 'apiGroups')
    ..pPS(3, _omitFieldNames ? '' : 'resources')
    ..pPS(4, _omitFieldNames ? '' : 'resourceNames', protoName: 'resourceNames')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceRule clone() => ResourceRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceRule copyWith(void Function(ResourceRule) updates) => super.copyWith((message) => updates(message as ResourceRule)) as ResourceRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceRule create() => ResourceRule._();
  ResourceRule createEmptyInstance() => create();
  static $pb.PbList<ResourceRule> createRepeated() => $pb.PbList<ResourceRule>();
  @$core.pragma('dart2js:noInline')
  static ResourceRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceRule>(create);
  static ResourceRule? _defaultInstance;

  /// Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update, delete, proxy.  "*" means all.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get verbs => $_getList(0);

  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of
  /// the enumerated resources in any API group will be allowed.  "*" means all.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<$core.String> get apiGroups => $_getList(1);

  /// Resources is a list of resources this rule applies to.  "*" means all in the specified apiGroups.
  ///  "*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$core.String> get resources => $_getList(2);

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.  "*" means all.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<$core.String> get resourceNames => $_getList(3);
}

/// SelfSubjectAccessReview checks whether or the current user can perform an action.  Not filling in a
/// spec.namespace means "in all namespaces".  Self is a special case, because users should always be able
/// to check whether they can perform an action
class SelfSubjectAccessReview extends $pb.GeneratedMessage {
  factory SelfSubjectAccessReview({
    $0.ObjectMeta? metadata,
    SelfSubjectAccessReviewSpec? spec,
    SubjectAccessReviewStatus? status,
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
  SelfSubjectAccessReview._() : super();
  factory SelfSubjectAccessReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfSubjectAccessReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfSubjectAccessReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<SelfSubjectAccessReviewSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: SelfSubjectAccessReviewSpec.create)
    ..aOM<SubjectAccessReviewStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: SubjectAccessReviewStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfSubjectAccessReview clone() => SelfSubjectAccessReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfSubjectAccessReview copyWith(void Function(SelfSubjectAccessReview) updates) => super.copyWith((message) => updates(message as SelfSubjectAccessReview)) as SelfSubjectAccessReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfSubjectAccessReview create() => SelfSubjectAccessReview._();
  SelfSubjectAccessReview createEmptyInstance() => create();
  static $pb.PbList<SelfSubjectAccessReview> createRepeated() => $pb.PbList<SelfSubjectAccessReview>();
  @$core.pragma('dart2js:noInline')
  static SelfSubjectAccessReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfSubjectAccessReview>(create);
  static SelfSubjectAccessReview? _defaultInstance;

  /// Standard list metadata.
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

  /// Spec holds information about the request being evaluated.  user and groups must be empty
  @$pb.TagNumber(2)
  SelfSubjectAccessReviewSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(SelfSubjectAccessReviewSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  SelfSubjectAccessReviewSpec ensureSpec() => $_ensure(1);

  /// Status is filled in by the server and indicates whether the request is allowed or not
  /// +optional
  @$pb.TagNumber(3)
  SubjectAccessReviewStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(SubjectAccessReviewStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  SubjectAccessReviewStatus ensureStatus() => $_ensure(2);
}

/// SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes
/// and NonResourceAuthorizationAttributes must be set
class SelfSubjectAccessReviewSpec extends $pb.GeneratedMessage {
  factory SelfSubjectAccessReviewSpec({
    ResourceAttributes? resourceAttributes,
    NonResourceAttributes? nonResourceAttributes,
  }) {
    final $result = create();
    if (resourceAttributes != null) {
      $result.resourceAttributes = resourceAttributes;
    }
    if (nonResourceAttributes != null) {
      $result.nonResourceAttributes = nonResourceAttributes;
    }
    return $result;
  }
  SelfSubjectAccessReviewSpec._() : super();
  factory SelfSubjectAccessReviewSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfSubjectAccessReviewSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfSubjectAccessReviewSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOM<ResourceAttributes>(1, _omitFieldNames ? '' : 'resourceAttributes', protoName: 'resourceAttributes', subBuilder: ResourceAttributes.create)
    ..aOM<NonResourceAttributes>(2, _omitFieldNames ? '' : 'nonResourceAttributes', protoName: 'nonResourceAttributes', subBuilder: NonResourceAttributes.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfSubjectAccessReviewSpec clone() => SelfSubjectAccessReviewSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfSubjectAccessReviewSpec copyWith(void Function(SelfSubjectAccessReviewSpec) updates) => super.copyWith((message) => updates(message as SelfSubjectAccessReviewSpec)) as SelfSubjectAccessReviewSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfSubjectAccessReviewSpec create() => SelfSubjectAccessReviewSpec._();
  SelfSubjectAccessReviewSpec createEmptyInstance() => create();
  static $pb.PbList<SelfSubjectAccessReviewSpec> createRepeated() => $pb.PbList<SelfSubjectAccessReviewSpec>();
  @$core.pragma('dart2js:noInline')
  static SelfSubjectAccessReviewSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfSubjectAccessReviewSpec>(create);
  static SelfSubjectAccessReviewSpec? _defaultInstance;

  /// ResourceAuthorizationAttributes describes information for a resource access request
  /// +optional
  @$pb.TagNumber(1)
  ResourceAttributes get resourceAttributes => $_getN(0);
  @$pb.TagNumber(1)
  set resourceAttributes(ResourceAttributes v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResourceAttributes() => $_has(0);
  @$pb.TagNumber(1)
  void clearResourceAttributes() => clearField(1);
  @$pb.TagNumber(1)
  ResourceAttributes ensureResourceAttributes() => $_ensure(0);

  /// NonResourceAttributes describes information for a non-resource access request
  /// +optional
  @$pb.TagNumber(2)
  NonResourceAttributes get nonResourceAttributes => $_getN(1);
  @$pb.TagNumber(2)
  set nonResourceAttributes(NonResourceAttributes v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNonResourceAttributes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNonResourceAttributes() => clearField(2);
  @$pb.TagNumber(2)
  NonResourceAttributes ensureNonResourceAttributes() => $_ensure(1);
}

/// SelfSubjectRulesReview enumerates the set of actions the current user can perform within a namespace.
/// The returned list of actions may be incomplete depending on the server's authorization mode,
/// and any errors experienced during the evaluation. SelfSubjectRulesReview should be used by UIs to show/hide actions,
/// or to quickly let an end user reason about their permissions. It should NOT Be used by external systems to
/// drive authorization decisions as this raises confused deputy, cache lifetime/revocation, and correctness concerns.
/// SubjectAccessReview, and LocalAccessReview are the correct way to defer authorization decisions to the API server.
class SelfSubjectRulesReview extends $pb.GeneratedMessage {
  factory SelfSubjectRulesReview({
    $0.ObjectMeta? metadata,
    SelfSubjectRulesReviewSpec? spec,
    SubjectRulesReviewStatus? status,
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
  SelfSubjectRulesReview._() : super();
  factory SelfSubjectRulesReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfSubjectRulesReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfSubjectRulesReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<SelfSubjectRulesReviewSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: SelfSubjectRulesReviewSpec.create)
    ..aOM<SubjectRulesReviewStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: SubjectRulesReviewStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfSubjectRulesReview clone() => SelfSubjectRulesReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfSubjectRulesReview copyWith(void Function(SelfSubjectRulesReview) updates) => super.copyWith((message) => updates(message as SelfSubjectRulesReview)) as SelfSubjectRulesReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfSubjectRulesReview create() => SelfSubjectRulesReview._();
  SelfSubjectRulesReview createEmptyInstance() => create();
  static $pb.PbList<SelfSubjectRulesReview> createRepeated() => $pb.PbList<SelfSubjectRulesReview>();
  @$core.pragma('dart2js:noInline')
  static SelfSubjectRulesReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfSubjectRulesReview>(create);
  static SelfSubjectRulesReview? _defaultInstance;

  /// Standard list metadata.
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

  /// Spec holds information about the request being evaluated.
  @$pb.TagNumber(2)
  SelfSubjectRulesReviewSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(SelfSubjectRulesReviewSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  SelfSubjectRulesReviewSpec ensureSpec() => $_ensure(1);

  /// Status is filled in by the server and indicates the set of actions a user can perform.
  /// +optional
  @$pb.TagNumber(3)
  SubjectRulesReviewStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(SubjectRulesReviewStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  SubjectRulesReviewStatus ensureStatus() => $_ensure(2);
}

/// SelfSubjectRulesReviewSpec defines the specification for SelfSubjectRulesReview.
class SelfSubjectRulesReviewSpec extends $pb.GeneratedMessage {
  factory SelfSubjectRulesReviewSpec({
    $core.String? namespace,
  }) {
    final $result = create();
    if (namespace != null) {
      $result.namespace = namespace;
    }
    return $result;
  }
  SelfSubjectRulesReviewSpec._() : super();
  factory SelfSubjectRulesReviewSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfSubjectRulesReviewSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfSubjectRulesReviewSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'namespace')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfSubjectRulesReviewSpec clone() => SelfSubjectRulesReviewSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfSubjectRulesReviewSpec copyWith(void Function(SelfSubjectRulesReviewSpec) updates) => super.copyWith((message) => updates(message as SelfSubjectRulesReviewSpec)) as SelfSubjectRulesReviewSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfSubjectRulesReviewSpec create() => SelfSubjectRulesReviewSpec._();
  SelfSubjectRulesReviewSpec createEmptyInstance() => create();
  static $pb.PbList<SelfSubjectRulesReviewSpec> createRepeated() => $pb.PbList<SelfSubjectRulesReviewSpec>();
  @$core.pragma('dart2js:noInline')
  static SelfSubjectRulesReviewSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfSubjectRulesReviewSpec>(create);
  static SelfSubjectRulesReviewSpec? _defaultInstance;

  /// Namespace to evaluate rules for. Required.
  @$pb.TagNumber(1)
  $core.String get namespace => $_getSZ(0);
  @$pb.TagNumber(1)
  set namespace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamespace() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespace() => clearField(1);
}

/// SubjectAccessReview checks whether or not a user or group can perform an action.
class SubjectAccessReview extends $pb.GeneratedMessage {
  factory SubjectAccessReview({
    $0.ObjectMeta? metadata,
    SubjectAccessReviewSpec? spec,
    SubjectAccessReviewStatus? status,
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
  SubjectAccessReview._() : super();
  factory SubjectAccessReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubjectAccessReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubjectAccessReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<SubjectAccessReviewSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: SubjectAccessReviewSpec.create)
    ..aOM<SubjectAccessReviewStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: SubjectAccessReviewStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubjectAccessReview clone() => SubjectAccessReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubjectAccessReview copyWith(void Function(SubjectAccessReview) updates) => super.copyWith((message) => updates(message as SubjectAccessReview)) as SubjectAccessReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubjectAccessReview create() => SubjectAccessReview._();
  SubjectAccessReview createEmptyInstance() => create();
  static $pb.PbList<SubjectAccessReview> createRepeated() => $pb.PbList<SubjectAccessReview>();
  @$core.pragma('dart2js:noInline')
  static SubjectAccessReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubjectAccessReview>(create);
  static SubjectAccessReview? _defaultInstance;

  /// Standard list metadata.
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

  /// Spec holds information about the request being evaluated
  @$pb.TagNumber(2)
  SubjectAccessReviewSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(SubjectAccessReviewSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  SubjectAccessReviewSpec ensureSpec() => $_ensure(1);

  /// Status is filled in by the server and indicates whether the request is allowed or not
  /// +optional
  @$pb.TagNumber(3)
  SubjectAccessReviewStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(SubjectAccessReviewStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  SubjectAccessReviewStatus ensureStatus() => $_ensure(2);
}

/// SubjectAccessReviewSpec is a description of the access request.  Exactly one of ResourceAuthorizationAttributes
/// and NonResourceAuthorizationAttributes must be set
class SubjectAccessReviewSpec extends $pb.GeneratedMessage {
  factory SubjectAccessReviewSpec({
    ResourceAttributes? resourceAttributes,
    NonResourceAttributes? nonResourceAttributes,
    $core.String? user,
    $core.Iterable<$core.String>? group,
    $core.Map<$core.String, ExtraValue>? extra,
    $core.String? uid,
  }) {
    final $result = create();
    if (resourceAttributes != null) {
      $result.resourceAttributes = resourceAttributes;
    }
    if (nonResourceAttributes != null) {
      $result.nonResourceAttributes = nonResourceAttributes;
    }
    if (user != null) {
      $result.user = user;
    }
    if (group != null) {
      $result.group.addAll(group);
    }
    if (extra != null) {
      $result.extra.addAll(extra);
    }
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  SubjectAccessReviewSpec._() : super();
  factory SubjectAccessReviewSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubjectAccessReviewSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubjectAccessReviewSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOM<ResourceAttributes>(1, _omitFieldNames ? '' : 'resourceAttributes', protoName: 'resourceAttributes', subBuilder: ResourceAttributes.create)
    ..aOM<NonResourceAttributes>(2, _omitFieldNames ? '' : 'nonResourceAttributes', protoName: 'nonResourceAttributes', subBuilder: NonResourceAttributes.create)
    ..aOS(3, _omitFieldNames ? '' : 'user')
    ..pPS(4, _omitFieldNames ? '' : 'group')
    ..m<$core.String, ExtraValue>(5, _omitFieldNames ? '' : 'extra', entryClassName: 'SubjectAccessReviewSpec.ExtraEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ExtraValue.create, valueDefaultOrMaker: ExtraValue.getDefault, packageName: const $pb.PackageName('api.authorization.v1beta1'))
    ..aOS(6, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubjectAccessReviewSpec clone() => SubjectAccessReviewSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubjectAccessReviewSpec copyWith(void Function(SubjectAccessReviewSpec) updates) => super.copyWith((message) => updates(message as SubjectAccessReviewSpec)) as SubjectAccessReviewSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubjectAccessReviewSpec create() => SubjectAccessReviewSpec._();
  SubjectAccessReviewSpec createEmptyInstance() => create();
  static $pb.PbList<SubjectAccessReviewSpec> createRepeated() => $pb.PbList<SubjectAccessReviewSpec>();
  @$core.pragma('dart2js:noInline')
  static SubjectAccessReviewSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubjectAccessReviewSpec>(create);
  static SubjectAccessReviewSpec? _defaultInstance;

  /// ResourceAuthorizationAttributes describes information for a resource access request
  /// +optional
  @$pb.TagNumber(1)
  ResourceAttributes get resourceAttributes => $_getN(0);
  @$pb.TagNumber(1)
  set resourceAttributes(ResourceAttributes v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResourceAttributes() => $_has(0);
  @$pb.TagNumber(1)
  void clearResourceAttributes() => clearField(1);
  @$pb.TagNumber(1)
  ResourceAttributes ensureResourceAttributes() => $_ensure(0);

  /// NonResourceAttributes describes information for a non-resource access request
  /// +optional
  @$pb.TagNumber(2)
  NonResourceAttributes get nonResourceAttributes => $_getN(1);
  @$pb.TagNumber(2)
  set nonResourceAttributes(NonResourceAttributes v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNonResourceAttributes() => $_has(1);
  @$pb.TagNumber(2)
  void clearNonResourceAttributes() => clearField(2);
  @$pb.TagNumber(2)
  NonResourceAttributes ensureNonResourceAttributes() => $_ensure(1);

  /// User is the user you're testing for.
  /// If you specify "User" but not "Group", then is it interpreted as "What if User were not a member of any groups
  /// +optional
  @$pb.TagNumber(3)
  $core.String get user => $_getSZ(2);
  @$pb.TagNumber(3)
  set user($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUser() => $_has(2);
  @$pb.TagNumber(3)
  void clearUser() => clearField(3);

  /// Groups is the groups you're testing for.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<$core.String> get group => $_getList(3);

  /// Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that is input to the authorizer
  /// it needs a reflection here.
  /// +optional
  @$pb.TagNumber(5)
  $core.Map<$core.String, ExtraValue> get extra => $_getMap(4);

  /// UID information about the requesting user.
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

/// SubjectAccessReviewStatus
class SubjectAccessReviewStatus extends $pb.GeneratedMessage {
  factory SubjectAccessReviewStatus({
    $core.bool? allowed,
    $core.String? reason,
    $core.String? evaluationError,
    $core.bool? denied,
  }) {
    final $result = create();
    if (allowed != null) {
      $result.allowed = allowed;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (evaluationError != null) {
      $result.evaluationError = evaluationError;
    }
    if (denied != null) {
      $result.denied = denied;
    }
    return $result;
  }
  SubjectAccessReviewStatus._() : super();
  factory SubjectAccessReviewStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubjectAccessReviewStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubjectAccessReviewStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allowed')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..aOS(3, _omitFieldNames ? '' : 'evaluationError', protoName: 'evaluationError')
    ..aOB(4, _omitFieldNames ? '' : 'denied')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubjectAccessReviewStatus clone() => SubjectAccessReviewStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubjectAccessReviewStatus copyWith(void Function(SubjectAccessReviewStatus) updates) => super.copyWith((message) => updates(message as SubjectAccessReviewStatus)) as SubjectAccessReviewStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubjectAccessReviewStatus create() => SubjectAccessReviewStatus._();
  SubjectAccessReviewStatus createEmptyInstance() => create();
  static $pb.PbList<SubjectAccessReviewStatus> createRepeated() => $pb.PbList<SubjectAccessReviewStatus>();
  @$core.pragma('dart2js:noInline')
  static SubjectAccessReviewStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubjectAccessReviewStatus>(create);
  static SubjectAccessReviewStatus? _defaultInstance;

  /// Allowed is required. True if the action would be allowed, false otherwise.
  @$pb.TagNumber(1)
  $core.bool get allowed => $_getBF(0);
  @$pb.TagNumber(1)
  set allowed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAllowed() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllowed() => clearField(1);

  /// Reason is optional.  It indicates why a request was allowed or denied.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);

  /// EvaluationError is an indication that some error occurred during the authorization check.
  /// It is entirely possible to get an error and be able to continue determine authorization status in spite of it.
  /// For instance, RBAC can be missing a role, but enough roles are still present and bound to reason about the request.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get evaluationError => $_getSZ(2);
  @$pb.TagNumber(3)
  set evaluationError($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEvaluationError() => $_has(2);
  @$pb.TagNumber(3)
  void clearEvaluationError() => clearField(3);

  /// Denied is optional. True if the action would be denied, otherwise
  /// false. If both allowed is false and denied is false, then the
  /// authorizer has no opinion on whether to authorize the action. Denied
  /// may not be true if Allowed is true.
  /// +optional
  @$pb.TagNumber(4)
  $core.bool get denied => $_getBF(3);
  @$pb.TagNumber(4)
  set denied($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDenied() => $_has(3);
  @$pb.TagNumber(4)
  void clearDenied() => clearField(4);
}

/// SubjectRulesReviewStatus contains the result of a rules check. This check can be incomplete depending on
/// the set of authorizers the server is configured with and any errors experienced during evaluation.
/// Because authorization rules are additive, if a rule appears in a list it's safe to assume the subject has that permission,
/// even if that list is incomplete.
class SubjectRulesReviewStatus extends $pb.GeneratedMessage {
  factory SubjectRulesReviewStatus({
    $core.Iterable<ResourceRule>? resourceRules,
    $core.Iterable<NonResourceRule>? nonResourceRules,
    $core.bool? incomplete,
    $core.String? evaluationError,
  }) {
    final $result = create();
    if (resourceRules != null) {
      $result.resourceRules.addAll(resourceRules);
    }
    if (nonResourceRules != null) {
      $result.nonResourceRules.addAll(nonResourceRules);
    }
    if (incomplete != null) {
      $result.incomplete = incomplete;
    }
    if (evaluationError != null) {
      $result.evaluationError = evaluationError;
    }
    return $result;
  }
  SubjectRulesReviewStatus._() : super();
  factory SubjectRulesReviewStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubjectRulesReviewStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SubjectRulesReviewStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authorization.v1beta1'), createEmptyInstance: create)
    ..pc<ResourceRule>(1, _omitFieldNames ? '' : 'resourceRules', $pb.PbFieldType.PM, protoName: 'resourceRules', subBuilder: ResourceRule.create)
    ..pc<NonResourceRule>(2, _omitFieldNames ? '' : 'nonResourceRules', $pb.PbFieldType.PM, protoName: 'nonResourceRules', subBuilder: NonResourceRule.create)
    ..aOB(3, _omitFieldNames ? '' : 'incomplete')
    ..aOS(4, _omitFieldNames ? '' : 'evaluationError', protoName: 'evaluationError')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubjectRulesReviewStatus clone() => SubjectRulesReviewStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubjectRulesReviewStatus copyWith(void Function(SubjectRulesReviewStatus) updates) => super.copyWith((message) => updates(message as SubjectRulesReviewStatus)) as SubjectRulesReviewStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SubjectRulesReviewStatus create() => SubjectRulesReviewStatus._();
  SubjectRulesReviewStatus createEmptyInstance() => create();
  static $pb.PbList<SubjectRulesReviewStatus> createRepeated() => $pb.PbList<SubjectRulesReviewStatus>();
  @$core.pragma('dart2js:noInline')
  static SubjectRulesReviewStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubjectRulesReviewStatus>(create);
  static SubjectRulesReviewStatus? _defaultInstance;

  /// ResourceRules is the list of actions the subject is allowed to perform on resources.
  /// The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<ResourceRule> get resourceRules => $_getList(0);

  /// NonResourceRules is the list of actions the subject is allowed to perform on non-resources.
  /// The list ordering isn't significant, may contain duplicates, and possibly be incomplete.
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<NonResourceRule> get nonResourceRules => $_getList(1);

  /// Incomplete is true when the rules returned by this call are incomplete. This is most commonly
  /// encountered when an authorizer, such as an external authorizer, doesn't support rules evaluation.
  @$pb.TagNumber(3)
  $core.bool get incomplete => $_getBF(2);
  @$pb.TagNumber(3)
  set incomplete($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIncomplete() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncomplete() => clearField(3);

  /// EvaluationError can appear in combination with Rules. It indicates an error occurred during
  /// rule evaluation, such as an authorizer that doesn't support rule evaluation, and that
  /// ResourceRules and/or NonResourceRules may be incomplete.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get evaluationError => $_getSZ(3);
  @$pb.TagNumber(4)
  set evaluationError($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasEvaluationError() => $_has(3);
  @$pb.TagNumber(4)
  void clearEvaluationError() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
