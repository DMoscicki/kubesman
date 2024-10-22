//
//  Generated code. Do not modify.
//  source: api/resource/v1alpha2/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/api/resource/generated.pb.dart' as $2;
import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $3;
import '../../../apimachinery/pkg/runtime/generated.pb.dart' as $1;
import '../../core/v1/generated.pb.dart' as $0;

/// AllocationResult contains attributes of an allocated resource.
class AllocationResult extends $pb.GeneratedMessage {
  factory AllocationResult({
    $core.Iterable<ResourceHandle>? resourceHandles,
    $0.NodeSelector? availableOnNodes,
    $core.bool? shareable,
  }) {
    final $result = create();
    if (resourceHandles != null) {
      $result.resourceHandles.addAll(resourceHandles);
    }
    if (availableOnNodes != null) {
      $result.availableOnNodes = availableOnNodes;
    }
    if (shareable != null) {
      $result.shareable = shareable;
    }
    return $result;
  }
  AllocationResult._() : super();
  factory AllocationResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllocationResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllocationResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..pc<ResourceHandle>(1, _omitFieldNames ? '' : 'resourceHandles', $pb.PbFieldType.PM, protoName: 'resourceHandles', subBuilder: ResourceHandle.create)
    ..aOM<$0.NodeSelector>(2, _omitFieldNames ? '' : 'availableOnNodes', protoName: 'availableOnNodes', subBuilder: $0.NodeSelector.create)
    ..aOB(3, _omitFieldNames ? '' : 'shareable')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllocationResult clone() => AllocationResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllocationResult copyWith(void Function(AllocationResult) updates) => super.copyWith((message) => updates(message as AllocationResult)) as AllocationResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllocationResult create() => AllocationResult._();
  AllocationResult createEmptyInstance() => create();
  static $pb.PbList<AllocationResult> createRepeated() => $pb.PbList<AllocationResult>();
  @$core.pragma('dart2js:noInline')
  static AllocationResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllocationResult>(create);
  static AllocationResult? _defaultInstance;

  ///  ResourceHandles contain the state associated with an allocation that
  ///  should be maintained throughout the lifetime of a claim. Each
  ///  ResourceHandle contains data that should be passed to a specific kubelet
  ///  plugin once it lands on a node. This data is returned by the driver
  ///  after a successful allocation and is opaque to Kubernetes. Driver
  ///  documentation may explain to users how to interpret this data if needed.
  ///
  ///  Setting this field is optional. It has a maximum size of 32 entries.
  ///  If null (or empty), it is assumed this allocation will be processed by a
  ///  single kubelet plugin with no ResourceHandle data attached. The name of
  ///  the kubelet plugin invoked will match the DriverName set in the
  ///  ResourceClaimStatus this AllocationResult is embedded in.
  ///
  ///  +listType=atomic
  ///  +optional
  @$pb.TagNumber(1)
  $core.List<ResourceHandle> get resourceHandles => $_getList(0);

  ///  This field will get set by the resource driver after it has allocated
  ///  the resource to inform the scheduler where it can schedule Pods using
  ///  the ResourceClaim.
  ///
  ///  Setting this field is optional. If null, the resource is available
  ///  everywhere.
  ///  +optional
  @$pb.TagNumber(2)
  $0.NodeSelector get availableOnNodes => $_getN(1);
  @$pb.TagNumber(2)
  set availableOnNodes($0.NodeSelector v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvailableOnNodes() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvailableOnNodes() => clearField(2);
  @$pb.TagNumber(2)
  $0.NodeSelector ensureAvailableOnNodes() => $_ensure(1);

  /// Shareable determines whether the resource supports more
  /// than one consumer at a time.
  /// +optional
  @$pb.TagNumber(3)
  $core.bool get shareable => $_getBF(2);
  @$pb.TagNumber(3)
  set shareable($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShareable() => $_has(2);
  @$pb.TagNumber(3)
  void clearShareable() => clearField(3);
}

/// AllocationResultModel must have one and only one field set.
class AllocationResultModel extends $pb.GeneratedMessage {
  factory AllocationResultModel({
    NamedResourcesAllocationResult? namedResources,
  }) {
    final $result = create();
    if (namedResources != null) {
      $result.namedResources = namedResources;
    }
    return $result;
  }
  AllocationResultModel._() : super();
  factory AllocationResultModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AllocationResultModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AllocationResultModel', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<NamedResourcesAllocationResult>(1, _omitFieldNames ? '' : 'namedResources', protoName: 'namedResources', subBuilder: NamedResourcesAllocationResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AllocationResultModel clone() => AllocationResultModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AllocationResultModel copyWith(void Function(AllocationResultModel) updates) => super.copyWith((message) => updates(message as AllocationResultModel)) as AllocationResultModel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AllocationResultModel create() => AllocationResultModel._();
  AllocationResultModel createEmptyInstance() => create();
  static $pb.PbList<AllocationResultModel> createRepeated() => $pb.PbList<AllocationResultModel>();
  @$core.pragma('dart2js:noInline')
  static AllocationResultModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AllocationResultModel>(create);
  static AllocationResultModel? _defaultInstance;

  ///  NamedResources describes the allocation result when using the named resources model.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  NamedResourcesAllocationResult get namedResources => $_getN(0);
  @$pb.TagNumber(1)
  set namedResources(NamedResourcesAllocationResult v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamedResources() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamedResources() => clearField(1);
  @$pb.TagNumber(1)
  NamedResourcesAllocationResult ensureNamedResources() => $_ensure(0);
}

/// DriverAllocationResult contains vendor parameters and the allocation result for
/// one request.
class DriverAllocationResult extends $pb.GeneratedMessage {
  factory DriverAllocationResult({
    $1.RawExtension? vendorRequestParameters,
    AllocationResultModel? allocationResultModel,
  }) {
    final $result = create();
    if (vendorRequestParameters != null) {
      $result.vendorRequestParameters = vendorRequestParameters;
    }
    if (allocationResultModel != null) {
      $result.allocationResultModel = allocationResultModel;
    }
    return $result;
  }
  DriverAllocationResult._() : super();
  factory DriverAllocationResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DriverAllocationResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DriverAllocationResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$1.RawExtension>(1, _omitFieldNames ? '' : 'vendorRequestParameters', protoName: 'vendorRequestParameters', subBuilder: $1.RawExtension.create)
    ..aOM<AllocationResultModel>(2, _omitFieldNames ? '' : 'allocationResultModel', protoName: 'allocationResultModel', subBuilder: AllocationResultModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DriverAllocationResult clone() => DriverAllocationResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DriverAllocationResult copyWith(void Function(DriverAllocationResult) updates) => super.copyWith((message) => updates(message as DriverAllocationResult)) as DriverAllocationResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DriverAllocationResult create() => DriverAllocationResult._();
  DriverAllocationResult createEmptyInstance() => create();
  static $pb.PbList<DriverAllocationResult> createRepeated() => $pb.PbList<DriverAllocationResult>();
  @$core.pragma('dart2js:noInline')
  static DriverAllocationResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DriverAllocationResult>(create);
  static DriverAllocationResult? _defaultInstance;

  ///  VendorRequestParameters are the per-request configuration parameters
  ///  from the time that the claim was allocated.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  $1.RawExtension get vendorRequestParameters => $_getN(0);
  @$pb.TagNumber(1)
  set vendorRequestParameters($1.RawExtension v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVendorRequestParameters() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorRequestParameters() => clearField(1);
  @$pb.TagNumber(1)
  $1.RawExtension ensureVendorRequestParameters() => $_ensure(0);

  @$pb.TagNumber(2)
  AllocationResultModel get allocationResultModel => $_getN(1);
  @$pb.TagNumber(2)
  set allocationResultModel(AllocationResultModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAllocationResultModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllocationResultModel() => clearField(2);
  @$pb.TagNumber(2)
  AllocationResultModel ensureAllocationResultModel() => $_ensure(1);
}

/// DriverRequests describes all resources that are needed from one particular driver.
class DriverRequests extends $pb.GeneratedMessage {
  factory DriverRequests({
    $core.String? driverName,
    $1.RawExtension? vendorParameters,
    $core.Iterable<ResourceRequest>? requests,
  }) {
    final $result = create();
    if (driverName != null) {
      $result.driverName = driverName;
    }
    if (vendorParameters != null) {
      $result.vendorParameters = vendorParameters;
    }
    if (requests != null) {
      $result.requests.addAll(requests);
    }
    return $result;
  }
  DriverRequests._() : super();
  factory DriverRequests.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DriverRequests.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'DriverRequests', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'driverName', protoName: 'driverName')
    ..aOM<$1.RawExtension>(2, _omitFieldNames ? '' : 'vendorParameters', protoName: 'vendorParameters', subBuilder: $1.RawExtension.create)
    ..pc<ResourceRequest>(3, _omitFieldNames ? '' : 'requests', $pb.PbFieldType.PM, subBuilder: ResourceRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DriverRequests clone() => DriverRequests()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DriverRequests copyWith(void Function(DriverRequests) updates) => super.copyWith((message) => updates(message as DriverRequests)) as DriverRequests;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static DriverRequests create() => DriverRequests._();
  DriverRequests createEmptyInstance() => create();
  static $pb.PbList<DriverRequests> createRepeated() => $pb.PbList<DriverRequests>();
  @$core.pragma('dart2js:noInline')
  static DriverRequests getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DriverRequests>(create);
  static DriverRequests? _defaultInstance;

  /// DriverName is the name used by the DRA driver kubelet plugin.
  @$pb.TagNumber(1)
  $core.String get driverName => $_getSZ(0);
  @$pb.TagNumber(1)
  set driverName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDriverName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDriverName() => clearField(1);

  ///  VendorParameters are arbitrary setup parameters for all requests of the
  ///  claim. They are ignored while allocating the claim.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $1.RawExtension get vendorParameters => $_getN(1);
  @$pb.TagNumber(2)
  set vendorParameters($1.RawExtension v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVendorParameters() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorParameters() => clearField(2);
  @$pb.TagNumber(2)
  $1.RawExtension ensureVendorParameters() => $_ensure(1);

  /// Requests describes all resources that are needed from the driver.
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<ResourceRequest> get requests => $_getList(2);
}

/// NamedResourcesAllocationResult is used in AllocationResultModel.
class NamedResourcesAllocationResult extends $pb.GeneratedMessage {
  factory NamedResourcesAllocationResult({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  NamedResourcesAllocationResult._() : super();
  factory NamedResourcesAllocationResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesAllocationResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesAllocationResult', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesAllocationResult clone() => NamedResourcesAllocationResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesAllocationResult copyWith(void Function(NamedResourcesAllocationResult) updates) => super.copyWith((message) => updates(message as NamedResourcesAllocationResult)) as NamedResourcesAllocationResult;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesAllocationResult create() => NamedResourcesAllocationResult._();
  NamedResourcesAllocationResult createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesAllocationResult> createRepeated() => $pb.PbList<NamedResourcesAllocationResult>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesAllocationResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesAllocationResult>(create);
  static NamedResourcesAllocationResult? _defaultInstance;

  /// Name is the name of the selected resource instance.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}

/// NamedResourcesAttribute is a combination of an attribute name and its value.
class NamedResourcesAttribute extends $pb.GeneratedMessage {
  factory NamedResourcesAttribute({
    $core.String? name,
    NamedResourcesAttributeValue? attributeValue,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (attributeValue != null) {
      $result.attributeValue = attributeValue;
    }
    return $result;
  }
  NamedResourcesAttribute._() : super();
  factory NamedResourcesAttribute.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesAttribute.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesAttribute', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<NamedResourcesAttributeValue>(2, _omitFieldNames ? '' : 'attributeValue', protoName: 'attributeValue', subBuilder: NamedResourcesAttributeValue.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesAttribute clone() => NamedResourcesAttribute()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesAttribute copyWith(void Function(NamedResourcesAttribute) updates) => super.copyWith((message) => updates(message as NamedResourcesAttribute)) as NamedResourcesAttribute;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesAttribute create() => NamedResourcesAttribute._();
  NamedResourcesAttribute createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesAttribute> createRepeated() => $pb.PbList<NamedResourcesAttribute>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesAttribute getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesAttribute>(create);
  static NamedResourcesAttribute? _defaultInstance;

  /// Name is unique identifier among all resource instances managed by
  /// the driver on the node. It must be a DNS subdomain.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  NamedResourcesAttributeValue get attributeValue => $_getN(1);
  @$pb.TagNumber(2)
  set attributeValue(NamedResourcesAttributeValue v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAttributeValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearAttributeValue() => clearField(2);
  @$pb.TagNumber(2)
  NamedResourcesAttributeValue ensureAttributeValue() => $_ensure(1);
}

/// NamedResourcesAttributeValue must have one and only one field set.
class NamedResourcesAttributeValue extends $pb.GeneratedMessage {
  factory NamedResourcesAttributeValue({
    $core.bool? bool_2,
    $core.String? string,
    $2.Quantity? quantity,
    $fixnum.Int64? int_7,
    NamedResourcesIntSlice? intSlice,
    NamedResourcesStringSlice? stringSlice,
    $core.String? version,
  }) {
    final $result = create();
    if (bool_2 != null) {
      $result.bool_2 = bool_2;
    }
    if (string != null) {
      $result.string = string;
    }
    if (quantity != null) {
      $result.quantity = quantity;
    }
    if (int_7 != null) {
      $result.int_7 = int_7;
    }
    if (intSlice != null) {
      $result.intSlice = intSlice;
    }
    if (stringSlice != null) {
      $result.stringSlice = stringSlice;
    }
    if (version != null) {
      $result.version = version;
    }
    return $result;
  }
  NamedResourcesAttributeValue._() : super();
  factory NamedResourcesAttributeValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesAttributeValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesAttributeValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOB(2, _omitFieldNames ? '' : 'bool')
    ..aOS(5, _omitFieldNames ? '' : 'string')
    ..aOM<$2.Quantity>(6, _omitFieldNames ? '' : 'quantity', subBuilder: $2.Quantity.create)
    ..aInt64(7, _omitFieldNames ? '' : 'int')
    ..aOM<NamedResourcesIntSlice>(8, _omitFieldNames ? '' : 'intSlice', protoName: 'intSlice', subBuilder: NamedResourcesIntSlice.create)
    ..aOM<NamedResourcesStringSlice>(9, _omitFieldNames ? '' : 'stringSlice', protoName: 'stringSlice', subBuilder: NamedResourcesStringSlice.create)
    ..aOS(10, _omitFieldNames ? '' : 'version')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesAttributeValue clone() => NamedResourcesAttributeValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesAttributeValue copyWith(void Function(NamedResourcesAttributeValue) updates) => super.copyWith((message) => updates(message as NamedResourcesAttributeValue)) as NamedResourcesAttributeValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesAttributeValue create() => NamedResourcesAttributeValue._();
  NamedResourcesAttributeValue createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesAttributeValue> createRepeated() => $pb.PbList<NamedResourcesAttributeValue>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesAttributeValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesAttributeValue>(create);
  static NamedResourcesAttributeValue? _defaultInstance;

  /// BoolValue is a true/false value.
  @$pb.TagNumber(2)
  $core.bool get bool_2 => $_getBF(0);
  @$pb.TagNumber(2)
  set bool_2($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasBool_2() => $_has(0);
  @$pb.TagNumber(2)
  void clearBool_2() => clearField(2);

  /// StringValue is a string.
  @$pb.TagNumber(5)
  $core.String get string => $_getSZ(1);
  @$pb.TagNumber(5)
  set string($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(5)
  $core.bool hasString() => $_has(1);
  @$pb.TagNumber(5)
  void clearString() => clearField(5);

  /// QuantityValue is a quantity.
  @$pb.TagNumber(6)
  $2.Quantity get quantity => $_getN(2);
  @$pb.TagNumber(6)
  set quantity($2.Quantity v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasQuantity() => $_has(2);
  @$pb.TagNumber(6)
  void clearQuantity() => clearField(6);
  @$pb.TagNumber(6)
  $2.Quantity ensureQuantity() => $_ensure(2);

  /// IntValue is a 64-bit integer.
  @$pb.TagNumber(7)
  $fixnum.Int64 get int_7 => $_getI64(3);
  @$pb.TagNumber(7)
  set int_7($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(7)
  $core.bool hasInt_7() => $_has(3);
  @$pb.TagNumber(7)
  void clearInt_7() => clearField(7);

  /// IntSliceValue is an array of 64-bit integers.
  @$pb.TagNumber(8)
  NamedResourcesIntSlice get intSlice => $_getN(4);
  @$pb.TagNumber(8)
  set intSlice(NamedResourcesIntSlice v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasIntSlice() => $_has(4);
  @$pb.TagNumber(8)
  void clearIntSlice() => clearField(8);
  @$pb.TagNumber(8)
  NamedResourcesIntSlice ensureIntSlice() => $_ensure(4);

  /// StringSliceValue is an array of strings.
  @$pb.TagNumber(9)
  NamedResourcesStringSlice get stringSlice => $_getN(5);
  @$pb.TagNumber(9)
  set stringSlice(NamedResourcesStringSlice v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasStringSlice() => $_has(5);
  @$pb.TagNumber(9)
  void clearStringSlice() => clearField(9);
  @$pb.TagNumber(9)
  NamedResourcesStringSlice ensureStringSlice() => $_ensure(5);

  /// VersionValue is a semantic version according to semver.org spec 2.0.0.
  @$pb.TagNumber(10)
  $core.String get version => $_getSZ(6);
  @$pb.TagNumber(10)
  set version($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(10)
  $core.bool hasVersion() => $_has(6);
  @$pb.TagNumber(10)
  void clearVersion() => clearField(10);
}

/// NamedResourcesFilter is used in ResourceFilterModel.
class NamedResourcesFilter extends $pb.GeneratedMessage {
  factory NamedResourcesFilter({
    $core.String? selector,
  }) {
    final $result = create();
    if (selector != null) {
      $result.selector = selector;
    }
    return $result;
  }
  NamedResourcesFilter._() : super();
  factory NamedResourcesFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'selector')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesFilter clone() => NamedResourcesFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesFilter copyWith(void Function(NamedResourcesFilter) updates) => super.copyWith((message) => updates(message as NamedResourcesFilter)) as NamedResourcesFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesFilter create() => NamedResourcesFilter._();
  NamedResourcesFilter createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesFilter> createRepeated() => $pb.PbList<NamedResourcesFilter>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesFilter>(create);
  static NamedResourcesFilter? _defaultInstance;

  ///  Selector is a CEL expression which must evaluate to true if a
  ///  resource instance is suitable. The language is as defined in
  ///  https://kubernetes.io/docs/reference/using-api/cel/
  ///
  ///  In addition, for each type NamedResourcesin AttributeValue there is a map that
  ///  resolves to the corresponding value of the instance under evaluation.
  ///  For example:
  ///
  ///     attributes.quantity["a"].isGreaterThan(quantity("0")) &&
  ///     attributes.stringslice["b"].isSorted()
  @$pb.TagNumber(1)
  $core.String get selector => $_getSZ(0);
  @$pb.TagNumber(1)
  set selector($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelector() => clearField(1);
}

/// NamedResourcesInstance represents one individual hardware instance that can be selected based
/// on its attributes.
class NamedResourcesInstance extends $pb.GeneratedMessage {
  factory NamedResourcesInstance({
    $core.String? name,
    $core.Iterable<NamedResourcesAttribute>? attributes,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (attributes != null) {
      $result.attributes.addAll(attributes);
    }
    return $result;
  }
  NamedResourcesInstance._() : super();
  factory NamedResourcesInstance.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesInstance.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesInstance', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pc<NamedResourcesAttribute>(2, _omitFieldNames ? '' : 'attributes', $pb.PbFieldType.PM, subBuilder: NamedResourcesAttribute.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesInstance clone() => NamedResourcesInstance()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesInstance copyWith(void Function(NamedResourcesInstance) updates) => super.copyWith((message) => updates(message as NamedResourcesInstance)) as NamedResourcesInstance;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesInstance create() => NamedResourcesInstance._();
  NamedResourcesInstance createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesInstance> createRepeated() => $pb.PbList<NamedResourcesInstance>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesInstance getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesInstance>(create);
  static NamedResourcesInstance? _defaultInstance;

  /// Name is unique identifier among all resource instances managed by
  /// the driver on the node. It must be a DNS subdomain.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  ///  Attributes defines the attributes of this resource instance.
  ///  The name of each attribute must be unique.
  ///
  ///  +listType=atomic
  ///  +optional
  @$pb.TagNumber(2)
  $core.List<NamedResourcesAttribute> get attributes => $_getList(1);
}

/// NamedResourcesIntSlice contains a slice of 64-bit integers.
class NamedResourcesIntSlice extends $pb.GeneratedMessage {
  factory NamedResourcesIntSlice({
    $core.Iterable<$fixnum.Int64>? ints,
  }) {
    final $result = create();
    if (ints != null) {
      $result.ints.addAll(ints);
    }
    return $result;
  }
  NamedResourcesIntSlice._() : super();
  factory NamedResourcesIntSlice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesIntSlice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesIntSlice', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, _omitFieldNames ? '' : 'ints', $pb.PbFieldType.P6)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesIntSlice clone() => NamedResourcesIntSlice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesIntSlice copyWith(void Function(NamedResourcesIntSlice) updates) => super.copyWith((message) => updates(message as NamedResourcesIntSlice)) as NamedResourcesIntSlice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesIntSlice create() => NamedResourcesIntSlice._();
  NamedResourcesIntSlice createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesIntSlice> createRepeated() => $pb.PbList<NamedResourcesIntSlice>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesIntSlice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesIntSlice>(create);
  static NamedResourcesIntSlice? _defaultInstance;

  ///  Ints is the slice of 64-bit integers.
  ///
  ///  +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get ints => $_getList(0);
}

/// NamedResourcesRequest is used in ResourceRequestModel.
class NamedResourcesRequest extends $pb.GeneratedMessage {
  factory NamedResourcesRequest({
    $core.String? selector,
  }) {
    final $result = create();
    if (selector != null) {
      $result.selector = selector;
    }
    return $result;
  }
  NamedResourcesRequest._() : super();
  factory NamedResourcesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'selector')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesRequest clone() => NamedResourcesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesRequest copyWith(void Function(NamedResourcesRequest) updates) => super.copyWith((message) => updates(message as NamedResourcesRequest)) as NamedResourcesRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesRequest create() => NamedResourcesRequest._();
  NamedResourcesRequest createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesRequest> createRepeated() => $pb.PbList<NamedResourcesRequest>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesRequest>(create);
  static NamedResourcesRequest? _defaultInstance;

  ///  Selector is a CEL expression which must evaluate to true if a
  ///  resource instance is suitable. The language is as defined in
  ///  https://kubernetes.io/docs/reference/using-api/cel/
  ///
  ///  In addition, for each type NamedResourcesin AttributeValue there is a map that
  ///  resolves to the corresponding value of the instance under evaluation.
  ///  For example:
  ///
  ///     attributes.quantity["a"].isGreaterThan(quantity("0")) &&
  ///     attributes.stringslice["b"].isSorted()
  @$pb.TagNumber(1)
  $core.String get selector => $_getSZ(0);
  @$pb.TagNumber(1)
  set selector($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelector() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelector() => clearField(1);
}

/// NamedResourcesResources is used in ResourceModel.
class NamedResourcesResources extends $pb.GeneratedMessage {
  factory NamedResourcesResources({
    $core.Iterable<NamedResourcesInstance>? instances,
  }) {
    final $result = create();
    if (instances != null) {
      $result.instances.addAll(instances);
    }
    return $result;
  }
  NamedResourcesResources._() : super();
  factory NamedResourcesResources.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesResources.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesResources', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..pc<NamedResourcesInstance>(1, _omitFieldNames ? '' : 'instances', $pb.PbFieldType.PM, subBuilder: NamedResourcesInstance.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesResources clone() => NamedResourcesResources()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesResources copyWith(void Function(NamedResourcesResources) updates) => super.copyWith((message) => updates(message as NamedResourcesResources)) as NamedResourcesResources;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesResources create() => NamedResourcesResources._();
  NamedResourcesResources createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesResources> createRepeated() => $pb.PbList<NamedResourcesResources>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesResources getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesResources>(create);
  static NamedResourcesResources? _defaultInstance;

  ///  The list of all individual resources instances currently available.
  ///
  ///  +listType=atomic
  @$pb.TagNumber(1)
  $core.List<NamedResourcesInstance> get instances => $_getList(0);
}

/// NamedResourcesStringSlice contains a slice of strings.
class NamedResourcesStringSlice extends $pb.GeneratedMessage {
  factory NamedResourcesStringSlice({
    $core.Iterable<$core.String>? strings,
  }) {
    final $result = create();
    if (strings != null) {
      $result.strings.addAll(strings);
    }
    return $result;
  }
  NamedResourcesStringSlice._() : super();
  factory NamedResourcesStringSlice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NamedResourcesStringSlice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'NamedResourcesStringSlice', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'strings')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NamedResourcesStringSlice clone() => NamedResourcesStringSlice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NamedResourcesStringSlice copyWith(void Function(NamedResourcesStringSlice) updates) => super.copyWith((message) => updates(message as NamedResourcesStringSlice)) as NamedResourcesStringSlice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static NamedResourcesStringSlice create() => NamedResourcesStringSlice._();
  NamedResourcesStringSlice createEmptyInstance() => create();
  static $pb.PbList<NamedResourcesStringSlice> createRepeated() => $pb.PbList<NamedResourcesStringSlice>();
  @$core.pragma('dart2js:noInline')
  static NamedResourcesStringSlice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NamedResourcesStringSlice>(create);
  static NamedResourcesStringSlice? _defaultInstance;

  ///  Strings is the slice of strings.
  ///
  ///  +listType=atomic
  @$pb.TagNumber(1)
  $core.List<$core.String> get strings => $_getList(0);
}

///  PodSchedulingContext objects hold information that is needed to schedule
///  a Pod with ResourceClaims that use "WaitForFirstConsumer" allocation
///  mode.
///
///  This is an alpha type and requires enabling the DynamicResourceAllocation
///  feature gate.
class PodSchedulingContext extends $pb.GeneratedMessage {
  factory PodSchedulingContext({
    $3.ObjectMeta? metadata,
    PodSchedulingContextSpec? spec,
    PodSchedulingContextStatus? status,
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
  PodSchedulingContext._() : super();
  factory PodSchedulingContext.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodSchedulingContext.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodSchedulingContext', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ObjectMeta.create)
    ..aOM<PodSchedulingContextSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: PodSchedulingContextSpec.create)
    ..aOM<PodSchedulingContextStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: PodSchedulingContextStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodSchedulingContext clone() => PodSchedulingContext()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodSchedulingContext copyWith(void Function(PodSchedulingContext) updates) => super.copyWith((message) => updates(message as PodSchedulingContext)) as PodSchedulingContext;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodSchedulingContext create() => PodSchedulingContext._();
  PodSchedulingContext createEmptyInstance() => create();
  static $pb.PbList<PodSchedulingContext> createRepeated() => $pb.PbList<PodSchedulingContext>();
  @$core.pragma('dart2js:noInline')
  static PodSchedulingContext getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodSchedulingContext>(create);
  static PodSchedulingContext? _defaultInstance;

  /// Standard object metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ObjectMeta ensureMetadata() => $_ensure(0);

  /// Spec describes where resources for the Pod are needed.
  @$pb.TagNumber(2)
  PodSchedulingContextSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(PodSchedulingContextSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  PodSchedulingContextSpec ensureSpec() => $_ensure(1);

  /// Status describes where resources for the Pod can be allocated.
  /// +optional
  @$pb.TagNumber(3)
  PodSchedulingContextStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(PodSchedulingContextStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  PodSchedulingContextStatus ensureStatus() => $_ensure(2);
}

/// PodSchedulingContextList is a collection of Pod scheduling objects.
class PodSchedulingContextList extends $pb.GeneratedMessage {
  factory PodSchedulingContextList({
    $3.ListMeta? metadata,
    $core.Iterable<PodSchedulingContext>? items,
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
  PodSchedulingContextList._() : super();
  factory PodSchedulingContextList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodSchedulingContextList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodSchedulingContextList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ListMeta.create)
    ..pc<PodSchedulingContext>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: PodSchedulingContext.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodSchedulingContextList clone() => PodSchedulingContextList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodSchedulingContextList copyWith(void Function(PodSchedulingContextList) updates) => super.copyWith((message) => updates(message as PodSchedulingContextList)) as PodSchedulingContextList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodSchedulingContextList create() => PodSchedulingContextList._();
  PodSchedulingContextList createEmptyInstance() => create();
  static $pb.PbList<PodSchedulingContextList> createRepeated() => $pb.PbList<PodSchedulingContextList>();
  @$core.pragma('dart2js:noInline')
  static PodSchedulingContextList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodSchedulingContextList>(create);
  static PodSchedulingContextList? _defaultInstance;

  /// Standard list metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ListMeta ensureMetadata() => $_ensure(0);

  /// Items is the list of PodSchedulingContext objects.
  @$pb.TagNumber(2)
  $core.List<PodSchedulingContext> get items => $_getList(1);
}

/// PodSchedulingContextSpec describes where resources for the Pod are needed.
class PodSchedulingContextSpec extends $pb.GeneratedMessage {
  factory PodSchedulingContextSpec({
    $core.String? selectedNode,
    $core.Iterable<$core.String>? potentialNodes,
  }) {
    final $result = create();
    if (selectedNode != null) {
      $result.selectedNode = selectedNode;
    }
    if (potentialNodes != null) {
      $result.potentialNodes.addAll(potentialNodes);
    }
    return $result;
  }
  PodSchedulingContextSpec._() : super();
  factory PodSchedulingContextSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodSchedulingContextSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodSchedulingContextSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'selectedNode', protoName: 'selectedNode')
    ..pPS(2, _omitFieldNames ? '' : 'potentialNodes', protoName: 'potentialNodes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodSchedulingContextSpec clone() => PodSchedulingContextSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodSchedulingContextSpec copyWith(void Function(PodSchedulingContextSpec) updates) => super.copyWith((message) => updates(message as PodSchedulingContextSpec)) as PodSchedulingContextSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodSchedulingContextSpec create() => PodSchedulingContextSpec._();
  PodSchedulingContextSpec createEmptyInstance() => create();
  static $pb.PbList<PodSchedulingContextSpec> createRepeated() => $pb.PbList<PodSchedulingContextSpec>();
  @$core.pragma('dart2js:noInline')
  static PodSchedulingContextSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodSchedulingContextSpec>(create);
  static PodSchedulingContextSpec? _defaultInstance;

  /// SelectedNode is the node for which allocation of ResourceClaims that
  /// are referenced by the Pod and that use "WaitForFirstConsumer"
  /// allocation is to be attempted.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get selectedNode => $_getSZ(0);
  @$pb.TagNumber(1)
  set selectedNode($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSelectedNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearSelectedNode() => clearField(1);

  ///  PotentialNodes lists nodes where the Pod might be able to run.
  ///
  ///  The size of this field is limited to 128. This is large enough for
  ///  many clusters. Larger clusters may need more attempts to find a node
  ///  that suits all pending resources. This may get increased in the
  ///  future, but not reduced.
  ///
  ///  +listType=atomic
  ///  +optional
  @$pb.TagNumber(2)
  $core.List<$core.String> get potentialNodes => $_getList(1);
}

/// PodSchedulingContextStatus describes where resources for the Pod can be allocated.
class PodSchedulingContextStatus extends $pb.GeneratedMessage {
  factory PodSchedulingContextStatus({
    $core.Iterable<ResourceClaimSchedulingStatus>? resourceClaims,
  }) {
    final $result = create();
    if (resourceClaims != null) {
      $result.resourceClaims.addAll(resourceClaims);
    }
    return $result;
  }
  PodSchedulingContextStatus._() : super();
  factory PodSchedulingContextStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PodSchedulingContextStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PodSchedulingContextStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..pc<ResourceClaimSchedulingStatus>(1, _omitFieldNames ? '' : 'resourceClaims', $pb.PbFieldType.PM, protoName: 'resourceClaims', subBuilder: ResourceClaimSchedulingStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PodSchedulingContextStatus clone() => PodSchedulingContextStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PodSchedulingContextStatus copyWith(void Function(PodSchedulingContextStatus) updates) => super.copyWith((message) => updates(message as PodSchedulingContextStatus)) as PodSchedulingContextStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PodSchedulingContextStatus create() => PodSchedulingContextStatus._();
  PodSchedulingContextStatus createEmptyInstance() => create();
  static $pb.PbList<PodSchedulingContextStatus> createRepeated() => $pb.PbList<PodSchedulingContextStatus>();
  @$core.pragma('dart2js:noInline')
  static PodSchedulingContextStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PodSchedulingContextStatus>(create);
  static PodSchedulingContextStatus? _defaultInstance;

  ///  ResourceClaims describes resource availability for each
  ///  pod.spec.resourceClaim entry where the corresponding ResourceClaim
  ///  uses "WaitForFirstConsumer" allocation mode.
  ///
  ///  +listType=map
  ///  +listMapKey=name
  ///  +optional
  @$pb.TagNumber(1)
  $core.List<ResourceClaimSchedulingStatus> get resourceClaims => $_getList(0);
}

///  ResourceClaim describes which resources are needed by a resource consumer.
///  Its status tracks whether the resource has been allocated and what the
///  resulting attributes are.
///
///  This is an alpha type and requires enabling the DynamicResourceAllocation
///  feature gate.
class ResourceClaim extends $pb.GeneratedMessage {
  factory ResourceClaim({
    $3.ObjectMeta? metadata,
    ResourceClaimSpec? spec,
    ResourceClaimStatus? status,
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
  ResourceClaim._() : super();
  factory ResourceClaim.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaim.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaim', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ObjectMeta.create)
    ..aOM<ResourceClaimSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ResourceClaimSpec.create)
    ..aOM<ResourceClaimStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: ResourceClaimStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaim clone() => ResourceClaim()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaim copyWith(void Function(ResourceClaim) updates) => super.copyWith((message) => updates(message as ResourceClaim)) as ResourceClaim;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaim create() => ResourceClaim._();
  ResourceClaim createEmptyInstance() => create();
  static $pb.PbList<ResourceClaim> createRepeated() => $pb.PbList<ResourceClaim>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaim getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaim>(create);
  static ResourceClaim? _defaultInstance;

  /// Standard object metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ObjectMeta ensureMetadata() => $_ensure(0);

  /// Spec describes the desired attributes of a resource that then needs
  /// to be allocated. It can only be set once when creating the
  /// ResourceClaim.
  @$pb.TagNumber(2)
  ResourceClaimSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ResourceClaimSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ResourceClaimSpec ensureSpec() => $_ensure(1);

  /// Status describes whether the resource is available and with which
  /// attributes.
  /// +optional
  @$pb.TagNumber(3)
  ResourceClaimStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(ResourceClaimStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  ResourceClaimStatus ensureStatus() => $_ensure(2);
}

/// ResourceClaimConsumerReference contains enough information to let you
/// locate the consumer of a ResourceClaim. The user must be a resource in the same
/// namespace as the ResourceClaim.
class ResourceClaimConsumerReference extends $pb.GeneratedMessage {
  factory ResourceClaimConsumerReference({
    $core.String? apiGroup,
    $core.String? resource,
    $core.String? name,
    $core.String? uid,
  }) {
    final $result = create();
    if (apiGroup != null) {
      $result.apiGroup = apiGroup;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (name != null) {
      $result.name = name;
    }
    if (uid != null) {
      $result.uid = uid;
    }
    return $result;
  }
  ResourceClaimConsumerReference._() : super();
  factory ResourceClaimConsumerReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimConsumerReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimConsumerReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiGroup', protoName: 'apiGroup')
    ..aOS(3, _omitFieldNames ? '' : 'resource')
    ..aOS(4, _omitFieldNames ? '' : 'name')
    ..aOS(5, _omitFieldNames ? '' : 'uid')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimConsumerReference clone() => ResourceClaimConsumerReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimConsumerReference copyWith(void Function(ResourceClaimConsumerReference) updates) => super.copyWith((message) => updates(message as ResourceClaimConsumerReference)) as ResourceClaimConsumerReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimConsumerReference create() => ResourceClaimConsumerReference._();
  ResourceClaimConsumerReference createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimConsumerReference> createRepeated() => $pb.PbList<ResourceClaimConsumerReference>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimConsumerReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimConsumerReference>(create);
  static ResourceClaimConsumerReference? _defaultInstance;

  /// APIGroup is the group for the resource being referenced. It is
  /// empty for the core API. This matches the group in the APIVersion
  /// that is used when creating the resources.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get apiGroup => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiGroup($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiGroup() => clearField(1);

  /// Resource is the type of resource being referenced, for example "pods".
  @$pb.TagNumber(3)
  $core.String get resource => $_getSZ(1);
  @$pb.TagNumber(3)
  set resource($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(1);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);

  /// Name is the name of resource being referenced.
  @$pb.TagNumber(4)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(4)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(4)
  void clearName() => clearField(4);

  /// UID identifies exactly one incarnation of the resource.
  @$pb.TagNumber(5)
  $core.String get uid => $_getSZ(3);
  @$pb.TagNumber(5)
  set uid($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasUid() => $_has(3);
  @$pb.TagNumber(5)
  void clearUid() => clearField(5);
}

/// ResourceClaimList is a collection of claims.
class ResourceClaimList extends $pb.GeneratedMessage {
  factory ResourceClaimList({
    $3.ListMeta? metadata,
    $core.Iterable<ResourceClaim>? items,
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
  ResourceClaimList._() : super();
  factory ResourceClaimList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ListMeta.create)
    ..pc<ResourceClaim>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ResourceClaim.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimList clone() => ResourceClaimList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimList copyWith(void Function(ResourceClaimList) updates) => super.copyWith((message) => updates(message as ResourceClaimList)) as ResourceClaimList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimList create() => ResourceClaimList._();
  ResourceClaimList createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimList> createRepeated() => $pb.PbList<ResourceClaimList>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimList>(create);
  static ResourceClaimList? _defaultInstance;

  /// Standard list metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ListMeta ensureMetadata() => $_ensure(0);

  /// Items is the list of resource claims.
  @$pb.TagNumber(2)
  $core.List<ResourceClaim> get items => $_getList(1);
}

/// ResourceClaimParameters defines resource requests for a ResourceClaim in an
/// in-tree format understood by Kubernetes.
class ResourceClaimParameters extends $pb.GeneratedMessage {
  factory ResourceClaimParameters({
    $3.ObjectMeta? metadata,
    ResourceClaimParametersReference? generatedFrom,
    $core.bool? shareable,
    $core.Iterable<DriverRequests>? driverRequests,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (generatedFrom != null) {
      $result.generatedFrom = generatedFrom;
    }
    if (shareable != null) {
      $result.shareable = shareable;
    }
    if (driverRequests != null) {
      $result.driverRequests.addAll(driverRequests);
    }
    return $result;
  }
  ResourceClaimParameters._() : super();
  factory ResourceClaimParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimParameters', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ObjectMeta.create)
    ..aOM<ResourceClaimParametersReference>(2, _omitFieldNames ? '' : 'generatedFrom', protoName: 'generatedFrom', subBuilder: ResourceClaimParametersReference.create)
    ..aOB(3, _omitFieldNames ? '' : 'shareable')
    ..pc<DriverRequests>(4, _omitFieldNames ? '' : 'driverRequests', $pb.PbFieldType.PM, protoName: 'driverRequests', subBuilder: DriverRequests.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimParameters clone() => ResourceClaimParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimParameters copyWith(void Function(ResourceClaimParameters) updates) => super.copyWith((message) => updates(message as ResourceClaimParameters)) as ResourceClaimParameters;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimParameters create() => ResourceClaimParameters._();
  ResourceClaimParameters createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimParameters> createRepeated() => $pb.PbList<ResourceClaimParameters>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimParameters>(create);
  static ResourceClaimParameters? _defaultInstance;

  /// Standard object metadata
  @$pb.TagNumber(1)
  $3.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ObjectMeta ensureMetadata() => $_ensure(0);

  /// If this object was created from some other resource, then this links
  /// back to that resource. This field is used to find the in-tree representation
  /// of the claim parameters when the parameter reference of the claim refers
  /// to some unknown type.
  /// +optional
  @$pb.TagNumber(2)
  ResourceClaimParametersReference get generatedFrom => $_getN(1);
  @$pb.TagNumber(2)
  set generatedFrom(ResourceClaimParametersReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGeneratedFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneratedFrom() => clearField(2);
  @$pb.TagNumber(2)
  ResourceClaimParametersReference ensureGeneratedFrom() => $_ensure(1);

  /// Shareable indicates whether the allocated claim is meant to be shareable
  /// by multiple consumers at the same time.
  /// +optional
  @$pb.TagNumber(3)
  $core.bool get shareable => $_getBF(2);
  @$pb.TagNumber(3)
  set shareable($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasShareable() => $_has(2);
  @$pb.TagNumber(3)
  void clearShareable() => clearField(3);

  ///  DriverRequests describes all resources that are needed for the
  ///  allocated claim. A single claim may use resources coming from
  ///  different drivers. For each driver, this array has at most one
  ///  entry which then may have one or more per-driver requests.
  ///
  ///  May be empty, in which case the claim can always be allocated.
  ///
  ///  +listType=atomic
  @$pb.TagNumber(4)
  $core.List<DriverRequests> get driverRequests => $_getList(3);
}

/// ResourceClaimParametersList is a collection of ResourceClaimParameters.
class ResourceClaimParametersList extends $pb.GeneratedMessage {
  factory ResourceClaimParametersList({
    $3.ListMeta? metadata,
    $core.Iterable<ResourceClaimParameters>? items,
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
  ResourceClaimParametersList._() : super();
  factory ResourceClaimParametersList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimParametersList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimParametersList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ListMeta.create)
    ..pc<ResourceClaimParameters>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ResourceClaimParameters.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimParametersList clone() => ResourceClaimParametersList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimParametersList copyWith(void Function(ResourceClaimParametersList) updates) => super.copyWith((message) => updates(message as ResourceClaimParametersList)) as ResourceClaimParametersList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimParametersList create() => ResourceClaimParametersList._();
  ResourceClaimParametersList createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimParametersList> createRepeated() => $pb.PbList<ResourceClaimParametersList>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimParametersList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimParametersList>(create);
  static ResourceClaimParametersList? _defaultInstance;

  /// Standard list metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ListMeta ensureMetadata() => $_ensure(0);

  /// Items is the list of node resource capacity objects.
  @$pb.TagNumber(2)
  $core.List<ResourceClaimParameters> get items => $_getList(1);
}

/// ResourceClaimParametersReference contains enough information to let you
/// locate the parameters for a ResourceClaim. The object must be in the same
/// namespace as the ResourceClaim.
class ResourceClaimParametersReference extends $pb.GeneratedMessage {
  factory ResourceClaimParametersReference({
    $core.String? apiGroup,
    $core.String? kind,
    $core.String? name,
  }) {
    final $result = create();
    if (apiGroup != null) {
      $result.apiGroup = apiGroup;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ResourceClaimParametersReference._() : super();
  factory ResourceClaimParametersReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimParametersReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimParametersReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiGroup', protoName: 'apiGroup')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimParametersReference clone() => ResourceClaimParametersReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimParametersReference copyWith(void Function(ResourceClaimParametersReference) updates) => super.copyWith((message) => updates(message as ResourceClaimParametersReference)) as ResourceClaimParametersReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimParametersReference create() => ResourceClaimParametersReference._();
  ResourceClaimParametersReference createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimParametersReference> createRepeated() => $pb.PbList<ResourceClaimParametersReference>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimParametersReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimParametersReference>(create);
  static ResourceClaimParametersReference? _defaultInstance;

  /// APIGroup is the group for the resource being referenced. It is
  /// empty for the core API. This matches the group in the APIVersion
  /// that is used when creating the resources.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get apiGroup => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiGroup($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiGroup() => clearField(1);

  /// Kind is the type of resource being referenced. This is the same
  /// value as in the parameter object's metadata, for example "ConfigMap".
  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);

  /// Name is the name of resource being referenced.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);
}

/// ResourceClaimSchedulingStatus contains information about one particular
/// ResourceClaim with "WaitForFirstConsumer" allocation mode.
class ResourceClaimSchedulingStatus extends $pb.GeneratedMessage {
  factory ResourceClaimSchedulingStatus({
    $core.String? name,
    $core.Iterable<$core.String>? unsuitableNodes,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (unsuitableNodes != null) {
      $result.unsuitableNodes.addAll(unsuitableNodes);
    }
    return $result;
  }
  ResourceClaimSchedulingStatus._() : super();
  factory ResourceClaimSchedulingStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimSchedulingStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimSchedulingStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'unsuitableNodes', protoName: 'unsuitableNodes')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimSchedulingStatus clone() => ResourceClaimSchedulingStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimSchedulingStatus copyWith(void Function(ResourceClaimSchedulingStatus) updates) => super.copyWith((message) => updates(message as ResourceClaimSchedulingStatus)) as ResourceClaimSchedulingStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimSchedulingStatus create() => ResourceClaimSchedulingStatus._();
  ResourceClaimSchedulingStatus createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimSchedulingStatus> createRepeated() => $pb.PbList<ResourceClaimSchedulingStatus>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimSchedulingStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimSchedulingStatus>(create);
  static ResourceClaimSchedulingStatus? _defaultInstance;

  /// Name matches the pod.spec.resourceClaims[*].Name field.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  ///  UnsuitableNodes lists nodes that the ResourceClaim cannot be
  ///  allocated for.
  ///
  ///  The size of this field is limited to 128, the same as for
  ///  PodSchedulingSpec.PotentialNodes. This may get increased in the
  ///  future, but not reduced.
  ///
  ///  +listType=atomic
  ///  +optional
  @$pb.TagNumber(2)
  $core.List<$core.String> get unsuitableNodes => $_getList(1);
}

/// ResourceClaimSpec defines how a resource is to be allocated.
class ResourceClaimSpec extends $pb.GeneratedMessage {
  factory ResourceClaimSpec({
    $core.String? resourceClassName,
    ResourceClaimParametersReference? parametersRef,
    $core.String? allocationMode,
  }) {
    final $result = create();
    if (resourceClassName != null) {
      $result.resourceClassName = resourceClassName;
    }
    if (parametersRef != null) {
      $result.parametersRef = parametersRef;
    }
    if (allocationMode != null) {
      $result.allocationMode = allocationMode;
    }
    return $result;
  }
  ResourceClaimSpec._() : super();
  factory ResourceClaimSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'resourceClassName', protoName: 'resourceClassName')
    ..aOM<ResourceClaimParametersReference>(2, _omitFieldNames ? '' : 'parametersRef', protoName: 'parametersRef', subBuilder: ResourceClaimParametersReference.create)
    ..aOS(3, _omitFieldNames ? '' : 'allocationMode', protoName: 'allocationMode')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimSpec clone() => ResourceClaimSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimSpec copyWith(void Function(ResourceClaimSpec) updates) => super.copyWith((message) => updates(message as ResourceClaimSpec)) as ResourceClaimSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimSpec create() => ResourceClaimSpec._();
  ResourceClaimSpec createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimSpec> createRepeated() => $pb.PbList<ResourceClaimSpec>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimSpec>(create);
  static ResourceClaimSpec? _defaultInstance;

  /// ResourceClassName references the driver and additional parameters
  /// via the name of a ResourceClass that was created as part of the
  /// driver deployment.
  @$pb.TagNumber(1)
  $core.String get resourceClassName => $_getSZ(0);
  @$pb.TagNumber(1)
  set resourceClassName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasResourceClassName() => $_has(0);
  @$pb.TagNumber(1)
  void clearResourceClassName() => clearField(1);

  ///  ParametersRef references a separate object with arbitrary parameters
  ///  that will be used by the driver when allocating a resource for the
  ///  claim.
  ///
  ///  The object must be in the same namespace as the ResourceClaim.
  ///  +optional
  @$pb.TagNumber(2)
  ResourceClaimParametersReference get parametersRef => $_getN(1);
  @$pb.TagNumber(2)
  set parametersRef(ResourceClaimParametersReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParametersRef() => $_has(1);
  @$pb.TagNumber(2)
  void clearParametersRef() => clearField(2);
  @$pb.TagNumber(2)
  ResourceClaimParametersReference ensureParametersRef() => $_ensure(1);

  /// Allocation can start immediately or when a Pod wants to use the
  /// resource. "WaitForFirstConsumer" is the default.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get allocationMode => $_getSZ(2);
  @$pb.TagNumber(3)
  set allocationMode($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAllocationMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearAllocationMode() => clearField(3);
}

/// ResourceClaimStatus tracks whether the resource has been allocated and what
/// the resulting attributes are.
class ResourceClaimStatus extends $pb.GeneratedMessage {
  factory ResourceClaimStatus({
    $core.String? driverName,
    AllocationResult? allocation,
    $core.Iterable<ResourceClaimConsumerReference>? reservedFor,
    $core.bool? deallocationRequested,
  }) {
    final $result = create();
    if (driverName != null) {
      $result.driverName = driverName;
    }
    if (allocation != null) {
      $result.allocation = allocation;
    }
    if (reservedFor != null) {
      $result.reservedFor.addAll(reservedFor);
    }
    if (deallocationRequested != null) {
      $result.deallocationRequested = deallocationRequested;
    }
    return $result;
  }
  ResourceClaimStatus._() : super();
  factory ResourceClaimStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'driverName', protoName: 'driverName')
    ..aOM<AllocationResult>(2, _omitFieldNames ? '' : 'allocation', subBuilder: AllocationResult.create)
    ..pc<ResourceClaimConsumerReference>(3, _omitFieldNames ? '' : 'reservedFor', $pb.PbFieldType.PM, protoName: 'reservedFor', subBuilder: ResourceClaimConsumerReference.create)
    ..aOB(4, _omitFieldNames ? '' : 'deallocationRequested', protoName: 'deallocationRequested')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimStatus clone() => ResourceClaimStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimStatus copyWith(void Function(ResourceClaimStatus) updates) => super.copyWith((message) => updates(message as ResourceClaimStatus)) as ResourceClaimStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimStatus create() => ResourceClaimStatus._();
  ResourceClaimStatus createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimStatus> createRepeated() => $pb.PbList<ResourceClaimStatus>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimStatus>(create);
  static ResourceClaimStatus? _defaultInstance;

  /// DriverName is a copy of the driver name from the ResourceClass at
  /// the time when allocation started.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get driverName => $_getSZ(0);
  @$pb.TagNumber(1)
  set driverName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDriverName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDriverName() => clearField(1);

  /// Allocation is set by the resource driver once a resource or set of
  /// resources has been allocated successfully. If this is not specified, the
  /// resources have not been allocated yet.
  /// +optional
  @$pb.TagNumber(2)
  AllocationResult get allocation => $_getN(1);
  @$pb.TagNumber(2)
  set allocation(AllocationResult v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAllocation() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllocation() => clearField(2);
  @$pb.TagNumber(2)
  AllocationResult ensureAllocation() => $_ensure(1);

  ///  ReservedFor indicates which entities are currently allowed to use
  ///  the claim. A Pod which references a ResourceClaim which is not
  ///  reserved for that Pod will not be started.
  ///
  ///  There can be at most 32 such reservations. This may get increased in
  ///  the future, but not reduced.
  ///
  ///  +listType=map
  ///  +listMapKey=uid
  ///  +patchStrategy=merge
  ///  +patchMergeKey=uid
  ///  +optional
  @$pb.TagNumber(3)
  $core.List<ResourceClaimConsumerReference> get reservedFor => $_getList(2);

  ///  DeallocationRequested indicates that a ResourceClaim is to be
  ///  deallocated.
  ///
  ///  The driver then must deallocate this claim and reset the field
  ///  together with clearing the Allocation field.
  ///
  ///  While DeallocationRequested is set, no new consumers may be added to
  ///  ReservedFor.
  ///  +optional
  @$pb.TagNumber(4)
  $core.bool get deallocationRequested => $_getBF(3);
  @$pb.TagNumber(4)
  set deallocationRequested($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDeallocationRequested() => $_has(3);
  @$pb.TagNumber(4)
  void clearDeallocationRequested() => clearField(4);
}

/// ResourceClaimTemplate is used to produce ResourceClaim objects.
class ResourceClaimTemplate extends $pb.GeneratedMessage {
  factory ResourceClaimTemplate({
    $3.ObjectMeta? metadata,
    ResourceClaimTemplateSpec? spec,
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
  ResourceClaimTemplate._() : super();
  factory ResourceClaimTemplate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimTemplate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimTemplate', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ObjectMeta.create)
    ..aOM<ResourceClaimTemplateSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ResourceClaimTemplateSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimTemplate clone() => ResourceClaimTemplate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimTemplate copyWith(void Function(ResourceClaimTemplate) updates) => super.copyWith((message) => updates(message as ResourceClaimTemplate)) as ResourceClaimTemplate;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimTemplate create() => ResourceClaimTemplate._();
  ResourceClaimTemplate createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimTemplate> createRepeated() => $pb.PbList<ResourceClaimTemplate>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimTemplate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimTemplate>(create);
  static ResourceClaimTemplate? _defaultInstance;

  /// Standard object metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ObjectMeta ensureMetadata() => $_ensure(0);

  ///  Describes the ResourceClaim that is to be generated.
  ///
  ///  This field is immutable. A ResourceClaim will get created by the
  ///  control plane for a Pod when needed and then not get updated
  ///  anymore.
  @$pb.TagNumber(2)
  ResourceClaimTemplateSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ResourceClaimTemplateSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ResourceClaimTemplateSpec ensureSpec() => $_ensure(1);
}

/// ResourceClaimTemplateList is a collection of claim templates.
class ResourceClaimTemplateList extends $pb.GeneratedMessage {
  factory ResourceClaimTemplateList({
    $3.ListMeta? metadata,
    $core.Iterable<ResourceClaimTemplate>? items,
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
  ResourceClaimTemplateList._() : super();
  factory ResourceClaimTemplateList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimTemplateList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimTemplateList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ListMeta.create)
    ..pc<ResourceClaimTemplate>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ResourceClaimTemplate.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimTemplateList clone() => ResourceClaimTemplateList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimTemplateList copyWith(void Function(ResourceClaimTemplateList) updates) => super.copyWith((message) => updates(message as ResourceClaimTemplateList)) as ResourceClaimTemplateList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimTemplateList create() => ResourceClaimTemplateList._();
  ResourceClaimTemplateList createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimTemplateList> createRepeated() => $pb.PbList<ResourceClaimTemplateList>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimTemplateList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimTemplateList>(create);
  static ResourceClaimTemplateList? _defaultInstance;

  /// Standard list metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ListMeta ensureMetadata() => $_ensure(0);

  /// Items is the list of resource claim templates.
  @$pb.TagNumber(2)
  $core.List<ResourceClaimTemplate> get items => $_getList(1);
}

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpec extends $pb.GeneratedMessage {
  factory ResourceClaimTemplateSpec({
    $3.ObjectMeta? metadata,
    ResourceClaimSpec? spec,
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
  ResourceClaimTemplateSpec._() : super();
  factory ResourceClaimTemplateSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClaimTemplateSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClaimTemplateSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ObjectMeta.create)
    ..aOM<ResourceClaimSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: ResourceClaimSpec.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClaimTemplateSpec clone() => ResourceClaimTemplateSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClaimTemplateSpec copyWith(void Function(ResourceClaimTemplateSpec) updates) => super.copyWith((message) => updates(message as ResourceClaimTemplateSpec)) as ResourceClaimTemplateSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClaimTemplateSpec create() => ResourceClaimTemplateSpec._();
  ResourceClaimTemplateSpec createEmptyInstance() => create();
  static $pb.PbList<ResourceClaimTemplateSpec> createRepeated() => $pb.PbList<ResourceClaimTemplateSpec>();
  @$core.pragma('dart2js:noInline')
  static ResourceClaimTemplateSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClaimTemplateSpec>(create);
  static ResourceClaimTemplateSpec? _defaultInstance;

  /// ObjectMeta may contain labels and annotations that will be copied into the PVC
  /// when creating it. No other fields are allowed and will be rejected during
  /// validation.
  /// +optional
  @$pb.TagNumber(1)
  $3.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ObjectMeta ensureMetadata() => $_ensure(0);

  /// Spec for the ResourceClaim. The entire content is copied unchanged
  /// into the ResourceClaim that gets created from this template. The
  /// same fields as in a ResourceClaim are also valid here.
  @$pb.TagNumber(2)
  ResourceClaimSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(ResourceClaimSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  ResourceClaimSpec ensureSpec() => $_ensure(1);
}

///  ResourceClass is used by administrators to influence how resources
///  are allocated.
///
///  This is an alpha type and requires enabling the DynamicResourceAllocation
///  feature gate.
class ResourceClass extends $pb.GeneratedMessage {
  factory ResourceClass({
    $3.ObjectMeta? metadata,
    $core.String? driverName,
    ResourceClassParametersReference? parametersRef,
    $0.NodeSelector? suitableNodes,
    $core.bool? structuredParameters,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (driverName != null) {
      $result.driverName = driverName;
    }
    if (parametersRef != null) {
      $result.parametersRef = parametersRef;
    }
    if (suitableNodes != null) {
      $result.suitableNodes = suitableNodes;
    }
    if (structuredParameters != null) {
      $result.structuredParameters = structuredParameters;
    }
    return $result;
  }
  ResourceClass._() : super();
  factory ResourceClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClass', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ObjectMeta.create)
    ..aOS(2, _omitFieldNames ? '' : 'driverName', protoName: 'driverName')
    ..aOM<ResourceClassParametersReference>(3, _omitFieldNames ? '' : 'parametersRef', protoName: 'parametersRef', subBuilder: ResourceClassParametersReference.create)
    ..aOM<$0.NodeSelector>(4, _omitFieldNames ? '' : 'suitableNodes', protoName: 'suitableNodes', subBuilder: $0.NodeSelector.create)
    ..aOB(5, _omitFieldNames ? '' : 'structuredParameters', protoName: 'structuredParameters')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClass clone() => ResourceClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClass copyWith(void Function(ResourceClass) updates) => super.copyWith((message) => updates(message as ResourceClass)) as ResourceClass;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClass create() => ResourceClass._();
  ResourceClass createEmptyInstance() => create();
  static $pb.PbList<ResourceClass> createRepeated() => $pb.PbList<ResourceClass>();
  @$core.pragma('dart2js:noInline')
  static ResourceClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClass>(create);
  static ResourceClass? _defaultInstance;

  /// Standard object metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ObjectMeta ensureMetadata() => $_ensure(0);

  ///  DriverName defines the name of the dynamic resource driver that is
  ///  used for allocation of a ResourceClaim that uses this class.
  ///
  ///  Resource drivers have a unique name in forward domain order
  ///  (acme.example.com).
  @$pb.TagNumber(2)
  $core.String get driverName => $_getSZ(1);
  @$pb.TagNumber(2)
  set driverName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDriverName() => $_has(1);
  @$pb.TagNumber(2)
  void clearDriverName() => clearField(2);

  /// ParametersRef references an arbitrary separate object that may hold
  /// parameters that will be used by the driver when allocating a
  /// resource that uses this class. A dynamic resource driver can
  /// distinguish between parameters stored here and and those stored in
  /// ResourceClaimSpec.
  /// +optional
  @$pb.TagNumber(3)
  ResourceClassParametersReference get parametersRef => $_getN(2);
  @$pb.TagNumber(3)
  set parametersRef(ResourceClassParametersReference v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasParametersRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearParametersRef() => clearField(3);
  @$pb.TagNumber(3)
  ResourceClassParametersReference ensureParametersRef() => $_ensure(2);

  ///  Only nodes matching the selector will be considered by the scheduler
  ///  when trying to find a Node that fits a Pod when that Pod uses
  ///  a ResourceClaim that has not been allocated yet.
  ///
  ///  Setting this field is optional. If null, all nodes are candidates.
  ///  +optional
  @$pb.TagNumber(4)
  $0.NodeSelector get suitableNodes => $_getN(3);
  @$pb.TagNumber(4)
  set suitableNodes($0.NodeSelector v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSuitableNodes() => $_has(3);
  @$pb.TagNumber(4)
  void clearSuitableNodes() => clearField(4);
  @$pb.TagNumber(4)
  $0.NodeSelector ensureSuitableNodes() => $_ensure(3);

  /// If and only if allocation of claims using this class is handled
  /// via structured parameters, then StructuredParameters must be set to true.
  /// +optional
  @$pb.TagNumber(5)
  $core.bool get structuredParameters => $_getBF(4);
  @$pb.TagNumber(5)
  set structuredParameters($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasStructuredParameters() => $_has(4);
  @$pb.TagNumber(5)
  void clearStructuredParameters() => clearField(5);
}

/// ResourceClassList is a collection of classes.
class ResourceClassList extends $pb.GeneratedMessage {
  factory ResourceClassList({
    $3.ListMeta? metadata,
    $core.Iterable<ResourceClass>? items,
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
  ResourceClassList._() : super();
  factory ResourceClassList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClassList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClassList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ListMeta.create)
    ..pc<ResourceClass>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ResourceClass.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClassList clone() => ResourceClassList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClassList copyWith(void Function(ResourceClassList) updates) => super.copyWith((message) => updates(message as ResourceClassList)) as ResourceClassList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClassList create() => ResourceClassList._();
  ResourceClassList createEmptyInstance() => create();
  static $pb.PbList<ResourceClassList> createRepeated() => $pb.PbList<ResourceClassList>();
  @$core.pragma('dart2js:noInline')
  static ResourceClassList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClassList>(create);
  static ResourceClassList? _defaultInstance;

  /// Standard list metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ListMeta ensureMetadata() => $_ensure(0);

  /// Items is the list of resource classes.
  @$pb.TagNumber(2)
  $core.List<ResourceClass> get items => $_getList(1);
}

/// ResourceClassParameters defines resource requests for a ResourceClass in an
/// in-tree format understood by Kubernetes.
class ResourceClassParameters extends $pb.GeneratedMessage {
  factory ResourceClassParameters({
    $3.ObjectMeta? metadata,
    ResourceClassParametersReference? generatedFrom,
    $core.Iterable<VendorParameters>? vendorParameters,
    $core.Iterable<ResourceFilter>? filters,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (generatedFrom != null) {
      $result.generatedFrom = generatedFrom;
    }
    if (vendorParameters != null) {
      $result.vendorParameters.addAll(vendorParameters);
    }
    if (filters != null) {
      $result.filters.addAll(filters);
    }
    return $result;
  }
  ResourceClassParameters._() : super();
  factory ResourceClassParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClassParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClassParameters', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ObjectMeta.create)
    ..aOM<ResourceClassParametersReference>(2, _omitFieldNames ? '' : 'generatedFrom', protoName: 'generatedFrom', subBuilder: ResourceClassParametersReference.create)
    ..pc<VendorParameters>(3, _omitFieldNames ? '' : 'vendorParameters', $pb.PbFieldType.PM, protoName: 'vendorParameters', subBuilder: VendorParameters.create)
    ..pc<ResourceFilter>(4, _omitFieldNames ? '' : 'filters', $pb.PbFieldType.PM, subBuilder: ResourceFilter.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClassParameters clone() => ResourceClassParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClassParameters copyWith(void Function(ResourceClassParameters) updates) => super.copyWith((message) => updates(message as ResourceClassParameters)) as ResourceClassParameters;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClassParameters create() => ResourceClassParameters._();
  ResourceClassParameters createEmptyInstance() => create();
  static $pb.PbList<ResourceClassParameters> createRepeated() => $pb.PbList<ResourceClassParameters>();
  @$core.pragma('dart2js:noInline')
  static ResourceClassParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClassParameters>(create);
  static ResourceClassParameters? _defaultInstance;

  /// Standard object metadata
  @$pb.TagNumber(1)
  $3.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ObjectMeta ensureMetadata() => $_ensure(0);

  /// If this object was created from some other resource, then this links
  /// back to that resource. This field is used to find the in-tree representation
  /// of the class parameters when the parameter reference of the class refers
  /// to some unknown type.
  /// +optional
  @$pb.TagNumber(2)
  ResourceClassParametersReference get generatedFrom => $_getN(1);
  @$pb.TagNumber(2)
  set generatedFrom(ResourceClassParametersReference v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasGeneratedFrom() => $_has(1);
  @$pb.TagNumber(2)
  void clearGeneratedFrom() => clearField(2);
  @$pb.TagNumber(2)
  ResourceClassParametersReference ensureGeneratedFrom() => $_ensure(1);

  ///  VendorParameters are arbitrary setup parameters for all claims using
  ///  this class. They are ignored while allocating the claim. There must
  ///  not be more than one entry per driver.
  ///
  ///  +listType=atomic
  ///  +optional
  @$pb.TagNumber(3)
  $core.List<VendorParameters> get vendorParameters => $_getList(2);

  ///  Filters describes additional contraints that must be met when using the class.
  ///
  ///  +listType=atomic
  @$pb.TagNumber(4)
  $core.List<ResourceFilter> get filters => $_getList(3);
}

/// ResourceClassParametersList is a collection of ResourceClassParameters.
class ResourceClassParametersList extends $pb.GeneratedMessage {
  factory ResourceClassParametersList({
    $3.ListMeta? metadata,
    $core.Iterable<ResourceClassParameters>? items,
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
  ResourceClassParametersList._() : super();
  factory ResourceClassParametersList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClassParametersList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClassParametersList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ListMeta.create)
    ..pc<ResourceClassParameters>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ResourceClassParameters.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClassParametersList clone() => ResourceClassParametersList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClassParametersList copyWith(void Function(ResourceClassParametersList) updates) => super.copyWith((message) => updates(message as ResourceClassParametersList)) as ResourceClassParametersList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClassParametersList create() => ResourceClassParametersList._();
  ResourceClassParametersList createEmptyInstance() => create();
  static $pb.PbList<ResourceClassParametersList> createRepeated() => $pb.PbList<ResourceClassParametersList>();
  @$core.pragma('dart2js:noInline')
  static ResourceClassParametersList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClassParametersList>(create);
  static ResourceClassParametersList? _defaultInstance;

  /// Standard list metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ListMeta ensureMetadata() => $_ensure(0);

  /// Items is the list of node resource capacity objects.
  @$pb.TagNumber(2)
  $core.List<ResourceClassParameters> get items => $_getList(1);
}

/// ResourceClassParametersReference contains enough information to let you
/// locate the parameters for a ResourceClass.
class ResourceClassParametersReference extends $pb.GeneratedMessage {
  factory ResourceClassParametersReference({
    $core.String? apiGroup,
    $core.String? kind,
    $core.String? name,
    $core.String? namespace,
  }) {
    final $result = create();
    if (apiGroup != null) {
      $result.apiGroup = apiGroup;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (name != null) {
      $result.name = name;
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    return $result;
  }
  ResourceClassParametersReference._() : super();
  factory ResourceClassParametersReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceClassParametersReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceClassParametersReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiGroup', protoName: 'apiGroup')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..aOS(3, _omitFieldNames ? '' : 'name')
    ..aOS(4, _omitFieldNames ? '' : 'namespace')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceClassParametersReference clone() => ResourceClassParametersReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceClassParametersReference copyWith(void Function(ResourceClassParametersReference) updates) => super.copyWith((message) => updates(message as ResourceClassParametersReference)) as ResourceClassParametersReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceClassParametersReference create() => ResourceClassParametersReference._();
  ResourceClassParametersReference createEmptyInstance() => create();
  static $pb.PbList<ResourceClassParametersReference> createRepeated() => $pb.PbList<ResourceClassParametersReference>();
  @$core.pragma('dart2js:noInline')
  static ResourceClassParametersReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceClassParametersReference>(create);
  static ResourceClassParametersReference? _defaultInstance;

  /// APIGroup is the group for the resource being referenced. It is
  /// empty for the core API. This matches the group in the APIVersion
  /// that is used when creating the resources.
  /// +optional
  @$pb.TagNumber(1)
  $core.String get apiGroup => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiGroup($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiGroup() => clearField(1);

  /// Kind is the type of resource being referenced. This is the same
  /// value as in the parameter object's metadata.
  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);

  /// Name is the name of resource being referenced.
  @$pb.TagNumber(3)
  $core.String get name => $_getSZ(2);
  @$pb.TagNumber(3)
  set name($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasName() => $_has(2);
  @$pb.TagNumber(3)
  void clearName() => clearField(3);

  /// Namespace that contains the referenced resource. Must be empty
  /// for cluster-scoped resources and non-empty for namespaced
  /// resources.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get namespace => $_getSZ(3);
  @$pb.TagNumber(4)
  set namespace($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNamespace() => $_has(3);
  @$pb.TagNumber(4)
  void clearNamespace() => clearField(4);
}

/// ResourceFilter is a filter for resources from one particular driver.
class ResourceFilter extends $pb.GeneratedMessage {
  factory ResourceFilter({
    $core.String? driverName,
    ResourceFilterModel? resourceFilterModel,
  }) {
    final $result = create();
    if (driverName != null) {
      $result.driverName = driverName;
    }
    if (resourceFilterModel != null) {
      $result.resourceFilterModel = resourceFilterModel;
    }
    return $result;
  }
  ResourceFilter._() : super();
  factory ResourceFilter.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceFilter.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceFilter', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'driverName', protoName: 'driverName')
    ..aOM<ResourceFilterModel>(2, _omitFieldNames ? '' : 'resourceFilterModel', protoName: 'resourceFilterModel', subBuilder: ResourceFilterModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceFilter clone() => ResourceFilter()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceFilter copyWith(void Function(ResourceFilter) updates) => super.copyWith((message) => updates(message as ResourceFilter)) as ResourceFilter;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceFilter create() => ResourceFilter._();
  ResourceFilter createEmptyInstance() => create();
  static $pb.PbList<ResourceFilter> createRepeated() => $pb.PbList<ResourceFilter>();
  @$core.pragma('dart2js:noInline')
  static ResourceFilter getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceFilter>(create);
  static ResourceFilter? _defaultInstance;

  /// DriverName is the name used by the DRA driver kubelet plugin.
  @$pb.TagNumber(1)
  $core.String get driverName => $_getSZ(0);
  @$pb.TagNumber(1)
  set driverName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDriverName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDriverName() => clearField(1);

  @$pb.TagNumber(2)
  ResourceFilterModel get resourceFilterModel => $_getN(1);
  @$pb.TagNumber(2)
  set resourceFilterModel(ResourceFilterModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResourceFilterModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourceFilterModel() => clearField(2);
  @$pb.TagNumber(2)
  ResourceFilterModel ensureResourceFilterModel() => $_ensure(1);
}

/// ResourceFilterModel must have one and only one field set.
class ResourceFilterModel extends $pb.GeneratedMessage {
  factory ResourceFilterModel({
    NamedResourcesFilter? namedResources,
  }) {
    final $result = create();
    if (namedResources != null) {
      $result.namedResources = namedResources;
    }
    return $result;
  }
  ResourceFilterModel._() : super();
  factory ResourceFilterModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceFilterModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceFilterModel', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<NamedResourcesFilter>(1, _omitFieldNames ? '' : 'namedResources', protoName: 'namedResources', subBuilder: NamedResourcesFilter.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceFilterModel clone() => ResourceFilterModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceFilterModel copyWith(void Function(ResourceFilterModel) updates) => super.copyWith((message) => updates(message as ResourceFilterModel)) as ResourceFilterModel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceFilterModel create() => ResourceFilterModel._();
  ResourceFilterModel createEmptyInstance() => create();
  static $pb.PbList<ResourceFilterModel> createRepeated() => $pb.PbList<ResourceFilterModel>();
  @$core.pragma('dart2js:noInline')
  static ResourceFilterModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceFilterModel>(create);
  static ResourceFilterModel? _defaultInstance;

  ///  NamedResources describes a resource filter using the named resources model.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  NamedResourcesFilter get namedResources => $_getN(0);
  @$pb.TagNumber(1)
  set namedResources(NamedResourcesFilter v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamedResources() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamedResources() => clearField(1);
  @$pb.TagNumber(1)
  NamedResourcesFilter ensureNamedResources() => $_ensure(0);
}

/// ResourceHandle holds opaque resource data for processing by a specific kubelet plugin.
class ResourceHandle extends $pb.GeneratedMessage {
  factory ResourceHandle({
    $core.String? driverName,
    $core.String? data,
    StructuredResourceHandle? structuredData,
  }) {
    final $result = create();
    if (driverName != null) {
      $result.driverName = driverName;
    }
    if (data != null) {
      $result.data = data;
    }
    if (structuredData != null) {
      $result.structuredData = structuredData;
    }
    return $result;
  }
  ResourceHandle._() : super();
  factory ResourceHandle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceHandle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceHandle', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'driverName', protoName: 'driverName')
    ..aOS(2, _omitFieldNames ? '' : 'data')
    ..aOM<StructuredResourceHandle>(5, _omitFieldNames ? '' : 'structuredData', protoName: 'structuredData', subBuilder: StructuredResourceHandle.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceHandle clone() => ResourceHandle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceHandle copyWith(void Function(ResourceHandle) updates) => super.copyWith((message) => updates(message as ResourceHandle)) as ResourceHandle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceHandle create() => ResourceHandle._();
  ResourceHandle createEmptyInstance() => create();
  static $pb.PbList<ResourceHandle> createRepeated() => $pb.PbList<ResourceHandle>();
  @$core.pragma('dart2js:noInline')
  static ResourceHandle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceHandle>(create);
  static ResourceHandle? _defaultInstance;

  /// DriverName specifies the name of the resource driver whose kubelet
  /// plugin should be invoked to process this ResourceHandle's data once it
  /// lands on a node. This may differ from the DriverName set in
  /// ResourceClaimStatus this ResourceHandle is embedded in.
  @$pb.TagNumber(1)
  $core.String get driverName => $_getSZ(0);
  @$pb.TagNumber(1)
  set driverName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDriverName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDriverName() => clearField(1);

  ///  Data contains the opaque data associated with this ResourceHandle. It is
  ///  set by the controller component of the resource driver whose name
  ///  matches the DriverName set in the ResourceClaimStatus this
  ///  ResourceHandle is embedded in. It is set at allocation time and is
  ///  intended for processing by the kubelet plugin whose name matches
  ///  the DriverName set in this ResourceHandle.
  ///
  ///  The maximum size of this field is 16KiB. This may get increased in the
  ///  future, but not reduced.
  ///  +optional
  @$pb.TagNumber(2)
  $core.String get data => $_getSZ(1);
  @$pb.TagNumber(2)
  set data($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasData() => $_has(1);
  @$pb.TagNumber(2)
  void clearData() => clearField(2);

  ///  If StructuredData is set, then it needs to be used instead of Data.
  ///
  ///  +optional
  @$pb.TagNumber(5)
  StructuredResourceHandle get structuredData => $_getN(2);
  @$pb.TagNumber(5)
  set structuredData(StructuredResourceHandle v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasStructuredData() => $_has(2);
  @$pb.TagNumber(5)
  void clearStructuredData() => clearField(5);
  @$pb.TagNumber(5)
  StructuredResourceHandle ensureStructuredData() => $_ensure(2);
}

/// ResourceModel must have one and only one field set.
class ResourceModel extends $pb.GeneratedMessage {
  factory ResourceModel({
    NamedResourcesResources? namedResources,
  }) {
    final $result = create();
    if (namedResources != null) {
      $result.namedResources = namedResources;
    }
    return $result;
  }
  ResourceModel._() : super();
  factory ResourceModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceModel', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<NamedResourcesResources>(1, _omitFieldNames ? '' : 'namedResources', protoName: 'namedResources', subBuilder: NamedResourcesResources.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceModel clone() => ResourceModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceModel copyWith(void Function(ResourceModel) updates) => super.copyWith((message) => updates(message as ResourceModel)) as ResourceModel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceModel create() => ResourceModel._();
  ResourceModel createEmptyInstance() => create();
  static $pb.PbList<ResourceModel> createRepeated() => $pb.PbList<ResourceModel>();
  @$core.pragma('dart2js:noInline')
  static ResourceModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceModel>(create);
  static ResourceModel? _defaultInstance;

  ///  NamedResources describes available resources using the named resources model.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  NamedResourcesResources get namedResources => $_getN(0);
  @$pb.TagNumber(1)
  set namedResources(NamedResourcesResources v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamedResources() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamedResources() => clearField(1);
  @$pb.TagNumber(1)
  NamedResourcesResources ensureNamedResources() => $_ensure(0);
}

/// ResourceRequest is a request for resources from one particular driver.
class ResourceRequest extends $pb.GeneratedMessage {
  factory ResourceRequest({
    $1.RawExtension? vendorParameters,
    ResourceRequestModel? resourceRequestModel,
  }) {
    final $result = create();
    if (vendorParameters != null) {
      $result.vendorParameters = vendorParameters;
    }
    if (resourceRequestModel != null) {
      $result.resourceRequestModel = resourceRequestModel;
    }
    return $result;
  }
  ResourceRequest._() : super();
  factory ResourceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$1.RawExtension>(1, _omitFieldNames ? '' : 'vendorParameters', protoName: 'vendorParameters', subBuilder: $1.RawExtension.create)
    ..aOM<ResourceRequestModel>(2, _omitFieldNames ? '' : 'resourceRequestModel', protoName: 'resourceRequestModel', subBuilder: ResourceRequestModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceRequest clone() => ResourceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceRequest copyWith(void Function(ResourceRequest) updates) => super.copyWith((message) => updates(message as ResourceRequest)) as ResourceRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceRequest create() => ResourceRequest._();
  ResourceRequest createEmptyInstance() => create();
  static $pb.PbList<ResourceRequest> createRepeated() => $pb.PbList<ResourceRequest>();
  @$core.pragma('dart2js:noInline')
  static ResourceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceRequest>(create);
  static ResourceRequest? _defaultInstance;

  ///  VendorParameters are arbitrary setup parameters for the requested
  ///  resource. They are ignored while allocating a claim.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  $1.RawExtension get vendorParameters => $_getN(0);
  @$pb.TagNumber(1)
  set vendorParameters($1.RawExtension v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVendorParameters() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorParameters() => clearField(1);
  @$pb.TagNumber(1)
  $1.RawExtension ensureVendorParameters() => $_ensure(0);

  @$pb.TagNumber(2)
  ResourceRequestModel get resourceRequestModel => $_getN(1);
  @$pb.TagNumber(2)
  set resourceRequestModel(ResourceRequestModel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResourceRequestModel() => $_has(1);
  @$pb.TagNumber(2)
  void clearResourceRequestModel() => clearField(2);
  @$pb.TagNumber(2)
  ResourceRequestModel ensureResourceRequestModel() => $_ensure(1);
}

/// ResourceRequestModel must have one and only one field set.
class ResourceRequestModel extends $pb.GeneratedMessage {
  factory ResourceRequestModel({
    NamedResourcesRequest? namedResources,
  }) {
    final $result = create();
    if (namedResources != null) {
      $result.namedResources = namedResources;
    }
    return $result;
  }
  ResourceRequestModel._() : super();
  factory ResourceRequestModel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceRequestModel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceRequestModel', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<NamedResourcesRequest>(1, _omitFieldNames ? '' : 'namedResources', protoName: 'namedResources', subBuilder: NamedResourcesRequest.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceRequestModel clone() => ResourceRequestModel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceRequestModel copyWith(void Function(ResourceRequestModel) updates) => super.copyWith((message) => updates(message as ResourceRequestModel)) as ResourceRequestModel;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceRequestModel create() => ResourceRequestModel._();
  ResourceRequestModel createEmptyInstance() => create();
  static $pb.PbList<ResourceRequestModel> createRepeated() => $pb.PbList<ResourceRequestModel>();
  @$core.pragma('dart2js:noInline')
  static ResourceRequestModel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceRequestModel>(create);
  static ResourceRequestModel? _defaultInstance;

  ///  NamedResources describes a request for resources with the named resources model.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  NamedResourcesRequest get namedResources => $_getN(0);
  @$pb.TagNumber(1)
  set namedResources(NamedResourcesRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamedResources() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamedResources() => clearField(1);
  @$pb.TagNumber(1)
  NamedResourcesRequest ensureNamedResources() => $_ensure(0);
}

/// ResourceSlice provides information about available
/// resources on individual nodes.
class ResourceSlice extends $pb.GeneratedMessage {
  factory ResourceSlice({
    $3.ObjectMeta? metadata,
    $core.String? nodeName,
    $core.String? driverName,
    ResourceModel? resourceModel,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (driverName != null) {
      $result.driverName = driverName;
    }
    if (resourceModel != null) {
      $result.resourceModel = resourceModel;
    }
    return $result;
  }
  ResourceSlice._() : super();
  factory ResourceSlice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceSlice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceSlice', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ObjectMeta.create)
    ..aOS(2, _omitFieldNames ? '' : 'nodeName', protoName: 'nodeName')
    ..aOS(3, _omitFieldNames ? '' : 'driverName', protoName: 'driverName')
    ..aOM<ResourceModel>(4, _omitFieldNames ? '' : 'resourceModel', protoName: 'resourceModel', subBuilder: ResourceModel.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceSlice clone() => ResourceSlice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceSlice copyWith(void Function(ResourceSlice) updates) => super.copyWith((message) => updates(message as ResourceSlice)) as ResourceSlice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceSlice create() => ResourceSlice._();
  ResourceSlice createEmptyInstance() => create();
  static $pb.PbList<ResourceSlice> createRepeated() => $pb.PbList<ResourceSlice>();
  @$core.pragma('dart2js:noInline')
  static ResourceSlice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceSlice>(create);
  static ResourceSlice? _defaultInstance;

  /// Standard object metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ObjectMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ObjectMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ObjectMeta ensureMetadata() => $_ensure(0);

  ///  NodeName identifies the node which provides the resources
  ///  if they are local to a node.
  ///
  ///  A field selector can be used to list only ResourceSlice
  ///  objects with a certain node name.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $core.String get nodeName => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeName($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeName() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeName() => clearField(2);

  /// DriverName identifies the DRA driver providing the capacity information.
  /// A field selector can be used to list only ResourceSlice
  /// objects with a certain driver name.
  @$pb.TagNumber(3)
  $core.String get driverName => $_getSZ(2);
  @$pb.TagNumber(3)
  set driverName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDriverName() => $_has(2);
  @$pb.TagNumber(3)
  void clearDriverName() => clearField(3);

  @$pb.TagNumber(4)
  ResourceModel get resourceModel => $_getN(3);
  @$pb.TagNumber(4)
  set resourceModel(ResourceModel v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasResourceModel() => $_has(3);
  @$pb.TagNumber(4)
  void clearResourceModel() => clearField(4);
  @$pb.TagNumber(4)
  ResourceModel ensureResourceModel() => $_ensure(3);
}

/// ResourceSliceList is a collection of ResourceSlices.
class ResourceSliceList extends $pb.GeneratedMessage {
  factory ResourceSliceList({
    $3.ListMeta? metadata,
    $core.Iterable<ResourceSlice>? items,
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
  ResourceSliceList._() : super();
  factory ResourceSliceList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResourceSliceList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ResourceSliceList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$3.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $3.ListMeta.create)
    ..pc<ResourceSlice>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: ResourceSlice.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResourceSliceList clone() => ResourceSliceList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResourceSliceList copyWith(void Function(ResourceSliceList) updates) => super.copyWith((message) => updates(message as ResourceSliceList)) as ResourceSliceList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ResourceSliceList create() => ResourceSliceList._();
  ResourceSliceList createEmptyInstance() => create();
  static $pb.PbList<ResourceSliceList> createRepeated() => $pb.PbList<ResourceSliceList>();
  @$core.pragma('dart2js:noInline')
  static ResourceSliceList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResourceSliceList>(create);
  static ResourceSliceList? _defaultInstance;

  /// Standard list metadata
  /// +optional
  @$pb.TagNumber(1)
  $3.ListMeta get metadata => $_getN(0);
  @$pb.TagNumber(1)
  set metadata($3.ListMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasMetadata() => $_has(0);
  @$pb.TagNumber(1)
  void clearMetadata() => clearField(1);
  @$pb.TagNumber(1)
  $3.ListMeta ensureMetadata() => $_ensure(0);

  /// Items is the list of node resource capacity objects.
  @$pb.TagNumber(2)
  $core.List<ResourceSlice> get items => $_getList(1);
}

/// StructuredResourceHandle is the in-tree representation of the allocation result.
class StructuredResourceHandle extends $pb.GeneratedMessage {
  factory StructuredResourceHandle({
    $1.RawExtension? vendorClassParameters,
    $1.RawExtension? vendorClaimParameters,
    $core.String? nodeName,
    $core.Iterable<DriverAllocationResult>? results,
  }) {
    final $result = create();
    if (vendorClassParameters != null) {
      $result.vendorClassParameters = vendorClassParameters;
    }
    if (vendorClaimParameters != null) {
      $result.vendorClaimParameters = vendorClaimParameters;
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (results != null) {
      $result.results.addAll(results);
    }
    return $result;
  }
  StructuredResourceHandle._() : super();
  factory StructuredResourceHandle.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StructuredResourceHandle.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'StructuredResourceHandle', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOM<$1.RawExtension>(1, _omitFieldNames ? '' : 'vendorClassParameters', protoName: 'vendorClassParameters', subBuilder: $1.RawExtension.create)
    ..aOM<$1.RawExtension>(2, _omitFieldNames ? '' : 'vendorClaimParameters', protoName: 'vendorClaimParameters', subBuilder: $1.RawExtension.create)
    ..aOS(4, _omitFieldNames ? '' : 'nodeName', protoName: 'nodeName')
    ..pc<DriverAllocationResult>(5, _omitFieldNames ? '' : 'results', $pb.PbFieldType.PM, subBuilder: DriverAllocationResult.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StructuredResourceHandle clone() => StructuredResourceHandle()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StructuredResourceHandle copyWith(void Function(StructuredResourceHandle) updates) => super.copyWith((message) => updates(message as StructuredResourceHandle)) as StructuredResourceHandle;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static StructuredResourceHandle create() => StructuredResourceHandle._();
  StructuredResourceHandle createEmptyInstance() => create();
  static $pb.PbList<StructuredResourceHandle> createRepeated() => $pb.PbList<StructuredResourceHandle>();
  @$core.pragma('dart2js:noInline')
  static StructuredResourceHandle getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StructuredResourceHandle>(create);
  static StructuredResourceHandle? _defaultInstance;

  ///  VendorClassParameters are the per-claim configuration parameters
  ///  from the resource class at the time that the claim was allocated.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  $1.RawExtension get vendorClassParameters => $_getN(0);
  @$pb.TagNumber(1)
  set vendorClassParameters($1.RawExtension v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasVendorClassParameters() => $_has(0);
  @$pb.TagNumber(1)
  void clearVendorClassParameters() => clearField(1);
  @$pb.TagNumber(1)
  $1.RawExtension ensureVendorClassParameters() => $_ensure(0);

  ///  VendorClaimParameters are the per-claim configuration parameters
  ///  from the resource claim parameters at the time that the claim was
  ///  allocated.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $1.RawExtension get vendorClaimParameters => $_getN(1);
  @$pb.TagNumber(2)
  set vendorClaimParameters($1.RawExtension v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasVendorClaimParameters() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorClaimParameters() => clearField(2);
  @$pb.TagNumber(2)
  $1.RawExtension ensureVendorClaimParameters() => $_ensure(1);

  ///  NodeName is the name of the node providing the necessary resources
  ///  if the resources are local to a node.
  ///
  ///  +optional
  @$pb.TagNumber(4)
  $core.String get nodeName => $_getSZ(2);
  @$pb.TagNumber(4)
  set nodeName($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasNodeName() => $_has(2);
  @$pb.TagNumber(4)
  void clearNodeName() => clearField(4);

  ///  Results lists all allocated driver resources.
  ///
  ///  +listType=atomic
  @$pb.TagNumber(5)
  $core.List<DriverAllocationResult> get results => $_getList(3);
}

/// VendorParameters are opaque parameters for one particular driver.
class VendorParameters extends $pb.GeneratedMessage {
  factory VendorParameters({
    $core.String? driverName,
    $1.RawExtension? parameters,
  }) {
    final $result = create();
    if (driverName != null) {
      $result.driverName = driverName;
    }
    if (parameters != null) {
      $result.parameters = parameters;
    }
    return $result;
  }
  VendorParameters._() : super();
  factory VendorParameters.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VendorParameters.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'VendorParameters', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.resource.v1alpha2'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'driverName', protoName: 'driverName')
    ..aOM<$1.RawExtension>(2, _omitFieldNames ? '' : 'parameters', subBuilder: $1.RawExtension.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VendorParameters clone() => VendorParameters()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VendorParameters copyWith(void Function(VendorParameters) updates) => super.copyWith((message) => updates(message as VendorParameters)) as VendorParameters;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static VendorParameters create() => VendorParameters._();
  VendorParameters createEmptyInstance() => create();
  static $pb.PbList<VendorParameters> createRepeated() => $pb.PbList<VendorParameters>();
  @$core.pragma('dart2js:noInline')
  static VendorParameters getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VendorParameters>(create);
  static VendorParameters? _defaultInstance;

  /// DriverName is the name used by the DRA driver kubelet plugin.
  @$pb.TagNumber(1)
  $core.String get driverName => $_getSZ(0);
  @$pb.TagNumber(1)
  set driverName($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDriverName() => $_has(0);
  @$pb.TagNumber(1)
  void clearDriverName() => clearField(1);

  ///  Parameters can be arbitrary setup parameters. They are ignored while
  ///  allocating a claim.
  ///
  ///  +optional
  @$pb.TagNumber(2)
  $1.RawExtension get parameters => $_getN(1);
  @$pb.TagNumber(2)
  set parameters($1.RawExtension v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasParameters() => $_has(1);
  @$pb.TagNumber(2)
  void clearParameters() => clearField(2);
  @$pb.TagNumber(2)
  $1.RawExtension ensureParameters() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
