//
//  Generated code. Do not modify.
//  source: api/networking/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../../../apimachinery/pkg/util/intstr/generated.pb.dart' as $2;
import '../../core/v1/generated.pb.dart' as $1;

/// HTTPIngressPath associates a path with a backend. Incoming urls matching the
/// path are forwarded to the backend.
class HTTPIngressPath extends $pb.GeneratedMessage {
  factory HTTPIngressPath({
    $core.String? path,
    IngressBackend? backend,
    $core.String? pathType,
  }) {
    final $result = create();
    if (path != null) {
      $result.path = path;
    }
    if (backend != null) {
      $result.backend = backend;
    }
    if (pathType != null) {
      $result.pathType = pathType;
    }
    return $result;
  }
  HTTPIngressPath._() : super();
  factory HTTPIngressPath.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HTTPIngressPath.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HTTPIngressPath', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'path')
    ..aOM<IngressBackend>(2, _omitFieldNames ? '' : 'backend', subBuilder: IngressBackend.create)
    ..aOS(3, _omitFieldNames ? '' : 'pathType', protoName: 'pathType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HTTPIngressPath clone() => HTTPIngressPath()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HTTPIngressPath copyWith(void Function(HTTPIngressPath) updates) => super.copyWith((message) => updates(message as HTTPIngressPath)) as HTTPIngressPath;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HTTPIngressPath create() => HTTPIngressPath._();
  HTTPIngressPath createEmptyInstance() => create();
  static $pb.PbList<HTTPIngressPath> createRepeated() => $pb.PbList<HTTPIngressPath>();
  @$core.pragma('dart2js:noInline')
  static HTTPIngressPath getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HTTPIngressPath>(create);
  static HTTPIngressPath? _defaultInstance;

  /// path is matched against the path of an incoming request. Currently it can
  /// contain characters disallowed from the conventional "path" part of a URL
  /// as defined by RFC 3986. Paths must begin with a '/' and must be present
  /// when using PathType with value "Exact" or "Prefix".
  /// +optional
  @$pb.TagNumber(1)
  $core.String get path => $_getSZ(0);
  @$pb.TagNumber(1)
  set path($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearPath() => clearField(1);

  /// backend defines the referenced service endpoint to which the traffic
  /// will be forwarded to.
  @$pb.TagNumber(2)
  IngressBackend get backend => $_getN(1);
  @$pb.TagNumber(2)
  set backend(IngressBackend v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasBackend() => $_has(1);
  @$pb.TagNumber(2)
  void clearBackend() => clearField(2);
  @$pb.TagNumber(2)
  IngressBackend ensureBackend() => $_ensure(1);

  /// pathType determines the interpretation of the path matching. PathType can
  /// be one of the following values:
  /// * Exact: Matches the URL path exactly.
  /// * Prefix: Matches based on a URL path prefix split by '/'. Matching is
  ///   done on a path element by element basis. A path element refers is the
  ///   list of labels in the path split by the '/' separator. A request is a
  ///   match for path p if every p is an element-wise prefix of p of the
  ///   request path. Note that if the last element of the path is a substring
  ///   of the last element in request path, it is not a match (e.g. /foo/bar
  ///   matches /foo/bar/baz, but does not match /foo/barbaz).
  /// * ImplementationSpecific: Interpretation of the Path matching is up to
  ///   the IngressClass. Implementations can treat this as a separate PathType
  ///   or treat it identically to Prefix or Exact path types.
  /// Implementations are required to support all path types.
  @$pb.TagNumber(3)
  $core.String get pathType => $_getSZ(2);
  @$pb.TagNumber(3)
  set pathType($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPathType() => $_has(2);
  @$pb.TagNumber(3)
  void clearPathType() => clearField(3);
}

/// HTTPIngressRuleValue is a list of http selectors pointing to backends.
/// In the example: http://<host>/<path>?<searchpart> -> backend where
/// where parts of the url correspond to RFC 3986, this resource will be used
/// to match against everything after the last '/' and before the first '?'
/// or '#'.
class HTTPIngressRuleValue extends $pb.GeneratedMessage {
  factory HTTPIngressRuleValue({
    $core.Iterable<HTTPIngressPath>? paths,
  }) {
    final $result = create();
    if (paths != null) {
      $result.paths.addAll(paths);
    }
    return $result;
  }
  HTTPIngressRuleValue._() : super();
  factory HTTPIngressRuleValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HTTPIngressRuleValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HTTPIngressRuleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..pc<HTTPIngressPath>(1, _omitFieldNames ? '' : 'paths', $pb.PbFieldType.PM, subBuilder: HTTPIngressPath.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HTTPIngressRuleValue clone() => HTTPIngressRuleValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HTTPIngressRuleValue copyWith(void Function(HTTPIngressRuleValue) updates) => super.copyWith((message) => updates(message as HTTPIngressRuleValue)) as HTTPIngressRuleValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HTTPIngressRuleValue create() => HTTPIngressRuleValue._();
  HTTPIngressRuleValue createEmptyInstance() => create();
  static $pb.PbList<HTTPIngressRuleValue> createRepeated() => $pb.PbList<HTTPIngressRuleValue>();
  @$core.pragma('dart2js:noInline')
  static HTTPIngressRuleValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HTTPIngressRuleValue>(create);
  static HTTPIngressRuleValue? _defaultInstance;

  /// paths is a collection of paths that map requests to backends.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<HTTPIngressPath> get paths => $_getList(0);
}

/// IPBlock describes a particular CIDR (Ex. "192.168.1.0/24","2001:db8::/64") that is allowed
/// to the pods matched by a NetworkPolicySpec's podSelector. The except entry describes CIDRs
/// that should not be included within this rule.
class IPBlock extends $pb.GeneratedMessage {
  factory IPBlock({
    $core.String? cidr,
    $core.Iterable<$core.String>? except,
  }) {
    final $result = create();
    if (cidr != null) {
      $result.cidr = cidr;
    }
    if (except != null) {
      $result.except.addAll(except);
    }
    return $result;
  }
  IPBlock._() : super();
  factory IPBlock.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IPBlock.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IPBlock', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'cidr')
    ..pPS(2, _omitFieldNames ? '' : 'except')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IPBlock clone() => IPBlock()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IPBlock copyWith(void Function(IPBlock) updates) => super.copyWith((message) => updates(message as IPBlock)) as IPBlock;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IPBlock create() => IPBlock._();
  IPBlock createEmptyInstance() => create();
  static $pb.PbList<IPBlock> createRepeated() => $pb.PbList<IPBlock>();
  @$core.pragma('dart2js:noInline')
  static IPBlock getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IPBlock>(create);
  static IPBlock? _defaultInstance;

  /// cidr is a string representing the IPBlock
  /// Valid examples are "192.168.1.0/24" or "2001:db8::/64"
  @$pb.TagNumber(1)
  $core.String get cidr => $_getSZ(0);
  @$pb.TagNumber(1)
  set cidr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCidr() => $_has(0);
  @$pb.TagNumber(1)
  void clearCidr() => clearField(1);

  /// except is a slice of CIDRs that should not be included within an IPBlock
  /// Valid examples are "192.168.1.0/24" or "2001:db8::/64"
  /// Except values will be rejected if they are outside the cidr range
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<$core.String> get except => $_getList(1);
}

/// Ingress is a collection of rules that allow inbound connections to reach the
/// endpoints defined by a backend. An Ingress can be configured to give services
/// externally-reachable urls, load balance traffic, terminate SSL, offer name
/// based virtual hosting etc.
class Ingress extends $pb.GeneratedMessage {
  factory Ingress({
    $0.ObjectMeta? metadata,
    IngressSpec? spec,
    IngressStatus? status,
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
  Ingress._() : super();
  factory Ingress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ingress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ingress', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<IngressSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: IngressSpec.create)
    ..aOM<IngressStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: IngressStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ingress clone() => Ingress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ingress copyWith(void Function(Ingress) updates) => super.copyWith((message) => updates(message as Ingress)) as Ingress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Ingress create() => Ingress._();
  Ingress createEmptyInstance() => create();
  static $pb.PbList<Ingress> createRepeated() => $pb.PbList<Ingress>();
  @$core.pragma('dart2js:noInline')
  static Ingress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ingress>(create);
  static Ingress? _defaultInstance;

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

  /// spec is the desired state of the Ingress.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  IngressSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(IngressSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  IngressSpec ensureSpec() => $_ensure(1);

  /// status is the current state of the Ingress.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  IngressStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(IngressStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  IngressStatus ensureStatus() => $_ensure(2);
}

/// IngressBackend describes all endpoints for a given service and port.
class IngressBackend extends $pb.GeneratedMessage {
  factory IngressBackend({
    $1.TypedLocalObjectReference? resource,
    IngressServiceBackend? service,
  }) {
    final $result = create();
    if (resource != null) {
      $result.resource = resource;
    }
    if (service != null) {
      $result.service = service;
    }
    return $result;
  }
  IngressBackend._() : super();
  factory IngressBackend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressBackend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressBackend', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$1.TypedLocalObjectReference>(3, _omitFieldNames ? '' : 'resource', subBuilder: $1.TypedLocalObjectReference.create)
    ..aOM<IngressServiceBackend>(4, _omitFieldNames ? '' : 'service', subBuilder: IngressServiceBackend.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressBackend clone() => IngressBackend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressBackend copyWith(void Function(IngressBackend) updates) => super.copyWith((message) => updates(message as IngressBackend)) as IngressBackend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressBackend create() => IngressBackend._();
  IngressBackend createEmptyInstance() => create();
  static $pb.PbList<IngressBackend> createRepeated() => $pb.PbList<IngressBackend>();
  @$core.pragma('dart2js:noInline')
  static IngressBackend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressBackend>(create);
  static IngressBackend? _defaultInstance;

  /// resource is an ObjectRef to another Kubernetes resource in the namespace
  /// of the Ingress object. If resource is specified, a service.Name and
  /// service.Port must not be specified.
  /// This is a mutually exclusive setting with "Service".
  /// +optional
  @$pb.TagNumber(3)
  $1.TypedLocalObjectReference get resource => $_getN(0);
  @$pb.TagNumber(3)
  set resource($1.TypedLocalObjectReference v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(0);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);
  @$pb.TagNumber(3)
  $1.TypedLocalObjectReference ensureResource() => $_ensure(0);

  /// service references a service as a backend.
  /// This is a mutually exclusive setting with "Resource".
  /// +optional
  @$pb.TagNumber(4)
  IngressServiceBackend get service => $_getN(1);
  @$pb.TagNumber(4)
  set service(IngressServiceBackend v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasService() => $_has(1);
  @$pb.TagNumber(4)
  void clearService() => clearField(4);
  @$pb.TagNumber(4)
  IngressServiceBackend ensureService() => $_ensure(1);
}

/// IngressClass represents the class of the Ingress, referenced by the Ingress
/// Spec. The `ingressclass.kubernetes.io/is-default-class` annotation can be
/// used to indicate that an IngressClass should be considered default. When a
/// single IngressClass resource has this annotation set to true, new Ingress
/// resources without a class specified will be assigned this default class.
class IngressClass extends $pb.GeneratedMessage {
  factory IngressClass({
    $0.ObjectMeta? metadata,
    IngressClassSpec? spec,
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
  IngressClass._() : super();
  factory IngressClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressClass', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<IngressClassSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: IngressClassSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressClass clone() => IngressClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressClass copyWith(void Function(IngressClass) updates) => super.copyWith((message) => updates(message as IngressClass)) as IngressClass;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressClass create() => IngressClass._();
  IngressClass createEmptyInstance() => create();
  static $pb.PbList<IngressClass> createRepeated() => $pb.PbList<IngressClass>();
  @$core.pragma('dart2js:noInline')
  static IngressClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressClass>(create);
  static IngressClass? _defaultInstance;

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

  /// spec is the desired state of the IngressClass.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  IngressClassSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(IngressClassSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  IngressClassSpec ensureSpec() => $_ensure(1);
}

/// IngressClassList is a collection of IngressClasses.
class IngressClassList extends $pb.GeneratedMessage {
  factory IngressClassList({
    $0.ListMeta? metadata,
    $core.Iterable<IngressClass>? items,
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
  IngressClassList._() : super();
  factory IngressClassList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressClassList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressClassList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<IngressClass>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: IngressClass.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressClassList clone() => IngressClassList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressClassList copyWith(void Function(IngressClassList) updates) => super.copyWith((message) => updates(message as IngressClassList)) as IngressClassList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressClassList create() => IngressClassList._();
  IngressClassList createEmptyInstance() => create();
  static $pb.PbList<IngressClassList> createRepeated() => $pb.PbList<IngressClassList>();
  @$core.pragma('dart2js:noInline')
  static IngressClassList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressClassList>(create);
  static IngressClassList? _defaultInstance;

  /// Standard list metadata.
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

  /// items is the list of IngressClasses.
  @$pb.TagNumber(2)
  $core.List<IngressClass> get items => $_getList(1);
}

/// IngressClassParametersReference identifies an API object. This can be used
/// to specify a cluster or namespace-scoped resource.
class IngressClassParametersReference extends $pb.GeneratedMessage {
  factory IngressClassParametersReference({
    $core.String? aPIGroup,
    $core.String? kind,
    $core.String? name,
    $core.String? scope,
    $core.String? namespace,
  }) {
    final $result = create();
    if (aPIGroup != null) {
      $result.aPIGroup = aPIGroup;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (name != null) {
      $result.name = name;
    }
    if (scope != null) {
      $result.scope = scope;
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    return $result;
  }
  IngressClassParametersReference._() : super();
  factory IngressClassParametersReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressClassParametersReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressClassParametersReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'aPIGroup', protoName: 'aPIGroup')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'scope')
    ..aOS(5, _omitFieldNames ? '' : 'namespace')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressClassParametersReference clone() => IngressClassParametersReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressClassParametersReference copyWith(void Function(IngressClassParametersReference) updates) => super.copyWith((message) => updates(message as IngressClassParametersReference)) as IngressClassParametersReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressClassParametersReference create() => IngressClassParametersReference._();
  IngressClassParametersReference createEmptyInstance() => create();
  static $pb.PbList<IngressClassParametersReference> createRepeated() => $pb.PbList<IngressClassParametersReference>();
  @$core.pragma('dart2js:noInline')
  static IngressClassParametersReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressClassParametersReference>(create);
  static IngressClassParametersReference? _defaultInstance;

  /// apiGroup is the group for the resource being referenced. If APIGroup is
  /// not specified, the specified Kind must be in the core API group. For any
  /// other third-party types, APIGroup is required.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get aPIGroup => $_getSZ(0);
  @$pb.TagNumber(1)
  set aPIGroup($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAPIGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearAPIGroup() => clearField(1);

  /// kind is the type of resource being referenced.
  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);

  /// name is the name of resource being referenced.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  /// scope represents if this refers to a cluster or namespace scoped resource.
  /// This may be set to "Cluster" (default) or "Namespace".
  /// +optional
  @$pb.TagNumber(4)
  $core.String get scope => $_getSZ(3);
  @$pb.TagNumber(4)
  set scope($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasScope() => $_has(3);
  @$pb.TagNumber(4)
  void clearScope() => clearField(4);

  /// namespace is the namespace of the resource being referenced. This field is
  /// required when scope is set to "Namespace" and must be unset when scope is set to
  /// "Cluster".
  /// +optional
  @$pb.TagNumber(5)
  $core.String get namespace => $_getSZ(4);
  @$pb.TagNumber(5)
  set namespace($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNamespace() => $_has(4);
  @$pb.TagNumber(5)
  void clearNamespace() => clearField(5);
}

/// IngressClassSpec provides information about the class of an Ingress.
class IngressClassSpec extends $pb.GeneratedMessage {
  factory IngressClassSpec({
    $core.String? controller,
    IngressClassParametersReference? parameters,
  }) {
    final $result = create();
    if (controller != null) {
      $result.controller = controller;
    }
    if (parameters != null) {
      $result.parameters = parameters;
    }
    return $result;
  }
  IngressClassSpec._() : super();
  factory IngressClassSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressClassSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressClassSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'controller')
    ..aOM<IngressClassParametersReference>(2, _omitFieldNames ? '' : 'parameters', subBuilder: IngressClassParametersReference.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressClassSpec clone() => IngressClassSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressClassSpec copyWith(void Function(IngressClassSpec) updates) => super.copyWith((message) => updates(message as IngressClassSpec)) as IngressClassSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressClassSpec create() => IngressClassSpec._();
  IngressClassSpec createEmptyInstance() => create();
  static $pb.PbList<IngressClassSpec> createRepeated() => $pb.PbList<IngressClassSpec>();
  @$core.pragma('dart2js:noInline')
  static IngressClassSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressClassSpec>(create);
  static IngressClassSpec? _defaultInstance;

  /// controller refers to the name of the controller that should handle this
  /// class. This allows for different "flavors" that are controlled by the
  /// same controller. For example, you may have different parameters for the
  /// same implementing controller. This should be specified as a
  /// domain-prefixed path no more than 250 characters in length, e.g.
  /// "acme.io/ingress-controller". This field is immutable.
  @$pb.TagNumber(1)
  $core.String get controller => $_getSZ(0);
  @$pb.TagNumber(1)
  set controller($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasController() => $_has(0);
  @$pb.TagNumber(1)
  void clearController() => clearField(1);

  /// parameters is a link to a custom resource containing additional
  /// configuration for the controller. This is optional if the controller does
  /// not require extra parameters.
  /// +optional
  @$pb.TagNumber(2)
  IngressClassParametersReference get parameters => $_getN(1);
  @$pb.TagNumber(2)
  set parameters(IngressClassParametersReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParameters() => $_has(1);
  @$pb.TagNumber(2)
  void clearParameters() => clearField(2);
  @$pb.TagNumber(2)
  IngressClassParametersReference ensureParameters() => $_ensure(1);
}

/// IngressList is a collection of Ingress.
class IngressList extends $pb.GeneratedMessage {
  factory IngressList({
    $0.ListMeta? metadata,
    $core.Iterable<Ingress>? items,
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
  IngressList._() : super();
  factory IngressList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<Ingress>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Ingress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressList clone() => IngressList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressList copyWith(void Function(IngressList) updates) => super.copyWith((message) => updates(message as IngressList)) as IngressList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressList create() => IngressList._();
  IngressList createEmptyInstance() => create();
  static $pb.PbList<IngressList> createRepeated() => $pb.PbList<IngressList>();
  @$core.pragma('dart2js:noInline')
  static IngressList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressList>(create);
  static IngressList? _defaultInstance;

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

  /// items is the list of Ingress.
  @$pb.TagNumber(2)
  $core.List<Ingress> get items => $_getList(1);
}

/// IngressLoadBalancerIngress represents the status of a load-balancer ingress point.
class IngressLoadBalancerIngress extends $pb.GeneratedMessage {
  factory IngressLoadBalancerIngress({
    $core.String? ip,
    $core.String? hostname,
    $core.Iterable<IngressPortStatus>? ports,
  }) {
    final $result = create();
    if (ip != null) {
      $result.ip = ip;
    }
    if (hostname != null) {
      $result.hostname = hostname;
    }
    if (ports != null) {
      $result.ports.addAll(ports);
    }
    return $result;
  }
  IngressLoadBalancerIngress._() : super();
  factory IngressLoadBalancerIngress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressLoadBalancerIngress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressLoadBalancerIngress', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'ip')
    ..aOS(2, _omitFieldNames ? '' : 'hostname')
    ..pc<IngressPortStatus>(4, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.PM, subBuilder: IngressPortStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressLoadBalancerIngress clone() => IngressLoadBalancerIngress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressLoadBalancerIngress copyWith(void Function(IngressLoadBalancerIngress) updates) => super.copyWith((message) => updates(message as IngressLoadBalancerIngress)) as IngressLoadBalancerIngress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressLoadBalancerIngress create() => IngressLoadBalancerIngress._();
  IngressLoadBalancerIngress createEmptyInstance() => create();
  static $pb.PbList<IngressLoadBalancerIngress> createRepeated() => $pb.PbList<IngressLoadBalancerIngress>();
  @$core.pragma('dart2js:noInline')
  static IngressLoadBalancerIngress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressLoadBalancerIngress>(create);
  static IngressLoadBalancerIngress? _defaultInstance;

  /// ip is set for load-balancer ingress points that are IP based.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get ip => $_getSZ(0);
  @$pb.TagNumber(1)
  set ip($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIp() => $_has(0);
  @$pb.TagNumber(1)
  void clearIp() => clearField(1);

  /// hostname is set for load-balancer ingress points that are DNS based.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get hostname => $_getSZ(1);
  @$pb.TagNumber(2)
  set hostname($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHostname() => $_has(1);
  @$pb.TagNumber(2)
  void clearHostname() => clearField(2);

  /// ports provides information about the ports exposed by this LoadBalancer.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(4)
  $core.List<IngressPortStatus> get ports => $_getList(2);
}

/// IngressLoadBalancerStatus represents the status of a load-balancer.
class IngressLoadBalancerStatus extends $pb.GeneratedMessage {
  factory IngressLoadBalancerStatus({
    $core.Iterable<IngressLoadBalancerIngress>? ingress,
  }) {
    final $result = create();
    if (ingress != null) {
      $result.ingress.addAll(ingress);
    }
    return $result;
  }
  IngressLoadBalancerStatus._() : super();
  factory IngressLoadBalancerStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressLoadBalancerStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressLoadBalancerStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..pc<IngressLoadBalancerIngress>(1, _omitFieldNames ? '' : 'ingress', $pb.PbFieldType.PM, subBuilder: IngressLoadBalancerIngress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressLoadBalancerStatus clone() => IngressLoadBalancerStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressLoadBalancerStatus copyWith(void Function(IngressLoadBalancerStatus) updates) => super.copyWith((message) => updates(message as IngressLoadBalancerStatus)) as IngressLoadBalancerStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressLoadBalancerStatus create() => IngressLoadBalancerStatus._();
  IngressLoadBalancerStatus createEmptyInstance() => create();
  static $pb.PbList<IngressLoadBalancerStatus> createRepeated() => $pb.PbList<IngressLoadBalancerStatus>();
  @$core.pragma('dart2js:noInline')
  static IngressLoadBalancerStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressLoadBalancerStatus>(create);
  static IngressLoadBalancerStatus? _defaultInstance;

  /// ingress is a list containing ingress points for the load-balancer.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<IngressLoadBalancerIngress> get ingress => $_getList(0);
}

/// IngressPortStatus represents the error condition of a service port
class IngressPortStatus extends $pb.GeneratedMessage {
  factory IngressPortStatus({
    $core.int? port,
    $core.String? protocol,
    $core.String? error,
  }) {
    final $result = create();
    if (port != null) {
      $result.port = port;
    }
    if (protocol != null) {
      $result.protocol = protocol;
    }
    if (error != null) {
      $result.error = error;
    }
    return $result;
  }
  IngressPortStatus._() : super();
  factory IngressPortStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressPortStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressPortStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..aOS(2, _omitFieldNames ? '' : 'protocol')
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressPortStatus clone() => IngressPortStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressPortStatus copyWith(void Function(IngressPortStatus) updates) => super.copyWith((message) => updates(message as IngressPortStatus)) as IngressPortStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressPortStatus create() => IngressPortStatus._();
  IngressPortStatus createEmptyInstance() => create();
  static $pb.PbList<IngressPortStatus> createRepeated() => $pb.PbList<IngressPortStatus>();
  @$core.pragma('dart2js:noInline')
  static IngressPortStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressPortStatus>(create);
  static IngressPortStatus? _defaultInstance;

  /// port is the port number of the ingress port.
  @$pb.TagNumber(1)
  $core.int get port => $_getIZ(0);
  @$pb.TagNumber(1)
  set port($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPort() => $_has(0);
  @$pb.TagNumber(1)
  void clearPort() => clearField(1);

  /// protocol is the protocol of the ingress port.
  /// The supported values are: "TCP", "UDP", "SCTP"
  @$pb.TagNumber(2)
  $core.String get protocol => $_getSZ(1);
  @$pb.TagNumber(2)
  set protocol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtocol() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocol() => clearField(2);

  /// error is to record the problem with the service port
  /// The format of the error shall comply with the following rules:
  /// - built-in error values shall be specified in this file and those shall use
  ///   CamelCase names
  /// - cloud provider specific error values must have names that comply with the
  ///   format foo.example.com/CamelCase.
  /// ---
  /// The regex it matches is (dns1123SubdomainFmt/)?(qualifiedNameFmt)
  /// +optional
  /// +kubebuilder:validation:Required
  /// +kubebuilder:validation:Pattern=`^([a-z0-9]([-a-z0-9]*[a-z0-9])?(\.[a-z0-9]([-a-z0-9]*[a-z0-9])?)*/)?(([A-Za-z0-9][-A-Za-z0-9_.]*)?[A-Za-z0-9])$`
  /// +kubebuilder:validation:MaxLength=316
  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);
}

/// IngressRule represents the rules mapping the paths under a specified host to
/// the related backend services. Incoming requests are first evaluated for a host
/// match, then routed to the backend associated with the matching IngressRuleValue.
class IngressRule extends $pb.GeneratedMessage {
  factory IngressRule({
    $core.String? host,
    IngressRuleValue? ingressRuleValue,
  }) {
    final $result = create();
    if (host != null) {
      $result.host = host;
    }
    if (ingressRuleValue != null) {
      $result.ingressRuleValue = ingressRuleValue;
    }
    return $result;
  }
  IngressRule._() : super();
  factory IngressRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'host')
    ..aOM<IngressRuleValue>(2, _omitFieldNames ? '' : 'ingressRuleValue', protoName: 'ingressRuleValue', subBuilder: IngressRuleValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressRule clone() => IngressRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressRule copyWith(void Function(IngressRule) updates) => super.copyWith((message) => updates(message as IngressRule)) as IngressRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressRule create() => IngressRule._();
  IngressRule createEmptyInstance() => create();
  static $pb.PbList<IngressRule> createRepeated() => $pb.PbList<IngressRule>();
  @$core.pragma('dart2js:noInline')
  static IngressRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressRule>(create);
  static IngressRule? _defaultInstance;

  ///  host is the fully qualified domain name of a network host, as defined by RFC 3986.
  ///  Note the following deviations from the "host" part of the
  ///  URI as defined in RFC 3986:
  ///  1. IPs are not allowed. Currently an IngressRuleValue can only apply to
  ///     the IP in the Spec of the parent Ingress.
  ///  2. The `:` delimiter is not respected because ports are not allowed.
  ///  	  Currently the port of an Ingress is implicitly :80 for http and
  ///  	  :443 for https.
  ///  Both these may change in the future.
  ///  Incoming requests are matched against the host before the
  ///  IngressRuleValue. If the host is unspecified, the Ingress routes all
  ///  traffic based on the specified IngressRuleValue.
  ///
  ///  host can be "precise" which is a domain name without the terminating dot of
  ///  a network host (e.g. "foo.bar.com") or "wildcard", which is a domain name
  ///  prefixed with a single wildcard label (e.g. "*.foo.com").
  ///  The wildcard character '*' must appear by itself as the first DNS label and
  ///  matches only a single label. You cannot have a wildcard label by itself (e.g. Host == "*").
  ///  Requests will be matched against the Host field in the following way:
  ///  1. If host is precise, the request matches this rule if the http host header is equal to Host.
  ///  2. If host is a wildcard, then the request matches this rule if the http host header
  ///  is to equal to the suffix (removing the first label) of the wildcard rule.
  ///  +optional
  @$pb.TagNumber(1)
  $core.String get host => $_getSZ(0);
  @$pb.TagNumber(1)
  set host($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHost() => $_has(0);
  @$pb.TagNumber(1)
  void clearHost() => clearField(1);

  /// IngressRuleValue represents a rule to route requests for this IngressRule.
  /// If unspecified, the rule defaults to a http catch-all. Whether that sends
  /// just traffic matching the host to the default backend or all traffic to the
  /// default backend, is left to the controller fulfilling the Ingress. Http is
  /// currently the only supported IngressRuleValue.
  /// +optional
  @$pb.TagNumber(2)
  IngressRuleValue get ingressRuleValue => $_getN(1);
  @$pb.TagNumber(2)
  set ingressRuleValue(IngressRuleValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasIngressRuleValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearIngressRuleValue() => clearField(2);
  @$pb.TagNumber(2)
  IngressRuleValue ensureIngressRuleValue() => $_ensure(1);
}

/// IngressRuleValue represents a rule to apply against incoming requests. If the
/// rule is satisfied, the request is routed to the specified backend. Currently
/// mixing different types of rules in a single Ingress is disallowed, so exactly
/// one of the following must be set.
class IngressRuleValue extends $pb.GeneratedMessage {
  factory IngressRuleValue({
    HTTPIngressRuleValue? http,
  }) {
    final $result = create();
    if (http != null) {
      $result.http = http;
    }
    return $result;
  }
  IngressRuleValue._() : super();
  factory IngressRuleValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressRuleValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressRuleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<HTTPIngressRuleValue>(1, _omitFieldNames ? '' : 'http', subBuilder: HTTPIngressRuleValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressRuleValue clone() => IngressRuleValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressRuleValue copyWith(void Function(IngressRuleValue) updates) => super.copyWith((message) => updates(message as IngressRuleValue)) as IngressRuleValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressRuleValue create() => IngressRuleValue._();
  IngressRuleValue createEmptyInstance() => create();
  static $pb.PbList<IngressRuleValue> createRepeated() => $pb.PbList<IngressRuleValue>();
  @$core.pragma('dart2js:noInline')
  static IngressRuleValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressRuleValue>(create);
  static IngressRuleValue? _defaultInstance;

  /// +optional
  @$pb.TagNumber(1)
  HTTPIngressRuleValue get http => $_getN(0);
  @$pb.TagNumber(1)
  set http(HTTPIngressRuleValue v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasHttp() => $_has(0);
  @$pb.TagNumber(1)
  void clearHttp() => clearField(1);
  @$pb.TagNumber(1)
  HTTPIngressRuleValue ensureHttp() => $_ensure(0);
}

/// IngressServiceBackend references a Kubernetes Service as a Backend.
class IngressServiceBackend extends $pb.GeneratedMessage {
  factory IngressServiceBackend({
    $core.String? name,
    ServiceBackendPort? port,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (port != null) {
      $result.port = port;
    }
    return $result;
  }
  IngressServiceBackend._() : super();
  factory IngressServiceBackend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressServiceBackend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressServiceBackend', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<ServiceBackendPort>(2, _omitFieldNames ? '' : 'port', subBuilder: ServiceBackendPort.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressServiceBackend clone() => IngressServiceBackend()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressServiceBackend copyWith(void Function(IngressServiceBackend) updates) => super.copyWith((message) => updates(message as IngressServiceBackend)) as IngressServiceBackend;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressServiceBackend create() => IngressServiceBackend._();
  IngressServiceBackend createEmptyInstance() => create();
  static $pb.PbList<IngressServiceBackend> createRepeated() => $pb.PbList<IngressServiceBackend>();
  @$core.pragma('dart2js:noInline')
  static IngressServiceBackend getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressServiceBackend>(create);
  static IngressServiceBackend? _defaultInstance;

  /// name is the referenced service. The service must exist in
  /// the same namespace as the Ingress object.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// port of the referenced service. A port name or port number
  /// is required for a IngressServiceBackend.
  @$pb.TagNumber(2)
  ServiceBackendPort get port => $_getN(1);
  @$pb.TagNumber(2)
  set port(ServiceBackendPort v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);
  @$pb.TagNumber(2)
  ServiceBackendPort ensurePort() => $_ensure(1);
}

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpec extends $pb.GeneratedMessage {
  factory IngressSpec({
    IngressBackend? defaultBackend,
    $core.Iterable<IngressTLS>? tls,
    $core.Iterable<IngressRule>? rules,
    $core.String? ingressClassName,
  }) {
    final $result = create();
    if (defaultBackend != null) {
      $result.defaultBackend = defaultBackend;
    }
    if (tls != null) {
      $result.tls.addAll(tls);
    }
    if (rules != null) {
      $result.rules.addAll(rules);
    }
    if (ingressClassName != null) {
      $result.ingressClassName = ingressClassName;
    }
    return $result;
  }
  IngressSpec._() : super();
  factory IngressSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<IngressBackend>(1, _omitFieldNames ? '' : 'defaultBackend', protoName: 'defaultBackend', subBuilder: IngressBackend.create)
    ..pc<IngressTLS>(2, _omitFieldNames ? '' : 'tls', $pb.PbFieldType.PM, subBuilder: IngressTLS.create)
    ..pc<IngressRule>(3, _omitFieldNames ? '' : 'rules', $pb.PbFieldType.PM, subBuilder: IngressRule.create)
    ..aOS(4, _omitFieldNames ? '' : 'ingressClassName', protoName: 'ingressClassName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressSpec clone() => IngressSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressSpec copyWith(void Function(IngressSpec) updates) => super.copyWith((message) => updates(message as IngressSpec)) as IngressSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressSpec create() => IngressSpec._();
  IngressSpec createEmptyInstance() => create();
  static $pb.PbList<IngressSpec> createRepeated() => $pb.PbList<IngressSpec>();
  @$core.pragma('dart2js:noInline')
  static IngressSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressSpec>(create);
  static IngressSpec? _defaultInstance;

  /// defaultBackend is the backend that should handle requests that don't
  /// match any rule. If Rules are not specified, DefaultBackend must be specified.
  /// If DefaultBackend is not set, the handling of requests that do not match any
  /// of the rules will be up to the Ingress controller.
  /// +optional
  @$pb.TagNumber(1)
  IngressBackend get defaultBackend => $_getN(0);
  @$pb.TagNumber(1)
  set defaultBackend(IngressBackend v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasDefaultBackend() => $_has(0);
  @$pb.TagNumber(1)
  void clearDefaultBackend() => clearField(1);
  @$pb.TagNumber(1)
  IngressBackend ensureDefaultBackend() => $_ensure(0);

  /// tls represents the TLS configuration. Currently the Ingress only supports a
  /// single TLS port, 443. If multiple members of this list specify different hosts,
  /// they will be multiplexed on the same port according to the hostname specified
  /// through the SNI TLS extension, if the ingress controller fulfilling the
  /// ingress supports SNI.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(2)
  $core.List<IngressTLS> get tls => $_getList(1);

  /// rules is a list of host rules used to configure the Ingress. If unspecified,
  /// or no rule matches, all traffic is sent to the default backend.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(3)
  $core.List<IngressRule> get rules => $_getList(2);

  /// ingressClassName is the name of an IngressClass cluster resource. Ingress
  /// controller implementations use this field to know whether they should be
  /// serving this Ingress resource, by a transitive connection
  /// (controller -> IngressClass -> Ingress resource). Although the
  /// `kubernetes.io/ingress.class` annotation (simple constant name) was never
  /// formally defined, it was widely supported by Ingress controllers to create
  /// a direct binding between Ingress controller and Ingress resources. Newly
  /// created Ingress resources should prefer using the field. However, even
  /// though the annotation is officially deprecated, for backwards compatibility
  /// reasons, ingress controllers should still honor that annotation if present.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get ingressClassName => $_getSZ(3);
  @$pb.TagNumber(4)
  set ingressClassName($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasIngressClassName() => $_has(3);
  @$pb.TagNumber(4)
  void clearIngressClassName() => clearField(4);
}

/// IngressStatus describe the current state of the Ingress.
class IngressStatus extends $pb.GeneratedMessage {
  factory IngressStatus({
    IngressLoadBalancerStatus? loadBalancer,
  }) {
    final $result = create();
    if (loadBalancer != null) {
      $result.loadBalancer = loadBalancer;
    }
    return $result;
  }
  IngressStatus._() : super();
  factory IngressStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<IngressLoadBalancerStatus>(1, _omitFieldNames ? '' : 'loadBalancer', protoName: 'loadBalancer', subBuilder: IngressLoadBalancerStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressStatus clone() => IngressStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressStatus copyWith(void Function(IngressStatus) updates) => super.copyWith((message) => updates(message as IngressStatus)) as IngressStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressStatus create() => IngressStatus._();
  IngressStatus createEmptyInstance() => create();
  static $pb.PbList<IngressStatus> createRepeated() => $pb.PbList<IngressStatus>();
  @$core.pragma('dart2js:noInline')
  static IngressStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressStatus>(create);
  static IngressStatus? _defaultInstance;

  /// loadBalancer contains the current status of the load-balancer.
  /// +optional
  @$pb.TagNumber(1)
  IngressLoadBalancerStatus get loadBalancer => $_getN(0);
  @$pb.TagNumber(1)
  set loadBalancer(IngressLoadBalancerStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasLoadBalancer() => $_has(0);
  @$pb.TagNumber(1)
  void clearLoadBalancer() => clearField(1);
  @$pb.TagNumber(1)
  IngressLoadBalancerStatus ensureLoadBalancer() => $_ensure(0);
}

/// IngressTLS describes the transport layer security associated with an ingress.
class IngressTLS extends $pb.GeneratedMessage {
  factory IngressTLS({
    $core.Iterable<$core.String>? hosts,
    $core.String? secretName,
  }) {
    final $result = create();
    if (hosts != null) {
      $result.hosts.addAll(hosts);
    }
    if (secretName != null) {
      $result.secretName = secretName;
    }
    return $result;
  }
  IngressTLS._() : super();
  factory IngressTLS.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressTLS.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressTLS', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'hosts')
    ..aOS(2, _omitFieldNames ? '' : 'secretName', protoName: 'secretName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IngressTLS clone() => IngressTLS()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IngressTLS copyWith(void Function(IngressTLS) updates) => super.copyWith((message) => updates(message as IngressTLS)) as IngressTLS;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IngressTLS create() => IngressTLS._();
  IngressTLS createEmptyInstance() => create();
  static $pb.PbList<IngressTLS> createRepeated() => $pb.PbList<IngressTLS>();
  @$core.pragma('dart2js:noInline')
  static IngressTLS getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IngressTLS>(create);
  static IngressTLS? _defaultInstance;

  /// hosts is a list of hosts included in the TLS certificate. The values in
  /// this list must match the name/s used in the tlsSecret. Defaults to the
  /// wildcard host setting for the loadbalancer controller fulfilling this
  /// Ingress, if left unspecified.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(1)
  $core.List<$core.String> get hosts => $_getList(0);

  /// secretName is the name of the secret used to terminate TLS traffic on
  /// port 443. Field is left optional to allow TLS routing based on SNI
  /// hostname alone. If the SNI host in a listener conflicts with the "Host"
  /// header field used by an IngressRule, the SNI host is used for termination
  /// and value of the "Host" header is used for routing.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get secretName => $_getSZ(1);
  @$pb.TagNumber(2)
  set secretName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSecretName() => $_has(1);
  @$pb.TagNumber(2)
  void clearSecretName() => clearField(2);
}

/// NetworkPolicy describes what network traffic is allowed for a set of Pods
class NetworkPolicy extends $pb.GeneratedMessage {
  factory NetworkPolicy({
    $0.ObjectMeta? metadata,
    NetworkPolicySpec? spec,
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
  NetworkPolicy._() : super();
  factory NetworkPolicy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicy', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<NetworkPolicySpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: NetworkPolicySpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicy clone() => NetworkPolicy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicy copyWith(void Function(NetworkPolicy) updates) => super.copyWith((message) => updates(message as NetworkPolicy)) as NetworkPolicy;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicy create() => NetworkPolicy._();
  NetworkPolicy createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicy> createRepeated() => $pb.PbList<NetworkPolicy>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicy>(create);
  static NetworkPolicy? _defaultInstance;

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

  /// spec represents the specification of the desired behavior for this NetworkPolicy.
  /// +optional
  @$pb.TagNumber(2)
  NetworkPolicySpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(NetworkPolicySpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  NetworkPolicySpec ensureSpec() => $_ensure(1);
}

/// NetworkPolicyEgressRule describes a particular set of traffic that is allowed out of pods
/// matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and to.
/// This type is beta-level in 1.8
class NetworkPolicyEgressRule extends $pb.GeneratedMessage {
  factory NetworkPolicyEgressRule({
    $core.Iterable<NetworkPolicyPort>? ports,
    $core.Iterable<NetworkPolicyPeer>? to,
  }) {
    final $result = create();
    if (ports != null) {
      $result.ports.addAll(ports);
    }
    if (to != null) {
      $result.to.addAll(to);
    }
    return $result;
  }
  NetworkPolicyEgressRule._() : super();
  factory NetworkPolicyEgressRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyEgressRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyEgressRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..pc<NetworkPolicyPort>(1, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.PM, subBuilder: NetworkPolicyPort.create)
    ..pc<NetworkPolicyPeer>(2, _omitFieldNames ? '' : 'to', $pb.PbFieldType.PM, subBuilder: NetworkPolicyPeer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyEgressRule clone() => NetworkPolicyEgressRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyEgressRule copyWith(void Function(NetworkPolicyEgressRule) updates) => super.copyWith((message) => updates(message as NetworkPolicyEgressRule)) as NetworkPolicyEgressRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyEgressRule create() => NetworkPolicyEgressRule._();
  NetworkPolicyEgressRule createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyEgressRule> createRepeated() => $pb.PbList<NetworkPolicyEgressRule>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyEgressRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyEgressRule>(create);
  static NetworkPolicyEgressRule? _defaultInstance;

  /// ports is a list of destination ports for outgoing traffic.
  /// Each item in this list is combined using a logical OR. If this field is
  /// empty or missing, this rule matches all ports (traffic not restricted by port).
  /// If this field is present and contains at least one item, then this rule allows
  /// traffic only if the traffic matches at least one port in the list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<NetworkPolicyPort> get ports => $_getList(0);

  /// to is a list of destinations for outgoing traffic of pods selected for this rule.
  /// Items in this list are combined using a logical OR operation. If this field is
  /// empty or missing, this rule matches all destinations (traffic not restricted by
  /// destination). If this field is present and contains at least one item, this rule
  /// allows traffic only if the traffic matches at least one item in the to list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<NetworkPolicyPeer> get to => $_getList(1);
}

/// NetworkPolicyIngressRule describes a particular set of traffic that is allowed to the pods
/// matched by a NetworkPolicySpec's podSelector. The traffic must match both ports and from.
class NetworkPolicyIngressRule extends $pb.GeneratedMessage {
  factory NetworkPolicyIngressRule({
    $core.Iterable<NetworkPolicyPort>? ports,
    $core.Iterable<NetworkPolicyPeer>? from,
  }) {
    final $result = create();
    if (ports != null) {
      $result.ports.addAll(ports);
    }
    if (from != null) {
      $result.from.addAll(from);
    }
    return $result;
  }
  NetworkPolicyIngressRule._() : super();
  factory NetworkPolicyIngressRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyIngressRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyIngressRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..pc<NetworkPolicyPort>(1, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.PM, subBuilder: NetworkPolicyPort.create)
    ..pc<NetworkPolicyPeer>(2, _omitFieldNames ? '' : 'from', $pb.PbFieldType.PM, subBuilder: NetworkPolicyPeer.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyIngressRule clone() => NetworkPolicyIngressRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyIngressRule copyWith(void Function(NetworkPolicyIngressRule) updates) => super.copyWith((message) => updates(message as NetworkPolicyIngressRule)) as NetworkPolicyIngressRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyIngressRule create() => NetworkPolicyIngressRule._();
  NetworkPolicyIngressRule createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyIngressRule> createRepeated() => $pb.PbList<NetworkPolicyIngressRule>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyIngressRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyIngressRule>(create);
  static NetworkPolicyIngressRule? _defaultInstance;

  /// ports is a list of ports which should be made accessible on the pods selected for
  /// this rule. Each item in this list is combined using a logical OR. If this field is
  /// empty or missing, this rule matches all ports (traffic not restricted by port).
  /// If this field is present and contains at least one item, then this rule allows
  /// traffic only if the traffic matches at least one port in the list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<NetworkPolicyPort> get ports => $_getList(0);

  /// from is a list of sources which should be able to access the pods selected for this rule.
  /// Items in this list are combined using a logical OR operation. If this field is
  /// empty or missing, this rule matches all sources (traffic not restricted by
  /// source). If this field is present and contains at least one item, this rule
  /// allows traffic only if the traffic matches at least one item in the from list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<NetworkPolicyPeer> get from => $_getList(1);
}

/// NetworkPolicyList is a list of NetworkPolicy objects.
class NetworkPolicyList extends $pb.GeneratedMessage {
  factory NetworkPolicyList({
    $0.ListMeta? metadata,
    $core.Iterable<NetworkPolicy>? items,
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
  NetworkPolicyList._() : super();
  factory NetworkPolicyList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<NetworkPolicy>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: NetworkPolicy.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyList clone() => NetworkPolicyList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyList copyWith(void Function(NetworkPolicyList) updates) => super.copyWith((message) => updates(message as NetworkPolicyList)) as NetworkPolicyList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyList create() => NetworkPolicyList._();
  NetworkPolicyList createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyList> createRepeated() => $pb.PbList<NetworkPolicyList>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyList>(create);
  static NetworkPolicyList? _defaultInstance;

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
  $core.List<NetworkPolicy> get items => $_getList(1);
}

/// NetworkPolicyPeer describes a peer to allow traffic to/from. Only certain combinations of
/// fields are allowed
class NetworkPolicyPeer extends $pb.GeneratedMessage {
  factory NetworkPolicyPeer({
    $0.LabelSelector? podSelector,
    $0.LabelSelector? namespaceSelector,
    IPBlock? ipBlock,
  }) {
    final $result = create();
    if (podSelector != null) {
      $result.podSelector = podSelector;
    }
    if (namespaceSelector != null) {
      $result.namespaceSelector = namespaceSelector;
    }
    if (ipBlock != null) {
      $result.ipBlock = ipBlock;
    }
    return $result;
  }
  NetworkPolicyPeer._() : super();
  factory NetworkPolicyPeer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyPeer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyPeer', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$0.LabelSelector>(1, _omitFieldNames ? '' : 'podSelector', protoName: 'podSelector', subBuilder: $0.LabelSelector.create)
    ..aOM<$0.LabelSelector>(2, _omitFieldNames ? '' : 'namespaceSelector', protoName: 'namespaceSelector', subBuilder: $0.LabelSelector.create)
    ..aOM<IPBlock>(3, _omitFieldNames ? '' : 'ipBlock', protoName: 'ipBlock', subBuilder: IPBlock.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyPeer clone() => NetworkPolicyPeer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyPeer copyWith(void Function(NetworkPolicyPeer) updates) => super.copyWith((message) => updates(message as NetworkPolicyPeer)) as NetworkPolicyPeer;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyPeer create() => NetworkPolicyPeer._();
  NetworkPolicyPeer createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyPeer> createRepeated() => $pb.PbList<NetworkPolicyPeer>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyPeer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyPeer>(create);
  static NetworkPolicyPeer? _defaultInstance;

  ///  podSelector is a label selector which selects pods. This field follows standard label
  ///  selector semantics; if present but empty, it selects all pods.
  ///
  ///  If namespaceSelector is also set, then the NetworkPolicyPeer as a whole selects
  ///  the pods matching podSelector in the Namespaces selected by NamespaceSelector.
  ///  Otherwise it selects the pods matching podSelector in the policy's own namespace.
  ///  +optional
  @$pb.TagNumber(1)
  $0.LabelSelector get podSelector => $_getN(0);
  @$pb.TagNumber(1)
  set podSelector($0.LabelSelector v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPodSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearPodSelector() => clearField(1);
  @$pb.TagNumber(1)
  $0.LabelSelector ensurePodSelector() => $_ensure(0);

  ///  namespaceSelector selects namespaces using cluster-scoped labels. This field follows
  ///  standard label selector semantics; if present but empty, it selects all namespaces.
  ///
  ///  If podSelector is also set, then the NetworkPolicyPeer as a whole selects
  ///  the pods matching podSelector in the namespaces selected by namespaceSelector.
  ///  Otherwise it selects all pods in the namespaces selected by namespaceSelector.
  ///  +optional
  @$pb.TagNumber(2)
  $0.LabelSelector get namespaceSelector => $_getN(1);
  @$pb.TagNumber(2)
  set namespaceSelector($0.LabelSelector v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNamespaceSelector() => $_has(1);
  @$pb.TagNumber(2)
  void clearNamespaceSelector() => clearField(2);
  @$pb.TagNumber(2)
  $0.LabelSelector ensureNamespaceSelector() => $_ensure(1);

  /// ipBlock defines policy on a particular IPBlock. If this field is set then
  /// neither of the other fields can be.
  /// +optional
  @$pb.TagNumber(3)
  IPBlock get ipBlock => $_getN(2);
  @$pb.TagNumber(3)
  set ipBlock(IPBlock v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasIpBlock() => $_has(2);
  @$pb.TagNumber(3)
  void clearIpBlock() => clearField(3);
  @$pb.TagNumber(3)
  IPBlock ensureIpBlock() => $_ensure(2);
}

/// NetworkPolicyPort describes a port to allow traffic on
class NetworkPolicyPort extends $pb.GeneratedMessage {
  factory NetworkPolicyPort({
    $core.String? protocol,
    $2.IntOrString? port,
    $core.int? endPort,
  }) {
    final $result = create();
    if (protocol != null) {
      $result.protocol = protocol;
    }
    if (port != null) {
      $result.port = port;
    }
    if (endPort != null) {
      $result.endPort = endPort;
    }
    return $result;
  }
  NetworkPolicyPort._() : super();
  factory NetworkPolicyPort.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicyPort.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicyPort', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'protocol')
    ..aOM<$2.IntOrString>(2, _omitFieldNames ? '' : 'port', subBuilder: $2.IntOrString.create)
    ..a<$core.int>(3, _omitFieldNames ? '' : 'endPort', $pb.PbFieldType.O3, protoName: 'endPort')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicyPort clone() => NetworkPolicyPort()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicyPort copyWith(void Function(NetworkPolicyPort) updates) => super.copyWith((message) => updates(message as NetworkPolicyPort)) as NetworkPolicyPort;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicyPort create() => NetworkPolicyPort._();
  NetworkPolicyPort createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicyPort> createRepeated() => $pb.PbList<NetworkPolicyPort>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicyPort getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicyPort>(create);
  static NetworkPolicyPort? _defaultInstance;

  /// protocol represents the protocol (TCP, UDP, or SCTP) which traffic must match.
  /// If not specified, this field defaults to TCP.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get protocol => $_getSZ(0);
  @$pb.TagNumber(1)
  set protocol($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProtocol() => $_has(0);
  @$pb.TagNumber(1)
  void clearProtocol() => clearField(1);

  /// port represents the port on the given protocol. This can either be a numerical or named
  /// port on a pod. If this field is not provided, this matches all port names and
  /// numbers.
  /// If present, only traffic on the specified protocol AND port will be matched.
  /// +optional
  @$pb.TagNumber(2)
  $2.IntOrString get port => $_getN(1);
  @$pb.TagNumber(2)
  set port($2.IntOrString v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPort() => $_has(1);
  @$pb.TagNumber(2)
  void clearPort() => clearField(2);
  @$pb.TagNumber(2)
  $2.IntOrString ensurePort() => $_ensure(1);

  /// endPort indicates that the range of ports from port to endPort if set, inclusive,
  /// should be allowed by the policy. This field cannot be defined if the port field
  /// is not defined or if the port field is defined as a named (string) port.
  /// The endPort must be equal or greater than port.
  /// +optional
  @$pb.TagNumber(3)
  $core.int get endPort => $_getIZ(2);
  @$pb.TagNumber(3)
  set endPort($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasEndPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearEndPort() => clearField(3);
}

/// NetworkPolicySpec provides the specification of a NetworkPolicy
class NetworkPolicySpec extends $pb.GeneratedMessage {
  factory NetworkPolicySpec({
    $0.LabelSelector? podSelector,
    $core.Iterable<NetworkPolicyIngressRule>? ingress,
    $core.Iterable<NetworkPolicyEgressRule>? egress,
    $core.Iterable<$core.String>? policyTypes,
  }) {
    final $result = create();
    if (podSelector != null) {
      $result.podSelector = podSelector;
    }
    if (ingress != null) {
      $result.ingress.addAll(ingress);
    }
    if (egress != null) {
      $result.egress.addAll(egress);
    }
    if (policyTypes != null) {
      $result.policyTypes.addAll(policyTypes);
    }
    return $result;
  }
  NetworkPolicySpec._() : super();
  factory NetworkPolicySpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkPolicySpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NetworkPolicySpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOM<$0.LabelSelector>(1, _omitFieldNames ? '' : 'podSelector', protoName: 'podSelector', subBuilder: $0.LabelSelector.create)
    ..pc<NetworkPolicyIngressRule>(2, _omitFieldNames ? '' : 'ingress', $pb.PbFieldType.PM, subBuilder: NetworkPolicyIngressRule.create)
    ..pc<NetworkPolicyEgressRule>(3, _omitFieldNames ? '' : 'egress', $pb.PbFieldType.PM, subBuilder: NetworkPolicyEgressRule.create)
    ..pPS(4, _omitFieldNames ? '' : 'policyTypes', protoName: 'policyTypes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkPolicySpec clone() => NetworkPolicySpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkPolicySpec copyWith(void Function(NetworkPolicySpec) updates) => super.copyWith((message) => updates(message as NetworkPolicySpec)) as NetworkPolicySpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NetworkPolicySpec create() => NetworkPolicySpec._();
  NetworkPolicySpec createEmptyInstance() => create();
  static $pb.PbList<NetworkPolicySpec> createRepeated() => $pb.PbList<NetworkPolicySpec>();
  @$core.pragma('dart2js:noInline')
  static NetworkPolicySpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkPolicySpec>(create);
  static NetworkPolicySpec? _defaultInstance;

  /// podSelector selects the pods to which this NetworkPolicy object applies.
  /// The array of ingress rules is applied to any pods selected by this field.
  /// Multiple network policies can select the same set of pods. In this case,
  /// the ingress rules for each are combined additively.
  /// This field is NOT optional and follows standard label selector semantics.
  /// An empty podSelector matches all pods in this namespace.
  @$pb.TagNumber(1)
  $0.LabelSelector get podSelector => $_getN(0);
  @$pb.TagNumber(1)
  set podSelector($0.LabelSelector v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPodSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearPodSelector() => clearField(1);
  @$pb.TagNumber(1)
  $0.LabelSelector ensurePodSelector() => $_ensure(0);

  /// ingress is a list of ingress rules to be applied to the selected pods.
  /// Traffic is allowed to a pod if there are no NetworkPolicies selecting the pod
  /// (and cluster policy otherwise allows the traffic), OR if the traffic source is
  /// the pod's local node, OR if the traffic matches at least one ingress rule
  /// across all of the NetworkPolicy objects whose podSelector matches the pod. If
  /// this field is empty then this NetworkPolicy does not allow any traffic (and serves
  /// solely to ensure that the pods it selects are isolated by default)
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<NetworkPolicyIngressRule> get ingress => $_getList(1);

  /// egress is a list of egress rules to be applied to the selected pods. Outgoing traffic
  /// is allowed if there are no NetworkPolicies selecting the pod (and cluster policy
  /// otherwise allows the traffic), OR if the traffic matches at least one egress rule
  /// across all of the NetworkPolicy objects whose podSelector matches the pod. If
  /// this field is empty then this NetworkPolicy limits all outgoing traffic (and serves
  /// solely to ensure that the pods it selects are isolated by default).
  /// This field is beta-level in 1.8
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<NetworkPolicyEgressRule> get egress => $_getList(2);

  /// policyTypes is a list of rule types that the NetworkPolicy relates to.
  /// Valid options are ["Ingress"], ["Egress"], or ["Ingress", "Egress"].
  /// If this field is not specified, it will default based on the existence of ingress or egress rules;
  /// policies that contain an egress section are assumed to affect egress, and all policies
  /// (whether or not they contain an ingress section) are assumed to affect ingress.
  /// If you want to write an egress-only policy, you must explicitly specify policyTypes [ "Egress" ].
  /// Likewise, if you want to write a policy that specifies that no egress is allowed,
  /// you must specify a policyTypes value that include "Egress" (since such a policy would not include
  /// an egress section and would otherwise default to just [ "Ingress" ]).
  /// This field is beta-level in 1.8
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<$core.String> get policyTypes => $_getList(3);
}

/// ServiceBackendPort is the service port being referenced.
class ServiceBackendPort extends $pb.GeneratedMessage {
  factory ServiceBackendPort({
    $core.String? name,
    $core.int? number,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (number != null) {
      $result.number = number;
    }
    return $result;
  }
  ServiceBackendPort._() : super();
  factory ServiceBackendPort.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceBackendPort.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceBackendPort', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'number', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceBackendPort clone() => ServiceBackendPort()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceBackendPort copyWith(void Function(ServiceBackendPort) updates) => super.copyWith((message) => updates(message as ServiceBackendPort)) as ServiceBackendPort;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceBackendPort create() => ServiceBackendPort._();
  ServiceBackendPort createEmptyInstance() => create();
  static $pb.PbList<ServiceBackendPort> createRepeated() => $pb.PbList<ServiceBackendPort>();
  @$core.pragma('dart2js:noInline')
  static ServiceBackendPort getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceBackendPort>(create);
  static ServiceBackendPort? _defaultInstance;

  /// name is the name of the port on the Service.
  /// This is a mutually exclusive setting with "Number".
  /// +optional
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// number is the numerical port number (e.g. 80) on the Service.
  /// This is a mutually exclusive setting with "Name".
  /// +optional
  @$pb.TagNumber(2)
  $core.int get number => $_getIZ(1);
  @$pb.TagNumber(2)
  set number($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumber() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumber() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
