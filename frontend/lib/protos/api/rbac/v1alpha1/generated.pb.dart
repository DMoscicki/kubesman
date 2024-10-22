//
//  Generated code. Do not modify.
//  source: api/rbac/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// AggregationRule describes how to locate ClusterRoles to aggregate into the ClusterRole
class AggregationRule extends $pb.GeneratedMessage {
  factory AggregationRule({
    $core.Iterable<$0.LabelSelector>? clusterRoleSelectors,
  }) {
    final $result = create();
    if (clusterRoleSelectors != null) {
      $result.clusterRoleSelectors.addAll(clusterRoleSelectors);
    }
    return $result;
  }
  AggregationRule._() : super();
  factory AggregationRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AggregationRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AggregationRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..pc<$0.LabelSelector>(1, _omitFieldNames ? '' : 'clusterRoleSelectors', $pb.PbFieldType.PM, protoName: 'clusterRoleSelectors', subBuilder: $0.LabelSelector.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AggregationRule clone() => AggregationRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AggregationRule copyWith(void Function(AggregationRule) updates) => super.copyWith((message) => updates(message as AggregationRule)) as AggregationRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AggregationRule create() => AggregationRule._();
  AggregationRule createEmptyInstance() => create();
  static $pb.PbList<AggregationRule> createRepeated() => $pb.PbList<AggregationRule>();
  @$core.pragma('dart2js:noInline')
  static AggregationRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AggregationRule>(create);
  static AggregationRule? _defaultInstance;

  /// ClusterRoleSelectors holds a list of selectors which will be used to find ClusterRoles and create the rules.
  /// If any of the selectors match, then the ClusterRole's permissions will be added
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$0.LabelSelector> get clusterRoleSelectors => $_getList(0);
}

/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
/// Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRole, and will no longer be served in v1.22.
class ClusterRole extends $pb.GeneratedMessage {
  factory ClusterRole({
    $0.ObjectMeta? metadata,
    $core.Iterable<PolicyRule>? rules,
    AggregationRule? aggregationRule,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (rules != null) {
      $result.rules.addAll(rules);
    }
    if (aggregationRule != null) {
      $result.aggregationRule = aggregationRule;
    }
    return $result;
  }
  ClusterRole._() : super();
  factory ClusterRole.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClusterRole.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClusterRole', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..pc<PolicyRule>(2, _omitFieldNames ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: PolicyRule.create)
    ..aOM<AggregationRule>(3, _omitFieldNames ? '' : 'aggregationRule', protoName: 'aggregationRule', subBuilder: AggregationRule.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClusterRole clone() => ClusterRole()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClusterRole copyWith(void Function(ClusterRole) updates) => super.copyWith((message) => updates(message as ClusterRole)) as ClusterRole;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterRole create() => ClusterRole._();
  ClusterRole createEmptyInstance() => create();
  static $pb.PbList<ClusterRole> createRepeated() => $pb.PbList<ClusterRole>();
  @$core.pragma('dart2js:noInline')
  static ClusterRole getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClusterRole>(create);
  static ClusterRole? _defaultInstance;

  /// Standard object's metadata.
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

  /// Rules holds all the PolicyRules for this ClusterRole
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<PolicyRule> get rules => $_getList(1);

  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole.
  /// If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be
  /// stomped by the controller.
  /// +optional
  @$pb.TagNumber(3)
  AggregationRule get aggregationRule => $_getN(2);
  @$pb.TagNumber(3)
  set aggregationRule(AggregationRule v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAggregationRule() => $_has(2);
  @$pb.TagNumber(3)
  void clearAggregationRule() => clearField(3);
  @$pb.TagNumber(3)
  AggregationRule ensureAggregationRule() => $_ensure(2);
}

/// ClusterRoleBinding references a ClusterRole, but not contain it.  It can reference a ClusterRole in the global namespace,
/// and adds who information via Subject.
/// Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoleBinding, and will no longer be served in v1.22.
class ClusterRoleBinding extends $pb.GeneratedMessage {
  factory ClusterRoleBinding({
    $0.ObjectMeta? metadata,
    $core.Iterable<Subject>? subjects,
    RoleRef? roleRef,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (subjects != null) {
      $result.subjects.addAll(subjects);
    }
    if (roleRef != null) {
      $result.roleRef = roleRef;
    }
    return $result;
  }
  ClusterRoleBinding._() : super();
  factory ClusterRoleBinding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClusterRoleBinding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClusterRoleBinding', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..pc<Subject>(2, _omitFieldNames ? '' : 'subjects', $pb.PbFieldType.PM, subBuilder: Subject.create)
    ..aOM<RoleRef>(3, _omitFieldNames ? '' : 'roleRef', protoName: 'roleRef', subBuilder: RoleRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClusterRoleBinding clone() => ClusterRoleBinding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClusterRoleBinding copyWith(void Function(ClusterRoleBinding) updates) => super.copyWith((message) => updates(message as ClusterRoleBinding)) as ClusterRoleBinding;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterRoleBinding create() => ClusterRoleBinding._();
  ClusterRoleBinding createEmptyInstance() => create();
  static $pb.PbList<ClusterRoleBinding> createRepeated() => $pb.PbList<ClusterRoleBinding>();
  @$core.pragma('dart2js:noInline')
  static ClusterRoleBinding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClusterRoleBinding>(create);
  static ClusterRoleBinding? _defaultInstance;

  /// Standard object's metadata.
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

  /// Subjects holds references to the objects the role applies to.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<Subject> get subjects => $_getList(1);

  /// RoleRef can only reference a ClusterRole in the global namespace.
  /// If the RoleRef cannot be resolved, the Authorizer must return an error.
  @$pb.TagNumber(3)
  RoleRef get roleRef => $_getN(2);
  @$pb.TagNumber(3)
  set roleRef(RoleRef v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoleRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleRef() => clearField(3);
  @$pb.TagNumber(3)
  RoleRef ensureRoleRef() => $_ensure(2);
}

/// ClusterRoleBindingList is a collection of ClusterRoleBindings.
/// Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoleBindings, and will no longer be served in v1.22.
class ClusterRoleBindingList extends $pb.GeneratedMessage {
  factory ClusterRoleBindingList({
    $0.ListMeta? metadata,
    $core.Iterable<ClusterRoleBinding>? items,
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
  ClusterRoleBindingList._() : super();
  factory ClusterRoleBindingList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClusterRoleBindingList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClusterRoleBindingList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<ClusterRoleBinding>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ClusterRoleBinding.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClusterRoleBindingList clone() => ClusterRoleBindingList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClusterRoleBindingList copyWith(void Function(ClusterRoleBindingList) updates) => super.copyWith((message) => updates(message as ClusterRoleBindingList)) as ClusterRoleBindingList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterRoleBindingList create() => ClusterRoleBindingList._();
  ClusterRoleBindingList createEmptyInstance() => create();
  static $pb.PbList<ClusterRoleBindingList> createRepeated() => $pb.PbList<ClusterRoleBindingList>();
  @$core.pragma('dart2js:noInline')
  static ClusterRoleBindingList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClusterRoleBindingList>(create);
  static ClusterRoleBindingList? _defaultInstance;

  /// Standard object's metadata.
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

  /// Items is a list of ClusterRoleBindings
  @$pb.TagNumber(2)
  $core.List<ClusterRoleBinding> get items => $_getList(1);
}

/// ClusterRoleList is a collection of ClusterRoles.
/// Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 ClusterRoles, and will no longer be served in v1.22.
class ClusterRoleList extends $pb.GeneratedMessage {
  factory ClusterRoleList({
    $0.ListMeta? metadata,
    $core.Iterable<ClusterRole>? items,
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
  ClusterRoleList._() : super();
  factory ClusterRoleList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClusterRoleList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClusterRoleList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<ClusterRole>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ClusterRole.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClusterRoleList clone() => ClusterRoleList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClusterRoleList copyWith(void Function(ClusterRoleList) updates) => super.copyWith((message) => updates(message as ClusterRoleList)) as ClusterRoleList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterRoleList create() => ClusterRoleList._();
  ClusterRoleList createEmptyInstance() => create();
  static $pb.PbList<ClusterRoleList> createRepeated() => $pb.PbList<ClusterRoleList>();
  @$core.pragma('dart2js:noInline')
  static ClusterRoleList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClusterRoleList>(create);
  static ClusterRoleList? _defaultInstance;

  /// Standard object's metadata.
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

  /// Items is a list of ClusterRoles
  @$pb.TagNumber(2)
  $core.List<ClusterRole> get items => $_getList(1);
}

/// PolicyRule holds information that describes a policy rule, but does not contain information
/// about who the rule applies to or which namespace the rule applies to.
class PolicyRule extends $pb.GeneratedMessage {
  factory PolicyRule({
    $core.Iterable<$core.String>? verbs,
    $core.Iterable<$core.String>? apiGroups,
    $core.Iterable<$core.String>? resources,
    $core.Iterable<$core.String>? resourceNames,
    $core.Iterable<$core.String>? nonResourceURLs,
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
    if (nonResourceURLs != null) {
      $result.nonResourceURLs.addAll(nonResourceURLs);
    }
    return $result;
  }
  PolicyRule._() : super();
  factory PolicyRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PolicyRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'verbs')
    ..pPS(3, _omitFieldNames ? '' : 'apiGroups', protoName: 'apiGroups')
    ..pPS(4, _omitFieldNames ? '' : 'resources')
    ..pPS(5, _omitFieldNames ? '' : 'resourceNames', protoName: 'resourceNames')
    ..pPS(6, _omitFieldNames ? '' : 'nonResourceURLs', protoName: 'nonResourceURLs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PolicyRule clone() => PolicyRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PolicyRule copyWith(void Function(PolicyRule) updates) => super.copyWith((message) => updates(message as PolicyRule)) as PolicyRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PolicyRule create() => PolicyRule._();
  PolicyRule createEmptyInstance() => create();
  static $pb.PbList<PolicyRule> createRepeated() => $pb.PbList<PolicyRule>();
  @$core.pragma('dart2js:noInline')
  static PolicyRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyRule>(create);
  static PolicyRule? _defaultInstance;

  /// Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*' represents all verbs.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get verbs => $_getList(0);

  /// APIGroups is the name of the APIGroup that contains the resources.  If multiple API groups are specified, any action requested against one of
  /// the enumerated resources in any API group will be allowed. "" represents the core API group and "*" represents all API groups.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$core.String> get apiGroups => $_getList(1);

  /// Resources is a list of resources this rule applies to. '*' represents all resources.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<$core.String> get resources => $_getList(2);

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(5)
  $core.List<$core.String> get resourceNames => $_getList(3);

  /// NonResourceURLs is a set of partial urls that a user should have access to.  *s are allowed, but only as the full, final step in the path
  /// Since non-resource URLs are not namespaced, this field is only applicable for ClusterRoles referenced from a ClusterRoleBinding.
  /// Rules can either apply to API resources (such as "pods" or "secrets") or non-resource URL paths (such as "/api"),  but not both.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(6)
  $core.List<$core.String> get nonResourceURLs => $_getList(4);
}

/// Role is a namespaced, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding.
/// Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 Role, and will no longer be served in v1.22.
class Role extends $pb.GeneratedMessage {
  factory Role({
    $0.ObjectMeta? metadata,
    $core.Iterable<PolicyRule>? rules,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (rules != null) {
      $result.rules.addAll(rules);
    }
    return $result;
  }
  Role._() : super();
  factory Role.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Role.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Role', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..pc<PolicyRule>(2, _omitFieldNames ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: PolicyRule.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Role clone() => Role()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Role copyWith(void Function(Role) updates) => super.copyWith((message) => updates(message as Role)) as Role;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Role create() => Role._();
  Role createEmptyInstance() => create();
  static $pb.PbList<Role> createRepeated() => $pb.PbList<Role>();
  @$core.pragma('dart2js:noInline')
  static Role getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Role>(create);
  static Role? _defaultInstance;

  /// Standard object's metadata.
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

  /// Rules holds all the PolicyRules for this Role
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<PolicyRule> get rules => $_getList(1);
}

/// RoleBinding references a role, but does not contain it.  It can reference a Role in the same namespace or a ClusterRole in the global namespace.
/// It adds who information via Subjects and namespace information by which namespace it exists in.  RoleBindings in a given
/// namespace only have effect in that namespace.
/// Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleBinding, and will no longer be served in v1.22.
class RoleBinding extends $pb.GeneratedMessage {
  factory RoleBinding({
    $0.ObjectMeta? metadata,
    $core.Iterable<Subject>? subjects,
    RoleRef? roleRef,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (subjects != null) {
      $result.subjects.addAll(subjects);
    }
    if (roleRef != null) {
      $result.roleRef = roleRef;
    }
    return $result;
  }
  RoleBinding._() : super();
  factory RoleBinding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoleBinding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoleBinding', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..pc<Subject>(2, _omitFieldNames ? '' : 'subjects', $pb.PbFieldType.PM, subBuilder: Subject.create)
    ..aOM<RoleRef>(3, _omitFieldNames ? '' : 'roleRef', protoName: 'roleRef', subBuilder: RoleRef.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoleBinding clone() => RoleBinding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoleBinding copyWith(void Function(RoleBinding) updates) => super.copyWith((message) => updates(message as RoleBinding)) as RoleBinding;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoleBinding create() => RoleBinding._();
  RoleBinding createEmptyInstance() => create();
  static $pb.PbList<RoleBinding> createRepeated() => $pb.PbList<RoleBinding>();
  @$core.pragma('dart2js:noInline')
  static RoleBinding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoleBinding>(create);
  static RoleBinding? _defaultInstance;

  /// Standard object's metadata.
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

  /// Subjects holds references to the objects the role applies to.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<Subject> get subjects => $_getList(1);

  /// RoleRef can reference a Role in the current namespace or a ClusterRole in the global namespace.
  /// If the RoleRef cannot be resolved, the Authorizer must return an error.
  @$pb.TagNumber(3)
  RoleRef get roleRef => $_getN(2);
  @$pb.TagNumber(3)
  set roleRef(RoleRef v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasRoleRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRoleRef() => clearField(3);
  @$pb.TagNumber(3)
  RoleRef ensureRoleRef() => $_ensure(2);
}

/// RoleBindingList is a collection of RoleBindings
/// Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleBindingList, and will no longer be served in v1.22.
class RoleBindingList extends $pb.GeneratedMessage {
  factory RoleBindingList({
    $0.ListMeta? metadata,
    $core.Iterable<RoleBinding>? items,
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
  RoleBindingList._() : super();
  factory RoleBindingList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoleBindingList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoleBindingList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<RoleBinding>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RoleBinding.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoleBindingList clone() => RoleBindingList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoleBindingList copyWith(void Function(RoleBindingList) updates) => super.copyWith((message) => updates(message as RoleBindingList)) as RoleBindingList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoleBindingList create() => RoleBindingList._();
  RoleBindingList createEmptyInstance() => create();
  static $pb.PbList<RoleBindingList> createRepeated() => $pb.PbList<RoleBindingList>();
  @$core.pragma('dart2js:noInline')
  static RoleBindingList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoleBindingList>(create);
  static RoleBindingList? _defaultInstance;

  /// Standard object's metadata.
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

  /// Items is a list of RoleBindings
  @$pb.TagNumber(2)
  $core.List<RoleBinding> get items => $_getList(1);
}

/// RoleList is a collection of Roles.
/// Deprecated in v1.17 in favor of rbac.authorization.k8s.io/v1 RoleList, and will no longer be served in v1.22.
class RoleList extends $pb.GeneratedMessage {
  factory RoleList({
    $0.ListMeta? metadata,
    $core.Iterable<Role>? items,
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
  RoleList._() : super();
  factory RoleList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoleList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoleList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<Role>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Role.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoleList clone() => RoleList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoleList copyWith(void Function(RoleList) updates) => super.copyWith((message) => updates(message as RoleList)) as RoleList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoleList create() => RoleList._();
  RoleList createEmptyInstance() => create();
  static $pb.PbList<RoleList> createRepeated() => $pb.PbList<RoleList>();
  @$core.pragma('dart2js:noInline')
  static RoleList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoleList>(create);
  static RoleList? _defaultInstance;

  /// Standard object's metadata.
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

  /// Items is a list of Roles
  @$pb.TagNumber(2)
  $core.List<Role> get items => $_getList(1);
}

/// RoleRef contains information that points to the role being used
class RoleRef extends $pb.GeneratedMessage {
  factory RoleRef({
    $core.String? apiGroup,
    $core.String? kind,
    $core.String? name,
  }) {
    final $result = create();
    if (apiGroup != null) {
      $result.apiGroup = apiGroup;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  RoleRef._() : super();
  factory RoleRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoleRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RoleRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiGroup', protoName: 'apiGroup')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoleRef clone() => RoleRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoleRef copyWith(void Function(RoleRef) updates) => super.copyWith((message) => updates(message as RoleRef)) as RoleRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RoleRef create() => RoleRef._();
  RoleRef createEmptyInstance() => create();
  static $pb.PbList<RoleRef> createRepeated() => $pb.PbList<RoleRef>();
  @$core.pragma('dart2js:noInline')
  static RoleRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoleRef>(create);
  static RoleRef? _defaultInstance;

  /// APIGroup is the group for the resource being referenced
  @$pb.TagNumber(1)
  $core.String get apiGroup => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiGroup($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiGroup() => clearField(1);

  /// Kind is the type of resource being referenced
  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);

  /// Name is the name of resource being referenced
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

/// Subject contains a reference to the object or user identities a role binding applies to.  This can either hold a direct API object reference,
/// or a value for non-objects such as user and group names.
class Subject extends $pb.GeneratedMessage {
  factory Subject({
    $core.String? kind,
    $core.String? apiVersion,
    $core.String? name,
    $core.String? namespace,
  }) {
    final $result = create();
    if (kind != null) {
      $result.kind = kind;
    }
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    if (name != null) {
      $result.name = name;
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    return $result;
  }
  Subject._() : super();
  factory Subject.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Subject.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Subject', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.rbac.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'kind')
    ..aOS(2, _omitFieldNames ? '' : 'apiVersion', protoName: 'apiVersion')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'namespace')
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

  /// Kind of object being referenced. Values defined by this API group are "User", "Group", and "ServiceAccount".
  /// If the Authorizer does not recognized the kind value, the Authorizer should report an error.
  @$pb.TagNumber(1)
  $core.String get kind => $_getSZ(0);
  @$pb.TagNumber(1)
  set kind($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearKind() => clearField(1);

  /// APIVersion holds the API group and version of the referenced subject.
  /// Defaults to "v1" for ServiceAccount subjects.
  /// Defaults to "rbac.authorization.k8s.io/v1alpha1" for User and Group subjects.
  /// +k8s:conversion-gen=false
  /// +optional
  @$pb.TagNumber(2)
  $core.String get apiVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set apiVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasApiVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearApiVersion() => clearField(2);

  /// Name of the object being referenced.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  /// Namespace of the referenced object.  If the object kind is non-namespace, such as "User" or "Group", and this value is not empty
  /// the Authorizer should report an error.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get namespace => $_getSZ(3);
  @$pb.TagNumber(4)
  set namespace($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNamespace() => $_has(3);
  @$pb.TagNumber(4)
  void clearNamespace() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
