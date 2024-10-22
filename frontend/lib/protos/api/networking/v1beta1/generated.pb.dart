//
//  Generated code. Do not modify.
//  source: api/networking/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../../../apimachinery/pkg/util/intstr/generated.pb.dart' as $1;
import '../../core/v1/generated.pb.dart' as $2;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HTTPIngressPath', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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
  /// Defaults to ImplementationSpecific.
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'HTTPIngressRuleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Ingress', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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
    $core.String? serviceName,
    $1.IntOrString? servicePort,
    $2.TypedLocalObjectReference? resource,
  }) {
    final $result = create();
    if (serviceName != null) {
      $result.serviceName = serviceName;
    }
    if (servicePort != null) {
      $result.servicePort = servicePort;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    return $result;
  }
  IngressBackend._() : super();
  factory IngressBackend.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IngressBackend.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressBackend', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'serviceName', protoName: 'serviceName')
    ..aOM<$1.IntOrString>(2, _omitFieldNames ? '' : 'servicePort', protoName: 'servicePort', subBuilder: $1.IntOrString.create)
    ..aOM<$2.TypedLocalObjectReference>(3, _omitFieldNames ? '' : 'resource', subBuilder: $2.TypedLocalObjectReference.create)
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

  /// serviceName specifies the name of the referenced service.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get serviceName => $_getSZ(0);
  @$pb.TagNumber(1)
  set serviceName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasServiceName() => $_has(0);
  @$pb.TagNumber(1)
  void clearServiceName() => clearField(1);

  /// servicePort Specifies the port of the referenced service.
  /// +optional
  @$pb.TagNumber(2)
  $1.IntOrString get servicePort => $_getN(1);
  @$pb.TagNumber(2)
  set servicePort($1.IntOrString v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasServicePort() => $_has(1);
  @$pb.TagNumber(2)
  void clearServicePort() => clearField(2);
  @$pb.TagNumber(2)
  $1.IntOrString ensureServicePort() => $_ensure(1);

  /// resource is an ObjectRef to another Kubernetes resource in the namespace
  /// of the Ingress object. If resource is specified, serviceName and servicePort
  /// must not be specified.
  /// +optional
  @$pb.TagNumber(3)
  $2.TypedLocalObjectReference get resource => $_getN(2);
  @$pb.TagNumber(3)
  set resource($2.TypedLocalObjectReference v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(2);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);
  @$pb.TagNumber(3)
  $2.TypedLocalObjectReference ensureResource() => $_ensure(2);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressClass', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressClassList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressClassParametersReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressClassSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressLoadBalancerIngress', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

/// LoadBalancerStatus represents the status of a load-balancer.
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressLoadBalancerStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressPortStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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
  ///  1. If Host is precise, the request matches this rule if the http host header is equal to Host.
  ///  2. If Host is a wildcard, then the request matches this rule if the http host header
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressRuleValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

/// IngressSpec describes the Ingress the user wishes to exist.
class IngressSpec extends $pb.GeneratedMessage {
  factory IngressSpec({
    IngressBackend? backend,
    $core.Iterable<IngressTLS>? tls,
    $core.Iterable<IngressRule>? rules,
    $core.String? ingressClassName,
  }) {
    final $result = create();
    if (backend != null) {
      $result.backend = backend;
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
    ..aOM<IngressBackend>(1, _omitFieldNames ? '' : 'backend', subBuilder: IngressBackend.create)
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

  /// backend is the default backend capable of servicing requests that don't match any
  /// rule. At least one of 'backend' or 'rules' must be specified. This field
  /// is optional to allow the loadbalancer controller or defaulting logic to
  /// specify a global default.
  /// +optional
  @$pb.TagNumber(1)
  IngressBackend get backend => $_getN(0);
  @$pb.TagNumber(1)
  set backend(IngressBackend v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasBackend() => $_has(0);
  @$pb.TagNumber(1)
  void clearBackend() => clearField(1);
  @$pb.TagNumber(1)
  IngressBackend ensureBackend() => $_ensure(0);

  /// tls represents the TLS configuration. Currently the Ingress only supports a
  /// single TLS port, 443. If multiple members of this list specify different hosts,
  /// they will be multiplexed on the same port according to the hostname specified
  /// through the SNI TLS extension, if the ingress controller fulfilling the
  /// ingress supports SNI.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<IngressTLS> get tls => $_getList(1);

  /// rules is a list of host rules used to configure the Ingress. If unspecified, or
  /// no rule matches, all traffic is sent to the default backend.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<IngressRule> get rules => $_getList(2);

  /// ingressClassName is the name of the IngressClass cluster resource. The
  /// associated IngressClass defines which controller will implement the
  /// resource. This replaces the deprecated `kubernetes.io/ingress.class`
  /// annotation. For backwards compatibility, when that annotation is set, it
  /// must be given precedence over this field. The controller may emit a
  /// warning if the field and annotation have different values.
  /// Implementations of this API should ignore Ingresses without a class
  /// specified. An IngressClass resource may be marked as default, which can
  /// be used to set a default value for this field. For more information,
  /// refer to the IngressClass documentation.
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

/// IngressStatus describes the current state of the Ingress.
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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

/// IngressTLS describes the transport layer security associated with an Ingress.
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IngressTLS', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1beta1'), createEmptyInstance: create)
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
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get hosts => $_getList(0);

  /// secretName is the name of the secret used to terminate TLS traffic on
  /// port 443. Field is left optional to allow TLS routing based on SNI
  /// hostname alone. If the SNI host in a listener conflicts with the "Host"
  /// header field used by an IngressRule, the SNI host is used for termination
  /// and value of the Host header is used for routing.
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
