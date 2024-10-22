//
//  Generated code. Do not modify.
//  source: api/certificates/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

///  CertificateSigningRequest objects provide a mechanism to obtain x509 certificates
///  by submitting a certificate signing request, and having it asynchronously approved and issued.
///
///  Kubelets use this API to obtain:
///   1. client certificates to authenticate to kube-apiserver (with the "kubernetes.io/kube-apiserver-client-kubelet" signerName).
///   2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the "kubernetes.io/kubelet-serving" signerName).
///
///  This API can be used to request client certificates to authenticate to kube-apiserver
///  (with the "kubernetes.io/kube-apiserver-client" signerName),
///  or to obtain certificates from custom non-Kubernetes signers.
class CertificateSigningRequest extends $pb.GeneratedMessage {
  factory CertificateSigningRequest({
    $0.ObjectMeta? metadata,
    CertificateSigningRequestSpec? spec,
    CertificateSigningRequestStatus? status,
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
  CertificateSigningRequest._() : super();
  factory CertificateSigningRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CertificateSigningRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CertificateSigningRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<CertificateSigningRequestSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: CertificateSigningRequestSpec.create)
    ..aOM<CertificateSigningRequestStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: CertificateSigningRequestStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CertificateSigningRequest clone() => CertificateSigningRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CertificateSigningRequest copyWith(void Function(CertificateSigningRequest) updates) => super.copyWith((message) => updates(message as CertificateSigningRequest)) as CertificateSigningRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequest create() => CertificateSigningRequest._();
  CertificateSigningRequest createEmptyInstance() => create();
  static $pb.PbList<CertificateSigningRequest> createRepeated() => $pb.PbList<CertificateSigningRequest>();
  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CertificateSigningRequest>(create);
  static CertificateSigningRequest? _defaultInstance;

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

  /// spec contains the certificate request, and is immutable after creation.
  /// Only the request, signerName, expirationSeconds, and usages fields can be set on creation.
  /// Other fields are derived by Kubernetes and cannot be modified by users.
  @$pb.TagNumber(2)
  CertificateSigningRequestSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(CertificateSigningRequestSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  CertificateSigningRequestSpec ensureSpec() => $_ensure(1);

  /// status contains information about whether the request is approved or denied,
  /// and the certificate issued by the signer, or the failure condition indicating signer failure.
  /// +optional
  @$pb.TagNumber(3)
  CertificateSigningRequestStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(CertificateSigningRequestStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  CertificateSigningRequestStatus ensureStatus() => $_ensure(2);
}

/// CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest object
class CertificateSigningRequestCondition extends $pb.GeneratedMessage {
  factory CertificateSigningRequestCondition({
    $core.String? type,
    $core.String? reason,
    $core.String? message,
    $0.Time? lastUpdateTime,
    $0.Time? lastTransitionTime,
    $core.String? status,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (message != null) {
      $result.message = message;
    }
    if (lastUpdateTime != null) {
      $result.lastUpdateTime = lastUpdateTime;
    }
    if (lastTransitionTime != null) {
      $result.lastTransitionTime = lastTransitionTime;
    }
    if (status != null) {
      $result.status = status;
    }
    return $result;
  }
  CertificateSigningRequestCondition._() : super();
  factory CertificateSigningRequestCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CertificateSigningRequestCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CertificateSigningRequestCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'reason')
    ..aOS(3, _omitFieldNames ? '' : 'message')
    ..aOM<$0.Time>(4, _omitFieldNames ? '' : 'lastUpdateTime', protoName: 'lastUpdateTime', subBuilder: $0.Time.create)
    ..aOM<$0.Time>(5, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $0.Time.create)
    ..aOS(6, _omitFieldNames ? '' : 'status')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CertificateSigningRequestCondition clone() => CertificateSigningRequestCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CertificateSigningRequestCondition copyWith(void Function(CertificateSigningRequestCondition) updates) => super.copyWith((message) => updates(message as CertificateSigningRequestCondition)) as CertificateSigningRequestCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequestCondition create() => CertificateSigningRequestCondition._();
  CertificateSigningRequestCondition createEmptyInstance() => create();
  static $pb.PbList<CertificateSigningRequestCondition> createRepeated() => $pb.PbList<CertificateSigningRequestCondition>();
  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequestCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CertificateSigningRequestCondition>(create);
  static CertificateSigningRequestCondition? _defaultInstance;

  ///  type of the condition. Known conditions are "Approved", "Denied", and "Failed".
  ///
  ///  An "Approved" condition is added via the /approval subresource,
  ///  indicating the request was approved and should be issued by the signer.
  ///
  ///  A "Denied" condition is added via the /approval subresource,
  ///  indicating the request was denied and should not be issued by the signer.
  ///
  ///  A "Failed" condition is added via the /status subresource,
  ///  indicating the signer failed to issue the certificate.
  ///
  ///  Approved and Denied conditions are mutually exclusive.
  ///  Approved, Denied, and Failed conditions cannot be removed once added.
  ///
  ///  Only one condition of a given type is allowed.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// reason indicates a brief reason for the request state
  /// +optional
  @$pb.TagNumber(2)
  $core.String get reason => $_getSZ(1);
  @$pb.TagNumber(2)
  set reason($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasReason() => $_has(1);
  @$pb.TagNumber(2)
  void clearReason() => clearField(2);

  /// message contains a human readable message with details about the request state
  /// +optional
  @$pb.TagNumber(3)
  $core.String get message => $_getSZ(2);
  @$pb.TagNumber(3)
  set message($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessage() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessage() => clearField(3);

  /// lastUpdateTime is the time of the last update to this condition
  /// +optional
  @$pb.TagNumber(4)
  $0.Time get lastUpdateTime => $_getN(3);
  @$pb.TagNumber(4)
  set lastUpdateTime($0.Time v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasLastUpdateTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearLastUpdateTime() => clearField(4);
  @$pb.TagNumber(4)
  $0.Time ensureLastUpdateTime() => $_ensure(3);

  /// lastTransitionTime is the time the condition last transitioned from one status to another.
  /// If unset, when a new condition type is added or an existing condition's status is changed,
  /// the server defaults this to the current time.
  /// +optional
  @$pb.TagNumber(5)
  $0.Time get lastTransitionTime => $_getN(4);
  @$pb.TagNumber(5)
  set lastTransitionTime($0.Time v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasLastTransitionTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearLastTransitionTime() => clearField(5);
  @$pb.TagNumber(5)
  $0.Time ensureLastTransitionTime() => $_ensure(4);

  /// status of the condition, one of True, False, Unknown.
  /// Approved, Denied, and Failed conditions may not be "False" or "Unknown".
  @$pb.TagNumber(6)
  $core.String get status => $_getSZ(5);
  @$pb.TagNumber(6)
  set status($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStatus() => $_has(5);
  @$pb.TagNumber(6)
  void clearStatus() => clearField(6);
}

/// CertificateSigningRequestList is a collection of CertificateSigningRequest objects
class CertificateSigningRequestList extends $pb.GeneratedMessage {
  factory CertificateSigningRequestList({
    $0.ListMeta? metadata,
    $core.Iterable<CertificateSigningRequest>? items,
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
  CertificateSigningRequestList._() : super();
  factory CertificateSigningRequestList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CertificateSigningRequestList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CertificateSigningRequestList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<CertificateSigningRequest>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CertificateSigningRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CertificateSigningRequestList clone() => CertificateSigningRequestList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CertificateSigningRequestList copyWith(void Function(CertificateSigningRequestList) updates) => super.copyWith((message) => updates(message as CertificateSigningRequestList)) as CertificateSigningRequestList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequestList create() => CertificateSigningRequestList._();
  CertificateSigningRequestList createEmptyInstance() => create();
  static $pb.PbList<CertificateSigningRequestList> createRepeated() => $pb.PbList<CertificateSigningRequestList>();
  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequestList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CertificateSigningRequestList>(create);
  static CertificateSigningRequestList? _defaultInstance;

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

  /// items is a collection of CertificateSigningRequest objects
  @$pb.TagNumber(2)
  $core.List<CertificateSigningRequest> get items => $_getList(1);
}

/// CertificateSigningRequestSpec contains the certificate request.
class CertificateSigningRequestSpec extends $pb.GeneratedMessage {
  factory CertificateSigningRequestSpec({
    $core.List<$core.int>? request,
    $core.String? username,
    $core.String? uid,
    $core.Iterable<$core.String>? groups,
    $core.Iterable<$core.String>? usages,
    $core.Map<$core.String, ExtraValue>? extra,
    $core.String? signerName,
    $core.int? expirationSeconds,
  }) {
    final $result = create();
    if (request != null) {
      $result.request = request;
    }
    if (username != null) {
      $result.username = username;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    if (groups != null) {
      $result.groups.addAll(groups);
    }
    if (usages != null) {
      $result.usages.addAll(usages);
    }
    if (extra != null) {
      $result.extra.addAll(extra);
    }
    if (signerName != null) {
      $result.signerName = signerName;
    }
    if (expirationSeconds != null) {
      $result.expirationSeconds = expirationSeconds;
    }
    return $result;
  }
  CertificateSigningRequestSpec._() : super();
  factory CertificateSigningRequestSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CertificateSigningRequestSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CertificateSigningRequestSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'request', $pb.PbFieldType.OY)
    ..aOS(2, _omitFieldNames ? '' : 'username')
    ..aOS(3, _omitFieldNames ? '' : 'uid')
    ..pPS(4, _omitFieldNames ? '' : 'groups')
    ..pPS(5, _omitFieldNames ? '' : 'usages')
    ..m<$core.String, ExtraValue>(6, _omitFieldNames ? '' : 'extra', entryClassName: 'CertificateSigningRequestSpec.ExtraEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: ExtraValue.create, valueDefaultOrMaker: ExtraValue.getDefault, packageName: const $pb.PackageName('api.certificates.v1'))
    ..aOS(7, _omitFieldNames ? '' : 'signerName', protoName: 'signerName')
    ..a<$core.int>(8, _omitFieldNames ? '' : 'expirationSeconds', $pb.PbFieldType.O3, protoName: 'expirationSeconds')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CertificateSigningRequestSpec clone() => CertificateSigningRequestSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CertificateSigningRequestSpec copyWith(void Function(CertificateSigningRequestSpec) updates) => super.copyWith((message) => updates(message as CertificateSigningRequestSpec)) as CertificateSigningRequestSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequestSpec create() => CertificateSigningRequestSpec._();
  CertificateSigningRequestSpec createEmptyInstance() => create();
  static $pb.PbList<CertificateSigningRequestSpec> createRepeated() => $pb.PbList<CertificateSigningRequestSpec>();
  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequestSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CertificateSigningRequestSpec>(create);
  static CertificateSigningRequestSpec? _defaultInstance;

  /// request contains an x509 certificate signing request encoded in a "CERTIFICATE REQUEST" PEM block.
  /// When serialized as JSON or YAML, the data is additionally base64-encoded.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.int> get request => $_getN(0);
  @$pb.TagNumber(1)
  set request($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);

  /// username contains the name of the user that created the CertificateSigningRequest.
  /// Populated by the API server on creation and immutable.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get username => $_getSZ(1);
  @$pb.TagNumber(2)
  set username($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUsername() => $_has(1);
  @$pb.TagNumber(2)
  void clearUsername() => clearField(2);

  /// uid contains the uid of the user that created the CertificateSigningRequest.
  /// Populated by the API server on creation and immutable.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get uid => $_getSZ(2);
  @$pb.TagNumber(3)
  set uid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUid() => $_has(2);
  @$pb.TagNumber(3)
  void clearUid() => clearField(3);

  /// groups contains group membership of the user that created the CertificateSigningRequest.
  /// Populated by the API server on creation and immutable.
  /// +listType=atomic
  /// +optional
  @$pb.TagNumber(4)
  $core.List<$core.String> get groups => $_getList(3);

  ///  usages specifies a set of key usages requested in the issued certificate.
  ///
  ///  Requests for TLS client certificates typically request: "digital signature", "key encipherment", "client auth".
  ///
  ///  Requests for TLS serving certificates typically request: "key encipherment", "digital signature", "server auth".
  ///
  ///  Valid values are:
  ///   "signing", "digital signature", "content commitment",
  ///   "key encipherment", "key agreement", "data encipherment",
  ///   "cert sign", "crl sign", "encipher only", "decipher only", "any",
  ///   "server auth", "client auth",
  ///   "code signing", "email protection", "s/mime",
  ///   "ipsec end system", "ipsec tunnel", "ipsec user",
  ///   "timestamping", "ocsp signing", "microsoft sgc", "netscape sgc"
  ///  +listType=atomic
  @$pb.TagNumber(5)
  $core.List<$core.String> get usages => $_getList(4);

  /// extra contains extra attributes of the user that created the CertificateSigningRequest.
  /// Populated by the API server on creation and immutable.
  /// +optional
  @$pb.TagNumber(6)
  $core.Map<$core.String, ExtraValue> get extra => $_getMap(5);

  ///  signerName indicates the requested signer, and is a qualified name.
  ///
  ///  List/watch requests for CertificateSigningRequests can filter on this field using a "spec.signerName=NAME" fieldSelector.
  ///
  ///  Well-known Kubernetes signers are:
  ///   1. "kubernetes.io/kube-apiserver-client": issues client certificates that can be used to authenticate to kube-apiserver.
  ///    Requests for this signer are never auto-approved by kube-controller-manager, can be issued by the "csrsigning" controller in kube-controller-manager.
  ///   2. "kubernetes.io/kube-apiserver-client-kubelet": issues client certificates that kubelets use to authenticate to kube-apiserver.
  ///    Requests for this signer can be auto-approved by the "csrapproving" controller in kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
  ///   3. "kubernetes.io/kubelet-serving" issues serving certificates that kubelets use to serve TLS endpoints, which kube-apiserver can connect to securely.
  ///    Requests for this signer are never auto-approved by kube-controller-manager, and can be issued by the "csrsigning" controller in kube-controller-manager.
  ///
  ///  More details are available at https://k8s.io/docs/reference/access-authn-authz/certificate-signing-requests/#kubernetes-signers
  ///
  ///  Custom signerNames can also be specified. The signer defines:
  ///   1. Trust distribution: how trust (CA bundles) are distributed.
  ///   2. Permitted subjects: and behavior when a disallowed subject is requested.
  ///   3. Required, permitted, or forbidden x509 extensions in the request (including whether subjectAltNames are allowed, which types, restrictions on allowed values) and behavior when a disallowed extension is requested.
  ///   4. Required, permitted, or forbidden key usages / extended key usages.
  ///   5. Expiration/certificate lifetime: whether it is fixed by the signer, configurable by the admin.
  ///   6. Whether or not requests for CA certificates are allowed.
  @$pb.TagNumber(7)
  $core.String get signerName => $_getSZ(6);
  @$pb.TagNumber(7)
  set signerName($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasSignerName() => $_has(6);
  @$pb.TagNumber(7)
  void clearSignerName() => clearField(7);

  ///  expirationSeconds is the requested duration of validity of the issued
  ///  certificate. The certificate signer may issue a certificate with a different
  ///  validity duration so a client must check the delta between the notBefore and
  ///  and notAfter fields in the issued certificate to determine the actual duration.
  ///
  ///  The v1.22+ in-tree implementations of the well-known Kubernetes signers will
  ///  honor this field as long as the requested duration is not greater than the
  ///  maximum duration they will honor per the --cluster-signing-duration CLI
  ///  flag to the Kubernetes controller manager.
  ///
  ///  Certificate signers may not honor this field for various reasons:
  ///
  ///    1. Old signer that is unaware of the field (such as the in-tree
  ///       implementations prior to v1.22)
  ///    2. Signer whose configured maximum is shorter than the requested duration
  ///    3. Signer whose configured minimum is longer than the requested duration
  ///
  ///  The minimum valid value for expirationSeconds is 600, i.e. 10 minutes.
  ///
  ///  +optional
  @$pb.TagNumber(8)
  $core.int get expirationSeconds => $_getIZ(7);
  @$pb.TagNumber(8)
  set expirationSeconds($core.int v) { $_setSignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasExpirationSeconds() => $_has(7);
  @$pb.TagNumber(8)
  void clearExpirationSeconds() => clearField(8);
}

/// CertificateSigningRequestStatus contains conditions used to indicate
/// approved/denied/failed status of the request, and the issued certificate.
class CertificateSigningRequestStatus extends $pb.GeneratedMessage {
  factory CertificateSigningRequestStatus({
    $core.Iterable<CertificateSigningRequestCondition>? conditions,
    $core.List<$core.int>? certificate,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    if (certificate != null) {
      $result.certificate = certificate;
    }
    return $result;
  }
  CertificateSigningRequestStatus._() : super();
  factory CertificateSigningRequestStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CertificateSigningRequestStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CertificateSigningRequestStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1'), createEmptyInstance: create)
    ..pc<CertificateSigningRequestCondition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: CertificateSigningRequestCondition.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'certificate', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CertificateSigningRequestStatus clone() => CertificateSigningRequestStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CertificateSigningRequestStatus copyWith(void Function(CertificateSigningRequestStatus) updates) => super.copyWith((message) => updates(message as CertificateSigningRequestStatus)) as CertificateSigningRequestStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequestStatus create() => CertificateSigningRequestStatus._();
  CertificateSigningRequestStatus createEmptyInstance() => create();
  static $pb.PbList<CertificateSigningRequestStatus> createRepeated() => $pb.PbList<CertificateSigningRequestStatus>();
  @$core.pragma('dart2js:noInline')
  static CertificateSigningRequestStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CertificateSigningRequestStatus>(create);
  static CertificateSigningRequestStatus? _defaultInstance;

  /// conditions applied to the request. Known conditions are "Approved", "Denied", and "Failed".
  /// +listType=map
  /// +listMapKey=type
  /// +optional
  @$pb.TagNumber(1)
  $core.List<CertificateSigningRequestCondition> get conditions => $_getList(0);

  ///  certificate is populated with an issued certificate by the signer after an Approved condition is present.
  ///  This field is set via the /status subresource. Once populated, this field is immutable.
  ///
  ///  If the certificate signing request is denied, a condition of type "Denied" is added and this field remains empty.
  ///  If the signer cannot issue the certificate, a condition of type "Failed" is added and this field remains empty.
  ///
  ///  Validation requirements:
  ///   1. certificate must contain one or more PEM blocks.
  ///   2. All PEM blocks must have the "CERTIFICATE" label, contain no headers, and the encoded data
  ///    must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.
  ///   3. Non-PEM content may appear before or after the "CERTIFICATE" PEM blocks and is unvalidated,
  ///    to allow for explanatory text as described in section 5.2 of RFC7468.
  ///
  ///  If more than one PEM block is present, and the definition of the requested spec.signerName
  ///  does not indicate otherwise, the first block is the issued certificate,
  ///  and subsequent blocks should be treated as intermediate certificates and presented in TLS handshakes.
  ///
  ///  The certificate is encoded in PEM format.
  ///
  ///  When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists of:
  ///
  ///      base64(
  ///      -----BEGIN CERTIFICATE-----
  ///      ...
  ///      -----END CERTIFICATE-----
  ///      )
  ///
  ///  +listType=atomic
  ///  +optional
  @$pb.TagNumber(2)
  $core.List<$core.int> get certificate => $_getN(1);
  @$pb.TagNumber(2)
  set certificate($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCertificate() => $_has(1);
  @$pb.TagNumber(2)
  void clearCertificate() => clearField(2);
}

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

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExtraValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1'), createEmptyInstance: create)
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


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
