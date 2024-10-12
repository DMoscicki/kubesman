import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'status.g.dart';


///Status is a return value for calls that don't return other objects.
@JsonSerializable()
class Status {
    
    ///APIVersion defines the versioned schema of this representation of an object. Servers
    ///should convert recognized schemas to the latest internal value, and may reject
    ///unrecognized values. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Suggested HTTP return code for this status, 0 if not set.
    @JsonKey(name: "code")
    int? code;
    
    ///Extended data associated with the reason.  Each reason may define its own extended
    ///details. This field is optional and the data returned is not guaranteed to conform to any
    ///schema except that defined by the reason type.
    @JsonKey(name: "details")
    IoK8SApimachineryPkgApisMetaV1StatusDetails? details;
    
    ///Kind is a string value representing the REST resource this object represents. Servers may
    ///infer this from the endpoint the client submits requests to. Cannot be updated. In
    ///CamelCase. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    Kind? kind;
    
    ///A human-readable description of the status of this operation.
    @JsonKey(name: "message")
    String? message;
    
    ///Standard list metadata. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "metadata")
    Metadata? metadata;
    
    ///A machine-readable description of why this operation is in the "Failure" status. If this
    ///value is empty there is no information available. A Reason clarifies an HTTP status code
    ///but does not override it.
    @JsonKey(name: "reason")
    String? reason;
    
    ///Status of the operation. One of: "Success" or "Failure". More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status
    @JsonKey(name: "status")
    String? status;

    Status({
        this.apiVersion,
        this.code,
        this.details,
        this.kind,
        this.message,
        this.metadata,
        this.reason,
        this.status,
    });

    factory Status.fromJson(Map<String, dynamic> json) => _$StatusFromJson(json);

    Map<String, dynamic> toJson() => _$StatusToJson(this);
}


///Extended data associated with the reason.  Each reason may define its own extended
///details. This field is optional and the data returned is not guaranteed to conform to any
///schema except that defined by the reason type.
///
///StatusDetails is a set of additional properties that MAY be set by the server to provide
///additional information about a response. The Reason field of a Status object defines what
///attributes will be set. Clients must ignore fields that do not match the defined type of
///each attribute, and should assume that any attribute may be empty, invalid, or under
///defined.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1StatusDetails {
    
    ///The Causes array includes more details associated with the StatusReason failure. Not all
    ///StatusReasons may provide detailed causes.
    @JsonKey(name: "causes")
    List<IoK8SApimachineryPkgApisMetaV1StatusCause>? causes;
    
    ///The group attribute of the resource associated with the status StatusReason.
    @JsonKey(name: "group")
    String? group;
    
    ///The kind attribute of the resource associated with the status StatusReason. On some
    ///operations may differ from the requested resource Kind. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String? kind;
    
    ///The name attribute of the resource associated with the status StatusReason (when there is
    ///a single name which can be described).
    @JsonKey(name: "name")
    String? name;
    
    ///If specified, the time in seconds before the operation should be retried. Some errors may
    ///indicate the client must take an alternate action - for those errors this field may
    ///indicate how long to wait before taking the alternate action.
    @JsonKey(name: "retryAfterSeconds")
    int? retryAfterSeconds;
    
    ///UID of the resource. (when there is a single resource which can be described). More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApimachineryPkgApisMetaV1StatusDetails({
        this.causes,
        this.group,
        this.kind,
        this.name,
        this.retryAfterSeconds,
        this.uid,
    });

    factory IoK8SApimachineryPkgApisMetaV1StatusDetails.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1StatusDetailsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1StatusDetailsToJson(this);
}


///StatusCause provides more information about an api.Status failure, including cases when
///multiple errors are encountered.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1StatusCause {
    
    ///The field of the resource that has caused this error, as named by its JSON serialization.
    ///May include dot and postfix notation for nested attributes. Arrays are zero-indexed.
    ///Fields may appear more than once in an array of causes due to fields having multiple
    ///errors. Optional.
    ///
    ///Examples:
    ///"name" - the field "name" on the current resource
    ///"items[0].name" - the field "name" on the first array entry in "items"
    @JsonKey(name: "field")
    String? field;
    
    ///A human-readable description of the cause of the error.  This field may be presented
    ///as-is to a reader.
    @JsonKey(name: "message")
    String? message;
    
    ///A machine-readable description of the cause of the error. If this value is empty there is
    ///no information available.
    @JsonKey(name: "reason")
    String? reason;

    IoK8SApimachineryPkgApisMetaV1StatusCause({
        this.field,
        this.message,
        this.reason,
    });

    factory IoK8SApimachineryPkgApisMetaV1StatusCause.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1StatusCauseFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1StatusCauseToJson(this);
}


///Kind is a string value representing the REST resource this object represents. Servers may
///infer this from the endpoint the client submits requests to. Cannot be updated. In
///CamelCase. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
enum Kind {
    @JsonValue("Status")
    STATUS
}

final kindValues = EnumValues({
    "Status": Kind.STATUS
});


///Standard list metadata. More info:
///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
///
///ListMeta describes metadata that synthetic resources must have, including lists and
///various status objects. A resource may have only one of {ObjectMeta, ListMeta}.
@JsonSerializable()
class Metadata {
    
    ///continue may be set if the user set a limit on the number of items returned, and
    ///indicates that the server has more data available. The value is opaque and may be used to
    ///issue another request to the endpoint that served this list to retrieve the next set of
    ///available objects. Continuing a consistent list may not be possible if the server
    ///configuration has changed or more than a few minutes have passed. The resourceVersion
    ///field returned when using this continue value will be identical to the value in the first
    ///response, unless you have received this token from an error message.
    @JsonKey(name: "continue")
    String? metadataContinue;
    
    ///remainingItemCount is the number of subsequent items in the list which are not included
    ///in this list response. If the list request contained label or field selectors, then the
    ///number of remaining items is unknown and the field will be left unset and omitted during
    ///serialization. If the list is complete (either because it is not chunking or because this
    ///is the last chunk), then there are no more remaining items and this field will be left
    ///unset and omitted during serialization. Servers older than v1.15 do not set this field.
    ///The intended use of the remainingItemCount is *estimating* the size of a collection.
    ///Clients should not rely on the remainingItemCount to be set or to be exact.
    @JsonKey(name: "remainingItemCount")
    int? remainingItemCount;
    
    ///String that identifies the server's internal version of this object that can be used by
    ///clients to determine when objects have changed. Value must be treated as opaque by
    ///clients and passed unmodified back to the server. Populated by the system. Read-only.
    ///More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Deprecated: selfLink is a legacy read-only field that is no longer populated by the
    ///system.
    @JsonKey(name: "selfLink")
    String? selfLink;

    Metadata({
        this.metadataContinue,
        this.remainingItemCount,
        this.resourceVersion,
        this.selfLink,
    });

    factory Metadata.fromJson(Map<String, dynamic> json) => _$MetadataFromJson(json);

    Map<String, dynamic> toJson() => _$MetadataToJson(this);
}

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    }
}
