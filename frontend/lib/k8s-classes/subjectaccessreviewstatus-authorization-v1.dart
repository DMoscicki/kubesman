import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'subjectaccessreviewstatus_authorization_v1.g.dart';


///SubjectAccessReviewStatus
@JsonSerializable()
class SubjectaccessreviewstatusAuthorizationV1 {
    
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

    SubjectaccessreviewstatusAuthorizationV1({
        required this.allowed,
        this.denied,
        this.evaluationError,
        this.reason,
    });

    factory SubjectaccessreviewstatusAuthorizationV1.fromJson(Map<String, dynamic> json) => _$SubjectaccessreviewstatusAuthorizationV1FromJson(json);

    Map<String, dynamic> toJson() => _$SubjectaccessreviewstatusAuthorizationV1ToJson(this);
}
