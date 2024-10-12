import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcerule_authorization_v1.g.dart';


///ResourceRule is the list of actions the subject is allowed to perform on resources. The
///list ordering isn't significant, may contain duplicates, and possibly be incomplete.
@JsonSerializable()
class ResourceruleAuthorizationV1 {
    
    ///APIGroups is the name of the APIGroup that contains the resources.  If multiple API
    ///groups are specified, any action requested against one of the enumerated resources in any
    ///API group will be allowed.  "*" means all.
    @JsonKey(name: "apiGroups")
    List<String?>? apiGroups;
    
    ///ResourceNames is an optional white list of names that the rule applies to.  An empty set
    ///means that everything is allowed.  "*" means all.
    @JsonKey(name: "resourceNames")
    List<String?>? resourceNames;
    
    ///Resources is a list of resources this rule applies to.  "*" means all in the specified
    ///apiGroups.
    ///"*/foo" represents the subresource 'foo' for all resources in the specified apiGroups.
    @JsonKey(name: "resources")
    List<String?>? resources;
    
    ///Verb is a list of kubernetes resource API verbs, like: get, list, watch, create, update,
    ///delete, proxy.  "*" means all.
    @JsonKey(name: "verbs")
    List<String?>? verbs;

    ResourceruleAuthorizationV1({
        this.apiGroups,
        this.resourceNames,
        this.resources,
        required this.verbs,
    });

    factory ResourceruleAuthorizationV1.fromJson(Map<String, dynamic> json) => _$ResourceruleAuthorizationV1FromJson(json);

    Map<String, dynamic> toJson() => _$ResourceruleAuthorizationV1ToJson(this);
}
