import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'policyrule_rbac_v1.g.dart';


///PolicyRule holds information that describes a policy rule, but does not contain
///information about who the rule applies to or which namespace the rule applies to.
@JsonSerializable()
class PolicyruleRbacV1 {
    
    ///APIGroups is the name of the APIGroup that contains the resources.  If multiple API
    ///groups are specified, any action requested against one of the enumerated resources in any
    ///API group will be allowed. "" represents the core API group and "*" represents all API
    ///groups.
    @JsonKey(name: "apiGroups")
    List<String?>? apiGroups;
    
    ///NonResourceURLs is a set of partial urls that a user should have access to.  *s are
    ///allowed, but only as the full, final step in the path Since non-resource URLs are not
    ///namespaced, this field is only applicable for ClusterRoles referenced from a
    ///ClusterRoleBinding. Rules can either apply to API resources (such as "pods" or "secrets")
    ///or non-resource URL paths (such as "/api"),  but not both.
    @JsonKey(name: "nonResourceURLs")
    List<String?>? nonResourceUrLs;
    
    ///ResourceNames is an optional white list of names that the rule applies to.  An empty set
    ///means that everything is allowed.
    @JsonKey(name: "resourceNames")
    List<String?>? resourceNames;
    
    ///Resources is a list of resources this rule applies to. '*' represents all resources.
    @JsonKey(name: "resources")
    List<String?>? resources;
    
    ///Verbs is a list of Verbs that apply to ALL the ResourceKinds contained in this rule. '*'
    ///represents all verbs.
    @JsonKey(name: "verbs")
    List<String?>? verbs;

    PolicyruleRbacV1({
        this.apiGroups,
        this.nonResourceUrLs,
        this.resourceNames,
        this.resources,
        required this.verbs,
    });

    factory PolicyruleRbacV1.fromJson(Map<String, dynamic> json) => _$PolicyruleRbacV1FromJson(json);

    Map<String, dynamic> toJson() => _$PolicyruleRbacV1ToJson(this);
}
