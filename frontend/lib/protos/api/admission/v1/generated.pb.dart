//
//  Generated code. Do not modify.
//  source: api/admission/v1/generated.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import '../../../apimachinery/pkg/apis/meta/v1/generated.pb.dart' as $0;
import '../../../apimachinery/pkg/runtime/generated.pb.dart' as $2;
import '../../authentication/v1/generated.pb.dart' as $1;

/// AdmissionRequest describes the admission.Attributes for the admission request.
class AdmissionRequest extends $pb.GeneratedMessage {
  factory AdmissionRequest({
    $core.String? uid,
    $0.GroupVersionKind? kind,
    $0.GroupVersionResource? resource,
    $core.String? subResource,
    $core.String? name,
    $core.String? namespace,
    $core.String? operation,
    $1.UserInfo? userInfo,
    $2.RawExtension? object,
    $2.RawExtension? oldObject,
    $core.bool? dryRun,
    $2.RawExtension? options,
    $0.GroupVersionKind? requestKind,
    $0.GroupVersionResource? requestResource,
    $core.String? requestSubResource,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (kind != null) {
      $result.kind = kind;
    }
    if (resource != null) {
      $result.resource = resource;
    }
    if (subResource != null) {
      $result.subResource = subResource;
    }
    if (name != null) {
      $result.name = name;
    }
    if (namespace != null) {
      $result.namespace = namespace;
    }
    if (operation != null) {
      $result.operation = operation;
    }
    if (userInfo != null) {
      $result.userInfo = userInfo;
    }
    if (object != null) {
      $result.object = object;
    }
    if (oldObject != null) {
      $result.oldObject = oldObject;
    }
    if (dryRun != null) {
      $result.dryRun = dryRun;
    }
    if (options != null) {
      $result.options = options;
    }
    if (requestKind != null) {
      $result.requestKind = requestKind;
    }
    if (requestResource != null) {
      $result.requestResource = requestResource;
    }
    if (requestSubResource != null) {
      $result.requestSubResource = requestSubResource;
    }
    return $result;
  }
  AdmissionRequest._() : super();
  factory AdmissionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdmissionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdmissionRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admission.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..aOM<$0.GroupVersionKind>(2, _omitFieldNames ? '' : 'kind', subBuilder: $0.GroupVersionKind.create)
    ..aOM<$0.GroupVersionResource>(3, _omitFieldNames ? '' : 'resource', subBuilder: $0.GroupVersionResource.create)
    ..aOS(4, _omitFieldNames ? '' : 'subResource', protoName: 'subResource')
    ..aOS(5, _omitFieldNames ? '' : 'name')
    ..aOS(6, _omitFieldNames ? '' : 'namespace')
    ..aOS(7, _omitFieldNames ? '' : 'operation')
    ..aOM<$1.UserInfo>(8, _omitFieldNames ? '' : 'userInfo', protoName: 'userInfo', subBuilder: $1.UserInfo.create)
    ..aOM<$2.RawExtension>(9, _omitFieldNames ? '' : 'object', subBuilder: $2.RawExtension.create)
    ..aOM<$2.RawExtension>(10, _omitFieldNames ? '' : 'oldObject', protoName: 'oldObject', subBuilder: $2.RawExtension.create)
    ..aOB(11, _omitFieldNames ? '' : 'dryRun', protoName: 'dryRun')
    ..aOM<$2.RawExtension>(12, _omitFieldNames ? '' : 'options', subBuilder: $2.RawExtension.create)
    ..aOM<$0.GroupVersionKind>(13, _omitFieldNames ? '' : 'requestKind', protoName: 'requestKind', subBuilder: $0.GroupVersionKind.create)
    ..aOM<$0.GroupVersionResource>(14, _omitFieldNames ? '' : 'requestResource', protoName: 'requestResource', subBuilder: $0.GroupVersionResource.create)
    ..aOS(15, _omitFieldNames ? '' : 'requestSubResource', protoName: 'requestSubResource')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdmissionRequest clone() => AdmissionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdmissionRequest copyWith(void Function(AdmissionRequest) updates) => super.copyWith((message) => updates(message as AdmissionRequest)) as AdmissionRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdmissionRequest create() => AdmissionRequest._();
  AdmissionRequest createEmptyInstance() => create();
  static $pb.PbList<AdmissionRequest> createRepeated() => $pb.PbList<AdmissionRequest>();
  @$core.pragma('dart2js:noInline')
  static AdmissionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdmissionRequest>(create);
  static AdmissionRequest? _defaultInstance;

  /// UID is an identifier for the individual request/response. It allows us to distinguish instances of requests which are
  /// otherwise identical (parallel requests, requests when earlier requests did not modify etc)
  /// The UID is meant to track the round trip (request/response) between the KAS and the WebHook, not the user request.
  /// It is suitable for correlating log entries between the webhook and apiserver, for either auditing or debugging.
  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  /// Kind is the fully-qualified type of object being submitted (for example, v1.Pod or autoscaling.v1.Scale)
  @$pb.TagNumber(2)
  $0.GroupVersionKind get kind => $_getN(1);
  @$pb.TagNumber(2)
  set kind($0.GroupVersionKind v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasKind() => $_has(1);
  @$pb.TagNumber(2)
  void clearKind() => clearField(2);
  @$pb.TagNumber(2)
  $0.GroupVersionKind ensureKind() => $_ensure(1);

  /// Resource is the fully-qualified resource being requested (for example, v1.pods)
  @$pb.TagNumber(3)
  $0.GroupVersionResource get resource => $_getN(2);
  @$pb.TagNumber(3)
  set resource($0.GroupVersionResource v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasResource() => $_has(2);
  @$pb.TagNumber(3)
  void clearResource() => clearField(3);
  @$pb.TagNumber(3)
  $0.GroupVersionResource ensureResource() => $_ensure(2);

  /// SubResource is the subresource being requested, if any (for example, "status" or "scale")
  /// +optional
  @$pb.TagNumber(4)
  $core.String get subResource => $_getSZ(3);
  @$pb.TagNumber(4)
  set subResource($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSubResource() => $_has(3);
  @$pb.TagNumber(4)
  void clearSubResource() => clearField(4);

  /// Name is the name of the object as presented in the request.  On a CREATE operation, the client may omit name and
  /// rely on the server to generate the name.  If that is the case, this field will contain an empty string.
  /// +optional
  @$pb.TagNumber(5)
  $core.String get name => $_getSZ(4);
  @$pb.TagNumber(5)
  set name($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasName() => $_has(4);
  @$pb.TagNumber(5)
  void clearName() => clearField(5);

  /// Namespace is the namespace associated with the request (if any).
  /// +optional
  @$pb.TagNumber(6)
  $core.String get namespace => $_getSZ(5);
  @$pb.TagNumber(6)
  set namespace($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasNamespace() => $_has(5);
  @$pb.TagNumber(6)
  void clearNamespace() => clearField(6);

  /// Operation is the operation being performed. This may be different than the operation
  /// requested. e.g. a patch can result in either a CREATE or UPDATE Operation.
  @$pb.TagNumber(7)
  $core.String get operation => $_getSZ(6);
  @$pb.TagNumber(7)
  set operation($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOperation() => $_has(6);
  @$pb.TagNumber(7)
  void clearOperation() => clearField(7);

  /// UserInfo is information about the requesting user
  @$pb.TagNumber(8)
  $1.UserInfo get userInfo => $_getN(7);
  @$pb.TagNumber(8)
  set userInfo($1.UserInfo v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasUserInfo() => $_has(7);
  @$pb.TagNumber(8)
  void clearUserInfo() => clearField(8);
  @$pb.TagNumber(8)
  $1.UserInfo ensureUserInfo() => $_ensure(7);

  /// Object is the object from the incoming request.
  /// +optional
  @$pb.TagNumber(9)
  $2.RawExtension get object => $_getN(8);
  @$pb.TagNumber(9)
  set object($2.RawExtension v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasObject() => $_has(8);
  @$pb.TagNumber(9)
  void clearObject() => clearField(9);
  @$pb.TagNumber(9)
  $2.RawExtension ensureObject() => $_ensure(8);

  /// OldObject is the existing object. Only populated for DELETE and UPDATE requests.
  /// +optional
  @$pb.TagNumber(10)
  $2.RawExtension get oldObject => $_getN(9);
  @$pb.TagNumber(10)
  set oldObject($2.RawExtension v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasOldObject() => $_has(9);
  @$pb.TagNumber(10)
  void clearOldObject() => clearField(10);
  @$pb.TagNumber(10)
  $2.RawExtension ensureOldObject() => $_ensure(9);

  /// DryRun indicates that modifications will definitely not be persisted for this request.
  /// Defaults to false.
  /// +optional
  @$pb.TagNumber(11)
  $core.bool get dryRun => $_getBF(10);
  @$pb.TagNumber(11)
  set dryRun($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasDryRun() => $_has(10);
  @$pb.TagNumber(11)
  void clearDryRun() => clearField(11);

  /// Options is the operation option structure of the operation being performed.
  /// e.g. `meta.k8s.io/v1.DeleteOptions` or `meta.k8s.io/v1.CreateOptions`. This may be
  /// different than the options the caller provided. e.g. for a patch request the performed
  /// Operation might be a CREATE, in which case the Options will a
  /// `meta.k8s.io/v1.CreateOptions` even though the caller provided `meta.k8s.io/v1.PatchOptions`.
  /// +optional
  @$pb.TagNumber(12)
  $2.RawExtension get options => $_getN(11);
  @$pb.TagNumber(12)
  set options($2.RawExtension v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasOptions() => $_has(11);
  @$pb.TagNumber(12)
  void clearOptions() => clearField(12);
  @$pb.TagNumber(12)
  $2.RawExtension ensureOptions() => $_ensure(11);

  ///  RequestKind is the fully-qualified type of the original API request (for example, v1.Pod or autoscaling.v1.Scale).
  ///  If this is specified and differs from the value in "kind", an equivalent match and conversion was performed.
  ///
  ///  For example, if deployments can be modified via apps/v1 and apps/v1beta1, and a webhook registered a rule of
  ///  `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]` and `matchPolicy: Equivalent`,
  ///  an API request to apps/v1beta1 deployments would be converted and sent to the webhook
  ///  with `kind: {group:"apps", version:"v1", kind:"Deployment"}` (matching the rule the webhook registered for),
  ///  and `requestKind: {group:"apps", version:"v1beta1", kind:"Deployment"}` (indicating the kind of the original API request).
  ///
  ///  See documentation for the "matchPolicy" field in the webhook configuration type for more details.
  ///  +optional
  @$pb.TagNumber(13)
  $0.GroupVersionKind get requestKind => $_getN(12);
  @$pb.TagNumber(13)
  set requestKind($0.GroupVersionKind v) { setField(13, v); }
  @$pb.TagNumber(13)
  $core.bool hasRequestKind() => $_has(12);
  @$pb.TagNumber(13)
  void clearRequestKind() => clearField(13);
  @$pb.TagNumber(13)
  $0.GroupVersionKind ensureRequestKind() => $_ensure(12);

  ///  RequestResource is the fully-qualified resource of the original API request (for example, v1.pods).
  ///  If this is specified and differs from the value in "resource", an equivalent match and conversion was performed.
  ///
  ///  For example, if deployments can be modified via apps/v1 and apps/v1beta1, and a webhook registered a rule of
  ///  `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]` and `matchPolicy: Equivalent`,
  ///  an API request to apps/v1beta1 deployments would be converted and sent to the webhook
  ///  with `resource: {group:"apps", version:"v1", resource:"deployments"}` (matching the resource the webhook registered for),
  ///  and `requestResource: {group:"apps", version:"v1beta1", resource:"deployments"}` (indicating the resource of the original API request).
  ///
  ///  See documentation for the "matchPolicy" field in the webhook configuration type.
  ///  +optional
  @$pb.TagNumber(14)
  $0.GroupVersionResource get requestResource => $_getN(13);
  @$pb.TagNumber(14)
  set requestResource($0.GroupVersionResource v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasRequestResource() => $_has(13);
  @$pb.TagNumber(14)
  void clearRequestResource() => clearField(14);
  @$pb.TagNumber(14)
  $0.GroupVersionResource ensureRequestResource() => $_ensure(13);

  /// RequestSubResource is the name of the subresource of the original API request, if any (for example, "status" or "scale")
  /// If this is specified and differs from the value in "subResource", an equivalent match and conversion was performed.
  /// See documentation for the "matchPolicy" field in the webhook configuration type.
  /// +optional
  @$pb.TagNumber(15)
  $core.String get requestSubResource => $_getSZ(14);
  @$pb.TagNumber(15)
  set requestSubResource($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasRequestSubResource() => $_has(14);
  @$pb.TagNumber(15)
  void clearRequestSubResource() => clearField(15);
}

/// AdmissionResponse describes an admission response.
class AdmissionResponse extends $pb.GeneratedMessage {
  factory AdmissionResponse({
    $core.String? uid,
    $core.bool? allowed,
    $0.Status? status,
    $core.List<$core.int>? patch,
    $core.String? patchType,
    $core.Map<$core.String, $core.String>? auditAnnotations,
    $core.Iterable<$core.String>? warnings,
  }) {
    final $result = create();
    if (uid != null) {
      $result.uid = uid;
    }
    if (allowed != null) {
      $result.allowed = allowed;
    }
    if (status != null) {
      $result.status = status;
    }
    if (patch != null) {
      $result.patch = patch;
    }
    if (patchType != null) {
      $result.patchType = patchType;
    }
    if (auditAnnotations != null) {
      $result.auditAnnotations.addAll(auditAnnotations);
    }
    if (warnings != null) {
      $result.warnings.addAll(warnings);
    }
    return $result;
  }
  AdmissionResponse._() : super();
  factory AdmissionResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdmissionResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdmissionResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admission.v1'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'uid')
    ..aOB(2, _omitFieldNames ? '' : 'allowed')
    ..aOM<$0.Status>(3, _omitFieldNames ? '' : 'status', subBuilder: $0.Status.create)
    ..a<$core.List<$core.int>>(4, _omitFieldNames ? '' : 'patch', $pb.PbFieldType.OY)
    ..aOS(5, _omitFieldNames ? '' : 'patchType', protoName: 'patchType')
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'auditAnnotations', protoName: 'auditAnnotations', entryClassName: 'AdmissionResponse.AuditAnnotationsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OS, packageName: const $pb.PackageName('api.admission.v1'))
    ..pPS(7, _omitFieldNames ? '' : 'warnings')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdmissionResponse clone() => AdmissionResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdmissionResponse copyWith(void Function(AdmissionResponse) updates) => super.copyWith((message) => updates(message as AdmissionResponse)) as AdmissionResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdmissionResponse create() => AdmissionResponse._();
  AdmissionResponse createEmptyInstance() => create();
  static $pb.PbList<AdmissionResponse> createRepeated() => $pb.PbList<AdmissionResponse>();
  @$core.pragma('dart2js:noInline')
  static AdmissionResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdmissionResponse>(create);
  static AdmissionResponse? _defaultInstance;

  /// UID is an identifier for the individual request/response.
  /// This must be copied over from the corresponding AdmissionRequest.
  @$pb.TagNumber(1)
  $core.String get uid => $_getSZ(0);
  @$pb.TagNumber(1)
  set uid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);
  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  /// Allowed indicates whether or not the admission request was permitted.
  @$pb.TagNumber(2)
  $core.bool get allowed => $_getBF(1);
  @$pb.TagNumber(2)
  set allowed($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAllowed() => $_has(1);
  @$pb.TagNumber(2)
  void clearAllowed() => clearField(2);

  /// Result contains extra details into why an admission request was denied.
  /// This field IS NOT consulted in any way if "Allowed" is "true".
  /// +optional
  @$pb.TagNumber(3)
  $0.Status get status => $_getN(2);
  @$pb.TagNumber(3)
  set status($0.Status v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasStatus() => $_has(2);
  @$pb.TagNumber(3)
  void clearStatus() => clearField(3);
  @$pb.TagNumber(3)
  $0.Status ensureStatus() => $_ensure(2);

  /// The patch body. Currently we only support "JSONPatch" which implements RFC 6902.
  /// +optional
  @$pb.TagNumber(4)
  $core.List<$core.int> get patch => $_getN(3);
  @$pb.TagNumber(4)
  set patch($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPatch() => $_has(3);
  @$pb.TagNumber(4)
  void clearPatch() => clearField(4);

  /// The type of Patch. Currently we only allow "JSONPatch".
  /// +optional
  @$pb.TagNumber(5)
  $core.String get patchType => $_getSZ(4);
  @$pb.TagNumber(5)
  set patchType($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPatchType() => $_has(4);
  @$pb.TagNumber(5)
  void clearPatchType() => clearField(5);

  /// AuditAnnotations is an unstructured key value map set by remote admission controller (e.g. error=image-blacklisted).
  /// MutatingAdmissionWebhook and ValidatingAdmissionWebhook admission controller will prefix the keys with
  /// admission webhook name (e.g. imagepolicy.example.com/error=image-blacklisted). AuditAnnotations will be provided by
  /// the admission webhook to add additional context to the audit log for this request.
  /// +optional
  @$pb.TagNumber(6)
  $core.Map<$core.String, $core.String> get auditAnnotations => $_getMap(5);

  /// warnings is a list of warning messages to return to the requesting API client.
  /// Warning messages describe a problem the client making the API request should correct or be aware of.
  /// Limit warnings to 120 characters if possible.
  /// Warnings over 256 characters and large numbers of warnings may be truncated.
  /// +optional
  @$pb.TagNumber(7)
  $core.List<$core.String> get warnings => $_getList(6);
}

/// AdmissionReview describes an admission review request/response.
class AdmissionReview extends $pb.GeneratedMessage {
  factory AdmissionReview({
    AdmissionRequest? request,
    AdmissionResponse? response,
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
  AdmissionReview._() : super();
  factory AdmissionReview.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AdmissionReview.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'AdmissionReview', package: const $pb.PackageName(_omitMessageNames ? '' : 'api.admission.v1'), createEmptyInstance: create)
    ..aOM<AdmissionRequest>(1, _omitFieldNames ? '' : 'request', subBuilder: AdmissionRequest.create)
    ..aOM<AdmissionResponse>(2, _omitFieldNames ? '' : 'response', subBuilder: AdmissionResponse.create)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AdmissionReview clone() => AdmissionReview()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AdmissionReview copyWith(void Function(AdmissionReview) updates) => super.copyWith((message) => updates(message as AdmissionReview)) as AdmissionReview;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AdmissionReview create() => AdmissionReview._();
  AdmissionReview createEmptyInstance() => create();
  static $pb.PbList<AdmissionReview> createRepeated() => $pb.PbList<AdmissionReview>();
  @$core.pragma('dart2js:noInline')
  static AdmissionReview getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AdmissionReview>(create);
  static AdmissionReview? _defaultInstance;

  /// Request describes the attributes for the admission request.
  /// +optional
  @$pb.TagNumber(1)
  AdmissionRequest get request => $_getN(0);
  @$pb.TagNumber(1)
  set request(AdmissionRequest v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
  @$pb.TagNumber(1)
  AdmissionRequest ensureRequest() => $_ensure(0);

  /// Response describes the attributes for the admission response.
  /// +optional
  @$pb.TagNumber(2)
  AdmissionResponse get response => $_getN(1);
  @$pb.TagNumber(2)
  set response(AdmissionResponse v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasResponse() => $_has(1);
  @$pb.TagNumber(2)
  void clearResponse() => clearField(2);
  @$pb.TagNumber(2)
  AdmissionResponse ensureResponse() => $_ensure(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
