//
//  Generated code. Do not modify.
//  source: pod.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Pod extends $pb.GeneratedMessage {
  factory Pod({
    $core.String? name,
    $core.bool? active,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (active != null) {
      $result.active = active;
    }
    return $result;
  }
  Pod._() : super();
  factory Pod.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pod.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pod', package: const $pb.PackageName(_omitMessageNames ? '' : 'pod'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'active')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pod clone() => Pod()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pod copyWith(void Function(Pod) updates) => super.copyWith((message) => updates(message as Pod)) as Pod;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pod create() => Pod._();
  Pod createEmptyInstance() => create();
  static $pb.PbList<Pod> createRepeated() => $pb.PbList<Pod>();
  @$core.pragma('dart2js:noInline')
  static Pod getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pod>(create);
  static Pod? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get active => $_getBF(1);
  @$pb.TagNumber(2)
  set active($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasActive() => $_has(1);
  @$pb.TagNumber(2)
  void clearActive() => clearField(2);
}

class Pods extends $pb.GeneratedMessage {
  factory Pods({
    $core.Iterable<Pod>? pods,
  }) {
    final $result = create();
    if (pods != null) {
      $result.pods.addAll(pods);
    }
    return $result;
  }
  Pods._() : super();
  factory Pods.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Pods.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'Pods', package: const $pb.PackageName(_omitMessageNames ? '' : 'pod'), createEmptyInstance: create)
    ..pc<Pod>(1, _omitFieldNames ? '' : 'pods', $pb.PbFieldType.PM, subBuilder: Pod.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Pods clone() => Pods()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Pods copyWith(void Function(Pods) updates) => super.copyWith((message) => updates(message as Pods)) as Pods;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static Pods create() => Pods._();
  Pods createEmptyInstance() => create();
  static $pb.PbList<Pods> createRepeated() => $pb.PbList<Pods>();
  @$core.pragma('dart2js:noInline')
  static Pods getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Pods>(create);
  static Pods? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Pod> get pods => $_getList(0);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
