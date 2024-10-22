//
//  Generated code. Do not modify.
//  source: apiextensions-apiserver/pkg/apis/apiextensions/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../../../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $1;
import '../../../../../apimachinery/pkg/runtime/generated.pb.dart' as $0;

/// ConversionRequest describes the conversion request parameters.
class ConversionRequest extends $pb.GeneratedMessage {
  factory ConversionRequest({
    $core.String? uid,
    $core.String? desiredAPIVersion,
    $core.Iterable<$0.RawExtension>? objects,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (desiredAPIVersion != null) {
      $result.desiredAPIVersion = desiredAPIVersion;
    }
    if (objects != null) {
      $result.objects.addAll(objects);
    }
    return $result;
  }
  ConversionRequest._() : super();
  factory ConversionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConversionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConversionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..aOS(2, _omitFieldNames ? '' : 'desiredAPIVersion', protoName: 'desiredAPIVersion')
    ..pc<$0.RawExtension>(3, _omitFieldNames ? '' : 'objects', $pb.PbFieldType.PM, subBuilder: $0.RawExtension.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConversionRequest clone() => ConversionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConversionRequest copyWith(void Function(ConversionRequest) updates) => super.copyWith((message) => updates(message as ConversionRequest)) as ConversionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConversionRequest create() => ConversionRequest._();
  ConversionRequest createEmptyInstance() => create();
  static $pb.PbList<ConversionRequest> createRepeated() => $pb.PbList<ConversionRequest>();
  @$core.pragma('dart2js:noInline')
  static ConversionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConversionRequest>(create);
  static ConversionRequest? _defaultInstance;

  /// uid is an identifier for the individual request/response. It allows distinguishing instances of requests which are
  /// otherwise identical (parallel requests, etc).
  /// The UID is meant to track the round trip (request/response) between the Kubernetes API server and the webhook, not the user request.
  /// It is suitable for correlating log entries between the webhook and apiserver, for either auditing or debugging.
  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  /// desiredAPIVersion is the version to convert given objects to. e.g. "myapi.example.com/v1"
  @$pb.TagNumber(2)
  $core.String get desiredAPIVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set desiredAPIVersion($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDesiredAPIVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearDesiredAPIVersion() => clearField(2);

  /// objects is the list of custom resource objects to be converted.
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$0.RawExtension> get objects => $_getList(2);
}

/// ConversionResponse describes a conversion response.
class ConversionResponse extends $pb.GeneratedMessage {
  factory ConversionResponse({
    $core.String? uid,
    $core.Iterable<$0.RawExtension>? convertedObjects,
    $1.Status? result,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (convertedObjects != null) {
      $result.convertedObjects.addAll(convertedObjects);
    }
    if (result != null) {
      $result.result = result;
    }
    return $result;
  }
  ConversionResponse._() : super();
  factory ConversionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConversionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConversionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..pc<$0.RawExtension>(2, _omitFieldNames ? '' : 'convertedObjects', $pb.PbFieldType.PM, protoName: 'convertedObjects', subBuilder: $0.RawExtension.create)
    ..aOM<$1.Status>(3, _omitFieldNames ? '' : 'result', subBuilder: $1.Status.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConversionResponse clone() => ConversionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConversionResponse copyWith(void Function(ConversionResponse) updates) => super.copyWith((message) => updates(message as ConversionResponse)) as ConversionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConversionResponse create() => ConversionResponse._();
  ConversionResponse createEmptyInstance() => create();
  static $pb.PbList<ConversionResponse> createRepeated() => $pb.PbList<ConversionResponse>();
  @$core.pragma('dart2js:noInline')
  static ConversionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConversionResponse>(create);
  static ConversionResponse? _defaultInstance;

  /// uid is an identifier for the individual request/response.
  /// This should be copied over from the corresponding `request.uid`.
  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  /// convertedObjects is the list of converted version of `request.objects` if the `result` is successful, otherwise empty.
  /// The webhook is expected to set `apiVersion` of these objects to the `request.desiredAPIVersion`. The list
  /// must also have the same size as the input list with the same objects in the same order (equal kind, metadata.uid, metadata.name and metadata.namespace).
  /// The webhook is allowed to mutate labels and annotations. Any other change to the metadata is silently ignored.
  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<$0.RawExtension> get convertedObjects => $_getList(1);

  /// result contains the result of conversion with extra details if the conversion failed. `result.status` determines if
  /// the conversion failed or succeeded. The `result.status` field is required and represents the success or failure of the
  /// conversion. A successful conversion must set `result.status` to `Success`. A failed conversion must set
  /// `result.status` to `Failure` and provide more details in `result.message` and return http status 200. The `result.message`
  /// will be used to construct an error message for the end user.
  @$pb.TagNumber(3)
  $1.Status get result => $_getN(2);
  @$pb.TagNumber(3)
  set result($1.Status v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResult() => $_has(2);
  @$pb.TagNumber(3)
  void clearResult() => clearField(3);
  @$pb.TagNumber(3)
  $1.Status ensureResult() => $_ensure(2);
}

/// ConversionReview describes a conversion request/response.
class ConversionReview extends $pb.GeneratedMessage {
  factory ConversionReview({
    ConversionRequest? request,
    ConversionResponse? response,
  }) {
    final $result = create();
    if (request != null) {
      $result.request = request;
    }
    if (response != null) {
      $result.response = response;
    }
    return $result;
  }
  ConversionReview._() : super();
  factory ConversionReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConversionReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ConversionReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<ConversionRequest>(1, _omitFieldNames ? '' : 'request', subBuilder: ConversionRequest.create)
    ..aOM<ConversionResponse>(2, _omitFieldNames ? '' : 'response', subBuilder: ConversionResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConversionReview clone() => ConversionReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConversionReview copyWith(void Function(ConversionReview) updates) => super.copyWith((message) => updates(message as ConversionReview)) as ConversionReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ConversionReview create() => ConversionReview._();
  ConversionReview createEmptyInstance() => create();
  static $pb.PbList<ConversionReview> createRepeated() => $pb.PbList<ConversionReview>();
  @$core.pragma('dart2js:noInline')
  static ConversionReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConversionReview>(create);
  static ConversionReview? _defaultInstance;

  /// request describes the attributes for the conversion request.
  /// +optional
  @$pb.TagNumber(1)
  ConversionRequest get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(ConversionRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  ConversionRequest ensureRequest() => $_ensure(0);

  /// response describes the attributes for the conversion response.
  /// +optional
  @$pb.TagNumber(2)
  ConversionResponse get response => $_getN(1);
  @$pb.TagNumber(2)
  set response(ConversionResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
  @$pb.TagNumber(2)
  ConversionResponse ensureResponse() => $_ensure(1);
}

/// CustomResourceColumnDefinition specifies a column for server side printing.
class CustomResourceColumnDefinition extends $pb.GeneratedMessage {
  factory CustomResourceColumnDefinition({
    $core.String? name,
    $core.String? type,
    $core.String? format,
    $core.String? description,
    $core.int? priority,
    $core.String? jsonPath,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (type != null) {
      $result.type = type;
    }
    if (format != null) {
      $result.format = format;
    }
    if (description != null) {
      $result.description = description;
    }
    if (priority != null) {
      $result.priority = priority;
    }
    if (jsonPath != null) {
      $result.jsonPath = jsonPath;
    }
    return $result;
  }
  CustomResourceColumnDefinition._() : super();
  factory CustomResourceColumnDefinition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceColumnDefinition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceColumnDefinition', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'type')
    ..aOS(3, _omitFieldNames ? '' : 'format')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..a<$core.int>(5, _omitFieldNames ? '' : 'priority', $pb.PbFieldType.O3)
    ..aOS(6, _omitFieldNames ? '' : 'jsonPath', protoName: 'jsonPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceColumnDefinition clone() => CustomResourceColumnDefinition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceColumnDefinition copyWith(void Function(CustomResourceColumnDefinition) updates) => super.copyWith((message) => updates(message as CustomResourceColumnDefinition)) as CustomResourceColumnDefinition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceColumnDefinition create() => CustomResourceColumnDefinition._();
  CustomResourceColumnDefinition createEmptyInstance() => create();
  static $pb.PbList<CustomResourceColumnDefinition> createRepeated() => $pb.PbList<CustomResourceColumnDefinition>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceColumnDefinition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceColumnDefinition>(create);
  static CustomResourceColumnDefinition? _defaultInstance;

  /// name is a human readable name for the column.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// type is an OpenAPI type definition for this column.
  /// See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  @$pb.TagNumber(2)
  $core.String get type => $_getSZ(1);
  @$pb.TagNumber(2)
  set type($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);

  /// format is an optional OpenAPI type definition for this column. The 'name' format is applied
  /// to the primary identifier column to assist in clients identifying column is the resource name.
  /// See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get format => $_getSZ(2);
  @$pb.TagNumber(3)
  set format($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFormat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFormat() => clearField(3);

  /// description is a human readable description of this column.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  /// priority is an integer defining the relative importance of this column compared to others. Lower
  /// numbers are considered higher priority. Columns that may be omitted in limited space scenarios
  /// should be given a priority greater than 0.
  /// +optional
  @$pb.TagNumber(5)
  $core.int get priority => $_getIZ(4);
  @$pb.TagNumber(5)
  set priority($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPriority() => $_has(4);
  @$pb.TagNumber(5)
  void clearPriority() => clearField(5);

  /// jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against
  /// each custom resource to produce the value for this column.
  @$pb.TagNumber(6)
  $core.String get jsonPath => $_getSZ(5);
  @$pb.TagNumber(6)
  set jsonPath($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasJsonPath() => $_has(5);
  @$pb.TagNumber(6)
  void clearJsonPath() => clearField(6);
}

/// CustomResourceConversion describes how to convert different versions of a CR.
class CustomResourceConversion extends $pb.GeneratedMessage {
  factory CustomResourceConversion({
    $core.String? strategy,
    WebhookConversion? webhook,
  }) {
    final $result = create();
    if (strategy != null) {
      $result.strategy = strategy;
    }
    if (webhook != null) {
      $result.webhook = webhook;
    }
    return $result;
  }
  CustomResourceConversion._() : super();
  factory CustomResourceConversion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceConversion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceConversion', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'strategy')
    ..aOM<WebhookConversion>(2, _omitFieldNames ? '' : 'webhook', subBuilder: WebhookConversion.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceConversion clone() => CustomResourceConversion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceConversion copyWith(void Function(CustomResourceConversion) updates) => super.copyWith((message) => updates(message as CustomResourceConversion)) as CustomResourceConversion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceConversion create() => CustomResourceConversion._();
  CustomResourceConversion createEmptyInstance() => create();
  static $pb.PbList<CustomResourceConversion> createRepeated() => $pb.PbList<CustomResourceConversion>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceConversion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceConversion>(create);
  static CustomResourceConversion? _defaultInstance;

  /// strategy specifies how custom resources are converted between versions. Allowed values are:
  /// - `"None"`: The converter only change the apiVersion and would not touch any other field in the custom resource.
  /// - `"Webhook"`: API Server will call to an external webhook to do the conversion. Additional information
  ///   is needed for this option. This requires spec.preserveUnknownFields to be false, and spec.conversion.webhook to be set.
  @$pb.TagNumber(1)
  $core.String get strategy => $_getSZ(0);
  @$pb.TagNumber(1)
  set strategy($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStrategy() => $_has(0);
  @$pb.TagNumber(1)
  void clearStrategy() => clearField(1);

  /// webhook describes how to call the conversion webhook. Required when `strategy` is set to `"Webhook"`.
  /// +optional
  @$pb.TagNumber(2)
  WebhookConversion get webhook => $_getN(1);
  @$pb.TagNumber(2)
  set webhook(WebhookConversion v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWebhook() => $_has(1);
  @$pb.TagNumber(2)
  void clearWebhook() => clearField(2);
  @$pb.TagNumber(2)
  WebhookConversion ensureWebhook() => $_ensure(1);
}

/// CustomResourceDefinition represents a resource that should be exposed on the API server.  Its name MUST be in the format
/// <.spec.name>.<.spec.group>.
class CustomResourceDefinition extends $pb.GeneratedMessage {
  factory CustomResourceDefinition({
    $1.ObjectMeta? metadata,
    CustomResourceDefinitionSpec? spec,
    CustomResourceDefinitionStatus? status,
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
  CustomResourceDefinition._() : super();
  factory CustomResourceDefinition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceDefinition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceDefinition', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<$1.ObjectMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ObjectMeta.create)
    ..aOM<CustomResourceDefinitionSpec>(2, _omitFieldNames ? '' : 'spec', subBuilder: CustomResourceDefinitionSpec.create)
    ..aOM<CustomResourceDefinitionStatus>(3, _omitFieldNames ? '' : 'status', subBuilder: CustomResourceDefinitionStatus.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceDefinition clone() => CustomResourceDefinition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceDefinition copyWith(void Function(CustomResourceDefinition) updates) => super.copyWith((message) => updates(message as CustomResourceDefinition)) as CustomResourceDefinition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinition create() => CustomResourceDefinition._();
  CustomResourceDefinition createEmptyInstance() => create();
  static $pb.PbList<CustomResourceDefinition> createRepeated() => $pb.PbList<CustomResourceDefinition>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceDefinition>(create);
  static CustomResourceDefinition? _defaultInstance;

  /// Standard object's metadata
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// spec describes how the user wants the resources to appear
  @$pb.TagNumber(2)
  CustomResourceDefinitionSpec get spec => $_getN(1);
  @$pb.TagNumber(2)
  set spec(CustomResourceDefinitionSpec v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpec() => clearField(2);
  @$pb.TagNumber(2)
  CustomResourceDefinitionSpec ensureSpec() => $_ensure(1);

  /// status indicates the actual state of the CustomResourceDefinition
  /// +optional
  @$pb.TagNumber(3)
  CustomResourceDefinitionStatus get status => $_getN(2);
  @$pb.TagNumber(3)
  set status(CustomResourceDefinitionStatus v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  CustomResourceDefinitionStatus ensureStatus() => $_ensure(2);
}

/// CustomResourceDefinitionCondition contains details for the current condition of this pod.
class CustomResourceDefinitionCondition extends $pb.GeneratedMessage {
  factory CustomResourceDefinitionCondition({
    $core.String? type,
    $core.String? status,
    $1.Time? lastTransitionTime,
    $core.String? reason,
    $core.String? message,
  }) {
    final $result = create();
    if (type != null) {
      $result.type = type;
    }
    if (status != null) {
      $result.status = status;
    }
    if (lastTransitionTime != null) {
      $result.lastTransitionTime = lastTransitionTime;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (message != null) {
      $result.message = message;
    }
    return $result;
  }
  CustomResourceDefinitionCondition._() : super();
  factory CustomResourceDefinitionCondition.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceDefinitionCondition.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceDefinitionCondition', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'type')
    ..aOS(2, _omitFieldNames ? '' : 'status')
    ..aOM<$1.Time>(3, _omitFieldNames ? '' : 'lastTransitionTime', protoName: 'lastTransitionTime', subBuilder: $1.Time.create)
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionCondition clone() => CustomResourceDefinitionCondition()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionCondition copyWith(void Function(CustomResourceDefinitionCondition) updates) => super.copyWith((message) => updates(message as CustomResourceDefinitionCondition)) as CustomResourceDefinitionCondition;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionCondition create() => CustomResourceDefinitionCondition._();
  CustomResourceDefinitionCondition createEmptyInstance() => create();
  static $pb.PbList<CustomResourceDefinitionCondition> createRepeated() => $pb.PbList<CustomResourceDefinitionCondition>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionCondition getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceDefinitionCondition>(create);
  static CustomResourceDefinitionCondition? _defaultInstance;

  /// type is the type of the condition. Types include Established, NamesAccepted and Terminating.
  @$pb.TagNumber(1)
  $core.String get type => $_getSZ(0);
  @$pb.TagNumber(1)
  set type($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  /// status is the status of the condition.
  /// Can be True, False, Unknown.
  @$pb.TagNumber(2)
  $core.String get status => $_getSZ(1);
  @$pb.TagNumber(2)
  set status($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  /// lastTransitionTime last time the condition transitioned from one status to another.
  /// +optional
  @$pb.TagNumber(3)
  $1.Time get lastTransitionTime => $_getN(2);
  @$pb.TagNumber(3)
  set lastTransitionTime($1.Time v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastTransitionTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastTransitionTime() => clearField(3);
  @$pb.TagNumber(3)
  $1.Time ensureLastTransitionTime() => $_ensure(2);

  /// reason is a unique, one-word, CamelCase reason for the condition's last transition.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// message is a human-readable message indicating details about last transition.
  /// +optional
  @$pb.TagNumber(5)
  $core.String get message => $_getSZ(4);
  @$pb.TagNumber(5)
  set message($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMessage() => $_has(4);
  @$pb.TagNumber(5)
  void clearMessage() => clearField(5);
}

/// CustomResourceDefinitionList is a list of CustomResourceDefinition objects.
class CustomResourceDefinitionList extends $pb.GeneratedMessage {
  factory CustomResourceDefinitionList({
    $1.ListMeta? metadata,
    $core.Iterable<CustomResourceDefinition>? items,
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
  CustomResourceDefinitionList._() : super();
  factory CustomResourceDefinitionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceDefinitionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceDefinitionList', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<$1.ListMeta>(1, _omitFieldNames ? '' : 'metadata', subBuilder: $1.ListMeta.create)
    ..pc<CustomResourceDefinition>(2, _omitFieldNames ? '' : 'items', $pb.PbFieldType.PM, subBuilder: CustomResourceDefinition.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionList clone() => CustomResourceDefinitionList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionList copyWith(void Function(CustomResourceDefinitionList) updates) => super.copyWith((message) => updates(message as CustomResourceDefinitionList)) as CustomResourceDefinitionList;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionList create() => CustomResourceDefinitionList._();
  CustomResourceDefinitionList createEmptyInstance() => create();
  static $pb.PbList<CustomResourceDefinitionList> createRepeated() => $pb.PbList<CustomResourceDefinitionList>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceDefinitionList>(create);
  static CustomResourceDefinitionList? _defaultInstance;

  /// Standard object's metadata
  /// More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
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

  /// items list individual CustomResourceDefinition objects
  @$pb.TagNumber(2)
  $core.List<CustomResourceDefinition> get items => $_getList(1);
}

/// CustomResourceDefinitionNames indicates the names to serve this CustomResourceDefinition
class CustomResourceDefinitionNames extends $pb.GeneratedMessage {
  factory CustomResourceDefinitionNames({
    $core.String? plural,
    $core.String? singular,
    $core.Iterable<$core.String>? shortNames,
    $core.String? kind,
    $core.String? listKind,
    $core.Iterable<$core.String>? categories,
  }) {
    final $result = create();
    if (plural != null) {
      $result.plural = plural;
    }
    if (singular != null) {
      $result.singular = singular;
    }
    if (shortNames != null) {
      $result.shortNames.addAll(shortNames);
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (listKind != null) {
      $result.listKind = listKind;
    }
    if (categories != null) {
      $result.categories.addAll(categories);
    }
    return $result;
  }
  CustomResourceDefinitionNames._() : super();
  factory CustomResourceDefinitionNames.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceDefinitionNames.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceDefinitionNames', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'plural')
    ..aOS(2, _omitFieldNames ? '' : 'singular')
    ..pPS(3, _omitFieldNames ? '' : 'shortNames', protoName: 'shortNames')
    ..aOS(4, _omitFieldNames ? '' : 'kind')
    ..aOS(5, _omitFieldNames ? '' : 'listKind', protoName: 'listKind')
    ..pPS(6, _omitFieldNames ? '' : 'categories')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionNames clone() => CustomResourceDefinitionNames()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionNames copyWith(void Function(CustomResourceDefinitionNames) updates) => super.copyWith((message) => updates(message as CustomResourceDefinitionNames)) as CustomResourceDefinitionNames;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionNames create() => CustomResourceDefinitionNames._();
  CustomResourceDefinitionNames createEmptyInstance() => create();
  static $pb.PbList<CustomResourceDefinitionNames> createRepeated() => $pb.PbList<CustomResourceDefinitionNames>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionNames getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceDefinitionNames>(create);
  static CustomResourceDefinitionNames? _defaultInstance;

  /// plural is the plural name of the resource to serve.
  /// The custom resources are served under `/apis/<group>/<version>/.../<plural>`.
  /// Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  /// Must be all lowercase.
  @$pb.TagNumber(1)
  $core.String get plural => $_getSZ(0);
  @$pb.TagNumber(1)
  set plural($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPlural() => $_has(0);
  @$pb.TagNumber(1)
  void clearPlural() => clearField(1);

  /// singular is the singular name of the resource. It must be all lowercase. Defaults to lowercased `kind`.
  /// +optional
  @$pb.TagNumber(2)
  $core.String get singular => $_getSZ(1);
  @$pb.TagNumber(2)
  set singular($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSingular() => $_has(1);
  @$pb.TagNumber(2)
  void clearSingular() => clearField(2);

  /// shortNames are short names for the resource, exposed in API discovery documents,
  /// and used by clients to support invocations like `kubectl get <shortname>`.
  /// It must be all lowercase.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$core.String> get shortNames => $_getList(2);

  /// kind is the serialized kind of the resource. It is normally CamelCase and singular.
  /// Custom resource instances will use this value as the `kind` attribute in API calls.
  @$pb.TagNumber(4)
  $core.String get kind => $_getSZ(3);
  @$pb.TagNumber(4)
  set kind($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasKind() => $_has(3);
  @$pb.TagNumber(4)
  void clearKind() => clearField(4);

  /// listKind is the serialized kind of the list for this resource. Defaults to "`kind`List".
  /// +optional
  @$pb.TagNumber(5)
  $core.String get listKind => $_getSZ(4);
  @$pb.TagNumber(5)
  set listKind($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasListKind() => $_has(4);
  @$pb.TagNumber(5)
  void clearListKind() => clearField(5);

  /// categories is a list of grouped resources this custom resource belongs to (e.g. 'all').
  /// This is published in API discovery documents, and used by clients to support invocations like
  /// `kubectl get all`.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(6)
  $core.List<$core.String> get categories => $_getList(5);
}

/// CustomResourceDefinitionSpec describes how a user wants their resource to appear
class CustomResourceDefinitionSpec extends $pb.GeneratedMessage {
  factory CustomResourceDefinitionSpec({
    $core.String? group,
    CustomResourceDefinitionNames? names,
    $core.String? scope,
    $core.Iterable<CustomResourceDefinitionVersion>? versions,
    CustomResourceConversion? conversion,
    $core.bool? preserveUnknownFields,
  }) {
    final $result = create();
    if (group != null) {
      $result.group = group;
    }
    if (names != null) {
      $result.names = names;
    }
    if (scope != null) {
      $result.scope = scope;
    }
    if (versions != null) {
      $result.versions.addAll(versions);
    }
    if (conversion != null) {
      $result.conversion = conversion;
    }
    if (preserveUnknownFields != null) {
      $result.preserveUnknownFields = preserveUnknownFields;
    }
    return $result;
  }
  CustomResourceDefinitionSpec._() : super();
  factory CustomResourceDefinitionSpec.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceDefinitionSpec.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceDefinitionSpec', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'group')
    ..aOM<CustomResourceDefinitionNames>(3, _omitFieldNames ? '' : 'names', subBuilder: CustomResourceDefinitionNames.create)
    ..aOS(4, _omitFieldNames ? '' : 'scope')
    ..pc<CustomResourceDefinitionVersion>(7, _omitFieldNames ? '' : 'versions', $pb.PbFieldType.PM, subBuilder: CustomResourceDefinitionVersion.create)
    ..aOM<CustomResourceConversion>(9, _omitFieldNames ? '' : 'conversion', subBuilder: CustomResourceConversion.create)
    ..aOB(10, _omitFieldNames ? '' : 'preserveUnknownFields', protoName: 'preserveUnknownFields')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionSpec clone() => CustomResourceDefinitionSpec()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionSpec copyWith(void Function(CustomResourceDefinitionSpec) updates) => super.copyWith((message) => updates(message as CustomResourceDefinitionSpec)) as CustomResourceDefinitionSpec;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionSpec create() => CustomResourceDefinitionSpec._();
  CustomResourceDefinitionSpec createEmptyInstance() => create();
  static $pb.PbList<CustomResourceDefinitionSpec> createRepeated() => $pb.PbList<CustomResourceDefinitionSpec>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionSpec getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceDefinitionSpec>(create);
  static CustomResourceDefinitionSpec? _defaultInstance;

  /// group is the API group of the defined custom resource.
  /// The custom resources are served under `/apis/<group>/...`.
  /// Must match the name of the CustomResourceDefinition (in the form `<names.plural>.<group>`).
  @$pb.TagNumber(1)
  $core.String get group => $_getSZ(0);
  @$pb.TagNumber(1)
  set group($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGroup() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroup() => clearField(1);

  /// names specify the resource and kind names for the custom resource.
  @$pb.TagNumber(3)
  CustomResourceDefinitionNames get names => $_getN(1);
  @$pb.TagNumber(3)
  set names(CustomResourceDefinitionNames v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasNames() => $_has(1);
  @$pb.TagNumber(3)
  void clearNames() => clearField(3);
  @$pb.TagNumber(3)
  CustomResourceDefinitionNames ensureNames() => $_ensure(1);

  /// scope indicates whether the defined custom resource is cluster- or namespace-scoped.
  /// Allowed values are `Cluster` and `Namespaced`.
  @$pb.TagNumber(4)
  $core.String get scope => $_getSZ(2);
  @$pb.TagNumber(4)
  set scope($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasScope() => $_has(2);
  @$pb.TagNumber(4)
  void clearScope() => clearField(4);

  /// versions is the list of all API versions of the defined custom resource.
  /// Version names are used to compute the order in which served versions are listed in API discovery.
  /// If the version string is "kube-like", it will sort above non "kube-like" version strings, which are ordered
  /// lexicographically. "Kube-like" versions start with a "v", then are followed by a number (the major version),
  /// then optionally the string "alpha" or "beta" and another number (the minor version). These are sorted first
  /// by GA > beta > alpha (where GA is a version with no suffix such as beta or alpha), and then by comparing
  /// major version, then minor version. An example sorted list of versions:
  /// v10, v2, v1, v11beta2, v10beta3, v3beta1, v12alpha1, v11alpha2, foo1, foo10.
  /// +listType=atomic
  @$pb.TagNumber(7)
  $core.List<CustomResourceDefinitionVersion> get versions => $_getList(3);

  /// conversion defines conversion settings for the CRD.
  /// +optional
  @$pb.TagNumber(9)
  CustomResourceConversion get conversion => $_getN(4);
  @$pb.TagNumber(9)
  set conversion(CustomResourceConversion v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasConversion() => $_has(4);
  @$pb.TagNumber(9)
  void clearConversion() => clearField(9);
  @$pb.TagNumber(9)
  CustomResourceConversion ensureConversion() => $_ensure(4);

  /// preserveUnknownFields indicates that object fields which are not specified
  /// in the OpenAPI schema should be preserved when persisting to storage.
  /// apiVersion, kind, metadata and known fields inside metadata are always preserved.
  /// This field is deprecated in favor of setting `x-preserve-unknown-fields` to true in `spec.versions[*].schema.openAPIV3Schema`.
  /// See https://kubernetes.io/docs/tasks/extend-kubernetes/custom-resources/custom-resource-definitions/#field-pruning for details.
  /// +optional
  @$pb.TagNumber(10)
  $core.bool get preserveUnknownFields => $_getBF(5);
  @$pb.TagNumber(10)
  set preserveUnknownFields($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(10)
  $core.bool hasPreserveUnknownFields() => $_has(5);
  @$pb.TagNumber(10)
  void clearPreserveUnknownFields() => clearField(10);
}

/// CustomResourceDefinitionStatus indicates the state of the CustomResourceDefinition
class CustomResourceDefinitionStatus extends $pb.GeneratedMessage {
  factory CustomResourceDefinitionStatus({
    $core.Iterable<CustomResourceDefinitionCondition>? conditions,
    CustomResourceDefinitionNames? acceptedNames,
    $core.Iterable<$core.String>? storedVersions,
  }) {
    final $result = create();
    if (conditions != null) {
      $result.conditions.addAll(conditions);
    }
    if (acceptedNames != null) {
      $result.acceptedNames = acceptedNames;
    }
    if (storedVersions != null) {
      $result.storedVersions.addAll(storedVersions);
    }
    return $result;
  }
  CustomResourceDefinitionStatus._() : super();
  factory CustomResourceDefinitionStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceDefinitionStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceDefinitionStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..pc<CustomResourceDefinitionCondition>(1, _omitFieldNames ? '' : 'conditions', $pb.PbFieldType.PM, subBuilder: CustomResourceDefinitionCondition.create)
    ..aOM<CustomResourceDefinitionNames>(2, _omitFieldNames ? '' : 'acceptedNames', protoName: 'acceptedNames', subBuilder: CustomResourceDefinitionNames.create)
    ..pPS(3, _omitFieldNames ? '' : 'storedVersions', protoName: 'storedVersions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionStatus clone() => CustomResourceDefinitionStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionStatus copyWith(void Function(CustomResourceDefinitionStatus) updates) => super.copyWith((message) => updates(message as CustomResourceDefinitionStatus)) as CustomResourceDefinitionStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionStatus create() => CustomResourceDefinitionStatus._();
  CustomResourceDefinitionStatus createEmptyInstance() => create();
  static $pb.PbList<CustomResourceDefinitionStatus> createRepeated() => $pb.PbList<CustomResourceDefinitionStatus>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceDefinitionStatus>(create);
  static CustomResourceDefinitionStatus? _defaultInstance;

  /// conditions indicate state for particular aspects of a CustomResourceDefinition
  /// +optional
  /// +listType=map
  /// +listMapKey=type
  @$pb.TagNumber(1)
  $core.List<CustomResourceDefinitionCondition> get conditions => $_getList(0);

  /// acceptedNames are the names that are actually being used to serve discovery.
  /// They may be different than the names in spec.
  /// +optional
  @$pb.TagNumber(2)
  CustomResourceDefinitionNames get acceptedNames => $_getN(1);
  @$pb.TagNumber(2)
  set acceptedNames(CustomResourceDefinitionNames v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAcceptedNames() => $_has(1);
  @$pb.TagNumber(2)
  void clearAcceptedNames() => clearField(2);
  @$pb.TagNumber(2)
  CustomResourceDefinitionNames ensureAcceptedNames() => $_ensure(1);

  /// storedVersions lists all versions of CustomResources that were ever persisted. Tracking these
  /// versions allows a migration path for stored versions in etcd. The field is mutable
  /// so a migration controller can finish a migration to another version (ensuring
  /// no old objects are left in storage), and then remove the rest of the
  /// versions from this list.
  /// Versions may not be removed from `spec.versions` while they exist in this list.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$core.String> get storedVersions => $_getList(2);
}

/// CustomResourceDefinitionVersion describes a version for CRD.
class CustomResourceDefinitionVersion extends $pb.GeneratedMessage {
  factory CustomResourceDefinitionVersion({
    $core.String? name,
    $core.bool? served,
    $core.bool? storage,
    CustomResourceValidation? schema,
    CustomResourceSubresources? subresources,
    $core.Iterable<CustomResourceColumnDefinition>? additionalPrinterColumns,
    $core.bool? deprecated,
    $core.String? deprecationWarning,
    $core.Iterable<SelectableField>? selectableFields,
  }) {
    final $result = create();
    if (name != null) {
      $result.name = name;
    }
    if (served != null) {
      $result.served = served;
    }
    if (storage != null) {
      $result.storage = storage;
    }
    if (schema != null) {
      $result.schema = schema;
    }
    if (subresources != null) {
      $result.subresources = subresources;
    }
    if (additionalPrinterColumns != null) {
      $result.additionalPrinterColumns.addAll(additionalPrinterColumns);
    }
    if (deprecated != null) {
      $result.deprecated = deprecated;
    }
    if (deprecationWarning != null) {
      $result.deprecationWarning = deprecationWarning;
    }
    if (selectableFields != null) {
      $result.selectableFields.addAll(selectableFields);
    }
    return $result;
  }
  CustomResourceDefinitionVersion._() : super();
  factory CustomResourceDefinitionVersion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceDefinitionVersion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceDefinitionVersion', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOB(2, _omitFieldNames ? '' : 'served')
    ..aOB(3, _omitFieldNames ? '' : 'storage')
    ..aOM<CustomResourceValidation>(4, _omitFieldNames ? '' : 'schema', subBuilder: CustomResourceValidation.create)
    ..aOM<CustomResourceSubresources>(5, _omitFieldNames ? '' : 'subresources', subBuilder: CustomResourceSubresources.create)
    ..pc<CustomResourceColumnDefinition>(6, _omitFieldNames ? '' : 'additionalPrinterColumns', $pb.PbFieldType.PM, protoName: 'additionalPrinterColumns', subBuilder: CustomResourceColumnDefinition.create)
    ..aOB(7, _omitFieldNames ? '' : 'deprecated')
    ..aOS(8, _omitFieldNames ? '' : 'deprecationWarning', protoName: 'deprecationWarning')
    ..pc<SelectableField>(9, _omitFieldNames ? '' : 'selectableFields', $pb.PbFieldType.PM, protoName: 'selectableFields', subBuilder: SelectableField.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionVersion clone() => CustomResourceDefinitionVersion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceDefinitionVersion copyWith(void Function(CustomResourceDefinitionVersion) updates) => super.copyWith((message) => updates(message as CustomResourceDefinitionVersion)) as CustomResourceDefinitionVersion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionVersion create() => CustomResourceDefinitionVersion._();
  CustomResourceDefinitionVersion createEmptyInstance() => create();
  static $pb.PbList<CustomResourceDefinitionVersion> createRepeated() => $pb.PbList<CustomResourceDefinitionVersion>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceDefinitionVersion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceDefinitionVersion>(create);
  static CustomResourceDefinitionVersion? _defaultInstance;

  /// name is the version name, e.g. “v1”, “v2beta1”, etc.
  /// The custom resources are served under this version at `/apis/<group>/<version>/...` if `served` is true.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => clearField(1);

  /// served is a flag enabling/disabling this version from being served via REST APIs
  @$pb.TagNumber(2)
  $core.bool get served => $_getBF(1);
  @$pb.TagNumber(2)
  set served($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasServed() => $_has(1);
  @$pb.TagNumber(2)
  void clearServed() => clearField(2);

  /// storage indicates this version should be used when persisting custom resources to storage.
  /// There must be exactly one version with storage=true.
  @$pb.TagNumber(3)
  $core.bool get storage => $_getBF(2);
  @$pb.TagNumber(3)
  set storage($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasStorage() => $_has(2);
  @$pb.TagNumber(3)
  void clearStorage() => clearField(3);

  /// schema describes the schema used for validation, pruning, and defaulting of this version of the custom resource.
  /// +optional
  @$pb.TagNumber(4)
  CustomResourceValidation get schema => $_getN(3);
  @$pb.TagNumber(4)
  set schema(CustomResourceValidation v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasSchema() => $_has(3);
  @$pb.TagNumber(4)
  void clearSchema() => clearField(4);
  @$pb.TagNumber(4)
  CustomResourceValidation ensureSchema() => $_ensure(3);

  /// subresources specify what subresources this version of the defined custom resource have.
  /// +optional
  @$pb.TagNumber(5)
  CustomResourceSubresources get subresources => $_getN(4);
  @$pb.TagNumber(5)
  set subresources(CustomResourceSubresources v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasSubresources() => $_has(4);
  @$pb.TagNumber(5)
  void clearSubresources() => clearField(5);
  @$pb.TagNumber(5)
  CustomResourceSubresources ensureSubresources() => $_ensure(4);

  /// additionalPrinterColumns specifies additional columns returned in Table output.
  /// See https://kubernetes.io/docs/reference/using-api/api-concepts/#receiving-resources-as-tables for details.
  /// If no columns are specified, a single column displaying the age of the custom resource is used.
  /// +optional
  /// +listType=atomic
  @$pb.TagNumber(6)
  $core.List<CustomResourceColumnDefinition> get additionalPrinterColumns => $_getList(5);

  /// deprecated indicates this version of the custom resource API is deprecated.
  /// When set to true, API requests to this version receive a warning header in the server response.
  /// Defaults to false.
  /// +optional
  @$pb.TagNumber(7)
  $core.bool get deprecated => $_getBF(6);
  @$pb.TagNumber(7)
  set deprecated($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDeprecated() => $_has(6);
  @$pb.TagNumber(7)
  void clearDeprecated() => clearField(7);

  /// deprecationWarning overrides the default warning returned to API clients.
  /// May only be set when `deprecated` is true.
  /// The default warning indicates this version is deprecated and recommends use
  /// of the newest served version of equal or greater stability, if one exists.
  /// +optional
  @$pb.TagNumber(8)
  $core.String get deprecationWarning => $_getSZ(7);
  @$pb.TagNumber(8)
  set deprecationWarning($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasDeprecationWarning() => $_has(7);
  @$pb.TagNumber(8)
  void clearDeprecationWarning() => clearField(8);

  ///  selectableFields specifies paths to fields that may be used as field selectors.
  ///  A maximum of 8 selectable fields are allowed.
  ///  See https://kubernetes.io/docs/concepts/overview/working-with-objects/field-selectors
  ///
  ///  +featureGate=CustomResourceFieldSelectors
  ///  +optional
  ///  +listType=atomic
  @$pb.TagNumber(9)
  $core.List<SelectableField> get selectableFields => $_getList(8);
}

/// CustomResourceSubresourceScale defines how to serve the scale subresource for CustomResources.
class CustomResourceSubresourceScale extends $pb.GeneratedMessage {
  factory CustomResourceSubresourceScale({
    $core.String? specReplicasPath,
    $core.String? statusReplicasPath,
    $core.String? labelSelectorPath,
  }) {
    final $result = create();
    if (specReplicasPath != null) {
      $result.specReplicasPath = specReplicasPath;
    }
    if (statusReplicasPath != null) {
      $result.statusReplicasPath = statusReplicasPath;
    }
    if (labelSelectorPath != null) {
      $result.labelSelectorPath = labelSelectorPath;
    }
    return $result;
  }
  CustomResourceSubresourceScale._() : super();
  factory CustomResourceSubresourceScale.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceSubresourceScale.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceSubresourceScale', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'specReplicasPath', protoName: 'specReplicasPath')
    ..aOS(2, _omitFieldNames ? '' : 'statusReplicasPath', protoName: 'statusReplicasPath')
    ..aOS(3, _omitFieldNames ? '' : 'labelSelectorPath', protoName: 'labelSelectorPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceSubresourceScale clone() => CustomResourceSubresourceScale()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceSubresourceScale copyWith(void Function(CustomResourceSubresourceScale) updates) => super.copyWith((message) => updates(message as CustomResourceSubresourceScale)) as CustomResourceSubresourceScale;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceSubresourceScale create() => CustomResourceSubresourceScale._();
  CustomResourceSubresourceScale createEmptyInstance() => create();
  static $pb.PbList<CustomResourceSubresourceScale> createRepeated() => $pb.PbList<CustomResourceSubresourceScale>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceSubresourceScale getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceSubresourceScale>(create);
  static CustomResourceSubresourceScale? _defaultInstance;

  /// specReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `spec.replicas`.
  /// Only JSON paths without the array notation are allowed.
  /// Must be a JSON Path under `.spec`.
  /// If there is no value under the given path in the custom resource, the `/scale` subresource will return an error on GET.
  @$pb.TagNumber(1)
  $core.String get specReplicasPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set specReplicasPath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpecReplicasPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpecReplicasPath() => clearField(1);

  /// statusReplicasPath defines the JSON path inside of a custom resource that corresponds to Scale `status.replicas`.
  /// Only JSON paths without the array notation are allowed.
  /// Must be a JSON Path under `.status`.
  /// If there is no value under the given path in the custom resource, the `status.replicas` value in the `/scale` subresource
  /// will default to 0.
  @$pb.TagNumber(2)
  $core.String get statusReplicasPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set statusReplicasPath($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStatusReplicasPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatusReplicasPath() => clearField(2);

  /// labelSelectorPath defines the JSON path inside of a custom resource that corresponds to Scale `status.selector`.
  /// Only JSON paths without the array notation are allowed.
  /// Must be a JSON Path under `.status` or `.spec`.
  /// Must be set to work with HorizontalPodAutoscaler.
  /// The field pointed by this JSON path must be a string field (not a complex selector struct)
  /// which contains a serialized label selector in string form.
  /// More info: https://kubernetes.io/docs/tasks/access-kubernetes-api/custom-resources/custom-resource-definitions#scale-subresource
  /// If there is no value under the given path in the custom resource, the `status.selector` value in the `/scale`
  /// subresource will default to the empty string.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get labelSelectorPath => $_getSZ(2);
  @$pb.TagNumber(3)
  set labelSelectorPath($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLabelSelectorPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearLabelSelectorPath() => clearField(3);
}

/// CustomResourceSubresourceStatus defines how to serve the status subresource for CustomResources.
/// Status is represented by the `.status` JSON path inside of a CustomResource. When set,
/// * exposes a /status subresource for the custom resource
/// * PUT requests to the /status subresource take a custom resource object, and ignore changes to anything except the status stanza
/// * PUT/POST/PATCH requests to the custom resource ignore changes to the status stanza
class CustomResourceSubresourceStatus extends $pb.GeneratedMessage {
  factory CustomResourceSubresourceStatus() => create();
  CustomResourceSubresourceStatus._() : super();
  factory CustomResourceSubresourceStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceSubresourceStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceSubresourceStatus', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceSubresourceStatus clone() => CustomResourceSubresourceStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceSubresourceStatus copyWith(void Function(CustomResourceSubresourceStatus) updates) => super.copyWith((message) => updates(message as CustomResourceSubresourceStatus)) as CustomResourceSubresourceStatus;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceSubresourceStatus create() => CustomResourceSubresourceStatus._();
  CustomResourceSubresourceStatus createEmptyInstance() => create();
  static $pb.PbList<CustomResourceSubresourceStatus> createRepeated() => $pb.PbList<CustomResourceSubresourceStatus>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceSubresourceStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceSubresourceStatus>(create);
  static CustomResourceSubresourceStatus? _defaultInstance;
}

/// CustomResourceSubresources defines the status and scale subresources for CustomResources.
class CustomResourceSubresources extends $pb.GeneratedMessage {
  factory CustomResourceSubresources({
    CustomResourceSubresourceStatus? status,
    CustomResourceSubresourceScale? scale,
  }) {
    final $result = create();
    if (status != null) {
      $result.status = status;
    }
    if (scale != null) {
      $result.scale = scale;
    }
    return $result;
  }
  CustomResourceSubresources._() : super();
  factory CustomResourceSubresources.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceSubresources.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceSubresources', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<CustomResourceSubresourceStatus>(1, _omitFieldNames ? '' : 'status', subBuilder: CustomResourceSubresourceStatus.create)
    ..aOM<CustomResourceSubresourceScale>(2, _omitFieldNames ? '' : 'scale', subBuilder: CustomResourceSubresourceScale.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceSubresources clone() => CustomResourceSubresources()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceSubresources copyWith(void Function(CustomResourceSubresources) updates) => super.copyWith((message) => updates(message as CustomResourceSubresources)) as CustomResourceSubresources;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceSubresources create() => CustomResourceSubresources._();
  CustomResourceSubresources createEmptyInstance() => create();
  static $pb.PbList<CustomResourceSubresources> createRepeated() => $pb.PbList<CustomResourceSubresources>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceSubresources getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceSubresources>(create);
  static CustomResourceSubresources? _defaultInstance;

  /// status indicates the custom resource should serve a `/status` subresource.
  /// When enabled:
  /// 1. requests to the custom resource primary endpoint ignore changes to the `status` stanza of the object.
  /// 2. requests to the custom resource `/status` subresource ignore changes to anything other than the `status` stanza of the object.
  /// +optional
  @$pb.TagNumber(1)
  CustomResourceSubresourceStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(CustomResourceSubresourceStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);
  @$pb.TagNumber(1)
  CustomResourceSubresourceStatus ensureStatus() => $_ensure(0);

  /// scale indicates the custom resource should serve a `/scale` subresource that returns an `autoscaling/v1` Scale object.
  /// +optional
  @$pb.TagNumber(2)
  CustomResourceSubresourceScale get scale => $_getN(1);
  @$pb.TagNumber(2)
  set scale(CustomResourceSubresourceScale v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasScale() => $_has(1);
  @$pb.TagNumber(2)
  void clearScale() => clearField(2);
  @$pb.TagNumber(2)
  CustomResourceSubresourceScale ensureScale() => $_ensure(1);
}

/// CustomResourceValidation is a list of validation methods for CustomResources.
class CustomResourceValidation extends $pb.GeneratedMessage {
  factory CustomResourceValidation({
    JSONSchemaProps? openAPIV3Schema,
  }) {
    final $result = create();
    if (openAPIV3Schema != null) {
      $result.openAPIV3Schema = openAPIV3Schema;
    }
    return $result;
  }
  CustomResourceValidation._() : super();
  factory CustomResourceValidation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CustomResourceValidation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'CustomResourceValidation', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<JSONSchemaProps>(1, _omitFieldNames ? '' : 'openAPIV3Schema', protoName: 'openAPIV3Schema', subBuilder: JSONSchemaProps.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CustomResourceValidation clone() => CustomResourceValidation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CustomResourceValidation copyWith(void Function(CustomResourceValidation) updates) => super.copyWith((message) => updates(message as CustomResourceValidation)) as CustomResourceValidation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomResourceValidation create() => CustomResourceValidation._();
  CustomResourceValidation createEmptyInstance() => create();
  static $pb.PbList<CustomResourceValidation> createRepeated() => $pb.PbList<CustomResourceValidation>();
  @$core.pragma('dart2js:noInline')
  static CustomResourceValidation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CustomResourceValidation>(create);
  static CustomResourceValidation? _defaultInstance;

  /// openAPIV3Schema is the OpenAPI v3 schema to use for validation and pruning.
  /// +optional
  @$pb.TagNumber(1)
  JSONSchemaProps get openAPIV3Schema => $_getN(0);
  @$pb.TagNumber(1)
  set openAPIV3Schema(JSONSchemaProps v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpenAPIV3Schema() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpenAPIV3Schema() => clearField(1);
  @$pb.TagNumber(1)
  JSONSchemaProps ensureOpenAPIV3Schema() => $_ensure(0);
}

/// ExternalDocumentation allows referencing an external resource for extended documentation.
class ExternalDocumentation extends $pb.GeneratedMessage {
  factory ExternalDocumentation({
    $core.String? description,
    $core.String? url,
  }) {
    final $result = create();
    if (description != null) {
      $result.description = description;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  ExternalDocumentation._() : super();
  factory ExternalDocumentation.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExternalDocumentation.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ExternalDocumentation', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'description')
    ..aOS(2, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExternalDocumentation clone() => ExternalDocumentation()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExternalDocumentation copyWith(void Function(ExternalDocumentation) updates) => super.copyWith((message) => updates(message as ExternalDocumentation)) as ExternalDocumentation;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ExternalDocumentation create() => ExternalDocumentation._();
  ExternalDocumentation createEmptyInstance() => create();
  static $pb.PbList<ExternalDocumentation> createRepeated() => $pb.PbList<ExternalDocumentation>();
  @$core.pragma('dart2js:noInline')
  static ExternalDocumentation getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExternalDocumentation>(create);
  static ExternalDocumentation? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get description => $_getSZ(0);
  @$pb.TagNumber(1)
  set description($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDescription() => $_has(0);
  @$pb.TagNumber(1)
  void clearDescription() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get url => $_getSZ(1);
  @$pb.TagNumber(2)
  set url($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasUrl() => $_has(1);
  @$pb.TagNumber(2)
  void clearUrl() => clearField(2);
}

/// JSON represents any valid JSON value.
/// These types are supported: bool, int64, float64, string, []interface{}, map[string]interface{} and nil.
class JSON extends $pb.GeneratedMessage {
  factory JSON({
    $core.List<$core.int>? raw,
  }) {
    final $result = create();
    if (raw != null) {
      $result.raw = raw;
    }
    return $result;
  }
  JSON._() : super();
  factory JSON.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JSON.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JSON', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'raw', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JSON clone() => JSON()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JSON copyWith(void Function(JSON) updates) => super.copyWith((message) => updates(message as JSON)) as JSON;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSON create() => JSON._();
  JSON createEmptyInstance() => create();
  static $pb.PbList<JSON> createRepeated() => $pb.PbList<JSON>();
  @$core.pragma('dart2js:noInline')
  static JSON getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSON>(create);
  static JSON? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get raw => $_getN(0);
  @$pb.TagNumber(1)
  set raw($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRaw() => $_has(0);
  @$pb.TagNumber(1)
  void clearRaw() => clearField(1);
}

/// JSONSchemaProps is a JSON-Schema following Specification Draft 4 (http://json-schema.org/).
class JSONSchemaProps extends $pb.GeneratedMessage {
  factory JSONSchemaProps({
    $core.String? id,
    $core.String? schema,
    $core.String? ref,
    $core.String? description,
    $core.String? type,
    $core.String? format,
    $core.String? title,
    JSON? default_8,
    $core.double? maximum,
    $core.bool? exclusiveMaximum,
    $core.double? minimum,
    $core.bool? exclusiveMinimum,
    $fixnum.Int64? maxLength,
    $fixnum.Int64? minLength,
    $core.String? pattern,
    $fixnum.Int64? maxItems,
    $fixnum.Int64? minItems,
    $core.bool? uniqueItems,
    $core.double? multipleOf,
    $core.Iterable<JSON>? enum_20,
    $fixnum.Int64? maxProperties,
    $fixnum.Int64? minProperties,
    $core.Iterable<$core.String>? required,
    JSONSchemaPropsOrArray? items,
    $core.Iterable<JSONSchemaProps>? allOf,
    $core.Iterable<JSONSchemaProps>? oneOf,
    $core.Iterable<JSONSchemaProps>? anyOf,
    JSONSchemaProps? not,
    $core.Map<$core.String, JSONSchemaProps>? properties,
    JSONSchemaPropsOrBool? additionalProperties,
    $core.Map<$core.String, JSONSchemaProps>? patternProperties,
    $core.Map<$core.String, JSONSchemaPropsOrStringArray>? dependencies,
    JSONSchemaPropsOrBool? additionalItems,
    $core.Map<$core.String, JSONSchemaProps>? definitions,
    ExternalDocumentation? externalDocs,
    JSON? example,
    $core.bool? nullable,
    $core.bool? xKubernetesPreserveUnknownFields,
    $core.bool? xKubernetesEmbeddedResource,
    $core.bool? xKubernetesIntOrString,
    $core.Iterable<$core.String>? xKubernetesListMapKeys,
    $core.String? xKubernetesListType,
    $core.String? xKubernetesMapType,
    $core.Iterable<ValidationRule>? xKubernetesValidations,
  }) {
    final $result = create();
    if (id != null) {
      $result.id = id;
    }
    if (schema != null) {
      $result.schema = schema;
    }
    if (ref != null) {
      $result.ref = ref;
    }
    if (description != null) {
      $result.description = description;
    }
    if (type != null) {
      $result.type = type;
    }
    if (format != null) {
      $result.format = format;
    }
    if (title != null) {
      $result.title = title;
    }
    if (default_8 != null) {
      $result.default_8 = default_8;
    }
    if (maximum != null) {
      $result.maximum = maximum;
    }
    if (exclusiveMaximum != null) {
      $result.exclusiveMaximum = exclusiveMaximum;
    }
    if (minimum != null) {
      $result.minimum = minimum;
    }
    if (exclusiveMinimum != null) {
      $result.exclusiveMinimum = exclusiveMinimum;
    }
    if (maxLength != null) {
      $result.maxLength = maxLength;
    }
    if (minLength != null) {
      $result.minLength = minLength;
    }
    if (pattern != null) {
      $result.pattern = pattern;
    }
    if (maxItems != null) {
      $result.maxItems = maxItems;
    }
    if (minItems != null) {
      $result.minItems = minItems;
    }
    if (uniqueItems != null) {
      $result.uniqueItems = uniqueItems;
    }
    if (multipleOf != null) {
      $result.multipleOf = multipleOf;
    }
    if (enum_20 != null) {
      $result.enum_20.addAll(enum_20);
    }
    if (maxProperties != null) {
      $result.maxProperties = maxProperties;
    }
    if (minProperties != null) {
      $result.minProperties = minProperties;
    }
    if (required != null) {
      $result.required.addAll(required);
    }
    if (items != null) {
      $result.items = items;
    }
    if (allOf != null) {
      $result.allOf.addAll(allOf);
    }
    if (oneOf != null) {
      $result.oneOf.addAll(oneOf);
    }
    if (anyOf != null) {
      $result.anyOf.addAll(anyOf);
    }
    if (not != null) {
      $result.not = not;
    }
    if (properties != null) {
      $result.properties.addAll(properties);
    }
    if (additionalProperties != null) {
      $result.additionalProperties = additionalProperties;
    }
    if (patternProperties != null) {
      $result.patternProperties.addAll(patternProperties);
    }
    if (dependencies != null) {
      $result.dependencies.addAll(dependencies);
    }
    if (additionalItems != null) {
      $result.additionalItems = additionalItems;
    }
    if (definitions != null) {
      $result.definitions.addAll(definitions);
    }
    if (externalDocs != null) {
      $result.externalDocs = externalDocs;
    }
    if (example != null) {
      $result.example = example;
    }
    if (nullable != null) {
      $result.nullable = nullable;
    }
    if (xKubernetesPreserveUnknownFields != null) {
      $result.xKubernetesPreserveUnknownFields = xKubernetesPreserveUnknownFields;
    }
    if (xKubernetesEmbeddedResource != null) {
      $result.xKubernetesEmbeddedResource = xKubernetesEmbeddedResource;
    }
    if (xKubernetesIntOrString != null) {
      $result.xKubernetesIntOrString = xKubernetesIntOrString;
    }
    if (xKubernetesListMapKeys != null) {
      $result.xKubernetesListMapKeys.addAll(xKubernetesListMapKeys);
    }
    if (xKubernetesListType != null) {
      $result.xKubernetesListType = xKubernetesListType;
    }
    if (xKubernetesMapType != null) {
      $result.xKubernetesMapType = xKubernetesMapType;
    }
    if (xKubernetesValidations != null) {
      $result.xKubernetesValidations.addAll(xKubernetesValidations);
    }
    return $result;
  }
  JSONSchemaProps._() : super();
  factory JSONSchemaProps.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JSONSchemaProps.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JSONSchemaProps', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'id')
    ..aOS(2, _omitFieldNames ? '' : 'schema')
    ..aOS(3, _omitFieldNames ? '' : 'ref')
    ..aOS(4, _omitFieldNames ? '' : 'description')
    ..aOS(5, _omitFieldNames ? '' : 'type')
    ..aOS(6, _omitFieldNames ? '' : 'format')
    ..aOS(7, _omitFieldNames ? '' : 'title')
    ..aOM<JSON>(8, _omitFieldNames ? '' : 'default', subBuilder: JSON.create)
    ..a<$core.double>(9, _omitFieldNames ? '' : 'maximum', $pb.PbFieldType.OD)
    ..aOB(10, _omitFieldNames ? '' : 'exclusiveMaximum', protoName: 'exclusiveMaximum')
    ..a<$core.double>(11, _omitFieldNames ? '' : 'minimum', $pb.PbFieldType.OD)
    ..aOB(12, _omitFieldNames ? '' : 'exclusiveMinimum', protoName: 'exclusiveMinimum')
    ..aInt64(13, _omitFieldNames ? '' : 'maxLength', protoName: 'maxLength')
    ..aInt64(14, _omitFieldNames ? '' : 'minLength', protoName: 'minLength')
    ..aOS(15, _omitFieldNames ? '' : 'pattern')
    ..aInt64(16, _omitFieldNames ? '' : 'maxItems', protoName: 'maxItems')
    ..aInt64(17, _omitFieldNames ? '' : 'minItems', protoName: 'minItems')
    ..aOB(18, _omitFieldNames ? '' : 'uniqueItems', protoName: 'uniqueItems')
    ..a<$core.double>(19, _omitFieldNames ? '' : 'multipleOf', $pb.PbFieldType.OD, protoName: 'multipleOf')
    ..pc<JSON>(20, _omitFieldNames ? '' : 'enum', $pb.PbFieldType.PM, subBuilder: JSON.create)
    ..aInt64(21, _omitFieldNames ? '' : 'maxProperties', protoName: 'maxProperties')
    ..aInt64(22, _omitFieldNames ? '' : 'minProperties', protoName: 'minProperties')
    ..pPS(23, _omitFieldNames ? '' : 'required')
    ..aOM<JSONSchemaPropsOrArray>(24, _omitFieldNames ? '' : 'items', subBuilder: JSONSchemaPropsOrArray.create)
    ..pc<JSONSchemaProps>(25, _omitFieldNames ? '' : 'allOf', $pb.PbFieldType.PM, protoName: 'allOf', subBuilder: JSONSchemaProps.create)
    ..pc<JSONSchemaProps>(26, _omitFieldNames ? '' : 'oneOf', $pb.PbFieldType.PM, protoName: 'oneOf', subBuilder: JSONSchemaProps.create)
    ..pc<JSONSchemaProps>(27, _omitFieldNames ? '' : 'anyOf', $pb.PbFieldType.PM, protoName: 'anyOf', subBuilder: JSONSchemaProps.create)
    ..aOM<JSONSchemaProps>(28, _omitFieldNames ? '' : 'not', subBuilder: JSONSchemaProps.create)
    ..m<$core.String, JSONSchemaProps>(29, _omitFieldNames ? '' : 'properties', entryClassName: 'JSONSchemaProps.PropertiesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: JSONSchemaProps.create, valueDefaultOrMaker: JSONSchemaProps.getDefault, packageName: const $pb.PackageName('apiextensions_apiserver.pkg.apis.apiextensions.v1'))
    ..aOM<JSONSchemaPropsOrBool>(30, _omitFieldNames ? '' : 'additionalProperties', protoName: 'additionalProperties', subBuilder: JSONSchemaPropsOrBool.create)
    ..m<$core.String, JSONSchemaProps>(31, _omitFieldNames ? '' : 'patternProperties', protoName: 'patternProperties', entryClassName: 'JSONSchemaProps.PatternPropertiesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: JSONSchemaProps.create, valueDefaultOrMaker: JSONSchemaProps.getDefault, packageName: const $pb.PackageName('apiextensions_apiserver.pkg.apis.apiextensions.v1'))
    ..m<$core.String, JSONSchemaPropsOrStringArray>(32, _omitFieldNames ? '' : 'dependencies', entryClassName: 'JSONSchemaProps.DependenciesEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: JSONSchemaPropsOrStringArray.create, valueDefaultOrMaker: JSONSchemaPropsOrStringArray.getDefault, packageName: const $pb.PackageName('apiextensions_apiserver.pkg.apis.apiextensions.v1'))
    ..aOM<JSONSchemaPropsOrBool>(33, _omitFieldNames ? '' : 'additionalItems', protoName: 'additionalItems', subBuilder: JSONSchemaPropsOrBool.create)
    ..m<$core.String, JSONSchemaProps>(34, _omitFieldNames ? '' : 'definitions', entryClassName: 'JSONSchemaProps.DefinitionsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: JSONSchemaProps.create, valueDefaultOrMaker: JSONSchemaProps.getDefault, packageName: const $pb.PackageName('apiextensions_apiserver.pkg.apis.apiextensions.v1'))
    ..aOM<ExternalDocumentation>(35, _omitFieldNames ? '' : 'externalDocs', protoName: 'externalDocs', subBuilder: ExternalDocumentation.create)
    ..aOM<JSON>(36, _omitFieldNames ? '' : 'example', subBuilder: JSON.create)
    ..aOB(37, _omitFieldNames ? '' : 'nullable')
    ..aOB(38, _omitFieldNames ? '' : 'xKubernetesPreserveUnknownFields', protoName: 'xKubernetesPreserveUnknownFields')
    ..aOB(39, _omitFieldNames ? '' : 'xKubernetesEmbeddedResource', protoName: 'xKubernetesEmbeddedResource')
    ..aOB(40, _omitFieldNames ? '' : 'xKubernetesIntOrString', protoName: 'xKubernetesIntOrString')
    ..pPS(41, _omitFieldNames ? '' : 'xKubernetesListMapKeys', protoName: 'xKubernetesListMapKeys')
    ..aOS(42, _omitFieldNames ? '' : 'xKubernetesListType', protoName: 'xKubernetesListType')
    ..aOS(43, _omitFieldNames ? '' : 'xKubernetesMapType', protoName: 'xKubernetesMapType')
    ..pc<ValidationRule>(44, _omitFieldNames ? '' : 'xKubernetesValidations', $pb.PbFieldType.PM, protoName: 'xKubernetesValidations', subBuilder: ValidationRule.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JSONSchemaProps clone() => JSONSchemaProps()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JSONSchemaProps copyWith(void Function(JSONSchemaProps) updates) => super.copyWith((message) => updates(message as JSONSchemaProps)) as JSONSchemaProps;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSONSchemaProps create() => JSONSchemaProps._();
  JSONSchemaProps createEmptyInstance() => create();
  static $pb.PbList<JSONSchemaProps> createRepeated() => $pb.PbList<JSONSchemaProps>();
  @$core.pragma('dart2js:noInline')
  static JSONSchemaProps getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONSchemaProps>(create);
  static JSONSchemaProps? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get id => $_getSZ(0);
  @$pb.TagNumber(1)
  set id($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get schema => $_getSZ(1);
  @$pb.TagNumber(2)
  set schema($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get ref => $_getSZ(2);
  @$pb.TagNumber(3)
  set ref($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRef() => $_has(2);
  @$pb.TagNumber(3)
  void clearRef() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get description => $_getSZ(3);
  @$pb.TagNumber(4)
  set description($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescription() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescription() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get type => $_getSZ(4);
  @$pb.TagNumber(5)
  set type($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  ///  format is an OpenAPI v3 format string. Unknown formats are ignored. The following formats are validated:
  ///
  ///  - bsonobjectid: a bson object ID, i.e. a 24 characters hex string
  ///  - uri: an URI as parsed by Golang net/url.ParseRequestURI
  ///  - email: an email address as parsed by Golang net/mail.ParseAddress
  ///  - hostname: a valid representation for an Internet host name, as defined by RFC 1034, section 3.1 [RFC1034].
  ///  - ipv4: an IPv4 IP as parsed by Golang net.ParseIP
  ///  - ipv6: an IPv6 IP as parsed by Golang net.ParseIP
  ///  - cidr: a CIDR as parsed by Golang net.ParseCIDR
  ///  - mac: a MAC address as parsed by Golang net.ParseMAC
  ///  - uuid: an UUID that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{4}-?[0-9a-f]{12}$
  ///  - uuid3: an UUID3 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?3[0-9a-f]{3}-?[0-9a-f]{4}-?[0-9a-f]{12}$
  ///  - uuid4: an UUID4 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?4[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$
  ///  - uuid5: an UUID5 that allows uppercase defined by the regex (?i)^[0-9a-f]{8}-?[0-9a-f]{4}-?5[0-9a-f]{3}-?[89ab][0-9a-f]{3}-?[0-9a-f]{12}$
  ///  - isbn: an ISBN10 or ISBN13 number string like "0321751043" or "978-0321751041"
  ///  - isbn10: an ISBN10 number string like "0321751043"
  ///  - isbn13: an ISBN13 number string like "978-0321751041"
  ///  - creditcard: a credit card number defined by the regex ^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9][0-9])[0-9]{12}|3[47][0-9]{13}|3(?:0[0-5]|[68][0-9])[0-9]{11}|(?:2131|1800|35\\d{3})\\d{11})$ with any non digit characters mixed in
  ///  - ssn: a U.S. social security number following the regex ^\\d{3}[- ]?\\d{2}[- ]?\\d{4}$
  ///  - hexcolor: an hexadecimal color code like "#FFFFFF: following the regex ^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$
  ///  - rgbcolor: an RGB color code like rgb like "rgb(255,255,2559"
  ///  - byte: base64 encoded binary data
  ///  - password: any kind of string
  ///  - date: a date string like "2006-01-02" as defined by full-date in RFC3339
  ///  - duration: a duration string like "22 ns" as parsed by Golang time.ParseDuration or compatible with Scala duration format
  ///  - datetime: a date time string like "2014-12-15T19:30:20.000Z" as defined by date-time in RFC3339.
  @$pb.TagNumber(6)
  $core.String get format => $_getSZ(5);
  @$pb.TagNumber(6)
  set format($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFormat() => $_has(5);
  @$pb.TagNumber(6)
  void clearFormat() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get title => $_getSZ(6);
  @$pb.TagNumber(7)
  set title($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTitle() => $_has(6);
  @$pb.TagNumber(7)
  void clearTitle() => clearField(7);

  /// default is a default value for undefined object fields.
  /// Defaulting is a beta feature under the CustomResourceDefaulting feature gate.
  /// Defaulting requires spec.preserveUnknownFields to be false.
  @$pb.TagNumber(8)
  JSON get default_8 => $_getN(7);
  @$pb.TagNumber(8)
  set default_8(JSON v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasDefault_8() => $_has(7);
  @$pb.TagNumber(8)
  void clearDefault_8() => clearField(8);
  @$pb.TagNumber(8)
  JSON ensureDefault_8() => $_ensure(7);

  @$pb.TagNumber(9)
  $core.double get maximum => $_getN(8);
  @$pb.TagNumber(9)
  set maximum($core.double v) { $_setDouble(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMaximum() => $_has(8);
  @$pb.TagNumber(9)
  void clearMaximum() => clearField(9);

  @$pb.TagNumber(10)
  $core.bool get exclusiveMaximum => $_getBF(9);
  @$pb.TagNumber(10)
  set exclusiveMaximum($core.bool v) { $_setBool(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasExclusiveMaximum() => $_has(9);
  @$pb.TagNumber(10)
  void clearExclusiveMaximum() => clearField(10);

  @$pb.TagNumber(11)
  $core.double get minimum => $_getN(10);
  @$pb.TagNumber(11)
  set minimum($core.double v) { $_setDouble(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasMinimum() => $_has(10);
  @$pb.TagNumber(11)
  void clearMinimum() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get exclusiveMinimum => $_getBF(11);
  @$pb.TagNumber(12)
  set exclusiveMinimum($core.bool v) { $_setBool(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasExclusiveMinimum() => $_has(11);
  @$pb.TagNumber(12)
  void clearExclusiveMinimum() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get maxLength => $_getI64(12);
  @$pb.TagNumber(13)
  set maxLength($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasMaxLength() => $_has(12);
  @$pb.TagNumber(13)
  void clearMaxLength() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get minLength => $_getI64(13);
  @$pb.TagNumber(14)
  set minLength($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasMinLength() => $_has(13);
  @$pb.TagNumber(14)
  void clearMinLength() => clearField(14);

  @$pb.TagNumber(15)
  $core.String get pattern => $_getSZ(14);
  @$pb.TagNumber(15)
  set pattern($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasPattern() => $_has(14);
  @$pb.TagNumber(15)
  void clearPattern() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get maxItems => $_getI64(15);
  @$pb.TagNumber(16)
  set maxItems($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(16)
  $core.bool hasMaxItems() => $_has(15);
  @$pb.TagNumber(16)
  void clearMaxItems() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get minItems => $_getI64(16);
  @$pb.TagNumber(17)
  set minItems($fixnum.Int64 v) { $_setInt64(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasMinItems() => $_has(16);
  @$pb.TagNumber(17)
  void clearMinItems() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get uniqueItems => $_getBF(17);
  @$pb.TagNumber(18)
  set uniqueItems($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasUniqueItems() => $_has(17);
  @$pb.TagNumber(18)
  void clearUniqueItems() => clearField(18);

  @$pb.TagNumber(19)
  $core.double get multipleOf => $_getN(18);
  @$pb.TagNumber(19)
  set multipleOf($core.double v) { $_setDouble(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasMultipleOf() => $_has(18);
  @$pb.TagNumber(19)
  void clearMultipleOf() => clearField(19);

  /// +listType=atomic
  @$pb.TagNumber(20)
  $core.List<JSON> get enum_20 => $_getList(19);

  @$pb.TagNumber(21)
  $fixnum.Int64 get maxProperties => $_getI64(20);
  @$pb.TagNumber(21)
  set maxProperties($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasMaxProperties() => $_has(20);
  @$pb.TagNumber(21)
  void clearMaxProperties() => clearField(21);

  @$pb.TagNumber(22)
  $fixnum.Int64 get minProperties => $_getI64(21);
  @$pb.TagNumber(22)
  set minProperties($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(22)
  $core.bool hasMinProperties() => $_has(21);
  @$pb.TagNumber(22)
  void clearMinProperties() => clearField(22);

  /// +listType=atomic
  @$pb.TagNumber(23)
  $core.List<$core.String> get required => $_getList(22);

  @$pb.TagNumber(24)
  JSONSchemaPropsOrArray get items => $_getN(23);
  @$pb.TagNumber(24)
  set items(JSONSchemaPropsOrArray v) { setField(24, v); }
  @$pb.TagNumber(24)
  $core.bool hasItems() => $_has(23);
  @$pb.TagNumber(24)
  void clearItems() => clearField(24);
  @$pb.TagNumber(24)
  JSONSchemaPropsOrArray ensureItems() => $_ensure(23);

  /// +listType=atomic
  @$pb.TagNumber(25)
  $core.List<JSONSchemaProps> get allOf => $_getList(24);

  /// +listType=atomic
  @$pb.TagNumber(26)
  $core.List<JSONSchemaProps> get oneOf => $_getList(25);

  /// +listType=atomic
  @$pb.TagNumber(27)
  $core.List<JSONSchemaProps> get anyOf => $_getList(26);

  @$pb.TagNumber(28)
  JSONSchemaProps get not => $_getN(27);
  @$pb.TagNumber(28)
  set not(JSONSchemaProps v) { setField(28, v); }
  @$pb.TagNumber(28)
  $core.bool hasNot() => $_has(27);
  @$pb.TagNumber(28)
  void clearNot() => clearField(28);
  @$pb.TagNumber(28)
  JSONSchemaProps ensureNot() => $_ensure(27);

  @$pb.TagNumber(29)
  $core.Map<$core.String, JSONSchemaProps> get properties => $_getMap(28);

  @$pb.TagNumber(30)
  JSONSchemaPropsOrBool get additionalProperties => $_getN(29);
  @$pb.TagNumber(30)
  set additionalProperties(JSONSchemaPropsOrBool v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasAdditionalProperties() => $_has(29);
  @$pb.TagNumber(30)
  void clearAdditionalProperties() => clearField(30);
  @$pb.TagNumber(30)
  JSONSchemaPropsOrBool ensureAdditionalProperties() => $_ensure(29);

  @$pb.TagNumber(31)
  $core.Map<$core.String, JSONSchemaProps> get patternProperties => $_getMap(30);

  @$pb.TagNumber(32)
  $core.Map<$core.String, JSONSchemaPropsOrStringArray> get dependencies => $_getMap(31);

  @$pb.TagNumber(33)
  JSONSchemaPropsOrBool get additionalItems => $_getN(32);
  @$pb.TagNumber(33)
  set additionalItems(JSONSchemaPropsOrBool v) { setField(33, v); }
  @$pb.TagNumber(33)
  $core.bool hasAdditionalItems() => $_has(32);
  @$pb.TagNumber(33)
  void clearAdditionalItems() => clearField(33);
  @$pb.TagNumber(33)
  JSONSchemaPropsOrBool ensureAdditionalItems() => $_ensure(32);

  @$pb.TagNumber(34)
  $core.Map<$core.String, JSONSchemaProps> get definitions => $_getMap(33);

  @$pb.TagNumber(35)
  ExternalDocumentation get externalDocs => $_getN(34);
  @$pb.TagNumber(35)
  set externalDocs(ExternalDocumentation v) { setField(35, v); }
  @$pb.TagNumber(35)
  $core.bool hasExternalDocs() => $_has(34);
  @$pb.TagNumber(35)
  void clearExternalDocs() => clearField(35);
  @$pb.TagNumber(35)
  ExternalDocumentation ensureExternalDocs() => $_ensure(34);

  @$pb.TagNumber(36)
  JSON get example => $_getN(35);
  @$pb.TagNumber(36)
  set example(JSON v) { setField(36, v); }
  @$pb.TagNumber(36)
  $core.bool hasExample() => $_has(35);
  @$pb.TagNumber(36)
  void clearExample() => clearField(36);
  @$pb.TagNumber(36)
  JSON ensureExample() => $_ensure(35);

  @$pb.TagNumber(37)
  $core.bool get nullable => $_getBF(36);
  @$pb.TagNumber(37)
  set nullable($core.bool v) { $_setBool(36, v); }
  @$pb.TagNumber(37)
  $core.bool hasNullable() => $_has(36);
  @$pb.TagNumber(37)
  void clearNullable() => clearField(37);

  /// x-kubernetes-preserve-unknown-fields stops the API server
  /// decoding step from pruning fields which are not specified
  /// in the validation schema. This affects fields recursively,
  /// but switches back to normal pruning behaviour if nested
  /// properties or additionalProperties are specified in the schema.
  /// This can either be true or undefined. False is forbidden.
  @$pb.TagNumber(38)
  $core.bool get xKubernetesPreserveUnknownFields => $_getBF(37);
  @$pb.TagNumber(38)
  set xKubernetesPreserveUnknownFields($core.bool v) { $_setBool(37, v); }
  @$pb.TagNumber(38)
  $core.bool hasXKubernetesPreserveUnknownFields() => $_has(37);
  @$pb.TagNumber(38)
  void clearXKubernetesPreserveUnknownFields() => clearField(38);

  /// x-kubernetes-embedded-resource defines that the value is an
  /// embedded Kubernetes runtime.Object, with TypeMeta and
  /// ObjectMeta. The type must be object. It is allowed to further
  /// restrict the embedded object. kind, apiVersion and metadata
  /// are validated automatically. x-kubernetes-preserve-unknown-fields
  /// is allowed to be true, but does not have to be if the object
  /// is fully specified (up to kind, apiVersion, metadata).
  @$pb.TagNumber(39)
  $core.bool get xKubernetesEmbeddedResource => $_getBF(38);
  @$pb.TagNumber(39)
  set xKubernetesEmbeddedResource($core.bool v) { $_setBool(38, v); }
  @$pb.TagNumber(39)
  $core.bool hasXKubernetesEmbeddedResource() => $_has(38);
  @$pb.TagNumber(39)
  void clearXKubernetesEmbeddedResource() => clearField(39);

  ///  x-kubernetes-int-or-string specifies that this value is
  ///  either an integer or a string. If this is true, an empty
  ///  type is allowed and type as child of anyOf is permitted
  ///  if following one of the following patterns:
  ///
  ///  1) anyOf:
  ///     - type: integer
  ///     - type: string
  ///  2) allOf:
  ///     - anyOf:
  ///       - type: integer
  ///       - type: string
  ///     - ... zero or more
  @$pb.TagNumber(40)
  $core.bool get xKubernetesIntOrString => $_getBF(39);
  @$pb.TagNumber(40)
  set xKubernetesIntOrString($core.bool v) { $_setBool(39, v); }
  @$pb.TagNumber(40)
  $core.bool hasXKubernetesIntOrString() => $_has(39);
  @$pb.TagNumber(40)
  void clearXKubernetesIntOrString() => clearField(40);

  ///  x-kubernetes-list-map-keys annotates an array with the x-kubernetes-list-type `map` by specifying the keys used
  ///  as the index of the map.
  ///
  ///  This tag MUST only be used on lists that have the "x-kubernetes-list-type"
  ///  extension set to "map". Also, the values specified for this attribute must
  ///  be a scalar typed field of the child structure (no nesting is supported).
  ///
  ///  The properties specified must either be required or have a default value,
  ///  to ensure those properties are present for all list items.
  ///
  ///  +optional
  ///  +listType=atomic
  @$pb.TagNumber(41)
  $core.List<$core.String> get xKubernetesListMapKeys => $_getList(40);

  ///  x-kubernetes-list-type annotates an array to further describe its topology.
  ///  This extension must only be used on lists and may have 3 possible values:
  ///
  ///  1) `atomic`: the list is treated as a single entity, like a scalar.
  ///       Atomic lists will be entirely replaced when updated. This extension
  ///       may be used on any type of list (struct, scalar, ...).
  ///  2) `set`:
  ///       Sets are lists that must not have multiple items with the same value. Each
  ///       value must be a scalar, an object with x-kubernetes-map-type `atomic` or an
  ///       array with x-kubernetes-list-type `atomic`.
  ///  3) `map`:
  ///       These lists are like maps in that their elements have a non-index key
  ///       used to identify them. Order is preserved upon merge. The map tag
  ///       must only be used on a list with elements of type object.
  ///  Defaults to atomic for arrays.
  ///  +optional
  @$pb.TagNumber(42)
  $core.String get xKubernetesListType => $_getSZ(41);
  @$pb.TagNumber(42)
  set xKubernetesListType($core.String v) { $_setString(41, v); }
  @$pb.TagNumber(42)
  $core.bool hasXKubernetesListType() => $_has(41);
  @$pb.TagNumber(42)
  void clearXKubernetesListType() => clearField(42);

  ///  x-kubernetes-map-type annotates an object to further describe its topology.
  ///  This extension must only be used when type is object and may have 2 possible values:
  ///
  ///  1) `granular`:
  ///       These maps are actual maps (key-value pairs) and each fields are independent
  ///       from each other (they can each be manipulated by separate actors). This is
  ///       the default behaviour for all maps.
  ///  2) `atomic`: the list is treated as a single entity, like a scalar.
  ///       Atomic maps will be entirely replaced when updated.
  ///  +optional
  @$pb.TagNumber(43)
  $core.String get xKubernetesMapType => $_getSZ(42);
  @$pb.TagNumber(43)
  set xKubernetesMapType($core.String v) { $_setString(42, v); }
  @$pb.TagNumber(43)
  $core.bool hasXKubernetesMapType() => $_has(42);
  @$pb.TagNumber(43)
  void clearXKubernetesMapType() => clearField(43);

  /// x-kubernetes-validations describes a list of validation rules written in the CEL expression language.
  /// This field is an alpha-level. Using this field requires the feature gate `CustomResourceValidationExpressions` to be enabled.
  /// +patchMergeKey=rule
  /// +patchStrategy=merge
  /// +listType=map
  /// +listMapKey=rule
  @$pb.TagNumber(44)
  $core.List<ValidationRule> get xKubernetesValidations => $_getList(43);
}

/// JSONSchemaPropsOrArray represents a value that can either be a JSONSchemaProps
/// or an array of JSONSchemaProps. Mainly here for serialization purposes.
class JSONSchemaPropsOrArray extends $pb.GeneratedMessage {
  factory JSONSchemaPropsOrArray({
    JSONSchemaProps? schema,
    $core.Iterable<JSONSchemaProps>? jSONSchemas,
  }) {
    final $result = create();
    if (schema != null) {
      $result.schema = schema;
    }
    if (jSONSchemas != null) {
      $result.jSONSchemas.addAll(jSONSchemas);
    }
    return $result;
  }
  JSONSchemaPropsOrArray._() : super();
  factory JSONSchemaPropsOrArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JSONSchemaPropsOrArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JSONSchemaPropsOrArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<JSONSchemaProps>(1, _omitFieldNames ? '' : 'schema', subBuilder: JSONSchemaProps.create)
    ..pc<JSONSchemaProps>(2, _omitFieldNames ? '' : 'jSONSchemas', $pb.PbFieldType.PM, protoName: 'jSONSchemas', subBuilder: JSONSchemaProps.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JSONSchemaPropsOrArray clone() => JSONSchemaPropsOrArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JSONSchemaPropsOrArray copyWith(void Function(JSONSchemaPropsOrArray) updates) => super.copyWith((message) => updates(message as JSONSchemaPropsOrArray)) as JSONSchemaPropsOrArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSONSchemaPropsOrArray create() => JSONSchemaPropsOrArray._();
  JSONSchemaPropsOrArray createEmptyInstance() => create();
  static $pb.PbList<JSONSchemaPropsOrArray> createRepeated() => $pb.PbList<JSONSchemaPropsOrArray>();
  @$core.pragma('dart2js:noInline')
  static JSONSchemaPropsOrArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONSchemaPropsOrArray>(create);
  static JSONSchemaPropsOrArray? _defaultInstance;

  @$pb.TagNumber(1)
  JSONSchemaProps get schema => $_getN(0);
  @$pb.TagNumber(1)
  set schema(JSONSchemaProps v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => clearField(1);
  @$pb.TagNumber(1)
  JSONSchemaProps ensureSchema() => $_ensure(0);

  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<JSONSchemaProps> get jSONSchemas => $_getList(1);
}

/// JSONSchemaPropsOrBool represents JSONSchemaProps or a boolean value.
/// Defaults to true for the boolean property.
class JSONSchemaPropsOrBool extends $pb.GeneratedMessage {
  factory JSONSchemaPropsOrBool({
    $core.bool? allows,
    JSONSchemaProps? schema,
  }) {
    final $result = create();
    if (allows != null) {
      $result.allows = allows;
    }
    if (schema != null) {
      $result.schema = schema;
    }
    return $result;
  }
  JSONSchemaPropsOrBool._() : super();
  factory JSONSchemaPropsOrBool.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JSONSchemaPropsOrBool.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JSONSchemaPropsOrBool', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOB(1, _omitFieldNames ? '' : 'allows')
    ..aOM<JSONSchemaProps>(2, _omitFieldNames ? '' : 'schema', subBuilder: JSONSchemaProps.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JSONSchemaPropsOrBool clone() => JSONSchemaPropsOrBool()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JSONSchemaPropsOrBool copyWith(void Function(JSONSchemaPropsOrBool) updates) => super.copyWith((message) => updates(message as JSONSchemaPropsOrBool)) as JSONSchemaPropsOrBool;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSONSchemaPropsOrBool create() => JSONSchemaPropsOrBool._();
  JSONSchemaPropsOrBool createEmptyInstance() => create();
  static $pb.PbList<JSONSchemaPropsOrBool> createRepeated() => $pb.PbList<JSONSchemaPropsOrBool>();
  @$core.pragma('dart2js:noInline')
  static JSONSchemaPropsOrBool getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONSchemaPropsOrBool>(create);
  static JSONSchemaPropsOrBool? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get allows => $_getBF(0);
  @$pb.TagNumber(1)
  set allows($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAllows() => $_has(0);
  @$pb.TagNumber(1)
  void clearAllows() => clearField(1);

  @$pb.TagNumber(2)
  JSONSchemaProps get schema => $_getN(1);
  @$pb.TagNumber(2)
  set schema(JSONSchemaProps v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasSchema() => $_has(1);
  @$pb.TagNumber(2)
  void clearSchema() => clearField(2);
  @$pb.TagNumber(2)
  JSONSchemaProps ensureSchema() => $_ensure(1);
}

/// JSONSchemaPropsOrStringArray represents a JSONSchemaProps or a string array.
class JSONSchemaPropsOrStringArray extends $pb.GeneratedMessage {
  factory JSONSchemaPropsOrStringArray({
    JSONSchemaProps? schema,
    $core.Iterable<$core.String>? property,
  }) {
    final $result = create();
    if (schema != null) {
      $result.schema = schema;
    }
    if (property != null) {
      $result.property.addAll(property);
    }
    return $result;
  }
  JSONSchemaPropsOrStringArray._() : super();
  factory JSONSchemaPropsOrStringArray.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory JSONSchemaPropsOrStringArray.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'JSONSchemaPropsOrStringArray', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<JSONSchemaProps>(1, _omitFieldNames ? '' : 'schema', subBuilder: JSONSchemaProps.create)
    ..pPS(2, _omitFieldNames ? '' : 'property')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  JSONSchemaPropsOrStringArray clone() => JSONSchemaPropsOrStringArray()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  JSONSchemaPropsOrStringArray copyWith(void Function(JSONSchemaPropsOrStringArray) updates) => super.copyWith((message) => updates(message as JSONSchemaPropsOrStringArray)) as JSONSchemaPropsOrStringArray;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static JSONSchemaPropsOrStringArray create() => JSONSchemaPropsOrStringArray._();
  JSONSchemaPropsOrStringArray createEmptyInstance() => create();
  static $pb.PbList<JSONSchemaPropsOrStringArray> createRepeated() => $pb.PbList<JSONSchemaPropsOrStringArray>();
  @$core.pragma('dart2js:noInline')
  static JSONSchemaPropsOrStringArray getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<JSONSchemaPropsOrStringArray>(create);
  static JSONSchemaPropsOrStringArray? _defaultInstance;

  @$pb.TagNumber(1)
  JSONSchemaProps get schema => $_getN(0);
  @$pb.TagNumber(1)
  set schema(JSONSchemaProps v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSchema() => $_has(0);
  @$pb.TagNumber(1)
  void clearSchema() => clearField(1);
  @$pb.TagNumber(1)
  JSONSchemaProps ensureSchema() => $_ensure(0);

  /// +listType=atomic
  @$pb.TagNumber(2)
  $core.List<$core.String> get property => $_getList(1);
}

/// SelectableField specifies the JSON path of a field that may be used with field selectors.
class SelectableField extends $pb.GeneratedMessage {
  factory SelectableField({
    $core.String? jsonPath,
  }) {
    final $result = create();
    if (jsonPath != null) {
      $result.jsonPath = jsonPath;
    }
    return $result;
  }
  SelectableField._() : super();
  factory SelectableField.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SelectableField.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'SelectableField', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'jsonPath', protoName: 'jsonPath')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SelectableField clone() => SelectableField()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SelectableField copyWith(void Function(SelectableField) updates) => super.copyWith((message) => updates(message as SelectableField)) as SelectableField;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static SelectableField create() => SelectableField._();
  SelectableField createEmptyInstance() => create();
  static $pb.PbList<SelectableField> createRepeated() => $pb.PbList<SelectableField>();
  @$core.pragma('dart2js:noInline')
  static SelectableField getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SelectableField>(create);
  static SelectableField? _defaultInstance;

  /// jsonPath is a simple JSON path which is evaluated against each custom resource to produce a
  /// field selector value.
  /// Only JSON paths without the array notation are allowed.
  /// Must point to a field of type string, boolean or integer. Types with enum values
  /// and strings with formats are allowed.
  /// If jsonPath refers to absent field in a resource, the jsonPath evaluates to an empty string.
  /// Must not point to metdata fields.
  /// Required.
  @$pb.TagNumber(1)
  $core.String get jsonPath => $_getSZ(0);
  @$pb.TagNumber(1)
  set jsonPath($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasJsonPath() => $_has(0);
  @$pb.TagNumber(1)
  void clearJsonPath() => clearField(1);
}

/// ServiceReference holds a reference to Service.legacy.k8s.io
class ServiceReference extends $pb.GeneratedMessage {
  factory ServiceReference({
    $core.String? namespace,
    $core.String? name,
    $core.String? path,
    $core.int? port,
  }) {
    final $result = create();
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (name != null) {
      $result.name = name;
    }
    if (path != null) {
      $result.path = path;
    }
    if (port != null) {
      $result.port = port;
    }
    return $result;
  }
  ServiceReference._() : super();
  factory ServiceReference.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ServiceReference.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ServiceReference', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'namespace')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..aOS(3, _omitFieldNames ? '' : 'path')
    ..a<$core.int>(4, _omitFieldNames ? '' : 'port', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ServiceReference clone() => ServiceReference()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ServiceReference copyWith(void Function(ServiceReference) updates) => super.copyWith((message) => updates(message as ServiceReference)) as ServiceReference;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ServiceReference create() => ServiceReference._();
  ServiceReference createEmptyInstance() => create();
  static $pb.PbList<ServiceReference> createRepeated() => $pb.PbList<ServiceReference>();
  @$core.pragma('dart2js:noInline')
  static ServiceReference getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ServiceReference>(create);
  static ServiceReference? _defaultInstance;

  /// namespace is the namespace of the service.
  /// Required
  @$pb.TagNumber(1)
  $core.String get namespace => $_getSZ(0);
  @$pb.TagNumber(1)
  set namespace($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNamespace() => $_has(0);
  @$pb.TagNumber(1)
  void clearNamespace() => clearField(1);

  /// name is the name of the service.
  /// Required
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  /// path is an optional URL path at which the webhook will be contacted.
  /// +optional
  @$pb.TagNumber(3)
  $core.String get path => $_getSZ(2);
  @$pb.TagNumber(3)
  set path($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearPath() => clearField(3);

  /// port is an optional service port at which the webhook will be contacted.
  /// `port` should be a valid port number (1-65535, inclusive).
  /// Defaults to 443 for backward compatibility.
  /// +optional
  @$pb.TagNumber(4)
  $core.int get port => $_getIZ(3);
  @$pb.TagNumber(4)
  set port($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPort() => $_has(3);
  @$pb.TagNumber(4)
  void clearPort() => clearField(4);
}

/// ValidationRule describes a validation rule written in the CEL expression language.
class ValidationRule extends $pb.GeneratedMessage {
  factory ValidationRule({
    $core.String? rule,
    $core.String? message,
    $core.String? messageExpression,
    $core.String? reason,
    $core.String? fieldPath,
    $core.bool? optionalOldSelf,
  }) {
    final $result = create();
    if (rule != null) {
      $result.rule = rule;
    }
    if (message != null) {
      $result.message = message;
    }
    if (messageExpression != null) {
      $result.messageExpression = messageExpression;
    }
    if (reason != null) {
      $result.reason = reason;
    }
    if (fieldPath != null) {
      $result.fieldPath = fieldPath;
    }
    if (optionalOldSelf != null) {
      $result.optionalOldSelf = optionalOldSelf;
    }
    return $result;
  }
  ValidationRule._() : super();
  factory ValidationRule.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ValidationRule.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'ValidationRule', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'rule')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..aOS(3, _omitFieldNames ? '' : 'messageExpression', protoName: 'messageExpression')
    ..aOS(4, _omitFieldNames ? '' : 'reason')
    ..aOS(5, _omitFieldNames ? '' : 'fieldPath', protoName: 'fieldPath')
    ..aOB(6, _omitFieldNames ? '' : 'optionalOldSelf', protoName: 'optionalOldSelf')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ValidationRule clone() => ValidationRule()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ValidationRule copyWith(void Function(ValidationRule) updates) => super.copyWith((message) => updates(message as ValidationRule)) as ValidationRule;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static ValidationRule create() => ValidationRule._();
  ValidationRule createEmptyInstance() => create();
  static $pb.PbList<ValidationRule> createRepeated() => $pb.PbList<ValidationRule>();
  @$core.pragma('dart2js:noInline')
  static ValidationRule getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ValidationRule>(create);
  static ValidationRule? _defaultInstance;

  ///  Rule represents the expression which will be evaluated by CEL.
  ///  ref: https://github.com/google/cel-spec
  ///  The Rule is scoped to the location of the x-kubernetes-validations extension in the schema.
  ///  The `self` variable in the CEL expression is bound to the scoped value.
  ///  Example:
  ///  - Rule scoped to the root of a resource with a status subresource: {"rule": "self.status.actual <= self.spec.maxDesired"}
  ///
  ///  If the Rule is scoped to an object with properties, the accessible properties of the object are field selectable
  ///  via `self.field` and field presence can be checked via `has(self.field)`. Null valued fields are treated as
  ///  absent fields in CEL expressions.
  ///  If the Rule is scoped to an object with additionalProperties (i.e. a map) the value of the map
  ///  are accessible via `self[mapKey]`, map containment can be checked via `mapKey in self` and all entries of the map
  ///  are accessible via CEL macros and functions such as `self.all(...)`.
  ///  If the Rule is scoped to an array, the elements of the array are accessible via `self[i]` and also by macros and
  ///  functions.
  ///  If the Rule is scoped to a scalar, `self` is bound to the scalar value.
  ///  Examples:
  ///  - Rule scoped to a map of objects: {"rule": "self.components['Widget'].priority < 10"}
  ///  - Rule scoped to a list of integers: {"rule": "self.values.all(value, value >= 0 && value < 100)"}
  ///  - Rule scoped to a string value: {"rule": "self.startsWith('kube')"}
  ///
  ///  The `apiVersion`, `kind`, `metadata.name` and `metadata.generateName` are always accessible from the root of the
  ///  object and from any x-kubernetes-embedded-resource annotated objects. No other metadata properties are accessible.
  ///
  ///  Unknown data preserved in custom resources via x-kubernetes-preserve-unknown-fields is not accessible in CEL
  ///  expressions. This includes:
  ///  - Unknown field values that are preserved by object schemas with x-kubernetes-preserve-unknown-fields.
  ///  - Object properties where the property schema is of an "unknown type". An "unknown type" is recursively defined as:
  ///    - A schema with no type and x-kubernetes-preserve-unknown-fields set to true
  ///    - An array where the items schema is of an "unknown type"
  ///    - An object where the additionalProperties schema is of an "unknown type"
  ///
  ///  Only property names of the form `[a-zA-Z_.-/][a-zA-Z0-9_.-/]*` are accessible.
  ///  Accessible property names are escaped according to the following rules when accessed in the expression:
  ///  - '__' escapes to '__underscores__'
  ///  - '.' escapes to '__dot__'
  ///  - '-' escapes to '__dash__'
  ///  - '/' escapes to '__slash__'
  ///  - Property names that exactly match a CEL RESERVED keyword escape to '__{keyword}__'. The keywords are:
  ///  	  "true", "false", "null", "in", "as", "break", "const", "continue", "else", "for", "function", "if",
  ///  	  "import", "let", "loop", "package", "namespace", "return".
  ///  Examples:
  ///    - Rule accessing a property named "namespace": {"rule": "self.__namespace__ > 0"}
  ///    - Rule accessing a property named "x-prop": {"rule": "self.x__dash__prop > 0"}
  ///    - Rule accessing a property named "redact__d": {"rule": "self.redact__underscores__d > 0"}
  ///
  ///  Equality on arrays with x-kubernetes-list-type of 'set' or 'map' ignores element order, i.e. [1, 2] == [2, 1].
  ///  Concatenation on arrays with x-kubernetes-list-type use the semantics of the list type:
  ///    - 'set': `X + Y` performs a union where the array positions of all elements in `X` are preserved and
  ///      non-intersecting elements in `Y` are appended, retaining their partial order.
  ///    - 'map': `X + Y` performs a merge where the array positions of all keys in `X` are preserved but the values
  ///      are overwritten by values in `Y` when the key sets of `X` and `Y` intersect. Elements in `Y` with
  ///      non-intersecting keys are appended, retaining their partial order.
  ///
  ///  If `rule` makes use of the `oldSelf` variable it is implicitly a
  ///  `transition rule`.
  ///
  ///  By default, the `oldSelf` variable is the same type as `self`.
  ///  When `optionalOldSelf` is true, the `oldSelf` variable is a CEL optional
  ///   variable whose value() is the same type as `self`.
  ///  See the documentation for the `optionalOldSelf` field for details.
  ///
  ///  Transition rules by default are applied only on UPDATE requests and are
  ///  skipped if an old value could not be found. You can opt a transition
  ///  rule into unconditional evaluation by setting `optionalOldSelf` to true.
  @$pb.TagNumber(1)
  $core.String get rule => $_getSZ(0);
  @$pb.TagNumber(1)
  set rule($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRule() => $_has(0);
  @$pb.TagNumber(1)
  void clearRule() => clearField(1);

  /// Message represents the message displayed when validation fails. The message is required if the Rule contains
  /// line breaks. The message must not contain line breaks.
  /// If unset, the message is "failed rule: {Rule}".
  /// e.g. "must be a URL with the host matching spec.host"
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => clearField(2);

  /// MessageExpression declares a CEL expression that evaluates to the validation failure message that is returned when this rule fails.
  /// Since messageExpression is used as a failure message, it must evaluate to a string.
  /// If both message and messageExpression are present on a rule, then messageExpression will be used if validation
  /// fails. If messageExpression results in a runtime error, the runtime error is logged, and the validation failure message is produced
  /// as if the messageExpression field were unset. If messageExpression evaluates to an empty string, a string with only spaces, or a string
  /// that contains line breaks, then the validation failure message will also be produced as if the messageExpression field were unset, and
  /// the fact that messageExpression produced an empty string/string with only spaces/string with line breaks will be logged.
  /// messageExpression has access to all the same variables as the rule; the only difference is the return type.
  /// Example:
  /// "x must be less than max ("+string(self.max)+")"
  /// +optional
  @$pb.TagNumber(3)
  $core.String get messageExpression => $_getSZ(2);
  @$pb.TagNumber(3)
  set messageExpression($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMessageExpression() => $_has(2);
  @$pb.TagNumber(3)
  void clearMessageExpression() => clearField(3);

  /// reason provides a machine-readable validation failure reason that is returned to the caller when a request fails this validation rule.
  /// The HTTP status code returned to the caller will match the reason of the reason of the first failed validation rule.
  /// The currently supported reasons are: "FieldValueInvalid", "FieldValueForbidden", "FieldValueRequired", "FieldValueDuplicate".
  /// If not set, default to use "FieldValueInvalid".
  /// All future added reasons must be accepted by clients when reading this value and unknown reasons should be treated as FieldValueInvalid.
  /// +optional
  @$pb.TagNumber(4)
  $core.String get reason => $_getSZ(3);
  @$pb.TagNumber(4)
  set reason($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReason() => $_has(3);
  @$pb.TagNumber(4)
  void clearReason() => clearField(4);

  /// fieldPath represents the field path returned when the validation fails.
  /// It must be a relative JSON path (i.e. with array notation) scoped to the location of this x-kubernetes-validations extension in the schema and refer to an existing field.
  /// e.g. when validation checks if a specific attribute `foo` under a map `testMap`, the fieldPath could be set to `.testMap.foo`
  /// If the validation checks two lists must have unique attributes, the fieldPath could be set to either of the list: e.g. `.testList`
  /// It does not support list numeric index.
  /// It supports child operation to refer to an existing field currently. Refer to [JSONPath support in Kubernetes](https://kubernetes.io/docs/reference/kubectl/jsonpath/) for more info.
  /// Numeric index of array is not supported.
  /// For field name which contains special characters, use `['specialName']` to refer the field name.
  /// e.g. for attribute `foo.34$` appears in a list `testList`, the fieldPath could be set to `.testList['foo.34$']`
  /// +optional
  @$pb.TagNumber(5)
  $core.String get fieldPath => $_getSZ(4);
  @$pb.TagNumber(5)
  set fieldPath($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFieldPath() => $_has(4);
  @$pb.TagNumber(5)
  void clearFieldPath() => clearField(5);

  ///  optionalOldSelf is used to opt a transition rule into evaluation
  ///  even when the object is first created, or if the old object is
  ///  missing the value.
  ///
  ///  When enabled `oldSelf` will be a CEL optional whose value will be
  ///  `None` if there is no old value, or when the object is initially created.
  ///
  ///  You may check for presence of oldSelf using `oldSelf.hasValue()` and
  ///  unwrap it after checking using `oldSelf.value()`. Check the CEL
  ///  documentation for Optional types for more information:
  ///  https://pkg.go.dev/github.com/google/cel-go/cel#OptionalTypes
  ///
  ///  May not be set unless `oldSelf` is used in `rule`.
  ///
  ///  +featureGate=CRDValidationRatcheting
  ///  +optional
  @$pb.TagNumber(6)
  $core.bool get optionalOldSelf => $_getBF(5);
  @$pb.TagNumber(6)
  set optionalOldSelf($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasOptionalOldSelf() => $_has(5);
  @$pb.TagNumber(6)
  void clearOptionalOldSelf() => clearField(6);
}

/// WebhookClientConfig contains the information to make a TLS connection with the webhook.
class WebhookClientConfig extends $pb.GeneratedMessage {
  factory WebhookClientConfig({
    ServiceReference? service,
    $core.List<$core.int>? caBundle,
    $core.String? url,
  }) {
    final $result = create();
    if (service != null) {
      $result.service = service;
    }
    if (caBundle != null) {
      $result.caBundle = caBundle;
    }
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  WebhookClientConfig._() : super();
  factory WebhookClientConfig.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebhookClientConfig.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebhookClientConfig', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<ServiceReference>(1, _omitFieldNames ? '' : 'service', subBuilder: ServiceReference.create)
    ..a<$core.List<$core.int>>(2, _omitFieldNames ? '' : 'caBundle', $pb.PbFieldType.OY, protoName: 'caBundle')
    ..aOS(3, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebhookClientConfig clone() => WebhookClientConfig()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebhookClientConfig copyWith(void Function(WebhookClientConfig) updates) => super.copyWith((message) => updates(message as WebhookClientConfig)) as WebhookClientConfig;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebhookClientConfig create() => WebhookClientConfig._();
  WebhookClientConfig createEmptyInstance() => create();
  static $pb.PbList<WebhookClientConfig> createRepeated() => $pb.PbList<WebhookClientConfig>();
  @$core.pragma('dart2js:noInline')
  static WebhookClientConfig getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebhookClientConfig>(create);
  static WebhookClientConfig? _defaultInstance;

  ///  service is a reference to the service for this webhook. Either
  ///  service or url must be specified.
  ///
  ///  If the webhook is running within the cluster, then you should use `service`.
  ///
  ///  +optional
  @$pb.TagNumber(1)
  ServiceReference get service => $_getN(0);
  @$pb.TagNumber(1)
  set service(ServiceReference v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => clearField(1);
  @$pb.TagNumber(1)
  ServiceReference ensureService() => $_ensure(0);

  /// caBundle is a PEM encoded CA bundle which will be used to validate the webhook's server certificate.
  /// If unspecified, system trust roots on the apiserver are used.
  /// +optional
  @$pb.TagNumber(2)
  $core.List<$core.int> get caBundle => $_getN(1);
  @$pb.TagNumber(2)
  set caBundle($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCaBundle() => $_has(1);
  @$pb.TagNumber(2)
  void clearCaBundle() => clearField(2);

  ///  url gives the location of the webhook, in standard URL form
  ///  (`scheme://host:port/path`). Exactly one of `url` or `service`
  ///  must be specified.
  ///
  ///  The `host` should not refer to a service running in the cluster; use
  ///  the `service` field instead. The host might be resolved via external
  ///  DNS in some apiservers (e.g., `kube-apiserver` cannot resolve
  ///  in-cluster DNS as that would be a layering violation). `host` may
  ///  also be an IP address.
  ///
  ///  Please note that using `localhost` or `127.0.0.1` as a `host` is
  ///  risky unless you take great care to run this webhook on all hosts
  ///  which run an apiserver which might need to make calls to this
  ///  webhook. Such installs are likely to be non-portable, i.e., not easy
  ///  to turn up in a new cluster.
  ///
  ///  The scheme must be "https"; the URL must begin with "https://".
  ///
  ///  A path is optional, and if present may be any string permissible in
  ///  a URL. You may use the path to pass an arbitrary string to the
  ///  webhook, for example, a cluster identifier.
  ///
  ///  Attempting to use a user or basic auth e.g. "user:password@" is not
  ///  allowed. Fragments ("#...") and query parameters ("?...") are not
  ///  allowed, either.
  ///
  ///  +optional
  @$pb.TagNumber(3)
  $core.String get url => $_getSZ(2);
  @$pb.TagNumber(3)
  set url($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUrl() => $_has(2);
  @$pb.TagNumber(3)
  void clearUrl() => clearField(3);
}

/// WebhookConversion describes how to call a conversion webhook
class WebhookConversion extends $pb.GeneratedMessage {
  factory WebhookConversion({
    WebhookClientConfig? clientConfig,
    $core.Iterable<$core.String>? conversionReviewVersions,
  }) {
    final $result = create();
    if (clientConfig != null) {
      $result.clientConfig = clientConfig;
    }
    if (conversionReviewVersions != null) {
      $result.conversionReviewVersions.addAll(conversionReviewVersions);
    }
    return $result;
  }
  WebhookConversion._() : super();
  factory WebhookConversion.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WebhookConversion.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'WebhookConversion', package: const $pb.PackageName(_omitMessageNames ? '' : 'apiextensions_apiserver.pkg.apis.apiextensions.v1'), createEmptyInstance: create)
    ..aOM<WebhookClientConfig>(2, _omitFieldNames ? '' : 'clientConfig', protoName: 'clientConfig', subBuilder: WebhookClientConfig.create)
    ..pPS(3, _omitFieldNames ? '' : 'conversionReviewVersions', protoName: 'conversionReviewVersions')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WebhookConversion clone() => WebhookConversion()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WebhookConversion copyWith(void Function(WebhookConversion) updates) => super.copyWith((message) => updates(message as WebhookConversion)) as WebhookConversion;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static WebhookConversion create() => WebhookConversion._();
  WebhookConversion createEmptyInstance() => create();
  static $pb.PbList<WebhookConversion> createRepeated() => $pb.PbList<WebhookConversion>();
  @$core.pragma('dart2js:noInline')
  static WebhookConversion getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WebhookConversion>(create);
  static WebhookConversion? _defaultInstance;

  /// clientConfig is the instructions for how to call the webhook if strategy is `Webhook`.
  /// +optional
  @$pb.TagNumber(2)
  WebhookClientConfig get clientConfig => $_getN(0);
  @$pb.TagNumber(2)
  set clientConfig(WebhookClientConfig v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClientConfig() => $_has(0);
  @$pb.TagNumber(2)
  void clearClientConfig() => clearField(2);
  @$pb.TagNumber(2)
  WebhookClientConfig ensureClientConfig() => $_ensure(0);

  /// conversionReviewVersions is an ordered list of preferred `ConversionReview`
  /// versions the Webhook expects. The API server will use the first version in
  /// the list which it supports. If none of the versions specified in this list
  /// are supported by API server, conversion will fail for the custom resource.
  /// If a persisted Webhook configuration specifies allowed versions and does not
  /// include any versions known to the API Server, calls to the webhook will fail.
  /// +listType=atomic
  @$pb.TagNumber(3)
  $core.List<$core.String> get conversionReviewVersions => $_getList(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
