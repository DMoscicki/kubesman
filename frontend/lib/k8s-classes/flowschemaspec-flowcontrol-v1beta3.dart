import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'flowschemaspec_flowcontrol_v1_beta3.g.dart';


///FlowSchemaSpec describes how the FlowSchema's specification looks like.
@JsonSerializable()
class FlowschemaspecFlowcontrolV1Beta3 {
    
    ///`distinguisherMethod` defines how to compute the flow distinguisher for requests that
    ///match this schema. `nil` specifies that the distinguisher is disabled and thus will
    ///always be the empty string.
    @JsonKey(name: "distinguisherMethod")
    IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod? distinguisherMethod;
    
    ///`matchingPrecedence` is used to choose among the FlowSchemas that match a given request.
    ///The chosen FlowSchema is among those with the numerically lowest (which we take to be
    ///logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in
    ///[1,10000]. Note that if the precedence is not specified, it will be set to 1000 as
    ///default.
    @JsonKey(name: "matchingPrecedence")
    int? matchingPrecedence;
    
    ///`priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the
    ///cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked
    ///as invalid in its status. Required.
    @JsonKey(name: "priorityLevelConfiguration")
    IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference priorityLevelConfiguration;
    
    ///`rules` describes which requests will match this flow schema. This FlowSchema matches a
    ///request if and only if at least one member of rules matches the request. if it is an
    ///empty slice, there will be no requests matching the FlowSchema.
    @JsonKey(name: "rules")
    List<IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects>? rules;

    FlowschemaspecFlowcontrolV1Beta3({
        this.distinguisherMethod,
        this.matchingPrecedence,
        required this.priorityLevelConfiguration,
        this.rules,
    });

    factory FlowschemaspecFlowcontrolV1Beta3.fromJson(Map<String, dynamic> json) => _$FlowschemaspecFlowcontrolV1Beta3FromJson(json);

    Map<String, dynamic> toJson() => _$FlowschemaspecFlowcontrolV1Beta3ToJson(this);
}


///`distinguisherMethod` defines how to compute the flow distinguisher for requests that
///match this schema. `nil` specifies that the distinguisher is disabled and thus will
///always be the empty string.
///
///FlowDistinguisherMethod specifies the method of a flow distinguisher.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod {
    
    ///`type` is the type of flow distinguisher method The supported types are "ByUser" and
    ///"ByNamespace". Required.
    @JsonKey(name: "type")
    String type;

    IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod({
        required this.type,
    });

    factory IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethod.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethodFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3FlowDistinguisherMethodToJson(this);
}


///`priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the
///cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked
///as invalid in its status. Required.
///
///PriorityLevelConfigurationReference contains information that points to the
///"request-priority" being used.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference {
    
    ///`name` is the name of the priority level configuration being referenced Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference({
        required this.name,
    });

    factory IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3PriorityLevelConfigurationReferenceToJson(this);
}


///PolicyRulesWithSubjects prescribes a test that applies to a request to an apiserver. The
///test considers the subject making the request, the verb being requested, and the resource
///to be acted upon. This PolicyRulesWithSubjects matches a request if and only if both (a)
///at least one member of subjects matches the request and (b) at least one member of
///resourceRules or nonResourceRules matches the request.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects {
    
    ///`nonResourceRules` is a list of NonResourcePolicyRules that identify matching requests
    ///according to their verb and the target non-resource URL.
    @JsonKey(name: "nonResourceRules")
    List<IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRule>? nonResourceRules;
    
    ///`resourceRules` is a slice of ResourcePolicyRules that identify matching requests
    ///according to their verb and the target resource. At least one of `resourceRules` and
    ///`nonResourceRules` has to be non-empty.
    @JsonKey(name: "resourceRules")
    List<IoK8SApiFlowcontrolV1Beta3ResourcePolicyRule>? resourceRules;
    
    ///subjects is the list of normal user, serviceaccount, or group that this rule cares about.
    ///There must be at least one member in this slice. A slice that includes both the
    ///system:authenticated and system:unauthenticated user groups matches every request.
    ///Required.
    @JsonKey(name: "subjects")
    List<IoK8SApiFlowcontrolV1Beta3Subject> subjects;

    IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects({
        this.nonResourceRules,
        this.resourceRules,
        required this.subjects,
    });

    factory IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjects.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjectsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3PolicyRulesWithSubjectsToJson(this);
}


///NonResourcePolicyRule is a predicate that matches non-resource requests according to
///their verb and the target non-resource URL. A NonResourcePolicyRule matches a request if
///and only if both (a) at least one member of verbs matches the request and (b) at least
///one member of nonResourceURLs matches the request.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRule {
    
    ///`nonResourceURLs` is a set of url prefixes that a user should have access to and may not
    ///be empty. For example:
    ///- "/healthz" is legal
    ///- "/hea*" is illegal
    ///- "/hea" is legal but matches nothing
    ///- "/hea/*" also matches nothing
    ///- "/healthz/*" matches all per-component health checks.
    ///"*" matches all non-resource urls. if it is present, it must be the only entry. Required.
    @JsonKey(name: "nonResourceURLs")
    List<String> nonResourceUrLs;
    
    ///`verbs` is a list of matching verbs and may not be empty. "*" matches all verbs. If it is
    ///present, it must be the only entry. Required.
    @JsonKey(name: "verbs")
    List<String> verbs;

    IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRule({
        required this.nonResourceUrLs,
        required this.verbs,
    });

    factory IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3NonResourcePolicyRuleToJson(this);
}


///ResourcePolicyRule is a predicate that matches some resource requests, testing the
///request's verb and the target resource. A ResourcePolicyRule matches a resource request
///if and only if: (a) at least one member of verbs matches the request, (b) at least one
///member of apiGroups matches the request, (c) at least one member of resources matches the
///request, and (d) either (d1) the request does not specify a namespace (i.e.,
///`Namespace==""`) and clusterScope is true or (d2) the request specifies a namespace and
///least one member of namespaces matches the request's namespace.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3ResourcePolicyRule {
    
    ///`apiGroups` is a list of matching API groups and may not be empty. "*" matches all API
    ///groups and, if present, must be the only entry. Required.
    @JsonKey(name: "apiGroups")
    List<String> apiGroups;
    
    ///`clusterScope` indicates whether to match requests that do not specify a namespace (which
    ///happens either because the resource is not namespaced or the request targets all
    ///namespaces). If this field is omitted or false then the `namespaces` field must contain a
    ///non-empty list.
    @JsonKey(name: "clusterScope")
    bool? clusterScope;
    
    ///`namespaces` is a list of target namespaces that restricts matches.  A request that
    ///specifies a target namespace matches only if either (a) this list contains that target
    ///namespace or (b) this list contains "*".  Note that "*" matches any specified namespace
    ///but does not match a request that _does not specify_ a namespace (see the `clusterScope`
    ///field for that). This list may be empty, but only if `clusterScope` is true.
    @JsonKey(name: "namespaces")
    List<String>? namespaces;
    
    ///`resources` is a list of matching resources (i.e., lowercase and plural) with, if
    ///desired, subresource.  For example, [ "services", "nodes/status" ].  This list may not be
    ///empty. "*" matches all resources and, if present, must be the only entry. Required.
    @JsonKey(name: "resources")
    List<String> resources;
    
    ///`verbs` is a list of matching verbs and may not be empty. "*" matches all verbs and, if
    ///present, must be the only entry. Required.
    @JsonKey(name: "verbs")
    List<String> verbs;

    IoK8SApiFlowcontrolV1Beta3ResourcePolicyRule({
        required this.apiGroups,
        this.clusterScope,
        this.namespaces,
        required this.resources,
        required this.verbs,
    });

    factory IoK8SApiFlowcontrolV1Beta3ResourcePolicyRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3ResourcePolicyRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3ResourcePolicyRuleToJson(this);
}


///Subject matches the originator of a request, as identified by the request authentication
///system. There are three ways of matching an originator; by user, group, or service
///account.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3Subject {
    
    ///`group` matches based on user group name.
    @JsonKey(name: "group")
    IoK8SApiFlowcontrolV1Beta3GroupSubject? group;
    
    ///`kind` indicates which one of the other fields is non-empty. Required
    @JsonKey(name: "kind")
    String kind;
    
    ///`serviceAccount` matches ServiceAccounts.
    @JsonKey(name: "serviceAccount")
    IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject? serviceAccount;
    
    ///`user` matches based on username.
    @JsonKey(name: "user")
    IoK8SApiFlowcontrolV1Beta3UserSubject? user;

    IoK8SApiFlowcontrolV1Beta3Subject({
        this.group,
        required this.kind,
        this.serviceAccount,
        this.user,
    });

    factory IoK8SApiFlowcontrolV1Beta3Subject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3SubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3SubjectToJson(this);
}


///`group` matches based on user group name.
///
///GroupSubject holds detailed information for group-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3GroupSubject {
    
    ///name is the user group that matches, or "*" to match all user groups. See
    ///https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for
    ///some well-known group names. Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiFlowcontrolV1Beta3GroupSubject({
        required this.name,
    });

    factory IoK8SApiFlowcontrolV1Beta3GroupSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3GroupSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3GroupSubjectToJson(this);
}


///`serviceAccount` matches ServiceAccounts.
///
///ServiceAccountSubject holds detailed information for service-account-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject {
    
    ///`name` is the name of matching ServiceAccount objects, or "*" to match regardless of
    ///name. Required.
    @JsonKey(name: "name")
    String name;
    
    ///`namespace` is the namespace of matching ServiceAccount objects. Required.
    @JsonKey(name: "namespace")
    String namespace;

    IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject({
        required this.name,
        required this.namespace,
    });

    factory IoK8SApiFlowcontrolV1Beta3ServiceAccountSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3ServiceAccountSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3ServiceAccountSubjectToJson(this);
}


///`user` matches based on username.
///
///UserSubject holds detailed information for user-kind subject.
@JsonSerializable()
class IoK8SApiFlowcontrolV1Beta3UserSubject {
    
    ///`name` is the username that matches, or "*" to match all usernames. Required.
    @JsonKey(name: "name")
    String name;

    IoK8SApiFlowcontrolV1Beta3UserSubject({
        required this.name,
    });

    factory IoK8SApiFlowcontrolV1Beta3UserSubject.fromJson(Map<String, dynamic> json) => _$IoK8SApiFlowcontrolV1Beta3UserSubjectFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiFlowcontrolV1Beta3UserSubjectToJson(this);
}
