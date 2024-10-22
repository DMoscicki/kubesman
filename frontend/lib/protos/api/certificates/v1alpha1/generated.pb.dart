//
//  Generated code. Do not modify.
//  source: api/certificates/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

///  ClusterTrustBundle is a cluster-scoped container for X.509 trust anchors
///  (root certificates).
///
///  ClusterTrustBundle objects are considered to be readable by any authenticated
///  user in the cluster, because they can be mounted by pods using the
///  `clusterTrustBundle` projection.  All service accounts have read access to
///  ClusterTrustBundles by default.  Users who only have namespace-level access
///  to a cluster can read ClusterTrustBundles by impersonating a serviceaccount
///  that they have access to.
///
///  It can be optionally associated with a particular assigner, in which case it
///  contains one valid set of trust anchors for that signer. Signers may have
///  multiple associated ClusterTrustBundles; each is an independent set of trust
///  anchors for that signer. Admission control is used to enforce that only users
///  with permissions on the signer can create or modify the corresponding bundle.
class ClusterTrustBundle extends $pb.GeneratedMessage {
  factory ClusterTrustBundle({
    $0.ObjectMeta? metadata,
    ClusterTrustBundleSpec? spec,
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
  ClusterTrustBundle._() : super();
  factory ClusterTrustBundle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClusterTrustBundle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClusterTrustBundle', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<ClusterTrustBundleSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ClusterTrustBundleSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClusterTrustBundle clone() => ClusterTrustBundle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClusterTrustBundle copyWith(void Function(ClusterTrustBundle) updates) => super.copyWith((message) => updates(message as ClusterTrustBundle)) as ClusterTrustBundle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterTrustBundle create() => ClusterTrustBundle._();
  ClusterTrustBundle createEmptyInstance() => create();
  static $pb.PbList<ClusterTrustBundle> createRepeated() => $pb.PbList<ClusterTrustBundle>();
  @$core.pragma('dart2js:noInline')
  static ClusterTrustBundle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClusterTrustBundle>(create);
  static ClusterTrustBundle? _defaultInstance;

  /// metadata contains the object metadata.
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

  /// spec contains the signer (if any) and trust anchors.
  @$pb.TagNumber(2)
  ClusterTrustBundleSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ClusterTrustBundleSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ClusterTrustBundleSpec ensureSpec() => $_ensure(1);
}

/// ClusterTrustBundleList is a collection of ClusterTrustBundle objects
class ClusterTrustBundleList extends $pb.GeneratedMessage {
  factory ClusterTrustBundleList({
    $0.ListMeta? metadata,
    $core.Iterable<ClusterTrustBundle>? items,
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
  ClusterTrustBundleList._() : super();
  factory ClusterTrustBundleList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClusterTrustBundleList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClusterTrustBundleList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<ClusterTrustBundle>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ClusterTrustBundle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClusterTrustBundleList clone() => ClusterTrustBundleList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClusterTrustBundleList copyWith(void Function(ClusterTrustBundleList) updates) => super.copyWith((message) => updates(message as ClusterTrustBundleList)) as ClusterTrustBundleList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterTrustBundleList create() => ClusterTrustBundleList._();
  ClusterTrustBundleList createEmptyInstance() => create();
  static $pb.PbList<ClusterTrustBundleList> createRepeated() => $pb.PbList<ClusterTrustBundleList>();
  @$core.pragma('dart2js:noInline')
  static ClusterTrustBundleList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClusterTrustBundleList>(create);
  static ClusterTrustBundleList? _defaultInstance;

  ///  metadata contains the list metadata.
  ///
  ///  +optional
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

  /// items is a collection of ClusterTrustBundle objects
  @$pb.TagNumber(2)
  $core.List<ClusterTrustBundle> get items => $_getList(1);
}

/// ClusterTrustBundleSpec contains the signer and trust anchors.
class ClusterTrustBundleSpec extends $pb.GeneratedMessage {
  factory ClusterTrustBundleSpec({
    $core.String? signerName,
    $core.String? trustBundle,
  }) {
    final $result = create();
    if (signerName != null) {
      $result.signerName = signerName;
    }
    if (trustBundle != null) {
      $result.trustBundle = trustBundle;
    }
    return $result;
  }
  ClusterTrustBundleSpec._() : super();
  factory ClusterTrustBundleSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClusterTrustBundleSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ClusterTrustBundleSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.certificates.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'signerName', protoName: 'signerName')
    ..aOS(2, _omitFieldNames ? '' : 'trustBundle', protoName: 'trustBundle')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClusterTrustBundleSpec clone() => ClusterTrustBundleSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClusterTrustBundleSpec copyWith(void Function(ClusterTrustBundleSpec) updates) => super.copyWith((message) => updates(message as ClusterTrustBundleSpec)) as ClusterTrustBundleSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ClusterTrustBundleSpec create() => ClusterTrustBundleSpec._();
  ClusterTrustBundleSpec createEmptyInstance() => create();
  static $pb.PbList<ClusterTrustBundleSpec> createRepeated() => $pb.PbList<ClusterTrustBundleSpec>();
  @$core.pragma('dart2js:noInline')
  static ClusterTrustBundleSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClusterTrustBundleSpec>(create);
  static ClusterTrustBundleSpec? _defaultInstance;

  ///  signerName indicates the associated signer, if any.
  ///
  ///  In order to create or update a ClusterTrustBundle that sets signerName,
  ///  you must have the following cluster-scoped permission:
  ///  group=certificates.k8s.io resource=signers resourceName=<the signer name>
  ///  verb=attest.
  ///
  ///  If signerName is not empty, then the ClusterTrustBundle object must be
  ///  named with the signer name as a prefix (translating slashes to colons).
  ///  For example, for the signer name `example.com/foo`, valid
  ///  ClusterTrustBundle object names include `example.com:foo:abc` and
  ///  `example.com:foo:v1`.
  ///
  ///  If signerName is empty, then the ClusterTrustBundle object's name must
  ///  not have such a prefix.
  ///
  ///  List/watch requests for ClusterTrustBundles can filter on this field
  ///  using a `spec.signerName=NAME` field selector.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  $core.String get signerName => $_getSZ(0);
  @$pb.TagNumber(1)
  set signerName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignerName() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignerName() => clearField(1);

  ///  trustBundle contains the individual X.509 trust anchors for this
  ///  bundle, as PEM bundle of PEM-wrapped, DER-formatted X.509 certificates.
  ///
  ///  The data must consist only of PEM certificate blocks that parse as valid
  ///  X.509 certificates.  Each certificate must include a basic constraints
  ///  extension with the CA bit set.  The API server will reject objects that
  ///  contain duplicate certificates, or that use PEM block headers.
  ///
  ///  Users of ClusterTrustBundles, including Kubelet, are free to reorder and
  ///  deduplicate certificate blocks in this file according to their own logic,
  ///  as well as to drop PEM block headers and inter-block data.
  @$pb.TagNumber(2)
  $core.String get trustBundle => $_getSZ(1);
  @$pb.TagNumber(2)
  set trustBundle($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTrustBundle() => $_has(1);
  @$pb.TagNumber(2)
  void clearTrustBundle() => clearField(2);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
