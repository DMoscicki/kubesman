//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/util/intstr/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

///  IntOrString is a type that can hold an int32 or a string.  When used in
///  JSON or YAML marshalling and unmarshalling, it produces or consumes the
///  inner type.  This allows you to have, for example, a JSON field that can
///  accept a name or number.
///  TODO: Rename to Int32OrString
///
///  +protobuf=true
///  +protobuf.options.(gogoproto.goproto_stringer)=false
///  +k8s:openapi-gen=true
class IntOrString extends $pb.GeneratedMessage {
  factory IntOrString({
    $fixnum.Int64? type,
    $core.int? intVal,
    $core.String? strVal,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (intVal != null) {
      $result.intVal = intVal;
    }
    if (strVal != null) {
      $result.strVal = strVal;
    }
    return $result;
  }
  IntOrString._() : super();
  factory IntOrString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory IntOrString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'IntOrString', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.util.intstr'), createEmptyInstance: create)
    ..aInt64(1, _omitFieldNames ? '' : 'type')
    ..a<$core.int>(2, _omitFieldNames ? '' : 'intVal', $pb.PbFieldType.O3, protoName: 'intVal')
    ..aOS(3, _omitFieldNames ? '' : 'strVal', protoName: 'strVal')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  IntOrString clone() => IntOrString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  IntOrString copyWith(void Function(IntOrString) updates) => super.copyWith((message) => updates(message as IntOrString)) as IntOrString;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static IntOrString create() => IntOrString._();
  IntOrString createEmptyInstance() => create();
  static $pb.PbList<IntOrString> createRepeated() => $pb.PbList<IntOrString>();
  @$core.pragma('dart2js:noInline')
  static IntOrString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<IntOrString>(create);
  static IntOrString? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get type => $_getI64(0);
  @$pb.TagNumber(1)
  set type($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get intVal => $_getIZ(1);
  @$pb.TagNumber(2)
  set intVal($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIntVal() => $_has(1);
  @$pb.TagNumber(2)
  void clearIntVal() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get strVal => $_getSZ(2);
  @$pb.TagNumber(3)
  set strVal($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStrVal() => $_has(2);
  @$pb.TagNumber(3)
  void clearStrVal() => clearField(3);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
