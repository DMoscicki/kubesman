//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/api/resource/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

///  Quantity is a fixed-point representation of a number.
///  It provides convenient marshaling/unmarshaling in JSON and YAML,
///  in addition to String() and AsInt64() accessors.
///
///  The serialization format is:
///
///  ```
///  <quantity>        ::= <signedNumber><suffix>
///
///  	(Note that <suffix> may be empty, from the "" case in <decimalSI>.)
///
///  <digit>           ::= 0 | 1 | ... | 9
///  <digits>          ::= <digit> | <digit><digits>
///  <number>          ::= <digits> | <digits>.<digits> | <digits>. | .<digits>
///  <sign>            ::= "+" | "-"
///  <signedNumber>    ::= <number> | <sign><number>
///  <suffix>          ::= <binarySI> | <decimalExponent> | <decimalSI>
///  <binarySI>        ::= Ki | Mi | Gi | Ti | Pi | Ei
///
///  	(International System of units; See: http://physics.nist.gov/cuu/Units/binary.html)
///
///  <decimalSI>       ::= m | "" | k | M | G | T | P | E
///
///  	(Note that 1024 = 1Ki but 1000 = 1k; I didn't choose the capitalization.)
///
///  <decimalExponent> ::= "e" <signedNumber> | "E" <signedNumber>
///  ```
///
///  No matter which of the three exponent forms is used, no quantity may represent
///  a number greater than 2^63-1 in magnitude, nor may it have more than 3 decimal
///  places. Numbers larger or more precise will be capped or rounded up.
///  (E.g.: 0.1m will rounded up to 1m.)
///  This may be extended in the future if we require larger or smaller quantities.
///
///  When a Quantity is parsed from a string, it will remember the type of suffix
///  it had, and will use the same type again when it is serialized.
///
///  Before serializing, Quantity will be put in "canonical form".
///  This means that Exponent/suffix will be adjusted up or down (with a
///  corresponding increase or decrease in Mantissa) such that:
///
///  - No precision is lost
///  - No fractional digits will be emitted
///  - The exponent (or suffix) is as large as possible.
///
///  The sign will be omitted unless the number is negative.
///
///  Examples:
///
///  - 1.5 will be serialized as "1500m"
///  - 1.5Gi will be serialized as "1536Mi"
///
///  Note that the quantity will NEVER be internally represented by a
///  floating point number. That is the whole point of this exercise.
///
///  Non-canonical values will still parse as long as they are well formed,
///  but will be re-emitted in their canonical form. (So always use canonical
///  form, or don't diff.)
///
///  This format is intended to make it difficult to use these numbers without
///  writing some sort of special handling code in the hopes that that will
///  cause implementors to also use a fixed point implementation.
///
///  +protobuf=true
///  +protobuf.embed=string
///  +protobuf.options.marshal=false
///  +protobuf.options.(gogoproto.goproto_stringer)=false
///  +k8s:deepcopy-gen=true
///  +k8s:openapi-gen=true
class Quantity extends $pb.GeneratedMessage {
  factory Quantity({
    $core.String? string,
  }) {
    final $result = create();
    if (string != null) {
      $result.string = string;
    }
    return $result;
  }
  Quantity._() : super();
  factory Quantity.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Quantity.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Quantity', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.api.resource'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'string')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Quantity clone() => Quantity()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Quantity copyWith(void Function(Quantity) updates) => super.copyWith((message) => updates(message as Quantity)) as Quantity;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Quantity create() => Quantity._();
  Quantity createEmptyInstance() => create();
  static $pb.PbList<Quantity> createRepeated() => $pb.PbList<Quantity>();
  @$core.pragma('dart2js:noInline')
  static Quantity getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Quantity>(create);
  static Quantity? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get string => $_getSZ(0);
  @$pb.TagNumber(1)
  set string($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasString() => $_has(0);
  @$pb.TagNumber(1)
  void clearString() => clearField(1);
}

///  QuantityValue makes it possible to use a Quantity as value for a command
///  line parameter.
///
///  +protobuf=true
///  +protobuf.embed=string
///  +protobuf.options.marshal=false
///  +protobuf.options.(gogoproto.goproto_stringer)=false
///  +k8s:deepcopy-gen=true
class QuantityValue extends $pb.GeneratedMessage {
  factory QuantityValue({
    $core.String? string,
  }) {
    final $result = create();
    if (string != null) {
      $result.string = string;
    }
    return $result;
  }
  QuantityValue._() : super();
  factory QuantityValue.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QuantityValue.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'QuantityValue', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.api.resource'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'string')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QuantityValue clone() => QuantityValue()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QuantityValue copyWith(void Function(QuantityValue) updates) => super.copyWith((message) => updates(message as QuantityValue)) as QuantityValue;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static QuantityValue create() => QuantityValue._();
  QuantityValue createEmptyInstance() => create();
  static $pb.PbList<QuantityValue> createRepeated() => $pb.PbList<QuantityValue>();
  @$core.pragma('dart2js:noInline')
  static QuantityValue getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QuantityValue>(create);
  static QuantityValue? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get string => $_getSZ(0);
  @$pb.TagNumber(1)
  set string($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasString() => $_has(0);
  @$pb.TagNumber(1)
  void clearString() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
