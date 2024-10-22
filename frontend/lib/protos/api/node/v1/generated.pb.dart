//
//  Generated code. Do not modify.
//  source: api/node/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/api/resource/generated.pb.dart' as $0;
import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $1;
import '../../core/v1/generated.pb.dart' as $2;

/// Overhead structure represents the resource overhead associated with running a pod.
class Overhead extends $pb.GeneratedMessage {
  factory Overhead({
    $core.Map<$core.String, $0.Quantity>? podFixed,
  }) {
    final $result = create();
    if (podFixed != null) {
      $result.podFixed.addAll(podFixed);
    }
    return $result;
  }
  Overhead._() : super();
  factory Overhead.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Overhead.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Overhead', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.node.v1'), createEmptyInstance: create)
    ..m<$core.String, $0.Quantity>(1, _omitFieldNames ? '' : 'podFixed', protoName: 'podFixed', entryClassName: 'Overhead.PodFixedEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: $0.Quantity.create, valueDefaultOrMaker: $0.Quantity.getDefault, packageName: const $pb.PackageName('api.node.v1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Overhead clone() => Overhead()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Overhead copyWith(void Function(Overhead) updates) => super.copyWith((message) => updates(message as Overhead)) as Overhead;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Overhead create() => Overhead._();
  Overhead createEmptyInstance() => create();
  static $pb.PbList<Overhead> createRepeated() => $pb.PbList<Overhead>();
  @$core.pragma('dart2js:noInline')
  static Overhead getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Overhead>(create);
  static Overhead? _defaultInstance;

  /// podFixed represents the fixed resource overhead associated with running a pod.
  /// +optional
  @$pb.TagNumber(1)
  $core.Map<$core.String, $0.Quantity> get podFixed => $_getMap(0);
}

/// RuntimeClass defines a class of container runtime supported in the cluster.
/// The RuntimeClass is used to determine which container runtime is used to run
/// all containers in a pod. RuntimeClasses are manually defined by a
/// user or cluster provisioner, and referenced in the PodSpec. The Kubelet is
/// responsible for resolving the RuntimeClassName reference before running the
/// pod.  For more details, see
/// https://kubernetes.io/docs/concepts/containers/runtime-class/
class RuntimeClass extends $pb.GeneratedMessage {
  factory RuntimeClass({
    $1.ObjectMeta? metadata,
    $core.String? handler,
    Overhead? overhead,
    Scheduling? scheduling,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (handler != null) {
      $result.handler = handler;
    }
    if (overhead != null) {
      $result.overhead = overhead;
    }
    if (scheduling != null) {
      $result.scheduling = scheduling;
    }
    return $result;
  }
  RuntimeClass._() : super();
  factory RuntimeClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RuntimeClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RuntimeClass', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.node.v1'), createEmptyInstance: create)
    ..aOM<$1.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ObjectMeta.create)
    ..aOS(2, _omitFieldNames ? '' : 'handler')
    ..aOM<Overhead>(3, _omitFieldNames ? '' : 'overhead', subBuilder: Overhead.create)
    ..aOM<Scheduling>(4, _omitFieldNames ? '' : 'scheduling', subBuilder: Scheduling.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RuntimeClass clone() => RuntimeClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RuntimeClass copyWith(void Function(RuntimeClass) updates) => super.copyWith((message) => updates(message as RuntimeClass)) as RuntimeClass;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeClass create() => RuntimeClass._();
  RuntimeClass createEmptyInstance() => create();
  static $pb.PbList<RuntimeClass> createRepeated() => $pb.PbList<RuntimeClass>();
  @$core.pragma('dart2js:noInline')
  static RuntimeClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RuntimeClass>(create);
  static RuntimeClass? _defaultInstance;

  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $1.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($1.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $1.ObjectMeta ensureMetadata() => $_ensure(0);

  /// handler specifies the underlying runtime and configuration that the CRI
  /// implementation will use to handle pods of this class. The possible values
  /// are specific to the node & CRI configuration.  It is assumed that all
  /// handlers are available on every node, and handlers of the same name are
  /// equivalent on every node.
  /// For example, a handler called "runc" might specify that the runc OCI
  /// runtime (using native Linux containers) will be used to run the containers
  /// in a pod.
  /// The Handler must be lowercase, conform to the DNS Label (RFC 1123) requirements,
  /// and is immutable.
  @$pb.TagNumber(2)
  $core.String get handler => $_getSZ(1);
  @$pb.TagNumber(2)
  set handler($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHandler() => $_has(1);
  @$pb.TagNumber(2)
  void clearHandler() => clearField(2);

  /// overhead represents the resource overhead associated with running a pod for a
  /// given RuntimeClass. For more details, see
  ///  https://kubernetes.io/docs/concepts/scheduling-eviction/pod-overhead/
  /// +optional
  @$pb.TagNumber(3)
  Overhead get overhead => $_getN(2);
  @$pb.TagNumber(3)
  set overhead(Overhead v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOverhead() => $_has(2);
  @$pb.TagNumber(3)
  void clearOverhead() => clearField(3);
  @$pb.TagNumber(3)
  Overhead ensureOverhead() => $_ensure(2);

  /// scheduling holds the scheduling constraints to ensure that pods running
  /// with this RuntimeClass are scheduled to nodes that support it.
  /// If scheduling is nil, this RuntimeClass is assumed to be supported by all
  /// nodes.
  /// +optional
  @$pb.TagNumber(4)
  Scheduling get scheduling => $_getN(3);
  @$pb.TagNumber(4)
  set scheduling(Scheduling v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasScheduling() => $_has(3);
  @$pb.TagNumber(4)
  void clearScheduling() => clearField(4);
  @$pb.TagNumber(4)
  Scheduling ensureScheduling() => $_ensure(3);
}

/// RuntimeClassList is a list of RuntimeClass objects.
class RuntimeClassList extends $pb.GeneratedMessage {
  factory RuntimeClassList({
    $1.ListMeta? metadata,
    $core.Iterable<RuntimeClass>? items,
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
  RuntimeClassList._() : super();
  factory RuntimeClassList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RuntimeClassList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RuntimeClassList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.node.v1'), createEmptyInstance: create)
    ..aOM<$1.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ListMeta.create)
    ..pc<RuntimeClass>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: RuntimeClass.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RuntimeClassList clone() => RuntimeClassList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RuntimeClassList copyWith(void Function(RuntimeClassList) updates) => super.copyWith((message) => updates(message as RuntimeClassList)) as RuntimeClassList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RuntimeClassList create() => RuntimeClassList._();
  RuntimeClassList createEmptyInstance() => create();
  static $pb.PbList<RuntimeClassList> createRepeated() => $pb.PbList<RuntimeClassList>();
  @$core.pragma('dart2js:noInline')
  static RuntimeClassList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RuntimeClassList>(create);
  static RuntimeClassList? _defaultInstance;

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  /// +optional
  @$pb.TagNumber(1)
  $1.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($1.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $1.ListMeta ensureMetadata() => $_ensure(0);

  /// items is a list of schema objects.
  @$pb.TagNumber(2)
  $core.List<RuntimeClass> get items => $_getList(1);
}

/// Scheduling specifies the scheduling constraints for nodes supporting a
/// RuntimeClass.
class Scheduling extends $pb.GeneratedMessage {
  factory Scheduling({
    $core.Map<$core.String, $core.String>? nodeSelector,
    $core.Iterable<$2.Toleration>? tolerations,
  }) {
    final $result = create();
    if (nodeSelector != null) {
      $result.nodeSelector.addAll(nodeSelector);
    }
    if (tolerations != null) {
      $result.tolerations.addAll(tolerations);
    }
    return $result;
  }
  Scheduling._() : super();
  factory Scheduling.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Scheduling.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Scheduling', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.node.v1'), createEmptyInstance: create)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'nodeSelector', protoName: 'nodeSelector', entryClassName: 'Scheduling.NodeSelectorEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.node.v1'))
    ..pc<$2.Toleration>(2, _omitFieldNames ? '' : 'tolerations', $pb.PbFieldType.PM, subBuilder: $2.Toleration.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Scheduling clone() => Scheduling()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Scheduling copyWith(void Function(Scheduling) updates) => super.copyWith((message) => updates(message as Scheduling)) as Scheduling;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Scheduling create() => Scheduling._();
  Scheduling createEmptyInstance() => create();
  static $pb.PbList<Scheduling> createRepeated() => $pb.PbList<Scheduling>();
  @$core.pragma('dart2js:noInline')
  static Scheduling getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Scheduling>(create);
  static Scheduling? _defaultInstance;

  /// nodeSelector lists labels that must be present on nodes that support this
  /// RuntimeClass. Pods using this RuntimeClass can only be scheduled to a
  /// node matched by this selector. The RuntimeClass nodeSelector is merged
  /// with a pod's existing nodeSelector. Any conflicts will cause the pod to
  /// be rejected in admission.
  /// +optional
  /// +mapType=atomic
  @$pb.TagNumber(1)
  $core.Map<$core.String, $core.String> get nodeSelector => $_getMap(0);

  /// tolerations are appended (excluding duplicates) to pods running with this
  /// RuntimeClass during admission, effectively unioning the set of nodes
  /// tolerated by the pod and the RuntimeClass.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<$2.Toleration> get tolerations => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
