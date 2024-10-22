//
//  Generated code. Do not modify.
//  source: api/authentication/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../v1/generated.pb.dart' as $1;

/// SelfSubjectReview contains the user information that the kube-apiserver has about the user making this request.
/// When using impersonation, users will receive the user info of the user being impersonated.  If impersonation or
/// request header authentication is used, any extra keys will have their case ignored and returned as lowercase.
class SelfSubjectReview extends $pb.GeneratedMessage {
  factory SelfSubjectReview({
    $0.ObjectMeta? metadata,
    SelfSubjectReviewStatus? status,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  SelfSubjectReview._() : super();
  factory SelfSubjectReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfSubjectReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfSubjectReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<SelfSubjectReviewStatus>(2, _omitFieldNames ? '' : 'status', subBuilder: SelfSubjectReviewStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfSubjectReview clone() => SelfSubjectReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfSubjectReview copyWith(void Function(SelfSubjectReview) updates) => super.copyWith((message) => updates(message as SelfSubjectReview)) as SelfSubjectReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfSubjectReview create() => SelfSubjectReview._();
  SelfSubjectReview createEmptyInstance() => create();
  static $pb.PbList<SelfSubjectReview> createRepeated() => $pb.PbList<SelfSubjectReview>();
  @$core.pragma('dart2js:noInline')
  static SelfSubjectReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfSubjectReview>(create);
  static SelfSubjectReview? _defaultInstance;

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

  /// Status is filled in by the server with the user attributes.
  @$pb.TagNumber(2)
  SelfSubjectReviewStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(SelfSubjectReviewStatus v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
  @$pb.TagNumber(2)
  SelfSubjectReviewStatus ensureStatus() => $_ensure(1);
}

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatus extends $pb.GeneratedMessage {
  factory SelfSubjectReviewStatus({
    $1.UserInfo? userInfo,
  }) {
    final $result = create();
    if (userInfo != null) {
      $result.userInfo = userInfo;
    }
    return $result;
  }
  SelfSubjectReviewStatus._() : super();
  factory SelfSubjectReviewStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelfSubjectReviewStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfSubjectReviewStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1alpha1'), createEmptyInstance: create)
    ..aOM<$1.UserInfo>(1, _omitFieldNames ? '' : 'userInfo', protoName: 'userInfo', subBuilder: $1.UserInfo.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelfSubjectReviewStatus clone() => SelfSubjectReviewStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelfSubjectReviewStatus copyWith(void Function(SelfSubjectReviewStatus) updates) => super.copyWith((message) => updates(message as SelfSubjectReviewStatus)) as SelfSubjectReviewStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelfSubjectReviewStatus create() => SelfSubjectReviewStatus._();
  SelfSubjectReviewStatus createEmptyInstance() => create();
  static $pb.PbList<SelfSubjectReviewStatus> createRepeated() => $pb.PbList<SelfSubjectReviewStatus>();
  @$core.pragma('dart2js:noInline')
  static SelfSubjectReviewStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelfSubjectReviewStatus>(create);
  static SelfSubjectReviewStatus? _defaultInstance;

  /// User attributes of the user making this request.
  /// +optional
  @$pb.TagNumber(1)
  $1.UserInfo get userInfo => $_getN(0);
  @$pb.TagNumber(1)
  set userInfo($1.UserInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasUserInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearUserInfo() => clearField(1);
  @$pb.TagNumber(1)
  $1.UserInfo ensureUserInfo() => $_ensure(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
