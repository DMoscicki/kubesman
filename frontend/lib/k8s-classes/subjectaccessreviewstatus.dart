import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'subjectaccessreviewstatus.g.dart';


///SubjectAccessReviewStatus
@JsonSerializable()
class Subjectaccessreviewstatus {
    
    ///Allowed is required. True if the action would be allowed, false otherwise.
    @JsonKey(name: "allowed")
    bool? allowed;
    
    ///Denied is optional. True if the action would be denied, otherwise false. If both allowed
    ///is false and denied is false, then the authorizer has no opinion on whether to authorize
    ///the action. Denied may not be true if Allowed is true.
    @JsonKey(name: "denied")
    bool? denied;
    
    ///EvaluationError is an indication that some error occurred during the authorization check.
    ///It is entirely possible to get an error and be able to continue determine authorization
    ///status in spite of it. For instance, RBAC can be missing a role, but enough roles are
    ///still present and bound to reason about the request.
    @JsonKey(name: "evaluationError")
    String? evaluationError;
    
    ///Reason is optional.  It indicates why a request was allowed or denied.
    @JsonKey(name: "reason")
    String? reason;

    Subjectaccessreviewstatus({
        required this.allowed,
        this.denied,
        this.evaluationError,
        this.reason,
    });

    factory Subjectaccessreviewstatus.fromJson(Map<String, dynamic> json) => _$SubjectaccessreviewstatusFromJson(json);

    Map<String, dynamic> toJson() => _$SubjectaccessreviewstatusToJson(this);
}
