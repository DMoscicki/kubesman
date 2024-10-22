//
//  Generated code. Do not modify.
//  source: api/discovery/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $1;
import '../../core/v1/generated.pb.dart' as $0;

/// Endpoint represents a single logical "backend" implementing a service.
class Endpoint extends $pb.GeneratedMessage {
  factory Endpoint({
    $core.Iterable<$core.String>? addresses,
    EndpointConditions? conditions,
    $core.String? hostname,
    $0.ObjectReference? targetRef,
    $core.Map<$core.String, $core.String>? topology,
    $core.String? nodeName,
    EndpointHints? hints,
  }) {
    final $result = create();
    if (addresses != null) {
      $result.addresses.addAll(addresses);
    }
    if (conditions != null) {
      $result.conditions = conditions;
    }
    if (hostname != null) {
      $result.hostname = hostname;
    }
    if (targetRef != null) {
      $result.targetRef = targetRef;
    }
    if (topology != null) {
      $result.topology.addAll(topology);
    }
    if (nodeName != null) {
      $result.nodeName = nodeName;
    }
    if (hints != null) {
      $result.hints = hints;
    }
    return $result;
  }
  Endpoint._() : super();
  factory Endpoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Endpoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Endpoint', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.discovery.v1beta1'), createEmptyInstance: create)
    ..pPS(1, _omitFieldNames ? '' : 'addresses')
    ..aOM<EndpointConditions>(2, _omitFieldNames ? '' : 'conditions', subBuilder: EndpointConditions.create)
    ..aOS(3, _omitFieldNames ? '' : 'hostname')
    ..aOM<$0.ObjectReference>(4, _omitFieldNames ? '' : 'targetRef', protoName: 'targetRef', subBuilder: $0.ObjectReference.create)
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'topology', entryClassName: 'Endpoint.TopologyEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.discovery.v1beta1'))
    ..aOS(6, _omitFieldNames ? '' : 'nodeName', protoName: 'nodeName')
    ..aOM<EndpointHints>(7, _omitFieldNames ? '' : 'hints', subBuilder: EndpointHints.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Endpoint clone() => Endpoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Endpoint copyWith(void Function(Endpoint) updates) => super.copyWith((message) => updates(message as Endpoint)) as Endpoint;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Endpoint create() => Endpoint._();
  Endpoint createEmptyInstance() => create();
  static $pb.PbList<Endpoint> createRepeated() => $pb.PbList<Endpoint>();
  @$core.pragma('dart2js:noInline')
  static Endpoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Endpoint>(create);
  static Endpoint? _defaultInstance;

  /// addresses of this endpoint. The contents of this field are interpreted
  /// according to the corresponding EndpointSlice addressType field. Consumers
  /// must handle different types of addresses in the context of their own
  /// capabilities. This must contain at least one address but no more than
  /// 100. These are all assumed to be fungible and clients may choose to only
  /// use the first element. Refer to: https://issue.k8s.io/106267
  /// +listType=set
  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);

  /// conditions contains information about the current status of the endpoint.
  @$pb.TagNumber(2)
  EndpointConditions get conditions => $_getN(1);
  @$pb.TagNumber(2)
  set conditions(EndpointConditions v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasConditions() => $_has(1);
  @$pb.TagNumber(2)
  void clearConditions() => clearField(2);
  @$pb.TagNumber(2)
  EndpointConditions ensureConditions() => $_ensure(1);

  /// hostname of this endpoint. This field may be used by consumers of
  /// endpoints to distinguish endpoints from each other (e.g. in DNS names).
  /// Multiple endpoints which use the same hostname should be considered
  /// fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS
  /// Label (RFC 1123) validation.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get hostname => $_getSZ(2);
  @$pb.TagNumber(3)
  set hostname($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHostname() => $_has(2);
  @$pb.TagNumber(3)
  void clearHostname() => clearField(3);

  /// targetRef is a reference to a Kubernetes object that represents this
  /// endpoint.
  /// +optional
  @$pb.TagNumber(4)
  $0.ObjectReference get targetRef => $_getN(3);
  @$pb.TagNumber(4)
  set targetRef($0.ObjectReference v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasTargetRef() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetRef() => clearField(4);
  @$pb.TagNumber(4)
  $0.ObjectReference ensureTargetRef() => $_ensure(3);

  /// topology contains arbitrary topology information associated with the
  /// endpoint. These key/value pairs must conform with the label format.
  /// https://kubernetes.io/docs/concepts/overview/working-with-objects/labels
  /// Topology may include a maximum of 16 key/value pairs. This includes, but
  /// is not limited to the following well known keys:
  /// * kubernetes.io/hostname: the value indicates the hostname of the node
  ///   where the endpoint is located. This should match the corresponding
  ///   node label.
  /// * topology.kubernetes.io/zone: the value indicates the zone where the
  ///   endpoint is located. This should match the corresponding node label.
  /// * topology.kubernetes.io/region: the value indicates the region where the
  ///   endpoint is located. This should match the corresponding node label.
  /// This field is deprecated and will be removed in future api versions.
  /// +optional
  @$pb.TagNumber(5)
  $core.Map<$core.String, $core.String> get topology => $_getMap(4);

  /// nodeName represents the name of the Node hosting this endpoint. This can
  /// be used to determine endpoints local to a Node.
  /// +optional
  @$pb.TagNumber(6)
  $core.String get nodeName => $_getSZ(5);
  @$pb.TagNumber(6)
  set nodeName($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNodeName() => $_has(5);
  @$pb.TagNumber(6)
  void clearNodeName() => clearField(6);

  /// hints contains information associated with how an endpoint should be
  /// consumed.
  /// +featureGate=TopologyAwareHints
  /// +optional
  @$pb.TagNumber(7)
  EndpointHints get hints => $_getN(6);
  @$pb.TagNumber(7)
  set hints(EndpointHints v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasHints() => $_has(6);
  @$pb.TagNumber(7)
  void clearHints() => clearField(7);
  @$pb.TagNumber(7)
  EndpointHints ensureHints() => $_ensure(6);
}

/// EndpointConditions represents the current condition of an endpoint.
class EndpointConditions extends $pb.GeneratedMessage {
  factory EndpointConditions({
    $core.bool? ready,
    $core.bool? serving,
    $core.bool? terminating,
  }) {
    final $result = create();
    if (ready != null) {
      $result.ready = ready;
    }
    if (serving != null) {
      $result.serving = serving;
    }
    if (terminating != null) {
      $result.terminating = terminating;
    }
    return $result;
  }
  EndpointConditions._() : super();
  factory EndpointConditions.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndpointConditions.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EndpointConditions', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.discovery.v1beta1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'ready')
    ..aOB(2, _omitFieldNames ? '' : 'serving')
    ..aOB(3, _omitFieldNames ? '' : 'terminating')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EndpointConditions clone() => EndpointConditions()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EndpointConditions copyWith(void Function(EndpointConditions) updates) => super.copyWith((message) => updates(message as EndpointConditions)) as EndpointConditions;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EndpointConditions create() => EndpointConditions._();
  EndpointConditions createEmptyInstance() => create();
  static $pb.PbList<EndpointConditions> createRepeated() => $pb.PbList<EndpointConditions>();
  @$core.pragma('dart2js:noInline')
  static EndpointConditions getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndpointConditions>(create);
  static EndpointConditions? _defaultInstance;

  /// ready indicates that this endpoint is prepared to receive traffic,
  /// according to whatever system is managing the endpoint. A nil value
  /// indicates an unknown state. In most cases consumers should interpret this
  /// unknown state as ready. For compatibility reasons, ready should never be
  /// "true" for terminating endpoints.
  /// +optional
  @$pb.TagNumber(1)
  $core.bool get ready => $_getBF(0);
  @$pb.TagNumber(1)
  set ready($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasReady() => $_has(0);
  @$pb.TagNumber(1)
  void clearReady() => clearField(1);

  /// serving is identical to ready except that it is set regardless of the
  /// terminating state of endpoints. This condition should be set to true for
  /// a ready endpoint that is terminating. If nil, consumers should defer to
  /// the ready condition.
  /// +optional
  @$pb.TagNumber(2)
  $core.bool get serving => $_getBF(1);
  @$pb.TagNumber(2)
  set serving($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServing() => $_has(1);
  @$pb.TagNumber(2)
  void clearServing() => clearField(2);

  /// terminating indicates that this endpoint is terminating. A nil value
  /// indicates an unknown state. Consumers should interpret this unknown state
  /// to mean that the endpoint is not terminating.
  /// +optional
  @$pb.TagNumber(3)
  $core.bool get terminating => $_getBF(2);
  @$pb.TagNumber(3)
  set terminating($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTerminating() => $_has(2);
  @$pb.TagNumber(3)
  void clearTerminating() => clearField(3);
}

/// EndpointHints provides hints describing how an endpoint should be consumed.
class EndpointHints extends $pb.GeneratedMessage {
  factory EndpointHints({
    $core.Iterable<ForZone>? forZones,
  }) {
    final $result = create();
    if (forZones != null) {
      $result.forZones.addAll(forZones);
    }
    return $result;
  }
  EndpointHints._() : super();
  factory EndpointHints.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndpointHints.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EndpointHints', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.discovery.v1beta1'), createEmptyInstance: create)
    ..pc<ForZone>(1, _omitFieldNames ? '' : 'forZones', $pb.PbFieldType.PM, protoName: 'forZones', subBuilder: ForZone.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EndpointHints clone() => EndpointHints()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EndpointHints copyWith(void Function(EndpointHints) updates) => super.copyWith((message) => updates(message as EndpointHints)) as EndpointHints;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EndpointHints create() => EndpointHints._();
  EndpointHints createEmptyInstance() => create();
  static $pb.PbList<EndpointHints> createRepeated() => $pb.PbList<EndpointHints>();
  @$core.pragma('dart2js:noInline')
  static EndpointHints getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndpointHints>(create);
  static EndpointHints? _defaultInstance;

  /// forZones indicates the zone(s) this endpoint should be consumed by to
  /// enable topology aware routing. May contain a maximum of 8 entries.
  /// +listType=atomic
  @$pb.TagNumber(1)
  $core.List<ForZone> get forZones => $_getList(0);
}

/// EndpointPort represents a Port used by an EndpointSlice
class EndpointPort extends $pb.GeneratedMessage {
  factory EndpointPort({
    $core.String? name,
    $core.String? protocol,
    $core.int? port,
    $core.String? appProtocol,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (protocol != null) {
      $result.protocol = protocol;
    }
    if (port != null) {
      $result.port = port;
    }
    if (appProtocol != null) {
      $result.appProtocol = appProtocol;
    }
    return $result;
  }
  EndpointPort._() : super();
  factory EndpointPort.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndpointPort.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EndpointPort', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.discovery.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'protocol')
    ..a<$core.int>(3, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..aOS(4, _omitFieldNames ? '' : 'appProtocol', protoName: 'appProtocol')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EndpointPort clone() => EndpointPort()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EndpointPort copyWith(void Function(EndpointPort) updates) => super.copyWith((message) => updates(message as EndpointPort)) as EndpointPort;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EndpointPort create() => EndpointPort._();
  EndpointPort createEmptyInstance() => create();
  static $pb.PbList<EndpointPort> createRepeated() => $pb.PbList<EndpointPort>();
  @$core.pragma('dart2js:noInline')
  static EndpointPort getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndpointPort>(create);
  static EndpointPort? _defaultInstance;

  /// name represents the name of this port. All ports in an EndpointSlice must have a unique name.
  /// If the EndpointSlice is derived from a Kubernetes service, this corresponds to the Service.ports[].name.
  /// Name must either be an empty string or pass DNS_LABEL validation:
  /// * must be no more than 63 characters long.
  /// * must consist of lower case alphanumeric characters or '-'.
  /// * must start and end with an alphanumeric character.
  /// Default is empty string.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// protocol represents the IP protocol for this port.
  /// Must be UDP, TCP, or SCTP.
  /// Default is TCP.
  @$pb.TagNumber(2)
  $core.String get protocol => $_getSZ(1);
  @$pb.TagNumber(2)
  set protocol($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasProtocol() => $_has(1);
  @$pb.TagNumber(2)
  void clearProtocol() => clearField(2);

  /// port represents the port number of the endpoint.
  /// If this is not specified, ports are not restricted and must be
  /// interpreted in the context of the specific consumer.
  @$pb.TagNumber(3)
  $core.int get port => $_getIZ(2);
  @$pb.TagNumber(3)
  set port($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPort() => $_has(2);
  @$pb.TagNumber(3)
  void clearPort() => clearField(3);

  /// appProtocol represents the application protocol for this port.
  /// This field follows standard Kubernetes label syntax.
  /// Un-prefixed names are reserved for IANA standard service names (as per
  /// RFC-6335 and https://www.iana.org/assignments/service-names).
  /// Non-standard protocols should use prefixed names such as
  /// mycompany.com/my-custom-protocol.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get appProtocol => $_getSZ(3);
  @$pb.TagNumber(4)
  set appProtocol($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppProtocol() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppProtocol() => clearField(4);
}

/// EndpointSlice represents a subset of the endpoints that implement a service.
/// For a given service there may be multiple EndpointSlice objects, selected by
/// labels, which must be joined to produce the full set of endpoints.
class EndpointSlice extends $pb.GeneratedMessage {
  factory EndpointSlice({
    $1.ObjectMeta? metadata,
    $core.Iterable<Endpoint>? endpoints,
    $core.Iterable<EndpointPort>? ports,
    $core.String? addressType,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (endpoints != null) {
      $result.endpoints.addAll(endpoints);
    }
    if (ports != null) {
      $result.ports.addAll(ports);
    }
    if (addressType != null) {
      $result.addressType = addressType;
    }
    return $result;
  }
  EndpointSlice._() : super();
  factory EndpointSlice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndpointSlice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EndpointSlice', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.discovery.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ObjectMeta.create)
    ..pc<Endpoint>(2, _omitFieldNames ? '' : 'endpoints', $pb.PbFieldType.PM, subBuilder: Endpoint.create)
    ..pc<EndpointPort>(3, _omitFieldNames ? '' : 'ports', $pb.PbFieldType.PM, subBuilder: EndpointPort.create)
    ..aOS(4, _omitFieldNames ? '' : 'addressType', protoName: 'addressType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EndpointSlice clone() => EndpointSlice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EndpointSlice copyWith(void Function(EndpointSlice) updates) => super.copyWith((message) => updates(message as EndpointSlice)) as EndpointSlice;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EndpointSlice create() => EndpointSlice._();
  EndpointSlice createEmptyInstance() => create();
  static $pb.PbList<EndpointSlice> createRepeated() => $pb.PbList<EndpointSlice>();
  @$core.pragma('dart2js:noInline')
  static EndpointSlice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndpointSlice>(create);
  static EndpointSlice? _defaultInstance;

  /// Standard object's metadata.
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

  /// endpoints is a list of unique endpoints in this slice. Each slice may
  /// include a maximum of 1000 endpoints.
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<Endpoint> get endpoints => $_getList(1);

  /// ports specifies the list of network ports exposed by each endpoint in
  /// this slice. Each port must have a unique name. When ports is empty, it
  /// indicates that there are no defined ports. When a port is defined with a
  /// nil port value, it indicates "all ports". Each slice may include a
  /// maximum of 100 ports.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<EndpointPort> get ports => $_getList(2);

  /// addressType specifies the type of address carried by this EndpointSlice.
  /// All addresses in this slice must be the same type. This field is
  /// immutable after creation. The following address types are currently
  /// supported:
  /// * IPv4: Represents an IPv4 Address.
  /// * IPv6: Represents an IPv6 Address.
  /// * FQDN: Represents a Fully Qualified Domain Name.
  @$pb.TagNumber(4)
  $core.String get addressType => $_getSZ(3);
  @$pb.TagNumber(4)
  set addressType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAddressType() => $_has(3);
  @$pb.TagNumber(4)
  void clearAddressType() => clearField(4);
}

/// EndpointSliceList represents a list of endpoint slices
class EndpointSliceList extends $pb.GeneratedMessage {
  factory EndpointSliceList({
    $1.ListMeta? metadata,
    $core.Iterable<EndpointSlice>? items,
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
  EndpointSliceList._() : super();
  factory EndpointSliceList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EndpointSliceList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'EndpointSliceList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.discovery.v1beta1'), createEmptyInstance: create)
    ..aOM<$1.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ListMeta.create)
    ..pc<EndpointSlice>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: EndpointSlice.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EndpointSliceList clone() => EndpointSliceList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EndpointSliceList copyWith(void Function(EndpointSliceList) updates) => super.copyWith((message) => updates(message as EndpointSliceList)) as EndpointSliceList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EndpointSliceList create() => EndpointSliceList._();
  EndpointSliceList createEmptyInstance() => create();
  static $pb.PbList<EndpointSliceList> createRepeated() => $pb.PbList<EndpointSliceList>();
  @$core.pragma('dart2js:noInline')
  static EndpointSliceList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EndpointSliceList>(create);
  static EndpointSliceList? _defaultInstance;

  /// Standard list metadata.
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

  /// items is the list of endpoint slices
  @$pb.TagNumber(2)
  $core.List<EndpointSlice> get items => $_getList(1);
}

/// ForZone provides information about which zones should consume this endpoint.
class ForZone extends $pb.GeneratedMessage {
  factory ForZone({
    $core.String? name,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    return $result;
  }
  ForZone._() : super();
  factory ForZone.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForZone.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ForZone', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.discovery.v1beta1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForZone clone() => ForZone()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForZone copyWith(void Function(ForZone) updates) => super.copyWith((message) => updates(message as ForZone)) as ForZone;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ForZone create() => ForZone._();
  ForZone createEmptyInstance() => create();
  static $pb.PbList<ForZone> createRepeated() => $pb.PbList<ForZone>();
  @$core.pragma('dart2js:noInline')
  static ForZone getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForZone>(create);
  static ForZone? _defaultInstance;

  /// name represents the name of the zone.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
