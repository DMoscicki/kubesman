//
//  Generated code. Do not modify.
//  source: api/scheduling/v1alpha1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;

/// DEPRECATED - This group version of PriorityClass is deprecated by scheduling.k8s.io/v1/PriorityClass.
/// PriorityClass defines mapping from a priority class name to the priority
/// integer value. The value can be any valid integer.
class PriorityClass extends $pb.GeneratedMessage {
  factory PriorityClass({
    $0.ObjectMeta? metadata,
    $core.int? value,
    $core.bool? globalDefault,
    $core.String? description,
    $core.String? preemptionPolicy,
  }) {
    final $result = create();
    if (metadata != null) {
      $result.metadata = metadata;
    }
    if (value != null) {
      $result.value = value;
    }
    if (globalDefault != null) {
      $result.globalDefault = globalDefault;
    }
    if (description != null) {
      $result.description = description;
    }
    if (preemptionPolicy != null) {
      $result.preemptionPolicy = preemptionPolicy;
    }
    return $result;
  }
  PriorityClass._() : super();
  factory PriorityClass.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriorityClass.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PriorityClass', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.scheduling.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ObjectMeta.create)
    ..a<$core.int>(2, _omitFieldNames ? '' : 'value', $pb.PbFieldType.O3)
    ..aOB(3, _omitFieldNames ? '' : 'globalDefault', protoName: 'globalDefault')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'preemptionPolicy', protoName: 'preemptionPolicy')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriorityClass clone() => PriorityClass()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriorityClass copyWith(void Function(PriorityClass) updates) => super.copyWith((message) => updates(message as PriorityClass)) as PriorityClass;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriorityClass create() => PriorityClass._();
  PriorityClass createEmptyInstance() => create();
  static $pb.PbList<PriorityClass> createRepeated() => $pb.PbList<PriorityClass>();
  @$core.pragma('dart2js:noInline')
  static PriorityClass getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriorityClass>(create);
  static PriorityClass? _defaultInstance;

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

  /// value represents the integer value of this priority class. This is the actual priority that pods
  /// receive when they have the name of this class in their pod spec.
  @$pb.TagNumber(2)
  $core.int get value => $_getIZ(1);
  @$pb.TagNumber(2)
  set value($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  /// globalDefault specifies whether this PriorityClass should be considered as
  /// the default priority for pods that do not have any priority class.
  /// Only one PriorityClass can be marked as `globalDefault`. However, if more than
  /// one PriorityClasses exists with their `globalDefault` field set to true,
  /// the smallest value of such global default PriorityClasses will be used as the default priority.
  /// +optional
  @$pb.TagNumber(3)
  $core.bool get globalDefault => $_getBF(2);
  @$pb.TagNumber(3)
  set globalDefault($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasGlobalDefault() => $_has(2);
  @$pb.TagNumber(3)
  void clearGlobalDefault() => clearField(3);

  /// description is an arbitrary string that usually provides guidelines on
  /// when this priority class should be used.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  /// preemptionPolicy is the Policy for preempting pods with lower priority.
  /// One of Never, PreemptLowerPriority.
  /// Defaults to PreemptLowerPriority if unset.
  /// +optional
  @$pb.TagNumber(5)
  $core.String get preemptionPolicy => $_getSZ(4);
  @$pb.TagNumber(5)
  set preemptionPolicy($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPreemptionPolicy() => $_has(4);
  @$pb.TagNumber(5)
  void clearPreemptionPolicy() => clearField(5);
}

/// PriorityClassList is a collection of priority classes.
class PriorityClassList extends $pb.GeneratedMessage {
  factory PriorityClassList({
    $0.ListMeta? metadata,
    $core.Iterable<PriorityClass>? items,
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
  PriorityClassList._() : super();
  factory PriorityClassList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PriorityClassList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PriorityClassList', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.scheduling.v1alpha1'), createEmptyInstance: create)
    ..aOM<$0.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..pc<PriorityClass>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: PriorityClass.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PriorityClassList clone() => PriorityClassList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PriorityClassList copyWith(void Function(PriorityClassList) updates) => super.copyWith((message) => updates(message as PriorityClassList)) as PriorityClassList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PriorityClassList create() => PriorityClassList._();
  PriorityClassList createEmptyInstance() => create();
  static $pb.PbList<PriorityClassList> createRepeated() => $pb.PbList<PriorityClassList>();
  @$core.pragma('dart2js:noInline')
  static PriorityClassList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PriorityClassList>(create);
  static PriorityClassList? _defaultInstance;

  /// Standard list metadata
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

  /// items is the list of PriorityClasses
  @$pb.TagNumber(2)
  $core.List<PriorityClass> get items => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
