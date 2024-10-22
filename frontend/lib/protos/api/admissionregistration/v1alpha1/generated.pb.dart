//
//  Generated code. Do not modify.
//  source: api/admissionregistration/v1alpha1/generated.proto
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
import '../v1/generated.pb.dart' as $1;

/// AuditAnnotation describes how to produce an audit annotation for an API request.
class AuditAnnotation extends $pb.GeneratedMessage {
  factory AuditAnnotation({
    $core.String? key,
    $core.String? valueExpression,
  }) {
    final $result = create();
    if (key != null) {
      $result.key = key;
    }
    if (valueExpression != null) {
      $result.valueExpression = valueExpression;
    }
    return $result;
  }
  AuditAnnotation._() : super();
  factory AuditAnnotation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AuditAnnotation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AuditAnnotation', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'key')
    ..aOS(2, _omitFieldNames ? '' : 'valueExpression', protoName: 'valueExpression')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AuditAnnotation clone() => AuditAnnotation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AuditAnnotation copyWith(void Function(AuditAnnotation) updates) => super.copyWith((message) => updates(message as AuditAnnotation)) as AuditAnnotation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AuditAnnotation create() => AuditAnnotation._();
  AuditAnnotation createEmptyInstance() => create();
  static $pb.PbList<AuditAnnotation> createRepeated() => $pb.PbList<AuditAnnotation>();
  @$core.pragma('dart2js:noInline')
  static AuditAnnotation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AuditAnnotation>(create);
  static AuditAnnotation? _defaultInstance;

  ///  key specifies the audit annotation key. The audit annotation keys of
  ///  a ValidatingAdmissionPolicy must be unique. The key must be a qualified
  ///  name ([A-Za-z0-9][-A-Za-z0-9_.]*) no more than 63 bytes in length.
  ///
  ///  The key is combined with the resource name of the
  ///  ValidatingAdmissionPolicy to construct an audit annotation key:
  ///  "{ValidatingAdmissionPolicy name}/{key}".
  ///
  ///  If an admission webhook uses the same resource name as this ValidatingAdmissionPolicy
  ///  and the same audit annotation key, the annotation key will be identical.
  ///  In this case, the first annotation written with the key will be included
  ///  in the audit event and all subsequent annotations with the same key
  ///  will be discarded.
  ///
  ///  Required.
  @$pb.TagNumber(1)
  $core.String get key => $_getSZ(0);
  @$pb.TagNumber(1)
  set key($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearKey() => clearField(1);

  ///  valueExpression represents the expression which is evaluated by CEL to
  ///  produce an audit annotation value. The expression must evaluate to either
  ///  a string or null value. If the expression evaluates to a string, the
  ///  audit annotation is included with the string value. If the expression
  ///  evaluates to null or empty string the audit annotation will be omitted.
  ///  The valueExpression may be no longer than 5kb in length.
  ///  If the result of the valueExpression is more than 10kb in length, it
  ///  will be truncated to 10kb.
  ///
  ///  If multiple ValidatingAdmissionPolicyBinding resources match an
  ///  API request, then the valueExpression will be evaluated for
  ///  each binding. All unique values produced by the valueExpressions
  ///  will be joined together in a comma-separated list.
  ///
  ///  Required.
  @$pb.TagNumber(2)
  $core.String get valueExpression => $_getSZ(1);
  @$pb.TagNumber(2)
  set valueExpression($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValueExpression() => $_has(1);
  @$pb.TagNumber(2)
  void clearValueExpression() => clearField(2);
}

/// ExpressionWarning is a warning information that targets a specific expression.
class ExpressionWarning extends $pb.GeneratedMessage {
  factory ExpressionWarning({
    $core.String? fieldRef,
    $core.String? warning,
  }) {
    final $result = create();
    if (fieldRef != null) {
      $result.fieldRef = fieldRef;
    }
    if (warning != null) {
      $result.warning = warning;
    }
    return $result;
  }
  ExpressionWarning._() : super();
  factory ExpressionWarning.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExpressionWarning.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExpressionWarning', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOS(2, _omitFieldNames ? '' : 'fieldRef', protoName: 'fieldRef')
    ..aOS(3, _omitFieldNames ? '' : 'warning')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExpressionWarning clone() => ExpressionWarning()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExpressionWarning copyWith(void Function(ExpressionWarning) updates) => super.copyWith((message) => updates(message as ExpressionWarning)) as ExpressionWarning;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExpressionWarning create() => ExpressionWarning._();
  ExpressionWarning createEmptyInstance() => create();
  static $pb.PbList<ExpressionWarning> createRepeated() => $pb.PbList<ExpressionWarning>();
  @$core.pragma('dart2js:noInline')
  static ExpressionWarning getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExpressionWarning>(create);
  static ExpressionWarning? _defaultInstance;

  /// The path to the field that refers the expression.
  /// For example, the reference to the expression of the first item of
  /// validations is "spec.validations[0].expression"
  @$pb.TagNumber(2)
  $core.String get fieldRef => $_getSZ(0);
  @$pb.TagNumber(2)
  set fieldRef($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasFieldRef() => $_has(0);
  @$pb.TagNumber(2)
  void clearFieldRef() => clearField(2);

  /// The content of type checking information in a human-readable form.
  /// Each line of the warning contains the type that the expression is checked
  /// against, followed by the type check error from the compiler.
  @$pb.TagNumber(3)
  $core.String get warning => $_getSZ(1);
  @$pb.TagNumber(3)
  set warning($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasWarning() => $_has(1);
  @$pb.TagNumber(3)
  void clearWarning() => clearField(3);
}

class MatchCondition extends $pb.GeneratedMessage {
  factory MatchCondition({
    $core.String? name,
    $core.String? expression,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (expression != null) {
      $result.expression = expression;
    }
    return $result;
  }
  MatchCondition._() : super();
  factory MatchCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MatchCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'expression')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchCondition clone() => MatchCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchCondition copyWith(void Function(MatchCondition) updates) => super.copyWith((message) => updates(message as MatchCondition)) as MatchCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchCondition create() => MatchCondition._();
  MatchCondition createEmptyInstance() => create();
  static $pb.PbList<MatchCondition> createRepeated() => $pb.PbList<MatchCondition>();
  @$core.pragma('dart2js:noInline')
  static MatchCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchCondition>(create);
  static MatchCondition? _defaultInstance;

  ///  Name is an identifier for this match condition, used for strategic merging of MatchConditions,
  ///  as well as providing an identifier for logging purposes. A good name should be descriptive of
  ///  the associated expression.
  ///  Name must be a qualified name consisting of alphanumeric characters, '-', '_' or '.', and
  ///  must start and end with an alphanumeric character (e.g. 'MyName',  or 'my.name',  or
  ///  '123-abc', regex used for validation is '([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9]') with an
  ///  optional DNS subdomain prefix and '/' (e.g. 'example.com/MyName')
  ///
  ///  Required.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  ///  Expression represents the expression which will be evaluated by CEL. Must evaluate to bool.
  ///  CEL expressions have access to the contents of the AdmissionRequest and Authorizer, organized into CEL variables:
  ///
  ///  'object' - The object from the incoming request. The value is null for DELETE requests.
  ///  'oldObject' - The existing object. The value is null for CREATE requests.
  ///  'request' - Attributes of the admission request(/pkg/apis/admission/types.go#AdmissionRequest).
  ///  'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the principal (user or service account) of the request.
  ///    See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
  ///  'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer' and configured with the
  ///    request resource.
  ///  Documentation on CEL: https://kubernetes.io/docs/reference/using-api/cel/
  ///
  ///  Required.
  @$pb.TagNumber(2)
  $core.String get expression => $_getSZ(1);
  @$pb.TagNumber(2)
  set expression($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpression() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpression() => clearField(2);
}

/// MatchResources decides whether to run the admission control policy on an object based
/// on whether it meets the match criteria.
/// The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
/// +structType=atomic
class MatchResources extends $pb.GeneratedMessage {
  factory MatchResources({
    $0.LabelSelector? namespaceSelector,
    $0.LabelSelector? objectSelector,
    $core.Iterable<NamedRuleWithOperations>? resourceRules,
    $core.Iterable<NamedRuleWithOperations>? excludeResourceRules,
    $core.String? matchPolicy,
  }) {
    final $result = create();
    if (namespaceSelector != null) {
      $result.namespaceSelector = namespaceSelector;
    }
    if (objectSelector != null) {
      $result.objectSelector = objectSelector;
    }
    if (resourceRules != null) {
      $result.resourceRules.addAll(resourceRules);
    }
    if (excludeResourceRules != null) {
      $result.excludeResourceRules.addAll(excludeResourceRules);
    }
    if (matchPolicy != null) {
      $result.matchPolicy = matchPolicy;
    }
    return $result;
  }
  MatchResources._() : super();
  factory MatchResources.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MatchResources.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'MatchResources', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.LabelSelector>(1, _omitFieldNames ? '' : 'namespaceSelector', protoName: 'namespaceSelector', subBuilder: $0.LabelSelector.create)
    ..aOM<$0.LabelSelector>(2, _omitFieldNames ? '' : 'objectSelector', protoName: 'objectSelector', subBuilder: $0.LabelSelector.create)
    ..pc<NamedRuleWithOperations>(3, _omitFieldNames ? '' : 'resourceRules', $pb.PbFieldType.PM, protoName: 'resourceRules', subBuilder: NamedRuleWithOperations.create)
    ..pc<NamedRuleWithOperations>(4, _omitFieldNames ? '' : 'excludeResourceRules', $pb.PbFieldType.PM, protoName: 'excludeResourceRules', subBuilder: NamedRuleWithOperations.create)
    ..aOS(7, _omitFieldNames ? '' : 'matchPolicy', protoName: 'matchPolicy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MatchResources clone() => MatchResources()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MatchResources copyWith(void Function(MatchResources) updates) => super.copyWith((message) => updates(message as MatchResources)) as MatchResources;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static MatchResources create() => MatchResources._();
  MatchResources createEmptyInstance() => create();
  static $pb.PbList<MatchResources> createRepeated() => $pb.PbList<MatchResources>();
  @$core.pragma('dart2js:noInline')
  static MatchResources getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MatchResources>(create);
  static MatchResources? _defaultInstance;

  ///  NamespaceSelector decides whether to run the admission control policy on an object based
  ///  on whether the namespace for that object matches the selector. If the
  ///  object itself is a namespace, the matching is performed on
  ///  object.metadata.labels. If the object is another cluster scoped resource,
  ///  it never skips the policy.
  ///
  ///  For example, to run the webhook on any objects whose namespace is not
  ///  associated with "runlevel" of "0" or "1";  you will set the selector as
  ///  follows:
  ///  "namespaceSelector": {
  ///    "matchExpressions": [
  ///      {
  ///        "key": "runlevel",
  ///        "operator": "NotIn",
  ///        "values": [
  ///          "0",
  ///          "1"
  ///        ]
  ///      }
  ///    ]
  ///  }
  ///
  ///  If instead you want to only run the policy on any objects whose
  ///  namespace is associated with the "environment" of "prod" or "staging";
  ///  you will set the selector as follows:
  ///  "namespaceSelector": {
  ///    "matchExpressions": [
  ///      {
  ///        "key": "environment",
  ///        "operator": "In",
  ///        "values": [
  ///          "prod",
  ///          "staging"
  ///        ]
  ///      }
  ///    ]
  ///  }
  ///
  ///  See
  ///  https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/
  ///  for more examples of label selectors.
  ///
  ///  Default to the empty LabelSelector, which matches everything.
  ///  +optional
  @$pb.TagNumber(1)
  $0.LabelSelector get namespaceSelector => $_getN(0);
  @$pb.TagNumber(1)
  set namespaceSelector($0.LabelSelector v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamespaceSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespaceSelector() => clearField(1);
  @$pb.TagNumber(1)
  $0.LabelSelector ensureNamespaceSelector() => $_ensure(0);

  /// ObjectSelector decides whether to run the validation based on if the
  /// object has matching labels. objectSelector is evaluated against both
  /// the oldObject and newObject that would be sent to the cel validation, and
  /// is considered to match if either object matches the selector. A null
  /// object (oldObject in the case of create, or newObject in the case of
  /// delete) or an object that cannot have labels (like a
  /// DeploymentRollback or a PodProxyOptions object) is not considered to
  /// match.
  /// Use the object selector only if the webhook is opt-in, because end
  /// users may skip the admission webhook by setting the labels.
  /// Default to the empty LabelSelector, which matches everything.
  /// +optional
  @$pb.TagNumber(2)
  $0.LabelSelector get objectSelector => $_getN(1);
  @$pb.TagNumber(2)
  set objectSelector($0.LabelSelector v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasObjectSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearObjectSelector() => clearField(2);
  @$pb.TagNumber(2)
  $0.LabelSelector ensureObjectSelector() => $_ensure(1);

  /// ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches.
  /// The policy cares about an operation if it matches _any_ Rule.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(3)
  $core.List<NamedRuleWithOperations> get resourceRules => $_getList(2);

  /// ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about.
  /// The exclude rules take precedence over include rules (if a resource matches both, it is excluded)
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(4)
  $core.List<NamedRuleWithOperations> get excludeResourceRules => $_getList(3);

  ///  matchPolicy defines how the "MatchResources" list is used to match incoming requests.
  ///  Allowed values are "Exact" or "Equivalent".
  ///
  ///  - Exact: match a request only if it exactly matches a specified rule.
  ///  For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1,
  ///  but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`,
  ///  a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.
  ///
  ///  - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version.
  ///  For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1,
  ///  and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`,
  ///  a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.
  ///
  ///  Defaults to "Equivalent"
  ///  +optional
  @$pb.TagNumber(7)
  $core.String get matchPolicy => $_getSZ(4);
  @$pb.TagNumber(7)
  set matchPolicy($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasMatchPolicy() => $_has(4);
  @$pb.TagNumber(7)
  void clearMatchPolicy() => clearField(7);
}

/// NamedRuleWithOperations is a tuple of Operations and Resources with ResourceNames.
/// +structType=atomic
class NamedRuleWithOperations extends $pb.GeneratedMessage {
  factory NamedRuleWithOperations({
    $core.Iterable<$core.String>? resourceNames,
    $1.RuleWithOperations? ruleWithOperations,
  }) {
    final $result = create();
    if (resourceNames != null) {
      $result.resourceNames.addAll(resourceNames);
    }
    if (ruleWithOperations != null) {
      $result.ruleWithOperations = ruleWithOperations;
    }
    return $result;
  }
  NamedRuleWithOperations._() : super();
  factory NamedRuleWithOperations.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedRuleWithOperations.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedRuleWithOperations', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'resourceNames', protoName: 'resourceNames')
    ..aOM<$1.RuleWithOperations>(2, _omitFieldNames ? '' : 'ruleWithOperations', protoName: 'ruleWithOperations', subBuilder: $1.RuleWithOperations.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedRuleWithOperations clone() => NamedRuleWithOperations()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedRuleWithOperations copyWith(void Function(NamedRuleWithOperations) updates) => super.copyWith((message) => updates(message as NamedRuleWithOperations)) as NamedRuleWithOperations;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedRuleWithOperations create() => NamedRuleWithOperations._();
  NamedRuleWithOperations createEmptyInstance() => create();
  static $pb.PbList<NamedRuleWithOperations> createRepeated() => $pb.PbList<NamedRuleWithOperations>();
  @$core.pragma('dart2js:noInline')
  static NamedRuleWithOperations getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedRuleWithOperations>(create);
  static NamedRuleWithOperations? _defaultInstance;

  /// ResourceNames is an optional white list of names that the rule applies to.  An empty set means that everything is allowed.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(1)
  $core.List<$core.String> get resourceNames => $_getList(0);

  /// RuleWithOperations is a tuple of Operations and Resources.
  @$pb.TagNumber(2)
  $1.RuleWithOperations get ruleWithOperations => $_getN(1);
  @$pb.TagNumber(2)
  set ruleWithOperations($1.RuleWithOperations v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRuleWithOperations() => $_has(1);
  @$pb.TagNumber(2)
  void clearRuleWithOperations() => clearField(2);
  @$pb.TagNumber(2)
  $1.RuleWithOperations ensureRuleWithOperations() => $_ensure(1);
}

/// ParamKind is a tuple of Group Kind and Version.
/// +structType=atomic
class ParamKind extends $pb.GeneratedMessage {
  factory ParamKind({
    $core.String? apiVersion,
    $core.String? kind,
  }) {
    final $result = create();
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    return $result;
  }
  ParamKind._() : super();
  factory ParamKind.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParamKind.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ParamKind', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiVersion', protoName: 'apiVersion')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParamKind clone() => ParamKind()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParamKind copyWith(void Function(ParamKind) updates) => super.copyWith((message) => updates(message as ParamKind)) as ParamKind;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParamKind create() => ParamKind._();
  ParamKind createEmptyInstance() => create();
  static $pb.PbList<ParamKind> createRepeated() => $pb.PbList<ParamKind>();
  @$core.pragma('dart2js:noInline')
  static ParamKind getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParamKind>(create);
  static ParamKind? _defaultInstance;

  /// APIVersion is the API group version the resources belong to.
  /// In format of "group/version".
  /// Required.
  @$pb.TagNumber(1)
  $core.String get apiVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiVersion() => clearField(1);

  /// Kind is the API kind the resources belong to.
  /// Required.
  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);
}

/// ParamRef describes how to locate the params to be used as input to
/// expressions of rules applied by a policy binding.
/// +structType=atomic
class ParamRef extends $pb.GeneratedMessage {
  factory ParamRef({
    $core.String? name,
    $core.String? namespace,
    $0.LabelSelector? selector,
    $core.String? parameterNotFoundAction,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (selector != null) {
      $result.selector = selector;
    }
    if (parameterNotFoundAction != null) {
      $result.parameterNotFoundAction = parameterNotFoundAction;
    }
    return $result;
  }
  ParamRef._() : super();
  factory ParamRef.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParamRef.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ParamRef', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'namespace')
    ..aOM<$0.LabelSelector>(3, _omitFieldNames ? '' : 'selector', subBuilder: $0.LabelSelector.create)
    ..aOS(4, _omitFieldNames ? '' : 'parameterNotFoundAction', protoName: 'parameterNotFoundAction')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParamRef clone() => ParamRef()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParamRef copyWith(void Function(ParamRef) updates) => super.copyWith((message) => updates(message as ParamRef)) as ParamRef;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParamRef create() => ParamRef._();
  ParamRef createEmptyInstance() => create();
  static $pb.PbList<ParamRef> createRepeated() => $pb.PbList<ParamRef>();
  @$core.pragma('dart2js:noInline')
  static ParamRef getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParamRef>(create);
  static ParamRef? _defaultInstance;

  ///  `name` is the name of the resource being referenced.
  ///
  ///  `name` and `selector` are mutually exclusive properties. If one is set,
  ///  the other must be unset.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  ///  namespace is the namespace of the referenced resource. Allows limiting
  ///  the search for params to a specific namespace. Applies to both `name` and
  ///  `selector` fields.
  ///
  ///  A per-namespace parameter may be used by specifying a namespace-scoped
  ///  `paramKind` in the policy and leaving this field empty.
  ///
  ///  - If `paramKind` is cluster-scoped, this field MUST be unset. Setting this
  ///  field results in a configuration error.
  ///
  ///  - If `paramKind` is namespace-scoped, the namespace of the object being
  ///  evaluated for admission will be used when this field is left unset. Take
  ///  care that if this is left empty the binding must not match any cluster-scoped
  ///  resources, which will result in an error.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $core.String get namespace => $_getSZ(1);
  @$pb.TagNumber(2)
  set namespace($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNamespace() => $_has(1);
  @$pb.TagNumber(2)
  void clearNamespace() => clearField(2);

  ///  selector can be used to match multiple param objects based on their labels.
  ///  Supply selector: {} to match all resources of the ParamKind.
  ///
  ///  If multiple params are found, they are all evaluated with the policy expressions
  ///  and the results are ANDed together.
  ///
  ///  One of `name` or `selector` must be set, but `name` and `selector` are
  ///  mutually exclusive properties. If one is set, the other must be unset.
  ///
  ///  +optional
  @$pb.TagNumber(3)
  $0.LabelSelector get selector => $_getN(2);
  @$pb.TagNumber(3)
  set selector($0.LabelSelector v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasSelector() => $_has(2);
  @$pb.TagNumber(3)
  void clearSelector() => clearField(3);
  @$pb.TagNumber(3)
  $0.LabelSelector ensureSelector() => $_ensure(2);

  ///  `parameterNotFoundAction` controls the behavior of the binding when the resource
  ///  exists, and name or selector is valid, but there are no parameters
  ///  matched by the binding. If the value is set to `Allow`, then no
  ///  matched parameters will be treated as successful validation by the binding.
  ///  If set to `Deny`, then no matched parameters will be subject to the
  ///  `failurePolicy` of the policy.
  ///
  ///  Allowed values are `Allow` or `Deny`
  ///  Default to `Deny`
  ///  +optional
  @$pb.TagNumber(4)
  $core.String get parameterNotFoundAction => $_getSZ(3);
  @$pb.TagNumber(4)
  set parameterNotFoundAction($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasParameterNotFoundAction() => $_has(3);
  @$pb.TagNumber(4)
  void clearParameterNotFoundAction() => clearField(4);
}

/// TypeChecking contains results of type checking the expressions in the
/// ValidatingAdmissionPolicy
class TypeChecking extends $pb.GeneratedMessage {
  factory TypeChecking({
    $core.Iterable<ExpressionWarning>? expressionWarnings,
  }) {
    final $result = create();
    if (expressionWarnings != null) {
      $result.expressionWarnings.addAll(expressionWarnings);
    }
    return $result;
  }
  TypeChecking._() : super();
  factory TypeChecking.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeChecking.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TypeChecking', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..pc<ExpressionWarning>(1, _omitFieldNames ? '' : 'expressionWarnings', $pb.PbFieldType.PM, protoName: 'expressionWarnings', subBuilder: ExpressionWarning.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeChecking clone() => TypeChecking()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeChecking copyWith(void Function(TypeChecking) updates) => super.copyWith((message) => updates(message as TypeChecking)) as TypeChecking;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TypeChecking create() => TypeChecking._();
  TypeChecking createEmptyInstance() => create();
  static $pb.PbList<TypeChecking> createRepeated() => $pb.PbList<TypeChecking>();
  @$core.pragma('dart2js:noInline')
  static TypeChecking getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeChecking>(create);
  static TypeChecking? _defaultInstance;

  /// The type checking warnings for each expression.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<ExpressionWarning> get expressionWarnings => $_getList(0);
}

/// ValidatingAdmissionPolicy describes the definition of an admission validation policy that accepts or rejects an object without changing it.
class ValidatingAdmissionPolicy extends $pb.GeneratedMessage {
  factory ValidatingAdmissionPolicy({
    $0.ObjectMeta? metadata,
    ValidatingAdmissionPolicySpec? spec,
    ValidatingAdmissionPolicyStatus? status,
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
  ValidatingAdmissionPolicy._() : super();
  factory ValidatingAdmissionPolicy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatingAdmissionPolicy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidatingAdmissionPolicy', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<ValidatingAdmissionPolicySpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ValidatingAdmissionPolicySpec.create)
    ..aOM<ValidatingAdmissionPolicyStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: ValidatingAdmissionPolicyStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicy clone() => ValidatingAdmissionPolicy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicy copyWith(void Function(ValidatingAdmissionPolicy) updates) => super.copyWith((message) => updates(message as ValidatingAdmissionPolicy)) as ValidatingAdmissionPolicy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicy create() => ValidatingAdmissionPolicy._();
  ValidatingAdmissionPolicy createEmptyInstance() => create();
  static $pb.PbList<ValidatingAdmissionPolicy> createRepeated() => $pb.PbList<ValidatingAdmissionPolicy>();
  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatingAdmissionPolicy>(create);
  static ValidatingAdmissionPolicy? _defaultInstance;

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

  /// Specification of the desired behavior of the ValidatingAdmissionPolicy.
  @$pb.TagNumber(2)
  ValidatingAdmissionPolicySpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ValidatingAdmissionPolicySpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ValidatingAdmissionPolicySpec ensureSpec() => $_ensure(1);

  /// The status of the ValidatingAdmissionPolicy, including warnings that are useful to determine if the policy
  /// behaves in the expected way.
  /// Populated by the system.
  /// Read-only.
  /// +optional
  @$pb.TagNumber(3)
  ValidatingAdmissionPolicyStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(ValidatingAdmissionPolicyStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  ValidatingAdmissionPolicyStatus ensureStatus() => $_ensure(2);
}

///  ValidatingAdmissionPolicyBinding binds the ValidatingAdmissionPolicy with paramerized resources.
///  ValidatingAdmissionPolicyBinding and parameter CRDs together define how cluster administrators configure policies for clusters.
///
///  For a given admission request, each binding will cause its policy to be
///  evaluated N times, where N is 1 for policies/bindings that don't use
///  params, otherwise N is the number of parameters selected by the binding.
///
///  The CEL expressions of a policy must have a computed CEL cost below the maximum
///  CEL budget. Each evaluation of the policy is given an independent CEL cost budget.
///  Adding/removing policies, bindings, or params can not affect whether a
///  given (policy, binding, param) combination is within its own CEL budget.
class ValidatingAdmissionPolicyBinding extends $pb.GeneratedMessage {
  factory ValidatingAdmissionPolicyBinding({
    $0.ObjectMeta? metadata,
    ValidatingAdmissionPolicyBindingSpec? spec,
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
  ValidatingAdmissionPolicyBinding._() : super();
  factory ValidatingAdmissionPolicyBinding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatingAdmissionPolicyBinding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidatingAdmissionPolicyBinding', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<ValidatingAdmissionPolicyBindingSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ValidatingAdmissionPolicyBindingSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyBinding clone() => ValidatingAdmissionPolicyBinding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyBinding copyWith(void Function(ValidatingAdmissionPolicyBinding) updates) => super.copyWith((message) => updates(message as ValidatingAdmissionPolicyBinding)) as ValidatingAdmissionPolicyBinding;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyBinding create() => ValidatingAdmissionPolicyBinding._();
  ValidatingAdmissionPolicyBinding createEmptyInstance() => create();
  static $pb.PbList<ValidatingAdmissionPolicyBinding> createRepeated() => $pb.PbList<ValidatingAdmissionPolicyBinding>();
  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyBinding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatingAdmissionPolicyBinding>(create);
  static ValidatingAdmissionPolicyBinding? _defaultInstance;

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

  /// Specification of the desired behavior of the ValidatingAdmissionPolicyBinding.
  @$pb.TagNumber(2)
  ValidatingAdmissionPolicyBindingSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ValidatingAdmissionPolicyBindingSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ValidatingAdmissionPolicyBindingSpec ensureSpec() => $_ensure(1);
}

/// ValidatingAdmissionPolicyBindingList is a list of ValidatingAdmissionPolicyBinding.
class ValidatingAdmissionPolicyBindingList extends $pb.GeneratedMessage {
  factory ValidatingAdmissionPolicyBindingList({
    $0.ListMeta? metadata,
    $core.Iterable<ValidatingAdmissionPolicyBinding>? items,
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
  ValidatingAdmissionPolicyBindingList._() : super();
  factory ValidatingAdmissionPolicyBindingList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatingAdmissionPolicyBindingList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidatingAdmissionPolicyBindingList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<ValidatingAdmissionPolicyBinding>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ValidatingAdmissionPolicyBinding.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyBindingList clone() => ValidatingAdmissionPolicyBindingList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyBindingList copyWith(void Function(ValidatingAdmissionPolicyBindingList) updates) => super.copyWith((message) => updates(message as ValidatingAdmissionPolicyBindingList)) as ValidatingAdmissionPolicyBindingList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyBindingList create() => ValidatingAdmissionPolicyBindingList._();
  ValidatingAdmissionPolicyBindingList createEmptyInstance() => create();
  static $pb.PbList<ValidatingAdmissionPolicyBindingList> createRepeated() => $pb.PbList<ValidatingAdmissionPolicyBindingList>();
  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyBindingList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatingAdmissionPolicyBindingList>(create);
  static ValidatingAdmissionPolicyBindingList? _defaultInstance;

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

  /// List of PolicyBinding.
  @$pb.TagNumber(2)
  $core.List<ValidatingAdmissionPolicyBinding> get items => $_getList(1);
}

/// ValidatingAdmissionPolicyBindingSpec is the specification of the ValidatingAdmissionPolicyBinding.
class ValidatingAdmissionPolicyBindingSpec extends $pb.GeneratedMessage {
  factory ValidatingAdmissionPolicyBindingSpec({
    $core.String? policyName,
    ParamRef? paramRef,
    MatchResources? matchResources,
    $core.Iterable<$core.String>? validationActions,
  }) {
    final $result = create();
    if (policyName != null) {
      $result.policyName = policyName;
    }
    if (paramRef != null) {
      $result.paramRef = paramRef;
    }
    if (matchResources != null) {
      $result.matchResources = matchResources;
    }
    if (validationActions != null) {
      $result.validationActions.addAll(validationActions);
    }
    return $result;
  }
  ValidatingAdmissionPolicyBindingSpec._() : super();
  factory ValidatingAdmissionPolicyBindingSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatingAdmissionPolicyBindingSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidatingAdmissionPolicyBindingSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'policyName', protoName: 'policyName')
    ..aOM<ParamRef>(2, _omitFieldNames ? '' : 'paramRef', protoName: 'paramRef', subBuilder: ParamRef.create)
    ..aOM<MatchResources>(3, _omitFieldNames ? '' : 'matchResources', protoName: 'matchResources', subBuilder: MatchResources.create)
    ..pPS(4, _omitFieldNames ? '' : 'validationActions', protoName: 'validationActions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyBindingSpec clone() => ValidatingAdmissionPolicyBindingSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyBindingSpec copyWith(void Function(ValidatingAdmissionPolicyBindingSpec) updates) => super.copyWith((message) => updates(message as ValidatingAdmissionPolicyBindingSpec)) as ValidatingAdmissionPolicyBindingSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyBindingSpec create() => ValidatingAdmissionPolicyBindingSpec._();
  ValidatingAdmissionPolicyBindingSpec createEmptyInstance() => create();
  static $pb.PbList<ValidatingAdmissionPolicyBindingSpec> createRepeated() => $pb.PbList<ValidatingAdmissionPolicyBindingSpec>();
  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyBindingSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatingAdmissionPolicyBindingSpec>(create);
  static ValidatingAdmissionPolicyBindingSpec? _defaultInstance;

  /// PolicyName references a ValidatingAdmissionPolicy name which the ValidatingAdmissionPolicyBinding binds to.
  /// If the referenced resource does not exist, this binding is considered invalid and will be ignored
  /// Required.
  @$pb.TagNumber(1)
  $core.String get policyName => $_getSZ(0);
  @$pb.TagNumber(1)
  set policyName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPolicyName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyName() => clearField(1);

  /// paramRef specifies the parameter resource used to configure the admission control policy.
  /// It should point to a resource of the type specified in ParamKind of the bound ValidatingAdmissionPolicy.
  /// If the policy specifies a ParamKind and the resource referred to by ParamRef does not exist, this binding is considered mis-configured and the FailurePolicy of the ValidatingAdmissionPolicy applied.
  /// If the policy does not specify a ParamKind then this field is ignored, and the rules are evaluated without a param.
  /// +optional
  @$pb.TagNumber(2)
  ParamRef get paramRef => $_getN(1);
  @$pb.TagNumber(2)
  set paramRef(ParamRef v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParamRef() => $_has(1);
  @$pb.TagNumber(2)
  void clearParamRef() => clearField(2);
  @$pb.TagNumber(2)
  ParamRef ensureParamRef() => $_ensure(1);

  /// MatchResources declares what resources match this binding and will be validated by it.
  /// Note that this is intersected with the policy's matchConstraints, so only requests that are matched by the policy can be selected by this.
  /// If this is unset, all resources matched by the policy are validated by this binding
  /// When resourceRules is unset, it does not constrain resource matching. If a resource is matched by the other fields of this object, it will be validated.
  /// Note that this is differs from ValidatingAdmissionPolicy matchConstraints, where resourceRules are required.
  /// +optional
  @$pb.TagNumber(3)
  MatchResources get matchResources => $_getN(2);
  @$pb.TagNumber(3)
  set matchResources(MatchResources v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasMatchResources() => $_has(2);
  @$pb.TagNumber(3)
  void clearMatchResources() => clearField(3);
  @$pb.TagNumber(3)
  MatchResources ensureMatchResources() => $_ensure(2);

  ///  validationActions declares how Validations of the referenced ValidatingAdmissionPolicy are enforced.
  ///  If a validation evaluates to false it is always enforced according to these actions.
  ///
  ///  Failures defined by the ValidatingAdmissionPolicy's FailurePolicy are enforced according
  ///  to these actions only if the FailurePolicy is set to Fail, otherwise the failures are
  ///  ignored. This includes compilation errors, runtime errors and misconfigurations of the policy.
  ///
  ///  validationActions is declared as a set of action values. Order does
  ///  not matter. validationActions may not contain duplicates of the same action.
  ///
  ///  The supported actions values are:
  ///
  ///  "Deny" specifies that a validation failure results in a denied request.
  ///
  ///  "Warn" specifies that a validation failure is reported to the request client
  ///  in HTTP Warning headers, with a warning code of 299. Warnings can be sent
  ///  both for allowed or denied admission responses.
  ///
  ///  "Audit" specifies that a validation failure is included in the published
  ///  audit event for the request. The audit event will contain a
  ///  `validation.policy.admission.k8s.io/validation_failure` audit annotation
  ///  with a value containing the details of the validation failures, formatted as
  ///  a JSON list of objects, each with the following fields:
  ///  - message: The validation failure message string
  ///  - policy: The resource name of the ValidatingAdmissionPolicy
  ///  - binding: The resource name of the ValidatingAdmissionPolicyBinding
  ///  - expressionIndex: The index of the failed validations in the ValidatingAdmissionPolicy
  ///  - validationActions: The enforcement actions enacted for the validation failure
  ///  Example audit annotation:
  ///  `"validation.policy.admission.k8s.io/validation_failure": "[{\"message\": \"Invalid value\", {\"policy\": \"policy.example.com\", {\"binding\": \"policybinding.example.com\", {\"expressionIndex\": \"1\", {\"validationActions\": [\"Audit\"]}]"`
  ///
  ///  Clients should expect to handle additional values by ignoring
  ///  any values not recognized.
  ///
  ///  "Deny" and "Warn" may not be used together since this combination
  ///  needlessly duplicates the validation failure both in the
  ///  API response body and the HTTP warning headers.
  ///
  ///  Required.
  ///  +listType=set
  @$pb.TagNumber(4)
  $core.List<$core.String> get validationActions => $_getList(3);
}

/// ValidatingAdmissionPolicyList is a list of ValidatingAdmissionPolicy.
class ValidatingAdmissionPolicyList extends $pb.GeneratedMessage {
  factory ValidatingAdmissionPolicyList({
    $0.ListMeta? metadata,
    $core.Iterable<ValidatingAdmissionPolicy>? items,
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
  ValidatingAdmissionPolicyList._() : super();
  factory ValidatingAdmissionPolicyList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatingAdmissionPolicyList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidatingAdmissionPolicyList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<ValidatingAdmissionPolicy>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ValidatingAdmissionPolicy.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyList clone() => ValidatingAdmissionPolicyList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyList copyWith(void Function(ValidatingAdmissionPolicyList) updates) => super.copyWith((message) => updates(message as ValidatingAdmissionPolicyList)) as ValidatingAdmissionPolicyList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyList create() => ValidatingAdmissionPolicyList._();
  ValidatingAdmissionPolicyList createEmptyInstance() => create();
  static $pb.PbList<ValidatingAdmissionPolicyList> createRepeated() => $pb.PbList<ValidatingAdmissionPolicyList>();
  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatingAdmissionPolicyList>(create);
  static ValidatingAdmissionPolicyList? _defaultInstance;

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

  /// List of ValidatingAdmissionPolicy.
  @$pb.TagNumber(2)
  $core.List<ValidatingAdmissionPolicy> get items => $_getList(1);
}

/// ValidatingAdmissionPolicySpec is the specification of the desired behavior of the AdmissionPolicy.
class ValidatingAdmissionPolicySpec extends $pb.GeneratedMessage {
  factory ValidatingAdmissionPolicySpec({
    ParamKind? paramKind,
    MatchResources? matchConstraints,
    $core.Iterable<Validation>? validations,
    $core.String? failurePolicy,
    $core.Iterable<AuditAnnotation>? auditAnnotations,
    $core.Iterable<MatchCondition>? matchConditions,
    $core.Iterable<Variable>? variables,
  }) {
    final $result = create();
    if (paramKind != null) {
      $result.paramKind = paramKind;
    }
    if (matchConstraints != null) {
      $result.matchConstraints = matchConstraints;
    }
    if (validations != null) {
      $result.validations.addAll(validations);
    }
    if (failurePolicy != null) {
      $result.failurePolicy = failurePolicy;
    }
    if (auditAnnotations != null) {
      $result.auditAnnotations.addAll(auditAnnotations);
    }
    if (matchConditions != null) {
      $result.matchConditions.addAll(matchConditions);
    }
    if (variables != null) {
      $result.variables.addAll(variables);
    }
    return $result;
  }
  ValidatingAdmissionPolicySpec._() : super();
  factory ValidatingAdmissionPolicySpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatingAdmissionPolicySpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidatingAdmissionPolicySpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOM<ParamKind>(1, _omitFieldNames ? '' : 'paramKind', protoName: 'paramKind', subBuilder: ParamKind.create)
    ..aOM<MatchResources>(2, _omitFieldNames ? '' : 'matchConstraints', protoName: 'matchConstraints', subBuilder: MatchResources.create)
    ..pc<Validation>(3, _omitFieldNames ? '' : 'validations', $pb.PbFieldType.PM, subBuilder: Validation.create)
    ..aOS(4, _omitFieldNames ? '' : 'failurePolicy', protoName: 'failurePolicy')
    ..pc<AuditAnnotation>(5, _omitFieldNames ? '' : 'auditAnnotations', $pb.PbFieldType.PM, protoName: 'auditAnnotations', subBuilder: AuditAnnotation.create)
    ..pc<MatchCondition>(6, _omitFieldNames ? '' : 'matchConditions', $pb.PbFieldType.PM, protoName: 'matchConditions', subBuilder: MatchCondition.create)
    ..pc<Variable>(7, _omitFieldNames ? '' : 'variables', $pb.PbFieldType.PM, subBuilder: Variable.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicySpec clone() => ValidatingAdmissionPolicySpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicySpec copyWith(void Function(ValidatingAdmissionPolicySpec) updates) => super.copyWith((message) => updates(message as ValidatingAdmissionPolicySpec)) as ValidatingAdmissionPolicySpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicySpec create() => ValidatingAdmissionPolicySpec._();
  ValidatingAdmissionPolicySpec createEmptyInstance() => create();
  static $pb.PbList<ValidatingAdmissionPolicySpec> createRepeated() => $pb.PbList<ValidatingAdmissionPolicySpec>();
  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicySpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatingAdmissionPolicySpec>(create);
  static ValidatingAdmissionPolicySpec? _defaultInstance;

  /// ParamKind specifies the kind of resources used to parameterize this policy.
  /// If absent, there are no parameters for this policy and the param CEL variable will not be provided to validation expressions.
  /// If ParamKind refers to a non-existent kind, this policy definition is mis-configured and the FailurePolicy is applied.
  /// If paramKind is specified but paramRef is unset in ValidatingAdmissionPolicyBinding, the params variable will be null.
  /// +optional
  @$pb.TagNumber(1)
  ParamKind get paramKind => $_getN(0);
  @$pb.TagNumber(1)
  set paramKind(ParamKind v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParamKind() => $_has(0);
  @$pb.TagNumber(1)
  void clearParamKind() => clearField(1);
  @$pb.TagNumber(1)
  ParamKind ensureParamKind() => $_ensure(0);

  /// MatchConstraints specifies what resources this policy is designed to validate.
  /// The AdmissionPolicy cares about a request if it matches _all_ Constraints.
  /// However, in order to prevent clusters from being put into an unstable state that cannot be recovered from via the API
  /// ValidatingAdmissionPolicy cannot match ValidatingAdmissionPolicy and ValidatingAdmissionPolicyBinding.
  /// Required.
  @$pb.TagNumber(2)
  MatchResources get matchConstraints => $_getN(1);
  @$pb.TagNumber(2)
  set matchConstraints(MatchResources v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMatchConstraints() => $_has(1);
  @$pb.TagNumber(2)
  void clearMatchConstraints() => clearField(2);
  @$pb.TagNumber(2)
  MatchResources ensureMatchConstraints() => $_ensure(1);

  /// Validations contain CEL expressions which is used to apply the validation.
  /// Validations and AuditAnnotations may not both be empty; a minimum of one Validations or AuditAnnotations is
  /// required.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(3)
  $core.List<Validation> get validations => $_getList(2);

  ///  failurePolicy defines how to handle failures for the admission policy. Failures can
  ///  occur from CEL expression parse errors, type check errors, runtime errors and invalid
  ///  or mis-configured policy definitions or bindings.
  ///
  ///  A policy is invalid if spec.paramKind refers to a non-existent Kind.
  ///  A binding is invalid if spec.paramRef.name refers to a non-existent resource.
  ///
  ///  failurePolicy does not define how validations that evaluate to false are handled.
  ///
  ///  When failurePolicy is set to Fail, ValidatingAdmissionPolicyBinding validationActions
  ///  define how failures are enforced.
  ///
  ///  Allowed values are Ignore or Fail. Defaults to Fail.
  ///  +optional
  @$pb.TagNumber(4)
  $core.String get failurePolicy => $_getSZ(3);
  @$pb.TagNumber(4)
  set failurePolicy($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFailurePolicy() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailurePolicy() => clearField(4);

  /// auditAnnotations contains CEL expressions which are used to produce audit
  /// annotations for the audit event of the API request.
  /// validations and auditAnnotations may not both be empty; a least one of validations or auditAnnotations is
  /// required.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(5)
  $core.List<AuditAnnotation> get auditAnnotations => $_getList(4);

  ///  MatchConditions is a list of conditions that must be met for a request to be validated.
  ///  Match conditions filter requests that have already been matched by the rules,
  ///  namespaceSelector, and objectSelector. An empty list of matchConditions matches all requests.
  ///  There are a maximum of 64 match conditions allowed.
  ///
  ///  If a parameter object is provided, it can be accessed via the `params` handle in the same
  ///  manner as validation expressions.
  ///
  ///  The exact matching logic is (in order):
  ///    1. If ANY matchCondition evaluates to FALSE, the policy is skipped.
  ///    2. If ALL matchConditions evaluate to TRUE, the policy is evaluated.
  ///    3. If any matchCondition evaluates to an error (but none are FALSE):
  ///       - If failurePolicy=Fail, reject the request
  ///       - If failurePolicy=Ignore, the policy is skipped
  ///
  ///  +patchMergeKey=name
  ///  +patchStrategy=merge
  ///  +listType=map
  ///  +listMapKey=name
  ///  +optional
  @$pb.TagNumber(6)
  $core.List<MatchCondition> get matchConditions => $_getList(5);

  ///  Variables contain definitions of variables that can be used in composition of other expressions.
  ///  Each variable is defined as a named CEL expression.
  ///  The variables defined here will be available under `variables` in other expressions of the policy
  ///  except MatchConditions because MatchConditions are evaluated before the rest of the policy.
  ///
  ///  The expression of a variable can refer to other variables defined earlier in the list but not those after.
  ///  Thus, Variables must be sorted by the order of first appearance and acyclic.
  ///  +patchMergeKey=name
  ///  +patchStrategy=merge
  ///  +listType=map
  ///  +listMapKey=name
  ///  +optional
  @$pb.TagNumber(7)
  $core.List<Variable> get variables => $_getList(6);
}

/// ValidatingAdmissionPolicyStatus represents the status of a ValidatingAdmissionPolicy.
class ValidatingAdmissionPolicyStatus extends $pb.GeneratedMessage {
  factory ValidatingAdmissionPolicyStatus({
    $fixnum.Int64? observedGeneration,
    TypeChecking? typeChecking,
    $core.Iterable<$0.Condition>? conditions,
  }) {
    final $result = create();
    if (observedGeneration != null) {
      $result.observedGeneration = observedGeneration;
    }
    if (typeChecking != null) {
      $result.typeChecking = typeChecking;
    }
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  ValidatingAdmissionPolicyStatus._() : super();
  factory ValidatingAdmissionPolicyStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidatingAdmissionPolicyStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidatingAdmissionPolicyStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'observedGeneration', protoName: 'observedGeneration')
    ..aOM<TypeChecking>(2, _omitFieldNames ? '' : 'typeChecking', protoName: 'typeChecking', subBuilder: TypeChecking.create)
    ..pc<$0.Condition>(3, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: $0.Condition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyStatus clone() => ValidatingAdmissionPolicyStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidatingAdmissionPolicyStatus copyWith(void Function(ValidatingAdmissionPolicyStatus) updates) => super.copyWith((message) => updates(message as ValidatingAdmissionPolicyStatus)) as ValidatingAdmissionPolicyStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyStatus create() => ValidatingAdmissionPolicyStatus._();
  ValidatingAdmissionPolicyStatus createEmptyInstance() => create();
  static $pb.PbList<ValidatingAdmissionPolicyStatus> createRepeated() => $pb.PbList<ValidatingAdmissionPolicyStatus>();
  @$core.pragma('dart2js:noInline')
  static ValidatingAdmissionPolicyStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidatingAdmissionPolicyStatus>(create);
  static ValidatingAdmissionPolicyStatus? _defaultInstance;

  /// The generation observed by the controller.
  /// +optional
  @$pb.TagNumber(1)
  $fixnum.Int64 get observedGeneration => $_getI64(0);
  @$pb.TagNumber(1)
  set observedGeneration($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasObservedGeneration() => $_has(0);
  @$pb.TagNumber(1)
  void clearObservedGeneration() => clearField(1);

  /// The results of type checking for each expression.
  /// Presence of this field indicates the completion of the type checking.
  /// +optional
  @$pb.TagNumber(2)
  TypeChecking get typeChecking => $_getN(1);
  @$pb.TagNumber(2)
  set typeChecking(TypeChecking v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasTypeChecking() => $_has(1);
  @$pb.TagNumber(2)
  void clearTypeChecking() => clearField(2);
  @$pb.TagNumber(2)
  TypeChecking ensureTypeChecking() => $_ensure(1);

  /// The conditions represent the latest available observations of a policy's current state.
  /// +optional
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(3)
  $core.List<$0.Condition> get conditions => $_getList(2);
}

/// Validation specifies the CEL expression which is used to apply the validation.
class Validation extends $pb.GeneratedMessage {
  factory Validation({
    $core.String? expression,
    $core.String? message,
    $core.String? reason,
    $core.String? messageExpression,
  }) {
    final $result = create();
    if (expression != null) {
      $result.expression = expression;
    }
    if (message != null) {
      $result.message = message;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (messageExpression != null) {
      $result.messageExpression = messageExpression;
    }
    return $result;
  }
  Validation._() : super();
  factory Validation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Validation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Validation', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Expression', protoName: 'Expression')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'reason')
    ..aOS(4, _omitFieldNames ? '' : 'messageExpression', protoName: 'messageExpression')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Validation clone() => Validation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Validation copyWith(void Function(Validation) updates) => super.copyWith((message) => updates(message as Validation)) as Validation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Validation create() => Validation._();
  Validation createEmptyInstance() => create();
  static $pb.PbList<Validation> createRepeated() => $pb.PbList<Validation>();
  @$core.pragma('dart2js:noInline')
  static Validation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Validation>(create);
  static Validation? _defaultInstance;

  ///  Expression represents the expression which will be evaluated by CEL.
  ///  ref: https://github.com/google/cel-spec
  ///  CEL expressions have access to the contents of the API request/response, organized into CEL variables as well as some other useful variables:
  ///
  ///  - 'object' - The object from the incoming request. The value is null for DELETE requests.
  ///  - 'oldObject' - The existing object. The value is null for CREATE requests.
  ///  - 'request' - Attributes of the API request([ref](/pkg/apis/admission/types.go#AdmissionRequest)).
  ///  - 'params' - Parameter resource referred to by the policy binding being evaluated. Only populated if the policy has a ParamKind.
  ///  - 'namespaceObject' - The namespace object that the incoming object belongs to. The value is null for cluster-scoped resources.
  ///  - 'variables' - Map of composited variables, from its name to its lazily evaluated value.
  ///    For example, a variable named 'foo' can be accessed as 'variables.foo'.
  ///  - 'authorizer' - A CEL Authorizer. May be used to perform authorization checks for the principal (user or service account) of the request.
  ///    See https://pkg.go.dev/k8s.io/apiserver/pkg/cel/library#Authz
  ///  - 'authorizer.requestResource' - A CEL ResourceCheck constructed from the 'authorizer' and configured with the
  ///    request resource.
  ///
  ///  The `apiVersion`, `kind`, `metadata.name` and `metadata.generateName` are always accessible from the root of the
  ///  object. No other metadata properties are accessible.
  ///
  ///  Only property names of the form `[a-zA-Z_.-/][a-zA-Z0-9_.-/]*` are accessible.
  ///  Accessible property names are escaped according to the following rules when accessed in the expression:
  ///  - '__' escapes to '__underscores__'
  ///  - '.' escapes to '__dot__'
  ///  - '-' escapes to '__dash__'
  ///  - '/' escapes to '__slash__'
  ///  - Property names that exactly match a CEL RESERVED keyword escape to '__{keyword}__'. The keywords are:
  ///  	  "true", "false", "null", "in", "as", "break", "const", "continue", "else", "for", "function", "if",
  ///  	  "import", "let", "loop", "package", "namespace", "return".
  ///  Examples:
  ///    - Expression accessing a property named "namespace": {"Expression": "object.__namespace__ > 0"}
  ///    - Expression accessing a property named "x-prop": {"Expression": "object.x__dash__prop > 0"}
  ///    - Expression accessing a property named "redact__d": {"Expression": "object.redact__underscores__d > 0"}
  ///
  ///  Equality on arrays with list type of 'set' or 'map' ignores element order, i.e. [1, 2] == [2, 1].
  ///  Concatenation on arrays with x-kubernetes-list-type use the semantics of the list type:
  ///    - 'set': `X + Y` performs a union where the array positions of all elements in `X` are preserved and
  ///      non-intersecting elements in `Y` are appended, retaining their partial order.
  ///    - 'map': `X + Y` performs a merge where the array positions of all keys in `X` are preserved but the values
  ///      are overwritten by values in `Y` when the key sets of `X` and `Y` intersect. Elements in `Y` with
  ///      non-intersecting keys are appended, retaining their partial order.
  ///  Required.
  @$pb.TagNumber(1)
  $core.String get expression => $_getSZ(0);
  @$pb.TagNumber(1)
  set expression($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasExpression() => $_has(0);
  @$pb.TagNumber(1)
  void clearExpression() => clearField(1);

  /// Message represents the message displayed when validation fails. The message is required if the Expression contains
  /// line breaks. The message must not contain line breaks.
  /// If unset, the message is "failed rule: {Rule}".
  /// e.g. "must be a URL with the host matching spec.host"
  /// If the Expression contains line breaks. Message is required.
  /// The message must not contain line breaks.
  /// If unset, the message is "failed Expression: {Expression}".
  /// +optional
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  /// Reason represents a machine-readable description of why this validation failed.
  /// If this is the first validation in the list to fail, this reason, as well as the
  /// corresponding HTTP response code, are used in the
  /// HTTP response to the client.
  /// The currently supported reasons are: "Unauthorized", "Forbidden", "Invalid", "RequestEntityTooLarge".
  /// If not set, StatusReasonInvalid is used in the response to the client.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get reason => $_getSZ(2);
  @$pb.TagNumber(3)
  set reason($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasReason() => $_has(2);
  @$pb.TagNumber(3)
  void clearReason() => clearField(3);

  /// messageExpression declares a CEL expression that evaluates to the validation failure message that is returned when this rule fails.
  /// Since messageExpression is used as a failure message, it must evaluate to a string.
  /// If both message and messageExpression are present on a validation, then messageExpression will be used if validation fails.
  /// If messageExpression results in a runtime error, the runtime error is logged, and the validation failure message is produced
  /// as if the messageExpression field were unset. If messageExpression evaluates to an empty string, a string with only spaces, or a string
  /// that contains line breaks, then the validation failure message will also be produced as if the messageExpression field were unset, and
  /// the fact that messageExpression produced an empty string/string with only spaces/string with line breaks will be logged.
  /// messageExpression has access to all the same variables as the `expression` except for 'authorizer' and 'authorizer.requestResource'.
  /// Example:
  /// "object.x must be less than max ("+string(params.max)+")"
  /// +optional
  @$pb.TagNumber(4)
  $core.String get messageExpression => $_getSZ(3);
  @$pb.TagNumber(4)
  set messageExpression($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMessageExpression() => $_has(3);
  @$pb.TagNumber(4)
  void clearMessageExpression() => clearField(4);
}

/// Variable is the definition of a variable that is used for composition.
class Variable extends $pb.GeneratedMessage {
  factory Variable({
    $core.String? name,
    $core.String? expression,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (expression != null) {
      $result.expression = expression;
    }
    return $result;
  }
  Variable._() : super();
  factory Variable.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Variable.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Variable', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admissionregistration.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'Name', protoName: 'Name')
    ..aOS(2, _omitFieldNames ? '' : 'Expression', protoName: 'Expression')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Variable clone() => Variable()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Variable copyWith(void Function(Variable) updates) => super.copyWith((message) => updates(message as Variable)) as Variable;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Variable create() => Variable._();
  Variable createEmptyInstance() => create();
  static $pb.PbList<Variable> createRepeated() => $pb.PbList<Variable>();
  @$core.pragma('dart2js:noInline')
  static Variable getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Variable>(create);
  static Variable? _defaultInstance;

  /// Name is the name of the variable. The name must be a valid CEL identifier and unique among all variables.
  /// The variable can be accessed in other expressions through `variables`
  /// For example, if name is "foo", the variable will be available as `variables.foo`
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// Expression is the expression that will be evaluated as the value of the variable.
  /// The CEL expression has access to the same identifiers as the CEL expressions in Validation.
  @$pb.TagNumber(2)
  $core.String get expression => $_getSZ(1);
  @$pb.TagNumber(2)
  set expression($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpression() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpression() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
