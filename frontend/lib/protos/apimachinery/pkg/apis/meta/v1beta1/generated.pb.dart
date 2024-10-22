//
//  Generated code. Do not modify.
//  source: apimachinery/pkg/apis/meta/v1beta1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../v1/generated.pb.dart' as $0;

/// PartialObjectMetadataList contains a list of objects containing only their metadata.
/// +k8s:deepcopy-gen:interfaces=k8s.io/apimachinery/pkg/runtime.Object
class PartialObjectMetadataList extends $pb.GeneratedMessage {
  factory PartialObjectMetadataList({
    $core.Iterable<$0.PartialObjectMetadata>? items,
    $0.ListMeta? metadata,
  }) {
    final $result = create();
    if (items != null) {
      $result.items.addAll(items);
    }
    if (metadata != null) {
      $result.metadata = metadata;
    }
    return $result;
  }
  PartialObjectMetadataList._() : super();
  factory PartialObjectMetadataList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PartialObjectMetadataList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'PartialObjectMetadataList', package: const $pb.PackageName(_omitMessageNames ? '' : 'apimachinery.pkg.apis.meta.v1beta1'), createEmptyInstance: create)
    ..pc<$0.PartialObjectMetadata>(1, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: $0.PartialObjectMetadata.create)
    ..aOM<$0.ListMeta>(2, _omitFieldNames ? '' : 'metadata', subBuilder: $0.ListMeta.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PartialObjectMetadataList clone() => PartialObjectMetadataList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PartialObjectMetadataList copyWith(void Function(PartialObjectMetadataList) updates) => super.copyWith((message) => updates(message as PartialObjectMetadataList)) as PartialObjectMetadataList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static PartialObjectMetadataList create() => PartialObjectMetadataList._();
  PartialObjectMetadataList createEmptyInstance() => create();
  static $pb.PbList<PartialObjectMetadataList> createRepeated() => $pb.PbList<PartialObjectMetadataList>();
  @$core.pragma('dart2js:noInline')
  static PartialObjectMetadataList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PartialObjectMetadataList>(create);
  static PartialObjectMetadataList? _defaultInstance;

  /// items contains each of the included items.
  @$pb.TagNumber(1)
  $core.List<$0.PartialObjectMetadata> get items => $_getList(0);

  /// Standard list metadata.
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// +optional
  @$pb.TagNumber(2)
  $0.ListMeta get metadata => $_getN(1);
  @$pb.TagNumber(2)
  set metadata($0.ListMeta v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMetadata() => $_has(1);
  @$pb.TagNumber(2)
  void clearMetadata() => clearField(2);
  @$pb.TagNumber(2)
  $0.ListMeta ensureMetadata() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
