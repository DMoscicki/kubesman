//
//  Generated code. Do not modify.
//  source: api/storage/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/api/resource/generated.pb.dart' as $1;
import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../../core/v1/generated.pb.dart' as $2;

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSIStorageCapacity', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
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

  ///  Standard object's metadata. The name has no particular meaning. It must be
  ///  be a DNS subdomain (dots allowed, 253 characters). To ensure that
  ///  there are no conflicts with other CSI drivers on the cluster, the recommendation
  ///  is to use csisc-<uuid>, a generated name, or a reverse-domain name which ends
  ///  with the unique CSI driver name.
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CSIStorageCapacityList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachment', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachmentList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachmentSource', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
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
  /// PersistentVolumeSpec. This field is alpha-level and is only
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachmentSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttachmentStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'attached')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'attachmentMetadata', protoName: 'attachmentMetadata', entryClassName: 'VolumeAttachmentStatus.AttachmentMetadataEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.storage.v1alpha1'))
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

/// VolumeAttributesClass represents a specification of mutable volume attributes
/// defined by the CSI driver. The class can be specified during dynamic provisioning
/// of PersistentVolumeClaims, and changed in the PersistentVolumeClaim spec after provisioning.
class VolumeAttributesClass extends $pb.GeneratedMessage {
  factory VolumeAttributesClass({
    $0.ObjectMeta? metadata,
    $core.String? driverName,
    $core.Map<$core.String, $core.String>? parameters,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (driverName != null) {
      $result.driverName = driverName;
    }
    if (parameters != null) {
      $result.parameters.addAll(parameters);
    }
    return $result;
  }
  VolumeAttributesClass._() : super();
  factory VolumeAttributesClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeAttributesClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttributesClass', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOS(2, _omitFieldNames ? '' : 'driverName', protoName: 'driverName')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'parameters', entryClassName: 'VolumeAttributesClass.ParametersEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.storage.v1alpha1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeAttributesClass clone() => VolumeAttributesClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeAttributesClass copyWith(void Function(VolumeAttributesClass) updates) => super.copyWith((message) => updates(message as VolumeAttributesClass)) as VolumeAttributesClass;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeAttributesClass create() => VolumeAttributesClass._();
  VolumeAttributesClass createEmptyInstance() => create();
  static $pb.PbList<VolumeAttributesClass> createRepeated() => $pb.PbList<VolumeAttributesClass>();
  @$core.pragma('dart2js:noInline')
  static VolumeAttributesClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeAttributesClass>(create);
  static VolumeAttributesClass? _defaultInstance;

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

  /// Name of the CSI driver
  /// This field is immutable.
  @$pb.TagNumber(2)
  $core.String get driverName => $_getSZ(1);
  @$pb.TagNumber(2)
  set driverName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDriverName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDriverName() => clearField(2);

  ///  parameters hold volume attributes defined by the CSI driver. These values
  ///  are opaque to the Kubernetes and are passed directly to the CSI driver.
  ///  The underlying storage provider supports changing these attributes on an
  ///  existing volume, however the parameters field itself is immutable. To
  ///  invoke a volume update, a new VolumeAttributesClass should be created with
  ///  new parameters, and the PersistentVolumeClaim should be updated to reference
  ///  the new VolumeAttributesClass.
  ///
  ///  This field is required and must contain at least one key/value pair.
  ///  The keys cannot be empty, and the maximum number of parameters is 512, with
  ///  a cumulative max size of 256K. If the CSI driver rejects invalid parameters,
  ///  the target PersistentVolumeClaim will be set to an "Infeasible" state in the
  ///  modifyVolumeStatus field.
  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get parameters => $_getMap(2);
}

/// VolumeAttributesClassList is a collection of VolumeAttributesClass objects.
class VolumeAttributesClassList extends $pb.GeneratedMessage {
  factory VolumeAttributesClassList({
    $0.ListMeta? metadata,
    $core.Iterable<VolumeAttributesClass>? items,
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
  VolumeAttributesClassList._() : super();
  factory VolumeAttributesClassList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VolumeAttributesClassList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeAttributesClassList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<VolumeAttributesClass>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: VolumeAttributesClass.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VolumeAttributesClassList clone() => VolumeAttributesClassList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VolumeAttributesClassList copyWith(void Function(VolumeAttributesClassList) updates) => super.copyWith((message) => updates(message as VolumeAttributesClassList)) as VolumeAttributesClassList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VolumeAttributesClassList create() => VolumeAttributesClassList._();
  VolumeAttributesClassList createEmptyInstance() => create();
  static $pb.PbList<VolumeAttributesClassList> createRepeated() => $pb.PbList<VolumeAttributesClassList>();
  @$core.pragma('dart2js:noInline')
  static VolumeAttributesClassList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeAttributesClassList>(create);
  static VolumeAttributesClassList? _defaultInstance;

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

  /// items is the list of VolumeAttributesClass objects.
  @$pb.TagNumber(2)
  $core.List<VolumeAttributesClass> get items => $_getList(1);
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VolumeError', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.storage.v1alpha1'), createEmptyInstance: create)
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
  /// This string maybe logged, so it should not contain sensitive
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
