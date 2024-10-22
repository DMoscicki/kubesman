//
//  Generated code. Do not modify.
//  source: api/imagepolicy/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// ImageReview checks if the set of images in a pod are allowed.
class ImageReview extends $pb.GeneratedMessage {
  factory ImageReview({
    $0.ObjectMeta? metadata,
    ImageReviewSpec? spec,
    ImageReviewStatus? status,
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
  ImageReview._() : super();
  factory ImageReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.imagepolicy.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<ImageReviewSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ImageReviewSpec.create)
    ..aOM<ImageReviewStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: ImageReviewStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageReview clone() => ImageReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageReview copyWith(void Function(ImageReview) updates) => super.copyWith((message) => updates(message as ImageReview)) as ImageReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageReview create() => ImageReview._();
  ImageReview createEmptyInstance() => create();
  static $pb.PbList<ImageReview> createRepeated() => $pb.PbList<ImageReview>();
  @$core.pragma('dart2js:noInline')
  static ImageReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageReview>(create);
  static ImageReview? _defaultInstance;

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

  /// Spec holds information about the pod being evaluated
  @$pb.TagNumber(2)
  ImageReviewSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ImageReviewSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ImageReviewSpec ensureSpec() => $_ensure(1);

  /// Status is filled in by the backend and indicates whether the pod should be allowed.
  /// +optional
  @$pb.TagNumber(3)
  ImageReviewStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(ImageReviewStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  ImageReviewStatus ensureStatus() => $_ensure(2);
}

/// ImageReviewContainerSpec is a description of a container within the pod creation request.
class ImageReviewContainerSpec extends $pb.GeneratedMessage {
  factory ImageReviewContainerSpec({
    $core.String? image,
  }) {
    final $result = create();
    if (image != null) {
      $result.image = image;
    }
    return $result;
  }
  ImageReviewContainerSpec._() : super();
  factory ImageReviewContainerSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageReviewContainerSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageReviewContainerSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.imagepolicy.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'image')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageReviewContainerSpec clone() => ImageReviewContainerSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageReviewContainerSpec copyWith(void Function(ImageReviewContainerSpec) updates) => super.copyWith((message) => updates(message as ImageReviewContainerSpec)) as ImageReviewContainerSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageReviewContainerSpec create() => ImageReviewContainerSpec._();
  ImageReviewContainerSpec createEmptyInstance() => create();
  static $pb.PbList<ImageReviewContainerSpec> createRepeated() => $pb.PbList<ImageReviewContainerSpec>();
  @$core.pragma('dart2js:noInline')
  static ImageReviewContainerSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageReviewContainerSpec>(create);
  static ImageReviewContainerSpec? _defaultInstance;

  /// This can be in the form image:tag or image@SHA:012345679abcdef.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get image => $_getSZ(0);
  @$pb.TagNumber(1)
  set image($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasImage() => $_has(0);
  @$pb.TagNumber(1)
  void clearImage() => clearField(1);
}

/// ImageReviewSpec is a description of the pod creation request.
class ImageReviewSpec extends $pb.GeneratedMessage {
  factory ImageReviewSpec({
    $core.Iterable<ImageReviewContainerSpec>? containers,
    $core.Map<$core.String, $core.String>? annotations,
    $core.String? namespace,
  }) {
    final $result = create();
    if (containers != null) {
      $result.containers.addAll(containers);
    }
    if (annotations != null) {
      $result.annotations.addAll(annotations);
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    return $result;
  }
  ImageReviewSpec._() : super();
  factory ImageReviewSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageReviewSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageReviewSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.imagepolicy.v1alpha1'), createEmptyInstance: create)
    ..pc<ImageReviewContainerSpec>(1, _omitFieldNames ? '' : 'containers', $pb.PbFieldType.PM, subBuilder: ImageReviewContainerSpec.create)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'annotations', entryClassName: 'ImageReviewSpec.AnnotationsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.imagepolicy.v1alpha1'))
    ..aOS(3, _omitFieldNames ? '' : 'namespace')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageReviewSpec clone() => ImageReviewSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageReviewSpec copyWith(void Function(ImageReviewSpec) updates) => super.copyWith((message) => updates(message as ImageReviewSpec)) as ImageReviewSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageReviewSpec create() => ImageReviewSpec._();
  ImageReviewSpec createEmptyInstance() => create();
  static $pb.PbList<ImageReviewSpec> createRepeated() => $pb.PbList<ImageReviewSpec>();
  @$core.pragma('dart2js:noInline')
  static ImageReviewSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageReviewSpec>(create);
  static ImageReviewSpec? _defaultInstance;

  /// Containers is a list of a subset of the information in each container of the Pod being created.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<ImageReviewContainerSpec> get containers => $_getList(0);

  /// Annotations is a list of key-value pairs extracted from the Pod's annotations.
  /// It only includes keys which match the pattern `*.image-policy.k8s.io/*`.
  /// It is up to each webhook backend to determine how to interpret these annotations, if at all.
  /// +optional
  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.String> get annotations => $_getMap(1);

  /// Namespace is the namespace the pod is being created in.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get namespace => $_getSZ(2);
  @$pb.TagNumber(3)
  set namespace($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNamespace() => $_has(2);
  @$pb.TagNumber(3)
  void clearNamespace() => clearField(3);
}

/// ImageReviewStatus is the result of the review for the pod creation request.
class ImageReviewStatus extends $pb.GeneratedMessage {
  factory ImageReviewStatus({
    $core.bool? allowed,
    $core.String? reason,
    $core.Map<$core.String, $core.String>? auditAnnotations,
  }) {
    final $result = create();
    if (allowed != null) {
      $result.allowed = allowed;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (auditAnnotations != null) {
      $result.auditAnnotations.addAll(auditAnnotations);
    }
    return $result;
  }
  ImageReviewStatus._() : super();
  factory ImageReviewStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ImageReviewStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ImageReviewStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.imagepolicy.v1alpha1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allowed')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'auditAnnotations', protoName: 'auditAnnotations', entryClassName: 'ImageReviewStatus.AuditAnnotationsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.imagepolicy.v1alpha1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ImageReviewStatus clone() => ImageReviewStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ImageReviewStatus copyWith(void Function(ImageReviewStatus) updates) => super.copyWith((message) => updates(message as ImageReviewStatus)) as ImageReviewStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ImageReviewStatus create() => ImageReviewStatus._();
  ImageReviewStatus createEmptyInstance() => create();
  static $pb.PbList<ImageReviewStatus> createRepeated() => $pb.PbList<ImageReviewStatus>();
  @$core.pragma('dart2js:noInline')
  static ImageReviewStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ImageReviewStatus>(create);
  static ImageReviewStatus? _defaultInstance;

  /// Allowed indicates that all images were allowed to be run.
  @$pb.TagNumber(1)
  $core.bool get allowed => $_getBF(0);
  @$pb.TagNumber(1)
  set allowed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAllowed() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllowed() => clearField(1);

  /// Reason should be empty unless Allowed is false in which case it
  /// may contain a short description of what is wrong.  Kubernetes
  /// may truncate excessively long errors when displaying to the user.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);

  /// AuditAnnotations will be added to the attributes object of the
  /// admission controller request using 'AddAnnotation'.  The keys should
  /// be prefix-less (i.e., the admission controller will add an
  /// appropriate prefix).
  /// +optional
  @$pb.TagNumber(3)
  $core.Map<$core.String, $core.String> get auditAnnotations => $_getMap(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
