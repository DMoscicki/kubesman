//
//  Generated code. Do not modify.
//  source: api/storage/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/api/resource/generated.pb.dart' as $1;
import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../../core/v1/generated.pb.dart' as $2;

/// CSIDriver captures information about a Container Storage Interface (CSI)
/// volume driver deployed on the cluster.
/// Kubernetes attach detach controller uses this object to determine whether attach is required.
/// Kubelet uses this object to determine whether pod information needs to be passed on mount.
/// CSIDriver objects are non-namespaced.
class CSIDriver extends $pb.GeneratedMessage {
  factory CSIDriver({
    $0.ObjectMeta? metadata,
    CSIDriverSpec? spec,
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
  CSIDriver._() : super();
  factory CSIDriver.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSIDriver.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSIDriver', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<CSIDriverSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: CSIDriverSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSIDriver clone() => CSIDriver()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSIDriver copyWith(void Function(CSIDriver) updates) => super.copyWith((message) => updates(message as CSIDriver)) as CSIDriver;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSIDriver create() => CSIDriver._();
  CSIDriver createEmptyInstance() => create();
  static $pb.PbList<CSIDriver> createRepeated() => $pb.PbList<CSIDriver>();
  @$core.pragma('dart2js:noInline')
  static CSIDriver getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSIDriver>(create);
  static CSIDriver? _defaultInstance;

  /// Standard object metadata.
  /// metadata.Name indicates the name of the CSI driver that this object
  /// refers to; it MUST be the same name returned by the CSI GetPluginName()
  /// call for that driver.
  /// The driver name must be 63 characters or less, beginning and ending with
  /// an alphanumeric character ([a-z0-9A-Z]) with dashes (-), dots (.), and
  /// alphanumerics between.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// spec represents the specification of the CSI Driver.
  @$pb.TagNumber(2)
  CSIDriverSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(CSIDriverSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  CSIDriverSpec ensureSpec() => $_ensure(1);
}

/// CSIDriverList is a collection of CSIDriver objects.
class CSIDriverList extends $pb.GeneratedMessage {
  factory CSIDriverList({
    $0.ListMeta? metadata,
    $core.Iterable<CSIDriver>? items,
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
  CSIDriverList._() : super();
  factory CSIDriverList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSIDriverList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSIDriverList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<CSIDriver>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CSIDriver.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSIDriverList clone() => CSIDriverList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSIDriverList copyWith(void Function(CSIDriverList) updates) => super.copyWith((message) => updates(message as CSIDriverList)) as CSIDriverList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSIDriverList create() => CSIDriverList._();
  CSIDriverList createEmptyInstance() => create();
  static $pb.PbList<CSIDriverList> createRepeated() => $pb.PbList<CSIDriverList>();
  @$core.pragma('dart2js:noInline')
  static CSIDriverList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSIDriverList>(create);
  static CSIDriverList? _defaultInstance;

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

  /// items is the list of CSIDriver
  @$pb.TagNumber(2)
  $core.List<CSIDriver> get items => $_getList(1);
}

/// CSIDriverSpec is the specification of a CSIDriver.
class CSIDriverSpec extends $pb.GeneratedMessage {
  factory CSIDriverSpec({
    $core.bool? attachRequired,
    $core.bool? podInfoOnMount,
    $core.Iterable<$core.String>? volumeLifecycleModes,
    $core.bool? storageCapacity,
    $core.String? fsGroupPolicy,
    $core.Iterable<TokenRequest>? tokenRequests,
    $core.bool? requiresRepublish,
    $core.bool? seLinuxMount,
  }) {
    final $result = create();
    if (attachRequired != null) {
      $result.attachRequired = attachRequired;
    }
    if (podInfoOnMount != null) {
      $result.podInfoOnMount = podInfoOnMount;
    }
    if (volumeLifecycleModes != null) {
      $result.volumeLifecycleModes.addAll(volumeLifecycleModes);
    }
    if (storageCapacity != null) {
      $result.storageCapacity = storageCapacity;
    }
    if (fsGroupPolicy != null) {
      $result.fsGroupPolicy = fsGroupPolicy;
    }
    if (tokenRequests != null) {
      $result.tokenRequests.addAll(tokenRequests);
    }
    if (requiresRepublish != null) {
      $result.requiresRepublish = requiresRepublish;
    }
    if (seLinuxMount != null) {
      $result.seLinuxMount = seLinuxMount;
    }
    return $result;
  }
  CSIDriverSpec._() : super();
  factory CSIDriverSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSIDriverSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSIDriverSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'attachRequired', protoName: 'attachRequired')
    ..aOB(2, _omitFieldNames ? '' : 'podInfoOnMount', protoName: 'podInfoOnMount')
    ..pPS(3, _omitFieldNames ? '' : 'volumeLifecycleModes', protoName: 'volumeLifecycleModes')
    ..aOB(4, _omitFieldNames ? '' : 'storageCapacity', protoName: 'storageCapacity')
    ..aOS(5, _omitFieldNames ? '' : 'fsGroupPolicy', protoName: 'fsGroupPolicy')
    ..pc<TokenRequest>(6, _omitFieldNames ? '' : 'tokenRequests', $pb.PbFieldType.PM, protoName: 'tokenRequests', subBuilder: TokenRequest.create)
    ..aOB(7, _omitFieldNames ? '' : 'requiresRepublish', protoName: 'requiresRepublish')
    ..aOB(8, _omitFieldNames ? '' : 'seLinuxMount', protoName: 'seLinuxMount')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSIDriverSpec clone() => CSIDriverSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSIDriverSpec copyWith(void Function(CSIDriverSpec) updates) => super.copyWith((message) => updates(message as CSIDriverSpec)) as CSIDriverSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSIDriverSpec create() => CSIDriverSpec._();
  CSIDriverSpec createEmptyInstance() => create();
  static $pb.PbList<CSIDriverSpec> createRepeated() => $pb.PbList<CSIDriverSpec>();
  @$core.pragma('dart2js:noInline')
  static CSIDriverSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSIDriverSpec>(create);
  static CSIDriverSpec? _defaultInstance;

  ///  attachRequired indicates this CSI volume driver requires an attach
  ///  operation (because it implements the CSI ControllerPublishVolume()
  ///  method), and that the Kubernetes attach detach controller should call
  ///  the attach volume interface which checks the volumeattachment status
  ///  and waits until the volume is attached before proceeding to mounting.
  ///  The CSI external-attacher coordinates with CSI volume driver and updates
  ///  the volumeattachment status when the attach operation is complete.
  ///  If the CSIDriverRegistry feature gate is enabled and the value is
  ///  specified to false, the attach operation will be skipped.
  ///  Otherwise the attach operation will be called.
  ///
  ///  This field is immutable.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  $core.bool get attachRequired => $_getBF(0);
  @$pb.TagNumber(1)
  set attachRequired($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttachRequired() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttachRequired() => clearField(1);

  ///  podInfoOnMount indicates this CSI volume driver requires additional pod information (like podName, podUID, etc.)
  ///  during mount operations, if set to true.
  ///  If set to false, pod information will not be passed on mount.
  ///  Default is false.
  ///
  ///  The CSI driver specifies podInfoOnMount as part of driver deployment.
  ///  If true, Kubelet will pass pod information as VolumeContext in the CSI NodePublishVolume() calls.
  ///  The CSI driver is responsible for parsing and validating the information passed in as VolumeContext.
  ///
  ///  The following VolumeContext will be passed if podInfoOnMount is set to true.
  ///  This list might grow, but the prefix will be used.
  ///  "csi.storage.k8s.io/pod.name": pod.Name
  ///  "csi.storage.k8s.io/pod.namespace": pod.Namespace
  ///  "csi.storage.k8s.io/pod.uid": string(pod.UID)
  ///  "csi.storage.k8s.io/ephemeral": "true" if the volume is an ephemeral inline volume
  ///                                  defined by a CSIVolumeSource, otherwise "false"
  ///
  ///  "csi.storage.k8s.io/ephemeral" is a new feature in Kubernetes 1.16. It is only
  ///  required for drivers which support both the "Persistent" and "Ephemeral" VolumeLifecycleMode.
  ///  Other drivers can leave pod info disabled and/or ignore this field.
  ///  As Kubernetes 1.15 doesn't support this field, drivers can only support one mode when
  ///  deployed on such a cluster and the deployment determines which mode that is, for example
  ///  via a command line parameter of the driver.
  ///
  ///  This field was immutable in Kubernetes < 1.29 and now is mutable.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $core.bool get podInfoOnMount => $_getBF(1);
  @$pb.TagNumber(2)
  set podInfoOnMount($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPodInfoOnMount() => $_has(1);
  @$pb.TagNumber(2)
  void clearPodInfoOnMount() => clearField(2);

  ///  volumeLifecycleModes defines what kind of volumes this CSI volume driver supports.
  ///  The default if the list is empty is "Persistent", which is the usage defined by the
  ///  CSI specification and implemented in Kubernetes via the usual PV/PVC mechanism.
  ///
  ///  The other mode is "Ephemeral". In this mode, volumes are defined inline inside the pod spec
  ///  with CSIVolumeSource and their lifecycle is tied to the lifecycle of that pod.
  ///  A driver has to be aware of this because it is only going to get a NodePublishVolume call for such a volume.
  ///
  ///  For more information about implementing this mode, see
  ///  https://kubernetes-csi.github.io/docs/ephemeral-local-volumes.html
  ///  A driver can support one or more of these modes and more modes may be added in the future.
  ///
  ///  This field is beta.
  ///  This field is immutable.
  ///
  ///  +optional
  ///  +listType=set
  @$pb.TagNumber(3)
  $core.List<$core.String> get volumeLifecycleModes => $_getList(2);

  ///  storageCapacity indicates that the CSI volume driver wants pod scheduling to consider the storage
  ///  capacity that the driver deployment will report by creating
  ///  CSIStorageCapacity objects with capacity information, if set to true.
  ///
  ///  The check can be enabled immediately when deploying a driver.
  ///  In that case, provisioning new volumes with late binding
  ///  will pause until the driver deployment has published
  ///  some suitable CSIStorageCapacity object.
  ///
  ///  Alternatively, the driver can be deployed with the field
  ///  unset or false and it can be flipped later when storage
  ///  capacity information has been published.
  ///
  ///  This field was immutable in Kubernetes <= 1.22 and now is mutable.
  ///
  ///  +optional
  ///  +featureGate=CSIStorageCapacity
  @$pb.TagNumber(4)
  $core.bool get storageCapacity => $_getBF(3);
  @$pb.TagNumber(4)
  set storageCapacity($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasStorageCapacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearStorageCapacity() => clearField(4);

  ///  fsGroupPolicy defines if the underlying volume supports changing ownership and
  ///  permission of the volume before being mounted.
  ///  Refer to the specific FSGroupPolicy values for additional details.
  ///
  ///  This field was immutable in Kubernetes < 1.29 and now is mutable.
  ///
  ///  Defaults to ReadWriteOnceWithFSType, which will examine each volume
  ///  to determine if Kubernetes should modify ownership and permissions of the volume.
  ///  With the default policy the defined fsGroup will only be applied
  ///  if a fstype is defined and the volume's access mode contains ReadWriteOnce.
  ///
  ///  +optional
  @$pb.TagNumber(5)
  $core.String get fsGroupPolicy => $_getSZ(4);
  @$pb.TagNumber(5)
  set fsGroupPolicy($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFsGroupPolicy() => $_has(4);
  @$pb.TagNumber(5)
  void clearFsGroupPolicy() => clearField(5);

  ///  tokenRequests indicates the CSI driver needs pods' service account
  ///  tokens it is mounting volume for to do necessary authentication. Kubelet
  ///  will pass the tokens in VolumeContext in the CSI NodePublishVolume calls.
  ///  The CSI driver should parse and validate the following VolumeContext:
  ///  "csi.storage.k8s.io/serviceAccount.tokens": {
  ///    "<audience>": {
  ///      "token": <token>,
  ///      "expirationTimestamp": <expiration timestamp in RFC3339>,
  ///    },
  ///    ...
  ///  }
  ///
  ///  Note: Audience in each TokenRequest should be different and at
  ///  most one token is empty string. To receive a new token after expiry,
  ///  RequiresRepublish can be used to trigger NodePublishVolume periodically.
  ///
  ///  +optional
  ///  +listType=atomic
  @$pb.TagNumber(6)
  $core.List<TokenRequest> get tokenRequests => $_getList(5);

  ///  requiresRepublish indicates the CSI driver wants `NodePublishVolume`
  ///  being periodically called to reflect any possible change in the mounted
  ///  volume. This field defaults to false.
  ///
  ///  Note: After a successful initial NodePublishVolume call, subsequent calls
  ///  to NodePublishVolume should only update the contents of the volume. New
  ///  mount points will not be seen by a running container.
  ///
  ///  +optional
  @$pb.TagNumber(7)
  $core.bool get requiresRepublish => $_getBF(6);
  @$pb.TagNumber(7)
  set requiresRepublish($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRequiresRepublish() => $_has(6);
  @$pb.TagNumber(7)
  void clearRequiresRepublish() => clearField(7);

  ///  seLinuxMount specifies if the CSI driver supports "-o context"
  ///  mount option.
  ///
  ///  When "true", the CSI driver must ensure that all volumes provided by this CSI
  ///  driver can be mounted separately with different `-o context` options. This is
  ///  typical for storage backends that provide volumes as filesystems on block
  ///  devices or as independent shared volumes.
  ///  Kubernetes will call NodeStage / NodePublish with "-o context=xyz" mount
  ///  option when mounting a ReadWriteOncePod volume used in Pod that has
  ///  explicitly set SELinux context. In the future, it may be expanded to other
  ///  volume AccessModes. In any case, Kubernetes will ensure that the volume is
  ///  mounted only with a single SELinux context.
  ///
  ///  When "false", Kubernetes won't pass any special SELinux mount options to the driver.
  ///  This is typical for volumes that represent subdirectories of a bigger shared filesystem.
  ///
  ///  Default is "false".
  ///
  ///  +featureGate=SELinuxMountReadWriteOncePod
  ///  +optional
  @$pb.TagNumber(8)
  $core.bool get seLinuxMount => $_getBF(7);
  @$pb.TagNumber(8)
  set seLinuxMount($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSeLinuxMount() => $_has(7);
  @$pb.TagNumber(8)
  void clearSeLinuxMount() => clearField(8);
}

/// CSINode holds information about all CSI drivers installed on a node.
/// CSI drivers do not need to create the CSINode object directly. As long as
/// they use the node-driver-registrar sidecar container, the kubelet will
/// automatically populate the CSINode object for the CSI driver as part of
/// kubelet plugin registration.
/// CSINode has the same name as a node. If the object is missing, it means either
/// there are no CSI Drivers available on the node, or the Kubelet version is low
/// enough that it doesn't create this object.
/// CSINode has an OwnerReference that points to the corresponding node object.
class CSINode extends $pb.GeneratedMessage {
  factory CSINode({
    $0.ObjectMeta? metadata,
    CSINodeSpec? spec,
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
  CSINode._() : super();
  factory CSINode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSINode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSINode', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<CSINodeSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: CSINodeSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSINode clone() => CSINode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSINode copyWith(void Function(CSINode) updates) => super.copyWith((message) => updates(message as CSINode)) as CSINode;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSINode create() => CSINode._();
  CSINode createEmptyInstance() => create();
  static $pb.PbList<CSINode> createRepeated() => $pb.PbList<CSINode>();
  @$core.pragma('dart2js:noInline')
  static CSINode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSINode>(create);
  static CSINode? _defaultInstance;

  /// Standard object's metadata.
  /// metadata.name must be the Kubernetes node name.
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

  /// spec is the specification of CSINode
  @$pb.TagNumber(2)
  CSINodeSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(CSINodeSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  CSINodeSpec ensureSpec() => $_ensure(1);
}

/// CSINodeDriver holds information about the specification of one CSI driver installed on a node
class CSINodeDriver extends $pb.GeneratedMessage {
  factory CSINodeDriver({
    $core.String? name,
    $core.String? nodeID,
    $core.Iterable<$core.String>? topologyKeys,
    VolumeNodeResources? allocatable,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (nodeID != null) {
      $result.nodeID = nodeID;
    }
    if (topologyKeys != null) {
      $result.topologyKeys.addAll(topologyKeys);
    }
    if (allocatable != null) {
      $result.allocatable = allocatable;
    }
    return $result;
  }
  CSINodeDriver._() : super();
  factory CSINodeDriver.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSINodeDriver.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSINodeDriver', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'nodeID', protoName: 'nodeID')
    ..pPS(3, _omitFieldNames ? '' : 'topologyKeys', protoName: 'topologyKeys')
    ..aOM<VolumeNodeResources>(4, _omitFieldNames ? '' : 'allocatable', subBuilder: VolumeNodeResources.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSINodeDriver clone() => CSINodeDriver()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSINodeDriver copyWith(void Function(CSINodeDriver) updates) => super.copyWith((message) => updates(message as CSINodeDriver)) as CSINodeDriver;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSINodeDriver create() => CSINodeDriver._();
  CSINodeDriver createEmptyInstance() => create();
  static $pb.PbList<CSINodeDriver> createRepeated() => $pb.PbList<CSINodeDriver>();
  @$core.pragma('dart2js:noInline')
  static CSINodeDriver getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSINodeDriver>(create);
  static CSINodeDriver? _defaultInstance;

  /// name represents the name of the CSI driver that this object refers to.
  /// This MUST be the same name returned by the CSI GetPluginName() call for
  /// that driver.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// nodeID of the node from the driver point of view.
  /// This field enables Kubernetes to communicate with storage systems that do
  /// not share the same nomenclature for nodes. For example, Kubernetes may
  /// refer to a given node as "node1", but the storage system may refer to
  /// the same node as "nodeA". When Kubernetes issues a command to the storage
  /// system to attach a volume to a specific node, it can use this field to
  /// refer to the node name using the ID that the storage system will
  /// understand, e.g. "nodeA" instead of "node1". This field is required.
  @$pb.TagNumber(2)
  $core.String get nodeID => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeID($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeID() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeID() => clearField(2);

  /// topologyKeys is the list of keys supported by the driver.
  /// When a driver is initialized on a cluster, it provides a set of topology
  /// keys that it understands (e.g. "company.com/zone", "company.com/region").
  /// When a driver is initialized on a node, it provides the same topology keys
  /// along with values. Kubelet will expose these topology keys as labels
  /// on its own node object.
  /// When Kubernetes does topology aware provisioning, it can use this list to
  /// determine which labels it should retrieve from the node object and pass
  /// back to the driver.
  /// It is possible for different nodes to use different topology keys.
  /// This can be empty if driver does not support topology.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$core.String> get topologyKeys => $_getList(2);

  /// allocatable represents the volume resources of a node that are available for scheduling.
  /// This field is beta.
  /// +optional
  @$pb.TagNumber(4)
  VolumeNodeResources get allocatable => $_getN(3);
  @$pb.TagNumber(4)
  set allocatable(VolumeNodeResources v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasAllocatable() => $_has(3);
  @$pb.TagNumber(4)
  void clearAllocatable() => clearField(4);
  @$pb.TagNumber(4)
  VolumeNodeResources ensureAllocatable() => $_ensure(3);
}

/// CSINodeList is a collection of CSINode objects.
class CSINodeList extends $pb.GeneratedMessage {
  factory CSINodeList({
    $0.ListMeta? metadata,
    $core.Iterable<CSINode>? items,
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
  CSINodeList._() : super();
  factory CSINodeList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSINodeList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSINodeList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<CSINode>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CSINode.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSINodeList clone() => CSINodeList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSINodeList copyWith(void Function(CSINodeList) updates) => super.copyWith((message) => updates(message as CSINodeList)) as CSINodeList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSINodeList create() => CSINodeList._();
  CSINodeList createEmptyInstance() => create();
  static $pb.PbList<CSINodeList> createRepeated() => $pb.PbList<CSINodeList>();
  @$core.pragma('dart2js:noInline')
  static CSINodeList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSINodeList>(create);
  static CSINodeList? _defaultInstance;

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

  /// items is the list of CSINode
  @$pb.TagNumber(2)
  $core.List<CSINode> get items => $_getList(1);
}

/// CSINodeSpec holds information about the specification of all CSI drivers installed on a node
class CSINodeSpec extends $pb.GeneratedMessage {
  factory CSINodeSpec({
    $core.Iterable<CSINodeDriver>? drivers,
  }) {
    final $result = create();
    if (drivers != null) {
      $result.drivers.addAll(drivers);
    }
    return $result;
  }
  CSINodeSpec._() : super();
  factory CSINodeSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSINodeSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSINodeSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..pc<CSINodeDriver>(1, _omitFieldNames ? '' : 'drivers', $pb.PbFieldType.PM, subBuilder: CSINodeDriver.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSINodeSpec clone() => CSINodeSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSINodeSpec copyWith(void Function(CSINodeSpec) updates) => super.copyWith((message) => updates(message as CSINodeSpec)) as CSINodeSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSINodeSpec create() => CSINodeSpec._();
  CSINodeSpec createEmptyInstance() => create();
  static $pb.PbList<CSINodeSpec> createRepeated() => $pb.PbList<CSINodeSpec>();
  @$core.pragma('dart2js:noInline')
  static CSINodeSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSINodeSpec>(create);
  static CSINodeSpec? _defaultInstance;

  /// drivers is a list of information of all CSI Drivers existing on a node.
  /// If all drivers in the list are uninstalled, this can become empty.
  /// +patchMergeKey=name
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=name
  @$pb.TagNumber(1)
  $core.List<CSINodeDriver> get drivers => $_getList(0);
}

///  CSIStorageCapacity stores the result of one CSI GetCapacity call.
///  For a given StorageClass, this describes the available capacity in a
///  particular topology segment.  This can be used when considering where to
///  instantiate new PersistentVolumes.
///
///  For example this can express things like:
///  - StorageClass "standard" has "1234 GiB" available in "topology.kubernetes.io/zone=us-east1"
///  - StorageClass "localssd" has "10 GiB" available in "kubernetes.io/hostname=knode-abc123"
///
///  The following three cases all imply that no capacity is available for
///  a certain combination:
///  - no object exists with suitable topology and storage class name
///  - such an object exists, but the capacity is unset
///  - such an object exists, but the capacity is zero
///
///  The producer of these objects can decide which approach is more suitable.
///
///  They are consumed by the kube-scheduler when a CSI driver opts into
///  capacity-aware scheduling with CSIDriverSpec.StorageCapacity. The scheduler
///  compares the MaximumVolumeSize against the requested size of pending volumes
///  to filter out unsuitable nodes. If MaximumVolumeSize is unset, it falls back
///  to a comparison against the less precise Capacity. If that is also unset,
///  the scheduler assumes that capacity is insufficient and tries some other
///  node.
class CSIStorageCapacity extends $pb.GeneratedMessage {
  factory CSIStorageCapacity({
    $0.ObjectMeta? metadata,
    $0.LabelSelector? nodeTopology,
    $core.String? storageClassName,
    $1.Quantity? capacity,
    $1.Quantity? maximumVolumeSize,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (nodeTopology != null) {
      $result.nodeTopology = nodeTopology;
    }
    if (storageClassName != null) {
      $result.storageClassName = storageClassName;
    }
    if (capacity != null) {
      $result.capacity = capacity;
    }
    if (maximumVolumeSize != null) {
      $result.maximumVolumeSize = maximumVolumeSize;
    }
    return $result;
  }
  CSIStorageCapacity._() : super();
  factory CSIStorageCapacity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSIStorageCapacity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSIStorageCapacity', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<$0.LabelSelector>(2, _omitFieldNames ? '' : 'nodeTopology', protoName: 'nodeTopology', subBuilder: $0.LabelSelector.create)
    ..aOS(3, _omitFieldNames ? '' : 'storageClassName', protoName: 'storageClassName')
    ..aOM<$1.Quantity>(4, _omitFieldNames ? '' : 'capacity', subBuilder: $1.Quantity.create)
    ..aOM<$1.Quantity>(5, _omitFieldNames ? '' : 'maximumVolumeSize', protoName: 'maximumVolumeSize', subBuilder: $1.Quantity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSIStorageCapacity clone() => CSIStorageCapacity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSIStorageCapacity copyWith(void Function(CSIStorageCapacity) updates) => super.copyWith((message) => updates(message as CSIStorageCapacity)) as CSIStorageCapacity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSIStorageCapacity create() => CSIStorageCapacity._();
  CSIStorageCapacity createEmptyInstance() => create();
  static $pb.PbList<CSIStorageCapacity> createRepeated() => $pb.PbList<CSIStorageCapacity>();
  @$core.pragma('dart2js:noInline')
  static CSIStorageCapacity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSIStorageCapacity>(create);
  static CSIStorageCapacity? _defaultInstance;

  ///  Standard object's metadata.
  ///  The name has no particular meaning. It must be a DNS subdomain (dots allowed, 253 characters).
  ///  To ensure that there are no conflicts with other CSI drivers on the cluster,
  ///  the recommendation is to use csisc-<uuid>, a generated name, or a reverse-domain name
  ///  which ends with the unique CSI driver name.
  ///
  ///  Objects are namespaced.
  ///
  ///  More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  ///  +optional
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

  ///  nodeTopology defines which nodes have access to the storage
  ///  for which capacity was reported. If not set, the storage is
  ///  not accessible from any node in the cluster. If empty, the
  ///  storage is accessible from all nodes. This field is
  ///  immutable.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $0.LabelSelector get nodeTopology => $_getN(1);
  @$pb.TagNumber(2)
  set nodeTopology($0.LabelSelector v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeTopology() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeTopology() => clearField(2);
  @$pb.TagNumber(2)
  $0.LabelSelector ensureNodeTopology() => $_ensure(1);

  /// storageClassName represents the name of the StorageClass that the reported capacity applies to.
  /// It must meet the same requirements as the name of a StorageClass
  /// object (non-empty, DNS subdomain). If that object no longer exists,
  /// the CSIStorageCapacity object is obsolete and should be removed by its
  /// creator.
  /// This field is immutable.
  @$pb.TagNumber(3)
  $core.String get storageClassName => $_getSZ(2);
  @$pb.TagNumber(3)
  set storageClassName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStorageClassName() => $_has(2);
  @$pb.TagNumber(3)
  void clearStorageClassName() => clearField(3);

  ///  capacity is the value reported by the CSI driver in its GetCapacityResponse
  ///  for a GetCapacityRequest with topology and parameters that match the
  ///  previous fields.
  ///
  ///  The semantic is currently (CSI spec 1.2) defined as:
  ///  The available capacity, in bytes, of the storage that can be used
  ///  to provision volumes. If not set, that information is currently
  ///  unavailable.
  ///
  ///  +optional
  @$pb.TagNumber(4)
  $1.Quantity get capacity => $_getN(3);
  @$pb.TagNumber(4)
  set capacity($1.Quantity v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasCapacity() => $_has(3);
  @$pb.TagNumber(4)
  void clearCapacity() => clearField(4);
  @$pb.TagNumber(4)
  $1.Quantity ensureCapacity() => $_ensure(3);

  ///  maximumVolumeSize is the value reported by the CSI driver in its GetCapacityResponse
  ///  for a GetCapacityRequest with topology and parameters that match the
  ///  previous fields.
  ///
  ///  This is defined since CSI spec 1.4.0 as the largest size
  ///  that may be used in a
  ///  CreateVolumeRequest.capacity_range.required_bytes field to
  ///  create a volume with the same parameters as those in
  ///  GetCapacityRequest. The corresponding value in the Kubernetes
  ///  API is ResourceRequirements.Requests in a volume claim.
  ///
  ///  +optional
  @$pb.TagNumber(5)
  $1.Quantity get maximumVolumeSize => $_getN(4);
  @$pb.TagNumber(5)
  set maximumVolumeSize($1.Quantity v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasMaximumVolumeSize() => $_has(4);
  @$pb.TagNumber(5)
  void clearMaximumVolumeSize() => clearField(5);
  @$pb.TagNumber(5)
  $1.Quantity ensureMaximumVolumeSize() => $_ensure(4);
}

/// CSIStorageCapacityList is a collection of CSIStorageCapacity objects.
class CSIStorageCapacityList extends $pb.GeneratedMessage {
  factory CSIStorageCapacityList({
    $0.ListMeta? metadata,
    $core.Iterable<CSIStorageCapacity>? items,
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
  CSIStorageCapacityList._() : super();
  factory CSIStorageCapacityList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CSIStorageCapacityList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSIStorageCapacityList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<CSIStorageCapacity>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CSIStorageCapacity.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CSIStorageCapacityList clone() => CSIStorageCapacityList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CSIStorageCapacityList copyWith(void Function(CSIStorageCapacityList) updates) => super.copyWith((message) => updates(message as CSIStorageCapacityList)) as CSIStorageCapacityList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CSIStorageCapacityList create() => CSIStorageCapacityList._();
  CSIStorageCapacityList createEmptyInstance() => create();
  static $pb.PbList<CSIStorageCapacityList> createRepeated() => $pb.PbList<CSIStorageCapacityList>();
  @$core.pragma('dart2js:noInline')
  static CSIStorageCapacityList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CSIStorageCapacityList>(create);
  static CSIStorageCapacityList? _defaultInstance;

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

  /// items is the list of CSIStorageCapacity objects.
  @$pb.TagNumber(2)
  $core.List<CSIStorageCapacity> get items => $_getList(1);
}

///  StorageClass describes the parameters for a class of storage for
///  which PersistentVolumes can be dynamically provisioned.
///
///  StorageClasses are non-namespaced; the name of the storage class
///  according to etcd is in ObjectMeta.Name.
class StorageClass extends $pb.GeneratedMessage {
  factory StorageClass({
    $0.ObjectMeta? metadata,
    $core.String? provisioner,
    $core.Map<$core.String, $core.String>? parameters,
    $core.String? reclaimPolicy,
    $core.Iterable<$core.String>? mountOptions,
    $core.bool? allowVolumeExpansion,
    $core.String? volumeBindingMode,
    $core.Iterable<$2.TopologySelectorTerm>? allowedTopologies,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (provisioner != null) {
      $result.provisioner = provisioner;
    }
    if (parameters != null) {
      $result.parameters.addAll(parameters);
    }
    if (reclaimPolicy != null) {
      $result.reclaimPolicy = reclaimPolicy;
    }
    if (mountOptions != null) {
      $result.mountOptions.addAll(mountOptions);
    }
    if (allowVolumeExpansion != null) {
      $result.allowVolumeExpansion = allowVolumeExpansion;
    }
    if (volumeBindingMode != null) {
      $result.volumeBindingMode = volumeBindingMode;
    }
    if (allowedTopologies != null) {
      $result.allowedTopologies.addAll(allowedTopologies);
    }
    return $result;
  }
  StorageClass._() : super();
  factory StorageClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageClass', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOS(2, _omitFieldNames ? '' : 'provisioner')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'parameters', entryClassName: 'StorageClass.ParametersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.storage.v1'))
    ..aOS(4, _omitFieldNames ? '' : 'reclaimPolicy', protoName: 'reclaimPolicy')
    ..pPS(5, _omitFieldNames ? '' : 'mountOptions', protoName: 'mountOptions')
    ..aOB(6, _omitFieldNames ? '' : 'allowVolumeExpansion', protoName: 'allowVolumeExpansion')
    ..aOS(7, _omitFieldNames ? '' : 'volumeBindingMode', protoName: 'volumeBindingMode')
    ..pc<$2.TopologySelectorTerm>(8, _omitFieldNames ? '' : 'allowedTopologies', $pb.PbFieldType.PM, protoName: 'allowedTopologies', subBuilder: $2.TopologySelectorTerm.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageClass clone() => StorageClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageClass copyWith(void Function(StorageClass) updates) => super.copyWith((message) => updates(message as StorageClass)) as StorageClass;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageClass create() => StorageClass._();
  StorageClass createEmptyInstance() => create();
  static $pb.PbList<StorageClass> createRepeated() => $pb.PbList<StorageClass>();
  @$core.pragma('dart2js:noInline')
  static StorageClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageClass>(create);
  static StorageClass? _defaultInstance;

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

  /// provisioner indicates the type of the provisioner.
  @$pb.TagNumber(2)
  $core.String get provisioner => $_getSZ(1);
  @$pb.TagNumber(2)
  set provisioner($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProvisioner() => $_has(1);
  @$pb.TagNumber(2)
  void clearProvisioner() => clearField(2);

  /// parameters holds the parameters for the provisioner that should
  /// create volumes of this storage class.
  /// +optional
  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get parameters => $_getMap(2);

  /// reclaimPolicy controls the reclaimPolicy for dynamically provisioned PersistentVolumes of this storage class.
  /// Defaults to Delete.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reclaimPolicy => $_getSZ(3);
  @$pb.TagNumber(4)
  set reclaimPolicy($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReclaimPolicy() => $_has(3);
  @$pb.TagNumber(4)
  void clearReclaimPolicy() => clearField(4);

  /// mountOptions controls the mountOptions for dynamically provisioned PersistentVolumes of this storage class.
  /// e.g. ["ro", "soft"]. Not validated -
  /// mount of the PVs will simply fail if one is invalid.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(5)
  $core.List<$core.String> get mountOptions => $_getList(4);

  /// allowVolumeExpansion shows whether the storage class allow volume expand.
  /// +optional
  @$pb.TagNumber(6)
  $core.bool get allowVolumeExpansion => $_getBF(5);
  @$pb.TagNumber(6)
  set allowVolumeExpansion($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAllowVolumeExpansion() => $_has(5);
  @$pb.TagNumber(6)
  void clearAllowVolumeExpansion() => clearField(6);

  /// volumeBindingMode indicates how PersistentVolumeClaims should be
  /// provisioned and bound.  When unset, VolumeBindingImmediate is used.
  /// This field is only honored by servers that enable the VolumeScheduling feature.
  /// +optional
  @$pb.TagNumber(7)
  $core.String get volumeBindingMode => $_getSZ(6);
  @$pb.TagNumber(7)
  set volumeBindingMode($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasVolumeBindingMode() => $_has(6);
  @$pb.TagNumber(7)
  void clearVolumeBindingMode() => clearField(7);

  /// allowedTopologies restrict the node topologies where volumes can be dynamically provisioned.
  /// Each volume plugin defines its own supported topology specifications.
  /// An empty TopologySelectorTerm list means there is no topology restriction.
  /// This field is only honored by servers that enable the VolumeScheduling feature.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(8)
  $core.List<$2.TopologySelectorTerm> get allowedTopologies => $_getList(7);
}

/// StorageClassList is a collection of storage classes.
class StorageClassList extends $pb.GeneratedMessage {
  factory StorageClassList({
    $0.ListMeta? metadata,
    $core.Iterable<StorageClass>? items,
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
  StorageClassList._() : super();
  factory StorageClassList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StorageClassList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StorageClassList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<StorageClass>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: StorageClass.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StorageClassList clone() => StorageClassList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StorageClassList copyWith(void Function(StorageClassList) updates) => super.copyWith((message) => updates(message as StorageClassList)) as StorageClassList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StorageClassList create() => StorageClassList._();
  StorageClassList createEmptyInstance() => create();
  static $pb.PbList<StorageClassList> createRepeated() => $pb.PbList<StorageClassList>();
  @$core.pragma('dart2js:noInline')
  static StorageClassList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StorageClassList>(create);
  static StorageClassList? _defaultInstance;

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

  /// items is the list of StorageClasses
  @$pb.TagNumber(2)
  $core.List<StorageClass> get items => $_getList(1);
}

/// TokenRequest contains parameters of a service account token.
class TokenRequest extends $pb.GeneratedMessage {
  factory TokenRequest({
    $core.String? audience,
    $fixnum.Int64? expirationSeconds,
  }) {
    final $result = create();
    if (audience != null) {
      $result.audience = audience;
    }
    if (expirationSeconds != null) {
      $result.expirationSeconds = expirationSeconds;
    }
    return $result;
  }
  TokenRequest._() : super();
  factory TokenRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TokenRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'audience')
    ..aInt64(2, _omitFieldNames ? '' : 'expirationSeconds', protoName: 'expirationSeconds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenRequest clone() => TokenRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenRequest copyWith(void Function(TokenRequest) updates) => super.copyWith((message) => updates(message as TokenRequest)) as TokenRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenRequest create() => TokenRequest._();
  TokenRequest createEmptyInstance() => create();
  static $pb.PbList<TokenRequest> createRepeated() => $pb.PbList<TokenRequest>();
  @$core.pragma('dart2js:noInline')
  static TokenRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenRequest>(create);
  static TokenRequest? _defaultInstance;

  /// audience is the intended audience of the token in "TokenRequestSpec".
  /// It will default to the audiences of kube apiserver.
  @$pb.TagNumber(1)
  $core.String get audience => $_getSZ(0);
  @$pb.TagNumber(1)
  set audience($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAudience() => $_has(0);
  @$pb.TagNumber(1)
  void clearAudience() => clearField(1);

  ///  expirationSeconds is the duration of validity of the token in "TokenRequestSpec".
  ///  It has the same default value of "ExpirationSeconds" in "TokenRequestSpec".
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $fixnum.Int64 get expirationSeconds => $_getI64(1);
  @$pb.TagNumber(2)
  set expirationSeconds($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasExpirationSeconds() => $_has(1);
  @$pb.TagNumber(2)
  void clearExpirationSeconds() => clearField(2);
}

///  VolumeAttachment captures the intent to attach or detach the specified volume
///  to/from the specified node.
///
///  VolumeAttachment objects are non-namespaced.
class VolumeAttachment extends $pb.GeneratedMessage {
  factory VolumeAttachment({
    $0.ObjectMeta? metadata,
    VolumeAttachmentSpec? spec,
    VolumeAttachmentStatus? status,
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
  VolumeAttachment._() : super();
  factory VolumeAttachment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeAttachment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachment', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<VolumeAttachmentSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: VolumeAttachmentSpec.create)
    ..aOM<VolumeAttachmentStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: VolumeAttachmentStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeAttachment clone() => VolumeAttachment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeAttachment copyWith(void Function(VolumeAttachment) updates) => super.copyWith((message) => updates(message as VolumeAttachment)) as VolumeAttachment;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeAttachment create() => VolumeAttachment._();
  VolumeAttachment createEmptyInstance() => create();
  static $pb.PbList<VolumeAttachment> createRepeated() => $pb.PbList<VolumeAttachment>();
  @$core.pragma('dart2js:noInline')
  static VolumeAttachment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeAttachment>(create);
  static VolumeAttachment? _defaultInstance;

  /// Standard object metadata.
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

  /// spec represents specification of the desired attach/detach volume behavior.
  /// Populated by the Kubernetes system.
  @$pb.TagNumber(2)
  VolumeAttachmentSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(VolumeAttachmentSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  VolumeAttachmentSpec ensureSpec() => $_ensure(1);

  /// status represents status of the VolumeAttachment request.
  /// Populated by the entity completing the attach or detach
  /// operation, i.e. the external-attacher.
  /// +optional
  @$pb.TagNumber(3)
  VolumeAttachmentStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(VolumeAttachmentStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  VolumeAttachmentStatus ensureStatus() => $_ensure(2);
}

/// VolumeAttachmentList is a collection of VolumeAttachment objects.
class VolumeAttachmentList extends $pb.GeneratedMessage {
  factory VolumeAttachmentList({
    $0.ListMeta? metadata,
    $core.Iterable<VolumeAttachment>? items,
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
  VolumeAttachmentList._() : super();
  factory VolumeAttachmentList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeAttachmentList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachmentList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<VolumeAttachment>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: VolumeAttachment.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeAttachmentList clone() => VolumeAttachmentList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeAttachmentList copyWith(void Function(VolumeAttachmentList) updates) => super.copyWith((message) => updates(message as VolumeAttachmentList)) as VolumeAttachmentList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeAttachmentList create() => VolumeAttachmentList._();
  VolumeAttachmentList createEmptyInstance() => create();
  static $pb.PbList<VolumeAttachmentList> createRepeated() => $pb.PbList<VolumeAttachmentList>();
  @$core.pragma('dart2js:noInline')
  static VolumeAttachmentList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeAttachmentList>(create);
  static VolumeAttachmentList? _defaultInstance;

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

  /// items is the list of VolumeAttachments
  @$pb.TagNumber(2)
  $core.List<VolumeAttachment> get items => $_getList(1);
}

/// VolumeAttachmentSource represents a volume that should be attached.
/// Right now only PersistenVolumes can be attached via external attacher,
/// in future we may allow also inline volumes in pods.
/// Exactly one member can be set.
class VolumeAttachmentSource extends $pb.GeneratedMessage {
  factory VolumeAttachmentSource({
    $core.String? persistentVolumeName,
    $2.PersistentVolumeSpec? inlineVolumeSpec,
  }) {
    final $result = create();
    if (persistentVolumeName != null) {
      $result.persistentVolumeName = persistentVolumeName;
    }
    if (inlineVolumeSpec != null) {
      $result.inlineVolumeSpec = inlineVolumeSpec;
    }
    return $result;
  }
  VolumeAttachmentSource._() : super();
  factory VolumeAttachmentSource.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeAttachmentSource.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachmentSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'persistentVolumeName', protoName: 'persistentVolumeName')
    ..aOM<$2.PersistentVolumeSpec>(2, _omitFieldNames ? '' : 'inlineVolumeSpec', protoName: 'inlineVolumeSpec', subBuilder: $2.PersistentVolumeSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeAttachmentSource clone() => VolumeAttachmentSource()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeAttachmentSource copyWith(void Function(VolumeAttachmentSource) updates) => super.copyWith((message) => updates(message as VolumeAttachmentSource)) as VolumeAttachmentSource;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeAttachmentSource create() => VolumeAttachmentSource._();
  VolumeAttachmentSource createEmptyInstance() => create();
  static $pb.PbList<VolumeAttachmentSource> createRepeated() => $pb.PbList<VolumeAttachmentSource>();
  @$core.pragma('dart2js:noInline')
  static VolumeAttachmentSource getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeAttachmentSource>(create);
  static VolumeAttachmentSource? _defaultInstance;

  /// persistentVolumeName represents the name of the persistent volume to attach.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get persistentVolumeName => $_getSZ(0);
  @$pb.TagNumber(1)
  set persistentVolumeName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPersistentVolumeName() => $_has(0);
  @$pb.TagNumber(1)
  void clearPersistentVolumeName() => clearField(1);

  /// inlineVolumeSpec contains all the information necessary to attach
  /// a persistent volume defined by a pod's inline VolumeSource. This field
  /// is populated only for the CSIMigration feature. It contains
  /// translated fields from a pod's inline VolumeSource to a
  /// PersistentVolumeSpec. This field is beta-level and is only
  /// honored by servers that enabled the CSIMigration feature.
  /// +optional
  @$pb.TagNumber(2)
  $2.PersistentVolumeSpec get inlineVolumeSpec => $_getN(1);
  @$pb.TagNumber(2)
  set inlineVolumeSpec($2.PersistentVolumeSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasInlineVolumeSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearInlineVolumeSpec() => clearField(2);
  @$pb.TagNumber(2)
  $2.PersistentVolumeSpec ensureInlineVolumeSpec() => $_ensure(1);
}

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpec extends $pb.GeneratedMessage {
  factory VolumeAttachmentSpec({
    $core.String? attacher,
    VolumeAttachmentSource? source,
    $core.String? nodeName,
  }) {
    final $result = create();
    if (attacher != null) {
      $result.attacher = attacher;
    }
    if (source != null) {
      $result.source = source;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    return $result;
  }
  VolumeAttachmentSpec._() : super();
  factory VolumeAttachmentSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeAttachmentSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachmentSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'attacher')
    ..aOM<VolumeAttachmentSource>(2, _omitFieldNames ? '' : 'source', subBuilder: VolumeAttachmentSource.create)
    ..aOS(3, _omitFieldNames ? '' : 'nodeName', protoName: 'nodeName')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeAttachmentSpec clone() => VolumeAttachmentSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeAttachmentSpec copyWith(void Function(VolumeAttachmentSpec) updates) => super.copyWith((message) => updates(message as VolumeAttachmentSpec)) as VolumeAttachmentSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeAttachmentSpec create() => VolumeAttachmentSpec._();
  VolumeAttachmentSpec createEmptyInstance() => create();
  static $pb.PbList<VolumeAttachmentSpec> createRepeated() => $pb.PbList<VolumeAttachmentSpec>();
  @$core.pragma('dart2js:noInline')
  static VolumeAttachmentSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeAttachmentSpec>(create);
  static VolumeAttachmentSpec? _defaultInstance;

  /// attacher indicates the name of the volume driver that MUST handle this
  /// request. This is the name returned by GetPluginName().
  @$pb.TagNumber(1)
  $core.String get attacher => $_getSZ(0);
  @$pb.TagNumber(1)
  set attacher($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttacher() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttacher() => clearField(1);

  /// source represents the volume that should be attached.
  @$pb.TagNumber(2)
  VolumeAttachmentSource get source => $_getN(1);
  @$pb.TagNumber(2)
  set source(VolumeAttachmentSource v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSource() => $_has(1);
  @$pb.TagNumber(2)
  void clearSource() => clearField(2);
  @$pb.TagNumber(2)
  VolumeAttachmentSource ensureSource() => $_ensure(1);

  /// nodeName represents the node that the volume should be attached to.
  @$pb.TagNumber(3)
  $core.String get nodeName => $_getSZ(2);
  @$pb.TagNumber(3)
  set nodeName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNodeName() => $_has(2);
  @$pb.TagNumber(3)
  void clearNodeName() => clearField(3);
}

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
class VolumeAttachmentStatus extends $pb.GeneratedMessage {
  factory VolumeAttachmentStatus({
    $core.bool? attached,
    $core.Map<$core.String, $core.String>? attachmentMetadata,
    VolumeError? attachError,
    VolumeError? detachError,
  }) {
    final $result = create();
    if (attached != null) {
      $result.attached = attached;
    }
    if (attachmentMetadata != null) {
      $result.attachmentMetadata.addAll(attachmentMetadata);
    }
    if (attachError != null) {
      $result.attachError = attachError;
    }
    if (detachError != null) {
      $result.detachError = detachError;
    }
    return $result;
  }
  VolumeAttachmentStatus._() : super();
  factory VolumeAttachmentStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeAttachmentStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachmentStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'attached')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'attachmentMetadata', protoName: 'attachmentMetadata', entryClassName: 'VolumeAttachmentStatus.AttachmentMetadataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.storage.v1'))
    ..aOM<VolumeError>(3, _omitFieldNames ? '' : 'attachError', protoName: 'attachError', subBuilder: VolumeError.create)
    ..aOM<VolumeError>(4, _omitFieldNames ? '' : 'detachError', protoName: 'detachError', subBuilder: VolumeError.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeAttachmentStatus clone() => VolumeAttachmentStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeAttachmentStatus copyWith(void Function(VolumeAttachmentStatus) updates) => super.copyWith((message) => updates(message as VolumeAttachmentStatus)) as VolumeAttachmentStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeAttachmentStatus create() => VolumeAttachmentStatus._();
  VolumeAttachmentStatus createEmptyInstance() => create();
  static $pb.PbList<VolumeAttachmentStatus> createRepeated() => $pb.PbList<VolumeAttachmentStatus>();
  @$core.pragma('dart2js:noInline')
  static VolumeAttachmentStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeAttachmentStatus>(create);
  static VolumeAttachmentStatus? _defaultInstance;

  /// attached indicates the volume is successfully attached.
  /// This field must only be set by the entity completing the attach
  /// operation, i.e. the external-attacher.
  @$pb.TagNumber(1)
  $core.bool get attached => $_getBF(0);
  @$pb.TagNumber(1)
  set attached($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAttached() => $_has(0);
  @$pb.TagNumber(1)
  void clearAttached() => clearField(1);

  /// attachmentMetadata is populated with any
  /// information returned by the attach operation, upon successful attach, that must be passed
  /// into subsequent WaitForAttach or Mount calls.
  /// This field must only be set by the entity completing the attach
  /// operation, i.e. the external-attacher.
  /// +optional
  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get attachmentMetadata => $_getMap(1);

  /// attachError represents the last error encountered during attach operation, if any.
  /// This field must only be set by the entity completing the attach
  /// operation, i.e. the external-attacher.
  /// +optional
  @$pb.TagNumber(3)
  VolumeError get attachError => $_getN(2);
  @$pb.TagNumber(3)
  set attachError(VolumeError v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasAttachError() => $_has(2);
  @$pb.TagNumber(3)
  void clearAttachError() => clearField(3);
  @$pb.TagNumber(3)
  VolumeError ensureAttachError() => $_ensure(2);

  /// detachError represents the last error encountered during detach operation, if any.
  /// This field must only be set by the entity completing the detach
  /// operation, i.e. the external-attacher.
  /// +optional
  @$pb.TagNumber(4)
  VolumeError get detachError => $_getN(3);
  @$pb.TagNumber(4)
  set detachError(VolumeError v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasDetachError() => $_has(3);
  @$pb.TagNumber(4)
  void clearDetachError() => clearField(4);
  @$pb.TagNumber(4)
  VolumeError ensureDetachError() => $_ensure(3);
}

/// VolumeError captures an error encountered during a volume operation.
class VolumeError extends $pb.GeneratedMessage {
  factory VolumeError({
    $0.Time? time,
    $core.String? message,
  }) {
    final $result = create();
    if (time != null) {
      $result.time = time;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  VolumeError._() : super();
  factory VolumeError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeError', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..aOM<$0.Time>(1, _omitFieldNames ? '' : 'time', subBuilder: $0.Time.create)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeError clone() => VolumeError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeError copyWith(void Function(VolumeError) updates) => super.copyWith((message) => updates(message as VolumeError)) as VolumeError;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeError create() => VolumeError._();
  VolumeError createEmptyInstance() => create();
  static $pb.PbList<VolumeError> createRepeated() => $pb.PbList<VolumeError>();
  @$core.pragma('dart2js:noInline')
  static VolumeError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeError>(create);
  static VolumeError? _defaultInstance;

  /// time represents the time the error was encountered.
  /// +optional
  @$pb.TagNumber(1)
  $0.Time get time => $_getN(0);
  @$pb.TagNumber(1)
  set time($0.Time v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearTime() => clearField(1);
  @$pb.TagNumber(1)
  $0.Time ensureTime() => $_ensure(0);

  /// message represents the error encountered during Attach or Detach operation.
  /// This string may be logged, so it should not contain sensitive
  /// information.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);
}

/// VolumeNodeResources is a set of resource limits for scheduling of volumes.
class VolumeNodeResources extends $pb.GeneratedMessage {
  factory VolumeNodeResources({
    $core.int? count,
  }) {
    final $result = create();
    if (count != null) {
      $result.count = count;
    }
    return $result;
  }
  VolumeNodeResources._() : super();
  factory VolumeNodeResources.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeNodeResources.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeNodeResources', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1'), createEmptyInstance: create)
    ..a<$core.int>(1, _omitFieldNames ? '' : 'count', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeNodeResources clone() => VolumeNodeResources()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeNodeResources copyWith(void Function(VolumeNodeResources) updates) => super.copyWith((message) => updates(message as VolumeNodeResources)) as VolumeNodeResources;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeNodeResources create() => VolumeNodeResources._();
  VolumeNodeResources createEmptyInstance() => create();
  static $pb.PbList<VolumeNodeResources> createRepeated() => $pb.PbList<VolumeNodeResources>();
  @$core.pragma('dart2js:noInline')
  static VolumeNodeResources getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeNodeResources>(create);
  static VolumeNodeResources? _defaultInstance;

  /// count indicates the maximum number of unique volumes managed by the CSI driver that can be used on a node.
  /// A volume that is both attached and mounted on a node is considered to be used once, not twice.
  /// The same rule applies for a unique volume that is shared among multiple pods on the same node.
  /// If this field is not specified, then the supported number of volumes on this node is unbounded.
  /// +optional
  @$pb.TagNumber(1)
  $core.int get count => $_getIZ(0);
  @$pb.TagNumber(1)
  set count($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCount() => $_has(0);
  @$pb.TagNumber(1)
  void clearCount() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
