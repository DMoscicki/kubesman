//
//  Generated code. Do not modify.
//  source: api/networking/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// IPAddress represents a single IP of a single IP Family. The object is designed to be used by APIs
/// that operate on IP addresses. The object is used by the Service core API for allocation of IP addresses.
/// An IP address can be represented in different formats, to guarantee the uniqueness of the IP,
/// the name of the object is the IP address in canonical format, four decimal digits separated
/// by dots suppressing leading zeros for IPv4 and the representation defined by RFC 5952 for IPv6.
/// Valid: 192.168.1.5 or 2001:db8::1 or 2001:db8:aaaa:bbbb:cccc:dddd:eeee:1
/// Invalid: 10.01.2.3 or 2001:db8:0:0:0::1
class IPAddress extends $pb.GeneratedMessage {
  factory IPAddress({
    $0.ObjectMeta? metadata,
    IPAddressSpec? spec,
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
  IPAddress._() : super();
  factory IPAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IPAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IPAddress', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<IPAddressSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: IPAddressSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IPAddress clone() => IPAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IPAddress copyWith(void Function(IPAddress) updates) => super.copyWith((message) => updates(message as IPAddress)) as IPAddress;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IPAddress create() => IPAddress._();
  IPAddress createEmptyInstance() => create();
  static $pb.PbList<IPAddress> createRepeated() => $pb.PbList<IPAddress>();
  @$core.pragma('dart2js:noInline')
  static IPAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IPAddress>(create);
  static IPAddress? _defaultInstance;

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

  /// spec is the desired state of the IPAddress.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  IPAddressSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(IPAddressSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  IPAddressSpec ensureSpec() => $_ensure(1);
}

/// IPAddressList contains a list of IPAddress.
class IPAddressList extends $pb.GeneratedMessage {
  factory IPAddressList({
    $0.ListMeta? metadata,
    $core.Iterable<IPAddress>? items,
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
  IPAddressList._() : super();
  factory IPAddressList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IPAddressList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IPAddressList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<IPAddress>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: IPAddress.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IPAddressList clone() => IPAddressList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IPAddressList copyWith(void Function(IPAddressList) updates) => super.copyWith((message) => updates(message as IPAddressList)) as IPAddressList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IPAddressList create() => IPAddressList._();
  IPAddressList createEmptyInstance() => create();
  static $pb.PbList<IPAddressList> createRepeated() => $pb.PbList<IPAddressList>();
  @$core.pragma('dart2js:noInline')
  static IPAddressList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IPAddressList>(create);
  static IPAddressList? _defaultInstance;

  /// Standard object's metadata.
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

  /// items is the list of IPAddresses.
  @$pb.TagNumber(2)
  $core.List<IPAddress> get items => $_getList(1);
}

/// IPAddressSpec describe the attributes in an IP Address.
class IPAddressSpec extends $pb.GeneratedMessage {
  factory IPAddressSpec({
    ParentReference? parentRef,
  }) {
    final $result = create();
    if (parentRef != null) {
      $result.parentRef = parentRef;
    }
    return $result;
  }
  IPAddressSpec._() : super();
  factory IPAddressSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IPAddressSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IPAddressSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1alpha1'), createEmptyInstance: create)
    ..aOM<ParentReference>(1, _omitFieldNames ? '' : 'parentRef', protoName: 'parentRef', subBuilder: ParentReference.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IPAddressSpec clone() => IPAddressSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IPAddressSpec copyWith(void Function(IPAddressSpec) updates) => super.copyWith((message) => updates(message as IPAddressSpec)) as IPAddressSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IPAddressSpec create() => IPAddressSpec._();
  IPAddressSpec createEmptyInstance() => create();
  static $pb.PbList<IPAddressSpec> createRepeated() => $pb.PbList<IPAddressSpec>();
  @$core.pragma('dart2js:noInline')
  static IPAddressSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IPAddressSpec>(create);
  static IPAddressSpec? _defaultInstance;

  /// ParentRef references the resource that an IPAddress is attached to.
  /// An IPAddress must reference a parent object.
  /// +required
  @$pb.TagNumber(1)
  ParentReference get parentRef => $_getN(0);
  @$pb.TagNumber(1)
  set parentRef(ParentReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasParentRef() => $_has(0);
  @$pb.TagNumber(1)
  void clearParentRef() => clearField(1);
  @$pb.TagNumber(1)
  ParentReference ensureParentRef() => $_ensure(0);
}

/// ParentReference describes a reference to a parent object.
class ParentReference extends $pb.GeneratedMessage {
  factory ParentReference({
    $core.String? group,
    $core.String? resource,
    $core.String? namespace,
    $core.String? name,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ParentReference._() : super();
  factory ParentReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ParentReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ParentReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1alpha1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOS(2, _omitFieldNames ? '' : 'resource')
    ..aOS(3, _omitFieldNames ? '' : 'namespace')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ParentReference clone() => ParentReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ParentReference copyWith(void Function(ParentReference) updates) => super.copyWith((message) => updates(message as ParentReference)) as ParentReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ParentReference create() => ParentReference._();
  ParentReference createEmptyInstance() => create();
  static $pb.PbList<ParentReference> createRepeated() => $pb.PbList<ParentReference>();
  @$core.pragma('dart2js:noInline')
  static ParentReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ParentReference>(create);
  static ParentReference? _defaultInstance;

  /// Group is the group of the object being referenced.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  /// Resource is the resource of the object being referenced.
  /// +required
  @$pb.TagNumber(2)
  $core.String get resource => $_getSZ(1);
  @$pb.TagNumber(2)
  set resource($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasResource() => $_has(1);
  @$pb.TagNumber(2)
  void clearResource() => clearField(2);

  /// Namespace is the namespace of the object being referenced.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get namespace => $_getSZ(2);
  @$pb.TagNumber(3)
  set namespace($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNamespace() => $_has(2);
  @$pb.TagNumber(3)
  void clearNamespace() => clearField(3);

  /// Name is the name of the object being referenced.
  /// +required
  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(3);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(3);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);
}

/// ServiceCIDR defines a range of IP addresses using CIDR format (e.g. 192.168.0.0/24 or 2001:db2::/64).
/// This range is used to allocate ClusterIPs to Service objects.
class ServiceCIDR extends $pb.GeneratedMessage {
  factory ServiceCIDR({
    $0.ObjectMeta? metadata,
    ServiceCIDRSpec? spec,
    ServiceCIDRStatus? status,
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
  ServiceCIDR._() : super();
  factory ServiceCIDR.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceCIDR.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceCIDR', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..aOM<ServiceCIDRSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ServiceCIDRSpec.create)
    ..aOM<ServiceCIDRStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: ServiceCIDRStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceCIDR clone() => ServiceCIDR()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceCIDR copyWith(void Function(ServiceCIDR) updates) => super.copyWith((message) => updates(message as ServiceCIDR)) as ServiceCIDR;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceCIDR create() => ServiceCIDR._();
  ServiceCIDR createEmptyInstance() => create();
  static $pb.PbList<ServiceCIDR> createRepeated() => $pb.PbList<ServiceCIDR>();
  @$core.pragma('dart2js:noInline')
  static ServiceCIDR getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceCIDR>(create);
  static ServiceCIDR? _defaultInstance;

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

  /// spec is the desired state of the ServiceCIDR.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(2)
  ServiceCIDRSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ServiceCIDRSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ServiceCIDRSpec ensureSpec() => $_ensure(1);

  /// status represents the current state of the ServiceCIDR.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
  /// +optional
  @$pb.TagNumber(3)
  ServiceCIDRStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(ServiceCIDRStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  ServiceCIDRStatus ensureStatus() => $_ensure(2);
}

/// ServiceCIDRList contains a list of ServiceCIDR objects.
class ServiceCIDRList extends $pb.GeneratedMessage {
  factory ServiceCIDRList({
    $0.ListMeta? metadata,
    $core.Iterable<ServiceCIDR>? items,
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
  ServiceCIDRList._() : super();
  factory ServiceCIDRList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceCIDRList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceCIDRList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<ServiceCIDR>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ServiceCIDR.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceCIDRList clone() => ServiceCIDRList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceCIDRList copyWith(void Function(ServiceCIDRList) updates) => super.copyWith((message) => updates(message as ServiceCIDRList)) as ServiceCIDRList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceCIDRList create() => ServiceCIDRList._();
  ServiceCIDRList createEmptyInstance() => create();
  static $pb.PbList<ServiceCIDRList> createRepeated() => $pb.PbList<ServiceCIDRList>();
  @$core.pragma('dart2js:noInline')
  static ServiceCIDRList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceCIDRList>(create);
  static ServiceCIDRList? _defaultInstance;

  /// Standard object's metadata.
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

  /// items is the list of ServiceCIDRs.
  @$pb.TagNumber(2)
  $core.List<ServiceCIDR> get items => $_getList(1);
}

/// ServiceCIDRSpec define the CIDRs the user wants to use for allocating ClusterIPs for Services.
class ServiceCIDRSpec extends $pb.GeneratedMessage {
  factory ServiceCIDRSpec({
    $core.Iterable<$core.String>? cidrs,
  }) {
    final $result = create();
    if (cidrs != null) {
      $result.cidrs.addAll(cidrs);
    }
    return $result;
  }
  ServiceCIDRSpec._() : super();
  factory ServiceCIDRSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceCIDRSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceCIDRSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1alpha1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'cidrs')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceCIDRSpec clone() => ServiceCIDRSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceCIDRSpec copyWith(void Function(ServiceCIDRSpec) updates) => super.copyWith((message) => updates(message as ServiceCIDRSpec)) as ServiceCIDRSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceCIDRSpec create() => ServiceCIDRSpec._();
  ServiceCIDRSpec createEmptyInstance() => create();
  static $pb.PbList<ServiceCIDRSpec> createRepeated() => $pb.PbList<ServiceCIDRSpec>();
  @$core.pragma('dart2js:noInline')
  static ServiceCIDRSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceCIDRSpec>(create);
  static ServiceCIDRSpec? _defaultInstance;

  /// CIDRs defines the IP blocks in CIDR notation (e.g. "192.168.0.0/24" or "2001:db8::/64")
  /// from which to assign service cluster IPs. Max of two CIDRs is allowed, one of each IP family.
  /// This field is immutable.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get cidrs => $_getList(0);
}

/// ServiceCIDRStatus describes the current state of the ServiceCIDR.
class ServiceCIDRStatus extends $pb.GeneratedMessage {
  factory ServiceCIDRStatus({
    $core.Iterable<$0.Condition>? conditions,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    return $result;
  }
  ServiceCIDRStatus._() : super();
  factory ServiceCIDRStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceCIDRStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceCIDRStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.networking.v1alpha1'), createEmptyInstance: create)
    ..pc<$0.Condition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: $0.Condition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceCIDRStatus clone() => ServiceCIDRStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceCIDRStatus copyWith(void Function(ServiceCIDRStatus) updates) => super.copyWith((message) => updates(message as ServiceCIDRStatus)) as ServiceCIDRStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceCIDRStatus create() => ServiceCIDRStatus._();
  ServiceCIDRStatus createEmptyInstance() => create();
  static $pb.PbList<ServiceCIDRStatus> createRepeated() => $pb.PbList<ServiceCIDRStatus>();
  @$core.pragma('dart2js:noInline')
  static ServiceCIDRStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceCIDRStatus>(create);
  static ServiceCIDRStatus? _defaultInstance;

  /// conditions holds an array of metav1.Condition that describe the state of the ServiceCIDR.
  /// Current service state
  /// +optional
  /// +patchMergeKey=type
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(1)
  $core.List<$0.Condition> get conditions => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
