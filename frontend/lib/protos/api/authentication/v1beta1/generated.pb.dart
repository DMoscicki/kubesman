//
//  Generated code. Do not modify.
//  source: api/authentication/v1beta1/generated.proto
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

/// ExtraValue masks the value so protobuf can generate
/// +protobuf.nullable=true
/// +protobuf.options.(gogoproto.goproto_stringer)=false
class ExtraValue extends $pb.GeneratedMessage {
  factory ExtraValue({
    $core.Iterable<$core.String>? items,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    return $result;
  }
  ExtraValue._() : super();
  factory ExtraValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExtraValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtraValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1beta1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'items')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExtraValue clone() => ExtraValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExtraValue copyWith(void Function(ExtraValue) updates) => super.copyWith((message) => updates(message as ExtraValue)) as ExtraValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExtraValue create() => ExtraValue._();
  ExtraValue createEmptyInstance() => create();
  static $pb.PbList<ExtraValue> createRepeated() => $pb.PbList<ExtraValue>();
  @$core.pragma('dart2js:noInline')
  static ExtraValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExtraValue>(create);
  static ExtraValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get items => $_getList(0);
}

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfSubjectReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1beta1'), createEmptyInstance: create)
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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelfSubjectReviewStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1beta1'), createEmptyInstance: create)
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

/// TokenReview attempts to authenticate a token to a known user.
/// Note: TokenReview requests may be cached by the webhook token authenticator
/// plugin in the kube-apiserver.
class TokenReview extends $pb.GeneratedMessage {
  factory TokenReview({
    $0.ObjectMeta? metadata,
    TokenReviewSpec? spec,
    TokenReviewStatus? status,
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
  TokenReview._() : super();
  factory TokenReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TokenReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1beta1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<TokenReviewSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: TokenReviewSpec.create)
    ..aOM<TokenReviewStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: TokenReviewStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenReview clone() => TokenReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenReview copyWith(void Function(TokenReview) updates) => super.copyWith((message) => updates(message as TokenReview)) as TokenReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenReview create() => TokenReview._();
  TokenReview createEmptyInstance() => create();
  static $pb.PbList<TokenReview> createRepeated() => $pb.PbList<TokenReview>();
  @$core.pragma('dart2js:noInline')
  static TokenReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenReview>(create);
  static TokenReview? _defaultInstance;

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

  /// Spec holds information about the request being evaluated
  @$pb.TagNumber(2)
  TokenReviewSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(TokenReviewSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  TokenReviewSpec ensureSpec() => $_ensure(1);

  /// Status is filled in by the server and indicates whether the token can be authenticated.
  /// +optional
  @$pb.TagNumber(3)
  TokenReviewStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(TokenReviewStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  TokenReviewStatus ensureStatus() => $_ensure(2);
}

/// TokenReviewSpec is a description of the token authentication request.
class TokenReviewSpec extends $pb.GeneratedMessage {
  factory TokenReviewSpec({
    $core.String? token,
    $core.Iterable<$core.String>? audiences,
  }) {
    final $result = create();
    if (token != null) {
      $result.token = token;
    }
    if (audiences != null) {
      $result.audiences.addAll(audiences);
    }
    return $result;
  }
  TokenReviewSpec._() : super();
  factory TokenReviewSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenReviewSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TokenReviewSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'token')
    ..pPS(2, _omitFieldNames ? '' : 'audiences')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenReviewSpec clone() => TokenReviewSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenReviewSpec copyWith(void Function(TokenReviewSpec) updates) => super.copyWith((message) => updates(message as TokenReviewSpec)) as TokenReviewSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenReviewSpec create() => TokenReviewSpec._();
  TokenReviewSpec createEmptyInstance() => create();
  static $pb.PbList<TokenReviewSpec> createRepeated() => $pb.PbList<TokenReviewSpec>();
  @$core.pragma('dart2js:noInline')
  static TokenReviewSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenReviewSpec>(create);
  static TokenReviewSpec? _defaultInstance;

  /// Token is the opaque bearer token.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get token => $_getSZ(0);
  @$pb.TagNumber(1)
  set token($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasToken() => $_has(0);
  @$pb.TagNumber(1)
  void clearToken() => clearField(1);

  /// Audiences is a list of the identifiers that the resource server presented
  /// with the token identifies as. Audience-aware token authenticators will
  /// verify that the token was intended for at least one of the audiences in
  /// this list. If no audiences are provided, the audience will default to the
  /// audience of the Kubernetes apiserver.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<$core.String> get audiences => $_getList(1);
}

/// TokenReviewStatus is the result of the token authentication request.
class TokenReviewStatus extends $pb.GeneratedMessage {
  factory TokenReviewStatus({
    $core.bool? authenticated,
    UserInfo? user,
    $core.String? error,
    $core.Iterable<$core.String>? audiences,
  }) {
    final $result = create();
    if (authenticated != null) {
      $result.authenticated = authenticated;
    }
    if (user != null) {
      $result.user = user;
    }
    if (error != null) {
      $result.error = error;
    }
    if (audiences != null) {
      $result.audiences.addAll(audiences);
    }
    return $result;
  }
  TokenReviewStatus._() : super();
  factory TokenReviewStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TokenReviewStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TokenReviewStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1beta1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'authenticated')
    ..aOM<UserInfo>(2, _omitFieldNames ? '' : 'user', subBuilder: UserInfo.create)
    ..aOS(3, _omitFieldNames ? '' : 'error')
    ..pPS(4, _omitFieldNames ? '' : 'audiences')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TokenReviewStatus clone() => TokenReviewStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TokenReviewStatus copyWith(void Function(TokenReviewStatus) updates) => super.copyWith((message) => updates(message as TokenReviewStatus)) as TokenReviewStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TokenReviewStatus create() => TokenReviewStatus._();
  TokenReviewStatus createEmptyInstance() => create();
  static $pb.PbList<TokenReviewStatus> createRepeated() => $pb.PbList<TokenReviewStatus>();
  @$core.pragma('dart2js:noInline')
  static TokenReviewStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TokenReviewStatus>(create);
  static TokenReviewStatus? _defaultInstance;

  /// Authenticated indicates that the token was associated with a known user.
  /// +optional
  @$pb.TagNumber(1)
  $core.bool get authenticated => $_getBF(0);
  @$pb.TagNumber(1)
  set authenticated($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAuthenticated() => $_has(0);
  @$pb.TagNumber(1)
  void clearAuthenticated() => clearField(1);

  /// User is the UserInfo associated with the provided token.
  /// +optional
  @$pb.TagNumber(2)
  UserInfo get user => $_getN(1);
  @$pb.TagNumber(2)
  set user(UserInfo v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUser() => $_has(1);
  @$pb.TagNumber(2)
  void clearUser() => clearField(2);
  @$pb.TagNumber(2)
  UserInfo ensureUser() => $_ensure(1);

  /// Error indicates that the token couldn't be checked
  /// +optional
  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);

  /// Audiences are audience identifiers chosen by the authenticator that are
  /// compatible with both the TokenReview and token. An identifier is any
  /// identifier in the intersection of the TokenReviewSpec audiences and the
  /// token's audiences. A client of the TokenReview API that sets the
  /// spec.audiences field should validate that a compatible audience identifier
  /// is returned in the status.audiences field to ensure that the TokenReview
  /// server is audience aware. If a TokenReview returns an empty
  /// status.audience field where status.authenticated is "true", the token is
  /// valid against the audience of the Kubernetes API server.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(4)
  $core.List<$core.String> get audiences => $_getList(3);
}

/// UserInfo holds the information about the user needed to implement the
/// user.Info interface.
class UserInfo extends $pb.GeneratedMessage {
  factory UserInfo({
    $core.String? username,
    $core.String? uid,
    $core.Iterable<$core.String>? groups,
    $core.Map<$core.String, ExtraValue>? extra,
  }) {
    final $result = create();
    if (username != null) {
      $result.username = username;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    if (extra != null) {
      $result.extra.addAll(extra);
    }
    return $result;
  }
  UserInfo._() : super();
  factory UserInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UserInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UserInfo', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.authentication.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'username')
    ..aOS(2, _omitFieldNames ? '' : 'uid')
    ..pPS(3, _omitFieldNames ? '' : 'groups')
    ..m<$core.String, ExtraValue>(4, _omitFieldNames ? '' : 'extra', entryClassName: 'UserInfo.ExtraEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ExtraValue.create, valueDefaultOrMaker: ExtraValue.getDefault, packageName: const $pb.PackageName('api.authentication.v1beta1'))
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UserInfo clone() => UserInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UserInfo copyWith(void Function(UserInfo) updates) => super.copyWith((message) => updates(message as UserInfo)) as UserInfo;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserInfo create() => UserInfo._();
  UserInfo createEmptyInstance() => create();
  static $pb.PbList<UserInfo> createRepeated() => $pb.PbList<UserInfo>();
  @$core.pragma('dart2js:noInline')
  static UserInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UserInfo>(create);
  static UserInfo? _defaultInstance;

  /// The name that uniquely identifies this user among all active users.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get username => $_getSZ(0);
  @$pb.TagNumber(1)
  set username($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUsername() => $_has(0);
  @$pb.TagNumber(1)
  void clearUsername() => clearField(1);

  /// A unique value that identifies this user across time. If this user is
  /// deleted and another user by the same name is added, they will have
  /// different UIDs.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get uid => $_getSZ(1);
  @$pb.TagNumber(2)
  set uid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUid() => $_has(1);
  @$pb.TagNumber(2)
  void clearUid() => clearField(2);

  /// The names of groups this user is a part of.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$core.String> get groups => $_getList(2);

  /// Any additional information provided by the authenticator.
  /// +optional
  @$pb.TagNumber(4)
  $core.Map<$core.String, ExtraValue> get extra => $_getMap(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
