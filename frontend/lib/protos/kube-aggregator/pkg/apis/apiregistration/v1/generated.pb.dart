//
//  Generated code. Do not modify.
//  source: kube-aggregator/pkg/apis/apiregistration/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// APIService represents a server for a particular GroupVersion.
/// Name must be "version.group".
class APIService extends $pb.GeneratedMessage {
  factory APIService({
    $0.ObjectMeta? metadata,
    APIServiceSpec? spec,
    APIServiceStatus? status,
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
  APIService._() : super();
  factory APIService.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIService.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIService', package: const $pb.PackageName(_omitMessageNames ? '' : 'kube_aggregator.pkg.apis.apiregistration.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<APIServiceSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: APIServiceSpec.create)
    ..aOM<APIServiceStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: APIServiceStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIService clone() => APIService()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIService copyWith(void Function(APIService) updates) => super.copyWith((message) => updates(message as APIService)) as APIService;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIService create() => APIService._();
  APIService createEmptyInstance() => create();
  static $pb.PbList<APIService> createRepeated() => $pb.PbList<APIService>();
  @$core.pragma('dart2js:noInline')
  static APIService getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIService>(create);
  static APIService? _defaultInstance;

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

  /// Spec contains information for locating and communicating with a server
  @$pb.TagNumber(2)
  APIServiceSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(APIServiceSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  APIServiceSpec ensureSpec() => $_ensure(1);

  /// Status contains derived information about an API server
  @$pb.TagNumber(3)
  APIServiceStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(APIServiceStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  APIServiceStatus ensureStatus() => $_ensure(2);
}

/// APIServiceCondition describes the state of an APIService at a particular point
class APIServiceCondition extends $pb.GeneratedMessage {
  factory APIServiceCondition({
    $core.String? type,
    $core.String? status,
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
  APIServiceCondition._() : super();
  factory APIServiceCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIServiceCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIServiceCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'kube_aggregator.pkg.apis.apiregistration.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $0.Time.create)
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIServiceCondition clone() => APIServiceCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIServiceCondition copyWith(void Function(APIServiceCondition) updates) => super.copyWith((message) => updates(message as APIServiceCondition)) as APIServiceCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIServiceCondition create() => APIServiceCondition._();
  APIServiceCondition createEmptyInstance() => create();
  static $pb.PbList<APIServiceCondition> createRepeated() => $pb.PbList<APIServiceCondition>();
  @$core.pragma('dart2js:noInline')
  static APIServiceCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIServiceCondition>(create);
  static APIServiceCondition? _defaultInstance;

  /// Type is the type of the condition.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// Status is the status of the condition.
  /// Can be True, False, Unknown.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// Last time the condition transitioned from one status to another.
  /// +optional
  @$pb.TagNumber(3)
  $0.Time get lastTransitionTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastTransitionTime($0.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastTransitionTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastTransitionTime() => clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureLastTransitionTime() => $_ensure(2);

  /// Unique, one-word, CamelCase reason for the condition's last transition.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// Human-readable message indicating details about last transition.
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

/// APIServiceList is a list of APIService objects.
class APIServiceList extends $pb.GeneratedMessage {
  factory APIServiceList({
    $0.ListMeta? metadata,
    $core.Iterable<APIService>? items,
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
  APIServiceList._() : super();
  factory APIServiceList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIServiceList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIServiceList', package: const $pb.PackageName(_omitMessageNames ? '' : 'kube_aggregator.pkg.apis.apiregistration.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<APIService>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: APIService.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIServiceList clone() => APIServiceList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIServiceList copyWith(void Function(APIServiceList) updates) => super.copyWith((message) => updates(message as APIServiceList)) as APIServiceList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIServiceList create() => APIServiceList._();
  APIServiceList createEmptyInstance() => create();
  static $pb.PbList<APIServiceList> createRepeated() => $pb.PbList<APIServiceList>();
  @$core.pragma('dart2js:noInline')
  static APIServiceList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIServiceList>(create);
  static APIServiceList? _defaultInstance;

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

  /// Items is the list of APIService
  @$pb.TagNumber(2)
  $core.List<APIService> get items => $_getList(1);
}

/// APIServiceSpec contains information for locating and communicating with a server.
/// Only https is supported, though you are able to disable certificate verification.
class APIServiceSpec extends $pb.GeneratedMessage {
  factory APIServiceSpec({
    ServiceReference? service,
    $core.String? group,
    $core.String? version,
    $core.bool? insecureSkipTLSVerify,
    $core.List<$core.int>? caBundle,
    $core.int? groupPriorityMinimum,
    $core.int? versionPriority,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    if (group != null) {
      $result.group = group;
    }
    if (version != null) {
      $result.version = version;
    }
    if (insecureSkipTLSVerify != null) {
      $result.insecureSkipTLSVerify = insecureSkipTLSVerify;
    }
    if (caBundle != null) {
      $result.caBundle = caBundle;
    }
    if (groupPriorityMinimum != null) {
      $result.groupPriorityMinimum = groupPriorityMinimum;
    }
    if (versionPriority != null) {
      $result.versionPriority = versionPriority;
    }
    return $result;
  }
  APIServiceSpec._() : super();
  factory APIServiceSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIServiceSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIServiceSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'kube_aggregator.pkg.apis.apiregistration.v1'), createEmptyInstance: create)
    ..aOM<ServiceReference>(1, _omitFieldNames ? '' : 'service', subBuilder: ServiceReference.create)
    ..aOS(2, _omitFieldNames ? '' : 'group')
    ..aOS(3, _omitFieldNames ? '' : 'version')
    ..aOB(4, _omitFieldNames ? '' : 'insecureSkipTLSVerify', protoName: 'insecureSkipTLSVerify')
    ..a<$core.List<$core.int>>(5, _omitFieldNames ? '' : 'caBundle', $pb.PbFieldType.OY, protoName: 'caBundle')
    ..a<$core.int>(7, _omitFieldNames ? '' : 'groupPriorityMinimum', $pb.PbFieldType.O3, protoName: 'groupPriorityMinimum')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'versionPriority', $pb.PbFieldType.O3, protoName: 'versionPriority')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIServiceSpec clone() => APIServiceSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIServiceSpec copyWith(void Function(APIServiceSpec) updates) => super.copyWith((message) => updates(message as APIServiceSpec)) as APIServiceSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIServiceSpec create() => APIServiceSpec._();
  APIServiceSpec createEmptyInstance() => create();
  static $pb.PbList<APIServiceSpec> createRepeated() => $pb.PbList<APIServiceSpec>();
  @$core.pragma('dart2js:noInline')
  static APIServiceSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIServiceSpec>(create);
  static APIServiceSpec? _defaultInstance;

  /// Service is a reference to the service for this API server.  It must communicate
  /// on port 443.
  /// If the Service is nil, that means the handling for the API groupversion is handled locally on this server.
  /// The call will simply delegate to the normal handler chain to be fulfilled.
  /// +optional
  @$pb.TagNumber(1)
  ServiceReference get service => $_getN(0);
  @$pb.TagNumber(1)
  set service(ServiceReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
  @$pb.TagNumber(1)
  ServiceReference ensureService() => $_ensure(0);

  /// Group is the API group name this server hosts
  @$pb.TagNumber(2)
  $core.String get group => $_getSZ(1);
  @$pb.TagNumber(2)
  set group($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasGroup() => $_has(1);
  @$pb.TagNumber(2)
  void clearGroup() => clearField(2);

  /// Version is the API version this server hosts.  For example, "v1"
  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  /// InsecureSkipTLSVerify disables TLS certificate verification when communicating with this server.
  /// This is strongly discouraged.  You should use the CABundle instead.
  @$pb.TagNumber(4)
  $core.bool get insecureSkipTLSVerify => $_getBF(3);
  @$pb.TagNumber(4)
  set insecureSkipTLSVerify($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasInsecureSkipTLSVerify() => $_has(3);
  @$pb.TagNumber(4)
  void clearInsecureSkipTLSVerify() => clearField(4);

  /// CABundle is a PEM encoded CA bundle which will be used to validate an API server's serving certificate.
  /// If unspecified, system trust roots on the apiserver are used.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(5)
  $core.List<$core.int> get caBundle => $_getN(4);
  @$pb.TagNumber(5)
  set caBundle($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCaBundle() => $_has(4);
  @$pb.TagNumber(5)
  void clearCaBundle() => clearField(5);

  /// GroupPriorityMinimum is the priority this group should have at least. Higher priority means that the group is preferred by clients over lower priority ones.
  /// Note that other versions of this group might specify even higher GroupPriorityMinimum values such that the whole group gets a higher priority.
  /// The primary sort is based on GroupPriorityMinimum, ordered highest number to lowest (20 before 10).
  /// The secondary sort is based on the alphabetical comparison of the name of the object.  (v1.bar before v1.foo)
  /// We'd recommend something like: *.k8s.io (except extensions) at 18000 and
  /// PaaSes (OpenShift, Deis) are recommended to be in the 2000s
  @$pb.TagNumber(7)
  $core.int get groupPriorityMinimum => $_getIZ(5);
  @$pb.TagNumber(7)
  set groupPriorityMinimum($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasGroupPriorityMinimum() => $_has(5);
  @$pb.TagNumber(7)
  void clearGroupPriorityMinimum() => clearField(7);

  /// VersionPriority controls the ordering of this API version inside of its group.  Must be greater than zero.
  /// The primary sort is based on VersionPriority, ordered highest to lowest (20 before 10).
  /// Since it's inside of a group, the number can be small, probably in the 10s.
  /// In case of equal version priorities, the version string will be used to compute the order inside a group.
  /// If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered
  /// lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version),
  /// then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first
  /// by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing major
  /// version, then minor version. An example sorted list of versions:
  /// v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  @$pb.TagNumber(8)
  $core.int get versionPriority => $_getIZ(6);
  @$pb.TagNumber(8)
  set versionPriority($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasVersionPriority() => $_has(6);
  @$pb.TagNumber(8)
  void clearVersionPriority() => clearField(8);
}

/// APIServiceStatus contains derived information about an API server
class APIServiceStatus extends $pb.GeneratedMessage {
  factory APIServiceStatus({
    $core.Iterable<APIServiceCondition>? conditions,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  APIServiceStatus._() : super();
  factory APIServiceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory APIServiceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'APIServiceStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'kube_aggregator.pkg.apis.apiregistration.v1'), createEmptyInstance: create)
    ..pc<APIServiceCondition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: APIServiceCondition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  APIServiceStatus clone() => APIServiceStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  APIServiceStatus copyWith(void Function(APIServiceStatus) updates) => super.copyWith((message) => updates(message as APIServiceStatus)) as APIServiceStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static APIServiceStatus create() => APIServiceStatus._();
  APIServiceStatus createEmptyInstance() => create();
  static $pb.PbList<APIServiceStatus> createRepeated() => $pb.PbList<APIServiceStatus>();
  @$core.pragma('dart2js:noInline')
  static APIServiceStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<APIServiceStatus>(create);
  static APIServiceStatus? _defaultInstance;

  /// Current service state of apiService.
  /// +optional
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(1)
  $core.List<APIServiceCondition> get conditions => $_getList(0);
}

/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReference extends $pb.GeneratedMessage {
  factory ServiceReference({
    $core.String? namespace,
    $core.String? name,
    $core.int? port,
  }) {
    final $result = create();
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (name != null) {
      $result.name = name;
    }
    if (port != null) {
      $result.port = port;
    }
    return $result;
  }
  ServiceReference._() : super();
  factory ServiceReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'kube_aggregator.pkg.apis.apiregistration.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'namespace')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceReference clone() => ServiceReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceReference copyWith(void Function(ServiceReference) updates) => super.copyWith((message) => updates(message as ServiceReference)) as ServiceReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceReference create() => ServiceReference._();
  ServiceReference createEmptyInstance() => create();
  static $pb.PbList<ServiceReference> createRepeated() => $pb.PbList<ServiceReference>();
  @$core.pragma('dart2js:noInline')
  static ServiceReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceReference>(create);
  static ServiceReference? _defaultInstance;

  /// Namespace is the namespace of the service
  @$pb.TagNumber(1)
  $core.String get namespace => $_getSZ(0);
  @$pb.TagNumber(1)
  set namespace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamespace() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespace() => clearField(1);

  /// Name is the name of the service
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// If specified, the port on the service that hosting webhook.
  /// Default to 443 for backward compatibility.
  /// `port` should be a valid port number (1-65535, inclusive).
  /// +optional
  @$pb.TagNumber(3)
  $core.int get port => $_getIZ(2);
  @$pb.TagNumber(3)
  set port($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearPort() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
