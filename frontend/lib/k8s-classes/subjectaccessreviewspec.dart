import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'subjectaccessreviewspec.g.dart';


///SubjectAccessReviewSpec is a description of the access request.  Exactly one of
///ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
@JsonSerializable()
class Subjectaccessreviewspec {
    
    ///Extra corresponds to the user.Info.GetExtra() method from the authenticator.  Since that
    ///is input to the authorizer it needs a reflection here.
    @JsonKey(name: "extra")
    Map<String, List<String?>?>? extra;
    
    ///Groups is the groups you're testing for.
    @JsonKey(name: "groups")
    List<String?>? groups;
    
    ///NonResourceAttributes describes information for a non-resource access request
    @JsonKey(name: "nonResourceAttributes")
    IoK8SApiAuthorizationV1NonResourceAttributes? nonResourceAttributes;
    
    ///ResourceAuthorizationAttributes describes information for a resource access request
    @JsonKey(name: "resourceAttributes")
    IoK8SApiAuthorizationV1ResourceAttributes? resourceAttributes;
    
    ///UID information about the requesting user.
    @JsonKey(name: "uid")
    String? uid;
    
    ///User is the user you're testing for. If you specify "User" but not "Groups", then is it
    ///interpreted as "What if User were not a member of any groups
    @JsonKey(name: "user")
    String? user;

    Subjectaccessreviewspec({
        this.extra,
        this.groups,
        this.nonResourceAttributes,
        this.resourceAttributes,
        this.uid,
        this.user,
    });

    factory Subjectaccessreviewspec.fromJson(Map<String, dynamic> json) => _$SubjectaccessreviewspecFromJson(json);

    Map<String, dynamic> toJson() => _$SubjectaccessreviewspecToJson(this);
}


///NonResourceAttributes describes information for a non-resource access request
///
///NonResourceAttributes includes the authorization attributes available for non-resource
///requests to the Authorizer interface
@JsonSerializable()
class IoK8SApiAuthorizationV1NonResourceAttributes {
    
    ///Path is the URL path of the request
    @JsonKey(name: "path")
    String? path;
    
    ///Verb is the standard HTTP verb
    @JsonKey(name: "verb")
    String? verb;

    IoK8SApiAuthorizationV1NonResourceAttributes({
        this.path,
        this.verb,
    });

    factory IoK8SApiAuthorizationV1NonResourceAttributes.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthorizationV1NonResourceAttributesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthorizationV1NonResourceAttributesToJson(this);
}


///ResourceAuthorizationAttributes describes information for a resource access request
///
///ResourceAttributes includes the authorization attributes available for resource requests
///to the Authorizer interface
@JsonSerializable()
class IoK8SApiAuthorizationV1ResourceAttributes {
    
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

    IoK8SApiAuthorizationV1ResourceAttributes({
        this.group,
        this.name,
        this.namespace,
        this.resource,
        this.subresource,
        this.verb,
        this.version,
    });

    factory IoK8SApiAuthorizationV1ResourceAttributes.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthorizationV1ResourceAttributesFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthorizationV1ResourceAttributesToJson(this);
}
