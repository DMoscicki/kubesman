import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'statusdetails.g.dart';


///StatusDetails is a set of additional properties that MAY be set by the server to provide
///additional information about a response. The Reason field of a Status object defines what
///attributes will be set. Clients must ignore fields that do not match the defined type of
///each attribute, and should assume that any attribute may be empty, invalid, or under
///defined.
@JsonSerializable()
class Statusdetails {
    
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

    Statusdetails({
        this.causes,
        this.group,
        this.kind,
        this.name,
        this.retryAfterSeconds,
        this.uid,
    });

    factory Statusdetails.fromJson(Map<String, dynamic> json) => _$StatusdetailsFromJson(json);

    Map<String, dynamic> toJson() => _$StatusdetailsToJson(this);
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
