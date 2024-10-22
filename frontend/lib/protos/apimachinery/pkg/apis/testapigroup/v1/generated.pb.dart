//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/apis/testapigroup/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../meta/v1/generated.pb.dart' as $0;

/// Carp is a collection of containers, used as either input (create, update) or as output (list, get).
class Carp extends $pb.GeneratedMessage {
  factory Carp({
    $0.ObjectMeta? metadata,
    CarpSpec? spec,
    CarpStatus? status,
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
  Carp._() : super();
  factory Carp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Carp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Carp', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.testapigroup.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<CarpSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: CarpSpec.create)
    ..aOM<CarpStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: CarpStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Carp clone() => Carp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Carp copyWith(void Function(Carp) updates) => super.copyWith((message) => updates(message as Carp)) as Carp;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Carp create() => Carp._();
  Carp createEmptyInstance() => create();
  static $pb.PbList<Carp> createRepeated() => $pb.PbList<Carp>();
  @$core.pragma('dart2js:noInline')
  static Carp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Carp>(create);
  static Carp? _defaultInstance;

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

  /// Specification of the desired behavior of the carp.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  CarpSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(CarpSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  CarpSpec ensureSpec() => $_ensure(1);

  /// Most recently observed status of the carp.
  /// This data may not be up to date.
  /// Populated by the system.
  /// Read-only.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  CarpStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(CarpStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  CarpStatus ensureStatus() => $_ensure(2);
}

class CarpCondition extends $pb.GeneratedMessage {
  factory CarpCondition({
    $core.String? type,
    $core.String? status,
    $0.Time? lastProbeTime,
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
    if (lastProbeTime != null) {
      $result.lastProbeTime = lastProbeTime;
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
  CarpCondition._() : super();
  factory CarpCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarpCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarpCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.testapigroup.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOM<$0.Time>(3, _omitFieldNames ? '' : 'lastProbeTime', protoName: 'lastProbeTime', subBuilder: $0.Time.create)
    ..aOM<$0.Time>(4, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $0.Time.create)
    ..aOS(5, _omitFieldNames ? '' : 'reason')
    ..aOS(6, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarpCondition clone() => CarpCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarpCondition copyWith(void Function(CarpCondition) updates) => super.copyWith((message) => updates(message as CarpCondition)) as CarpCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarpCondition create() => CarpCondition._();
  CarpCondition createEmptyInstance() => create();
  static $pb.PbList<CarpCondition> createRepeated() => $pb.PbList<CarpCondition>();
  @$core.pragma('dart2js:noInline')
  static CarpCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarpCondition>(create);
  static CarpCondition? _defaultInstance;

  /// Type is the type of the condition.
  /// Currently only Ready.
  /// More info: http://kubernetes.io/docs/user-guide/carp-states#carp-conditions
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
  /// More info: http://kubernetes.io/docs/user-guide/carp-states#carp-conditions
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// Last time we probed the condition.
  /// +optional
  @$pb.TagNumber(3)
  $0.Time get lastProbeTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastProbeTime($0.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastProbeTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastProbeTime() => clearField(3);
  @$pb.TagNumber(3)
  $0.Time ensureLastProbeTime() => $_ensure(2);

  /// Last time the condition transitioned from one status to another.
  /// +optional
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

  /// Unique, one-word, CamelCase reason for the condition's last transition.
  /// +optional
  @$pb.TagNumber(5)
  $core.String get reason => $_getSZ(4);
  @$pb.TagNumber(5)
  set reason($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasReason() => $_has(4);
  @$pb.TagNumber(5)
  void clearReason() => clearField(5);

  /// Human-readable message indicating details about last transition.
  /// +optional
  @$pb.TagNumber(6)
  $core.String get message => $_getSZ(5);
  @$pb.TagNumber(6)
  set message($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMessage() => $_has(5);
  @$pb.TagNumber(6)
  void clearMessage() => clearField(6);
}

/// CarpList is a list of Carps.
class CarpList extends $pb.GeneratedMessage {
  factory CarpList({
    $0.ListMeta? metadata,
    $core.Iterable<Carp>? items,
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
  CarpList._() : super();
  factory CarpList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarpList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarpList', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.testapigroup.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<Carp>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: Carp.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarpList clone() => CarpList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarpList copyWith(void Function(CarpList) updates) => super.copyWith((message) => updates(message as CarpList)) as CarpList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarpList create() => CarpList._();
  CarpList createEmptyInstance() => create();
  static $pb.PbList<CarpList> createRepeated() => $pb.PbList<CarpList>();
  @$core.pragma('dart2js:noInline')
  static CarpList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarpList>(create);
  static CarpList? _defaultInstance;

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

  /// List of carps.
  /// More info: http://kubernetes.io/docs/user-guide/carps
  @$pb.TagNumber(2)
  $core.List<Carp> get items => $_getList(1);
}

/// CarpSpec is a description of a carp
class CarpSpec extends $pb.GeneratedMessage {
  factory CarpSpec({
    $core.String? restartPolicy,
    $fixnum.Int64? terminationGracePeriodSeconds,
    $fixnum.Int64? activeDeadlineSeconds,
    $core.Map<$core.String, $core.String>? nodeSelector,
    $core.String? serviceAccountName,
    $core.String? serviceAccount,
    $core.String? nodeName,
    $core.bool? hostNetwork,
    $core.bool? hostPID,
    $core.bool? hostIPC,
    $core.String? hostname,
    $core.String? subdomain,
    $core.String? schedulername,
  }) {
    final $result = create();
    if (restartPolicy != null) {
      $result.restartPolicy = restartPolicy;
    }
    if (terminationGracePeriodSeconds != null) {
      $result.terminationGracePeriodSeconds = terminationGracePeriodSeconds;
    }
    if (activeDeadlineSeconds != null) {
      $result.activeDeadlineSeconds = activeDeadlineSeconds;
    }
    if (nodeSelector != null) {
      $result.nodeSelector.addAll(nodeSelector);
    }
    if (serviceAccountName != null) {
      $result.serviceAccountName = serviceAccountName;
    }
    if (serviceAccount != null) {
      $result.serviceAccount = serviceAccount;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (hostNetwork != null) {
      $result.hostNetwork = hostNetwork;
    }
    if (hostPID != null) {
      $result.hostPID = hostPID;
    }
    if (hostIPC != null) {
      $result.hostIPC = hostIPC;
    }
    if (hostname != null) {
      $result.hostname = hostname;
    }
    if (subdomain != null) {
      $result.subdomain = subdomain;
    }
    if (schedulername != null) {
      $result.schedulername = schedulername;
    }
    return $result;
  }
  CarpSpec._() : super();
  factory CarpSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarpSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarpSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.testapigroup.v1'), createEmptyInstance: create)
    ..aOS(3, _omitFieldNames ? '' : 'restartPolicy', protoName: 'restartPolicy')
    ..aInt64(4, _omitFieldNames ? '' : 'terminationGracePeriodSeconds', protoName: 'terminationGracePeriodSeconds')
    ..aInt64(5, _omitFieldNames ? '' : 'activeDeadlineSeconds', protoName: 'activeDeadlineSeconds')
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'nodeSelector', protoName: 'nodeSelector', entryClassName: 'CarpSpec.NodeSelectorEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('apimachinery.pkg.apis.testapigroup.v1'))
    ..aOS(8, _omitFieldNames ? '' : 'serviceAccountName', protoName: 'serviceAccountName')
    ..aOS(9, _omitFieldNames ? '' : 'serviceAccount', protoName: 'serviceAccount')
    ..aOS(10, _omitFieldNames ? '' : 'nodeName', protoName: 'nodeName')
    ..aOB(11, _omitFieldNames ? '' : 'hostNetwork', protoName: 'hostNetwork')
    ..aOB(12, _omitFieldNames ? '' : 'hostPID', protoName: 'hostPID')
    ..aOB(13, _omitFieldNames ? '' : 'hostIPC', protoName: 'hostIPC')
    ..aOS(16, _omitFieldNames ? '' : 'hostname')
    ..aOS(17, _omitFieldNames ? '' : 'subdomain')
    ..aOS(19, _omitFieldNames ? '' : 'schedulername')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarpSpec clone() => CarpSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarpSpec copyWith(void Function(CarpSpec) updates) => super.copyWith((message) => updates(message as CarpSpec)) as CarpSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarpSpec create() => CarpSpec._();
  CarpSpec createEmptyInstance() => create();
  static $pb.PbList<CarpSpec> createRepeated() => $pb.PbList<CarpSpec>();
  @$core.pragma('dart2js:noInline')
  static CarpSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarpSpec>(create);
  static CarpSpec? _defaultInstance;

  /// Restart policy for all containers within the carp.
  /// One of Always, OnFailure, Never.
  /// Default to Always.
  /// More info: http://kubernetes.io/docs/user-guide/carp-states#restartpolicy
  /// +optional
  @$pb.TagNumber(3)
  $core.String get restartPolicy => $_getSZ(0);
  @$pb.TagNumber(3)
  set restartPolicy($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(3)
  $core.bool hasRestartPolicy() => $_has(0);
  @$pb.TagNumber(3)
  void clearRestartPolicy() => clearField(3);

  /// Optional duration in seconds the carp needs to terminate gracefully. May be decreased in delete request.
  /// Value must be non-negative integer. The value zero indicates delete immediately.
  /// If this value is nil, the default grace period will be used instead.
  /// The grace period is the duration in seconds after the processes running in the carp are sent
  /// a termination signal and the time when the processes are forcibly halted with a kill signal.
  /// Set this value longer than the expected cleanup time for your process.
  /// Defaults to 30 seconds.
  /// +optional
  @$pb.TagNumber(4)
  $fixnum.Int64 get terminationGracePeriodSeconds => $_getI64(1);
  @$pb.TagNumber(4)
  set terminationGracePeriodSeconds($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasTerminationGracePeriodSeconds() => $_has(1);
  @$pb.TagNumber(4)
  void clearTerminationGracePeriodSeconds() => clearField(4);

  /// Optional duration in seconds the carp may be active on the node relative to
  /// StartTime before the system will actively try to mark it failed and kill associated containers.
  /// Value must be a positive integer.
  /// +optional
  @$pb.TagNumber(5)
  $fixnum.Int64 get activeDeadlineSeconds => $_getI64(2);
  @$pb.TagNumber(5)
  set activeDeadlineSeconds($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasActiveDeadlineSeconds() => $_has(2);
  @$pb.TagNumber(5)
  void clearActiveDeadlineSeconds() => clearField(5);

  /// NodeSelector is a selector which must be true for the carp to fit on a node.
  /// Selector which must match a node's labels for the carp to be scheduled on that node.
  /// More info: http://kubernetes.io/docs/user-guide/node-selection/README
  /// +optional
  @$pb.TagNumber(7)
  $core.Map<$core.String, $core.String> get nodeSelector => $_getMap(3);

  /// ServiceAccountName is the name of the ServiceAccount to use to run this carp.
  /// More info: https://kubernetes.io/docs/concepts/security/service-accounts/
  /// +optional
  @$pb.TagNumber(8)
  $core.String get serviceAccountName => $_getSZ(4);
  @$pb.TagNumber(8)
  set serviceAccountName($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(8)
  $core.bool hasServiceAccountName() => $_has(4);
  @$pb.TagNumber(8)
  void clearServiceAccountName() => clearField(8);

  /// DeprecatedServiceAccount is a deprecated alias for ServiceAccountName.
  /// Deprecated: Use serviceAccountName instead.
  /// +k8s:conversion-gen=false
  /// +optional
  @$pb.TagNumber(9)
  $core.String get serviceAccount => $_getSZ(5);
  @$pb.TagNumber(9)
  set serviceAccount($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(9)
  $core.bool hasServiceAccount() => $_has(5);
  @$pb.TagNumber(9)
  void clearServiceAccount() => clearField(9);

  /// NodeName is a request to schedule this carp onto a specific node. If it is non-empty,
  /// the scheduler simply schedules this carp onto that node, assuming that it fits resource
  /// requirements.
  /// +optional
  @$pb.TagNumber(10)
  $core.String get nodeName => $_getSZ(6);
  @$pb.TagNumber(10)
  set nodeName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasNodeName() => $_has(6);
  @$pb.TagNumber(10)
  void clearNodeName() => clearField(10);

  /// Host networking requested for this carp. Use the host's network namespace.
  /// If this option is set, the ports that will be used must be specified.
  /// Default to false.
  /// +k8s:conversion-gen=false
  /// +optional
  @$pb.TagNumber(11)
  $core.bool get hostNetwork => $_getBF(7);
  @$pb.TagNumber(11)
  set hostNetwork($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(11)
  $core.bool hasHostNetwork() => $_has(7);
  @$pb.TagNumber(11)
  void clearHostNetwork() => clearField(11);

  /// Use the host's pid namespace.
  /// Optional: Default to false.
  /// +k8s:conversion-gen=false
  /// +optional
  @$pb.TagNumber(12)
  $core.bool get hostPID => $_getBF(8);
  @$pb.TagNumber(12)
  set hostPID($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(12)
  $core.bool hasHostPID() => $_has(8);
  @$pb.TagNumber(12)
  void clearHostPID() => clearField(12);

  /// Use the host's ipc namespace.
  /// Optional: Default to false.
  /// +k8s:conversion-gen=false
  /// +optional
  @$pb.TagNumber(13)
  $core.bool get hostIPC => $_getBF(9);
  @$pb.TagNumber(13)
  set hostIPC($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(13)
  $core.bool hasHostIPC() => $_has(9);
  @$pb.TagNumber(13)
  void clearHostIPC() => clearField(13);

  /// Specifies the hostname of the Carp
  /// If not specified, the carp's hostname will be set to a system-defined value.
  /// +optional
  @$pb.TagNumber(16)
  $core.String get hostname => $_getSZ(10);
  @$pb.TagNumber(16)
  set hostname($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(16)
  $core.bool hasHostname() => $_has(10);
  @$pb.TagNumber(16)
  void clearHostname() => clearField(16);

  /// If specified, the fully qualified Carp hostname will be "<hostname>.<subdomain>.<carp namespace>.svc.<cluster domain>".
  /// If not specified, the carp will not have a domainname at all.
  /// +optional
  @$pb.TagNumber(17)
  $core.String get subdomain => $_getSZ(11);
  @$pb.TagNumber(17)
  set subdomain($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(17)
  $core.bool hasSubdomain() => $_has(11);
  @$pb.TagNumber(17)
  void clearSubdomain() => clearField(17);

  /// If specified, the carp will be dispatched by specified scheduler.
  /// If not specified, the carp will be dispatched by default scheduler.
  /// +optional
  @$pb.TagNumber(19)
  $core.String get schedulername => $_getSZ(12);
  @$pb.TagNumber(19)
  set schedulername($core.String v) { $_setString(12, v); }
  @$pb.TagNumber(19)
  $core.bool hasSchedulername() => $_has(12);
  @$pb.TagNumber(19)
  void clearSchedulername() => clearField(19);
}

/// CarpStatus represents information about the status of a carp. Status may trail the actual
/// state of a system.
class CarpStatus extends $pb.GeneratedMessage {
  factory CarpStatus({
    $core.String? phase,
    $core.Iterable<CarpCondition>? conditions,
    $core.String? message,
    $core.String? reason,
    $core.String? hostIP,
    $core.String? carpIP,
    $0.Time? startTime,
  }) {
    final $result = create();
    if (phase != null) {
      $result.phase = phase;
    }
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    if (message != null) {
      $result.message = message;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (hostIP != null) {
      $result.hostIP = hostIP;
    }
    if (carpIP != null) {
      $result.carpIP = carpIP;
    }
    if (startTime != null) {
      $result.startTime = startTime;
    }
    return $result;
  }
  CarpStatus._() : super();
  factory CarpStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CarpStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CarpStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.testapigroup.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'phase')
    ..pc<CarpCondition>(2, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: CarpCondition.create)
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'hostIP', protoName: 'hostIP')
    ..aOS(6, _omitFieldNames ? '' : 'carpIP', protoName: 'carpIP')
    ..aOM<$0.Time>(7, _omitFieldNames ? '' : 'startTime', protoName: 'startTime', subBuilder: $0.Time.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CarpStatus clone() => CarpStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CarpStatus copyWith(void Function(CarpStatus) updates) => super.copyWith((message) => updates(message as CarpStatus)) as CarpStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CarpStatus create() => CarpStatus._();
  CarpStatus createEmptyInstance() => create();
  static $pb.PbList<CarpStatus> createRepeated() => $pb.PbList<CarpStatus>();
  @$core.pragma('dart2js:noInline')
  static CarpStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CarpStatus>(create);
  static CarpStatus? _defaultInstance;

  /// Current condition of the carp.
  /// More info: http://kubernetes.io/docs/user-guide/carp-states#carp-phase
  /// +optional
  @$pb.TagNumber(1)
  $core.String get phase => $_getSZ(0);
  @$pb.TagNumber(1)
  set phase($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPhase() => $_has(0);
  @$pb.TagNumber(1)
  void clearPhase() => clearField(1);

  /// Current service state of carp.
  /// More info: http://kubernetes.io/docs/user-guide/carp-states#carp-conditions
  /// +optional
  @$pb.TagNumber(2)
  $core.List<CarpCondition> get conditions => $_getList(1);

  /// A human readable message indicating details about why the carp is in this condition.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  /// A brief CamelCase message indicating details about why the carp is in this state.
  /// e.g. 'DiskPressure'
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// IP address of the host to which the carp is assigned. Empty if not yet scheduled.
  /// +optional
  @$pb.TagNumber(5)
  $core.String get hostIP => $_getSZ(4);
  @$pb.TagNumber(5)
  set hostIP($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHostIP() => $_has(4);
  @$pb.TagNumber(5)
  void clearHostIP() => clearField(5);

  /// IP address allocated to the carp. Routable at least within the cluster.
  /// Empty if not yet allocated.
  /// +optional
  @$pb.TagNumber(6)
  $core.String get carpIP => $_getSZ(5);
  @$pb.TagNumber(6)
  set carpIP($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCarpIP() => $_has(5);
  @$pb.TagNumber(6)
  void clearCarpIP() => clearField(6);

  /// RFC 3339 date and time at which the object was acknowledged by the Kubelet.
  /// This is before the Kubelet pulled the container image(s) for the carp.
  /// +optional
  @$pb.TagNumber(7)
  $0.Time get startTime => $_getN(6);
  @$pb.TagNumber(7)
  set startTime($0.Time v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasStartTime() => $_has(6);
  @$pb.TagNumber(7)
  void clearStartTime() => clearField(7);
  @$pb.TagNumber(7)
  $0.Time ensureStartTime() => $_ensure(6);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
