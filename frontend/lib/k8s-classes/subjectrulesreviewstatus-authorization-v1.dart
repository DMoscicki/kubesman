import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'subjectrulesreviewstatus_authorization_v1.g.dart';


///SubjectRulesReviewStatus contains the result of a rules check. This check can be
///incomplete depending on the set of authorizers the server is configured with and any
///errors experienced during evaluation. Because authorization rules are additive, if a rule
///appears in a list it's safe to assume the subject has that permission, even if that list
///is incomplete.
@JsonSerializable()
class SubjectrulesreviewstatusAuthorizationV1 {
    
    ///EvaluationError can appear in combination with Rules. It indicates an error occurred
    ///during rule evaluation, such as an authorizer that doesn't support rule evaluation, and
    ///that ResourceRules and/or NonResourceRules may be incomplete.
    @JsonKey(name: "evaluationError")
    String? evaluationError;
    
    ///Incomplete is true when the rules returned by this call are incomplete. This is most
    ///commonly encountered when an authorizer, such as an external authorizer, doesn't support
    ///rules evaluation.
    @JsonKey(name: "incomplete")
    bool? incomplete;
    
    ///NonResourceRules is the list of actions the subject is allowed to perform on
    ///non-resources. The list ordering isn't significant, may contain duplicates, and possibly
    ///be incomplete.
    @JsonKey(name: "nonResourceRules")
    List<IoK8SApiAuthorizationV1NonResourceRule>? nonResourceRules;
    
    ///ResourceRules is the list of actions the subject is allowed to perform on resources. The
    ///list ordering isn't significant, may contain duplicates, and possibly be incomplete.
    @JsonKey(name: "resourceRules")
    List<IoK8SApiAuthorizationV1ResourceRule>? resourceRules;

    SubjectrulesreviewstatusAuthorizationV1({
        this.evaluationError,
        required this.incomplete,
        required this.nonResourceRules,
        required this.resourceRules,
    });

    factory SubjectrulesreviewstatusAuthorizationV1.fromJson(Map<String, dynamic> json) => _$SubjectrulesreviewstatusAuthorizationV1FromJson(json);

    Map<String, dynamic> toJson() => _$SubjectrulesreviewstatusAuthorizationV1ToJson(this);
}


///NonResourceRule holds information that describes a rule for the non-resource
@JsonSerializable()
class IoK8SApiAuthorizationV1NonResourceRule {
    
    ///NonResourceURLs is a set of partial urls that a user should have access to.  *s are
    ///allowed, but only as the full, final step in the path.  "*" means all.
    @JsonKey(name: "nonResourceURLs")
    List<String>? nonResourceUrLs;
    
    ///Verb is a list of kubernetes non-resource API verbs, like: get, post, put, delete, patch,
    ///head, options.  "*" means all.
    @JsonKey(name: "verbs")
    List<String> verbs;

    IoK8SApiAuthorizationV1NonResourceRule({
        this.nonResourceUrLs,
        required this.verbs,
    });

    factory IoK8SApiAuthorizationV1NonResourceRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthorizationV1NonResourceRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthorizationV1NonResourceRuleToJson(this);
}


///ResourceRule is the list of actions the subject is allowed to perform on resources. The
///list ordering isn't significant, may contain duplicates, and possibly be incomplete.
@JsonSerializable()
class IoK8SApiAuthorizationV1ResourceRule {
    
    ///APIGroups is the name of the APIGroup that contains the resources.  If multiple API
    ///groups are specified, any action requested against one of the enumerated resources in any
    ///API group will be allowed.  "*" means all.
    @JsonKey(name: "apiGroups")
    List<String>? apiGroups;
    
    ///ResourceNames is an optional white list of names that the rule applies to.  An empty set
    ///means that everything is allowed.  "*" means all.
    @JsonKey(name: "resourceNames")
    List<String>? resourceNames;
    
    ///Resources is a list of resources this rule applies to.  "*" means all in the specified
    ///apiGroups.
    ///"*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.
    @JsonKey(name: "resources")
    List<String>? resources;
    
    ///Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update,
    ///delete, proxy.  "*" means all.
    @JsonKey(name: "verbs")
    List<String> verbs;

    IoK8SApiAuthorizationV1ResourceRule({
        this.apiGroups,
        this.resourceNames,
        this.resources,
        required this.verbs,
    });

    factory IoK8SApiAuthorizationV1ResourceRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthorizationV1ResourceRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthorizationV1ResourceRuleToJson(this);
}
