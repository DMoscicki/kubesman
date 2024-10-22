//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/runtime/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

///  RawExtension is used to hold extensions in external versions.
///
///  To use this, make a field which has RawExtension as its type in your external, versioned
///  struct, and Object in your internal struct. You also need to register your
///  various plugin types.
///
///  // Internal package:
///
///  	type MyAPIObject struct {
///  		runtime.TypeMeta `json:",inline"`
///  		MyPlugin runtime.Object `json:"myPlugin"`
///  	}
///
///  	type PluginA struct {
///  		AOption string `json:"aOption"`
///  	}
///
///  // External package:
///
///  	type MyAPIObject struct {
///  		runtime.TypeMeta `json:",inline"`
///  		MyPlugin runtime.RawExtension `json:"myPlugin"`
///  	}
///
///  	type PluginA struct {
///  		AOption string `json:"aOption"`
///  	}
///
///  // On the wire, the JSON will look something like this:
///
///  	{
///  		"kind":"MyAPIObject",
///  		"apiVersion":"v1",
///  		"myPlugin": {
///  			"kind":"PluginA",
///  			"aOption":"foo",
///  		},
///  	}
///
///  So what happens? Decode first uses json or yaml to unmarshal the serialized data into
///  your external MyAPIObject. That causes the raw JSON to be stored, but not unpacked.
///  The next step is to copy (using pkg/conversion) into the internal struct. The runtime
///  package's DefaultScheme has conversion functions installed which will unpack the
///  JSON stored in RawExtension, turning it into the correct object type, and storing it
///  in the Object. (TODO: In the case where the object is of an unknown type, a
///  runtime.Unknown object will be created and stored.)
///
///  +k8s:deepcopy-gen=true
///  +protobuf=true
///  +k8s:openapi-gen=true
class RawExtension extends $pb.GeneratedMessage {
  factory RawExtension({
    $core.List<$core.int>? raw,
  }) {
    final $result = create();
    if (raw != null) {
      $result.raw = raw;
    }
    return $result;
  }
  RawExtension._() : super();
  factory RawExtension.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RawExtension.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'RawExtension', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.runtime'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'raw', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RawExtension clone() => RawExtension()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RawExtension copyWith(void Function(RawExtension) updates) => super.copyWith((message) => updates(message as RawExtension)) as RawExtension;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RawExtension create() => RawExtension._();
  RawExtension createEmptyInstance() => create();
  static $pb.PbList<RawExtension> createRepeated() => $pb.PbList<RawExtension>();
  @$core.pragma('dart2js:noInline')
  static RawExtension getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RawExtension>(create);
  static RawExtension? _defaultInstance;

  ///  Raw is the underlying serialization of this object.
  ///
  ///  TODO: Determine how to detect ContentType and ContentEncoding of 'Raw' data.
  @$pb.TagNumber(1)
  $core.List<$core.int> get raw => $_getN(0);
  @$pb.TagNumber(1)
  set raw($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRaw() => $_has(0);
  @$pb.TagNumber(1)
  void clearRaw() => clearField(1);
}

///  TypeMeta is shared by all top level objects. The proper way to use it is to inline it in your type,
///  like this:
///
///  	type MyAwesomeAPIObject struct {
///  	     runtime.TypeMeta    `json:",inline"`
///  	     ... // other fields
///  	}
///
///  func (obj *MyAwesomeAPIObject) SetGroupVersionKind(gvk *metav1.GroupVersionKind) { metav1.UpdateTypeMeta(obj,gvk) }; GroupVersionKind() *GroupVersionKind
///
///  TypeMeta is provided here for convenience. You may use it directly from this package or define
///  your own with the same fields.
///
///  +k8s:deepcopy-gen=false
///  +protobuf=true
///  +k8s:openapi-gen=true
class TypeMeta extends $pb.GeneratedMessage {
  factory TypeMeta({
    $core.String? apiVersion,
    $core.String? kind,
  }) {
    final $result = create();
    if (apiVersion != null) {
      $result.apiVersion = apiVersion;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    return $result;
  }
  TypeMeta._() : super();
  factory TypeMeta.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TypeMeta.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'TypeMeta', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.runtime'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'apiVersion', protoName: 'apiVersion')
    ..aOS(2, _omitFieldNames ? '' : 'kind')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TypeMeta clone() => TypeMeta()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TypeMeta copyWith(void Function(TypeMeta) updates) => super.copyWith((message) => updates(message as TypeMeta)) as TypeMeta;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TypeMeta create() => TypeMeta._();
  TypeMeta createEmptyInstance() => create();
  static $pb.PbList<TypeMeta> createRepeated() => $pb.PbList<TypeMeta>();
  @$core.pragma('dart2js:noInline')
  static TypeMeta getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TypeMeta>(create);
  static TypeMeta? _defaultInstance;

  /// +optional
  @$pb.TagNumber(1)
  $core.String get apiVersion => $_getSZ(0);
  @$pb.TagNumber(1)
  set apiVersion($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasApiVersion() => $_has(0);
  @$pb.TagNumber(1)
  void clearApiVersion() => clearField(1);

  /// +optional
  @$pb.TagNumber(2)
  $core.String get kind => $_getSZ(1);
  @$pb.TagNumber(2)
  set kind($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);
}

///  Unknown allows api objects with unknown types to be passed-through. This can be used
///  to deal with the API objects from a plug-in. Unknown objects still have functioning
///  TypeMeta features-- kind, version, etc.
///  TODO: Make this object have easy access to field based accessors and settors for
///  metadata and field mutatation.
///
///  +k8s:deepcopy-gen=true
///  +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
///  +protobuf=true
///  +k8s:openapi-gen=true
class Unknown extends $pb.GeneratedMessage {
  factory Unknown({
    TypeMeta? typeMeta,
    $core.List<$core.int>? raw,
    $core.String? contentEncoding,
    $core.String? contentType,
  }) {
    final $result = create();
    if (typeMeta != null) {
      $result.typeMeta = typeMeta;
    }
    if (raw != null) {
      $result.raw = raw;
    }
    if (contentEncoding != null) {
      $result.contentEncoding = contentEncoding;
    }
    if (contentType != null) {
      $result.contentType = contentType;
    }
    return $result;
  }
  Unknown._() : super();
  factory Unknown.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Unknown.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Unknown', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.runtime'), createEmptyInstance: create)
    ..aOM<TypeMeta>(1, _omitFieldNames ? '' : 'typeMeta', protoName: 'typeMeta', subBuilder: TypeMeta.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'raw', $pb.PbFieldType.OY)
    ..aOS(3, _omitFieldNames ? '' : 'contentEncoding', protoName: 'contentEncoding')
    ..aOS(4, _omitFieldNames ? '' : 'contentType', protoName: 'contentType')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Unknown clone() => Unknown()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Unknown copyWith(void Function(Unknown) updates) => super.copyWith((message) => updates(message as Unknown)) as Unknown;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Unknown create() => Unknown._();
  Unknown createEmptyInstance() => create();
  static $pb.PbList<Unknown> createRepeated() => $pb.PbList<Unknown>();
  @$core.pragma('dart2js:noInline')
  static Unknown getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Unknown>(create);
  static Unknown? _defaultInstance;

  @$pb.TagNumber(1)
  TypeMeta get typeMeta => $_getN(0);
  @$pb.TagNumber(1)
  set typeMeta(TypeMeta v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasTypeMeta() => $_has(0);
  @$pb.TagNumber(1)
  void clearTypeMeta() => clearField(1);
  @$pb.TagNumber(1)
  TypeMeta ensureTypeMeta() => $_ensure(0);

  /// Raw will hold the complete serialized object which couldn't be matched
  /// with a registered type. Most likely, nothing should be done with this
  /// except for passing it through the system.
  @$pb.TagNumber(2)
  $core.List<$core.int> get raw => $_getN(1);
  @$pb.TagNumber(2)
  set raw($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRaw() => $_has(1);
  @$pb.TagNumber(2)
  void clearRaw() => clearField(2);

  /// ContentEncoding is encoding used to encode 'Raw' data.
  /// Unspecified means no encoding.
  @$pb.TagNumber(3)
  $core.String get contentEncoding => $_getSZ(2);
  @$pb.TagNumber(3)
  set contentEncoding($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasContentEncoding() => $_has(2);
  @$pb.TagNumber(3)
  void clearContentEncoding() => clearField(3);

  /// ContentType  is serialization method used to serialize 'Raw'.
  /// Unspecified means ContentTypeJSON.
  @$pb.TagNumber(4)
  $core.String get contentType => $_getSZ(3);
  @$pb.TagNumber(4)
  set contentType($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasContentType() => $_has(3);
  @$pb.TagNumber(4)
  void clearContentType() => clearField(4);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
