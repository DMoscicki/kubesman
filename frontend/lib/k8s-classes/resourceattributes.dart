import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceattributes.g.dart';


///ResourceAttributes includes the authorization attributes available for resource requests
///to the Authorizer interface
@JsonSerializable()
class Resourceattributes {
    
    ///Group is the API Group of the Resource.  "*" means all.
    @JsonKey(name: "group")
    String? group;
    
    ///Name is the name of the resource being requested for a "get" or deleted for a "delete".
    ///"" (empty) means all.
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace is the namespace of the action being requested.  Currently, there is no
    ///distinction between no namespace and all namespaces "" (empty) is defaulted for
    ///LocalSubjectAccessReviews "" (empty) is empty for cluster-scoped resources "" (empty)
    ///means "all" for namespace scoped resources from a SubjectAccessReview or
    ///SelfSubjectAccessReview
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///Resource is one of the existing resource types.  "*" means all.
    @JsonKey(name: "resource")
    String? resource;
    
    ///Subresource is one of the existing resource types.  "" means none.
    @JsonKey(name: "subresource")
    String? subresource;
    
    ///Verb is a kubernetes resource API verb, like: get, list, watch, create, update, delete,
    ///proxy.  "*" means all.
    @JsonKey(name: "verb")
    String? verb;
    
    ///Version is the API Version of the Resource.  "*" means all.
    @JsonKey(name: "version")
    String? version;

    Resourceattributes({
        this.group,
        this.name,
        this.namespace,
        this.resource,
        this.subresource,
        this.verb,
        this.version,
    });

    factory Resourceattributes.fromJson(Map<String, dynamic> json) => _$ResourceattributesFromJson(json);

    Map<String, dynamic> toJson() => _$ResourceattributesToJson(this);
}
