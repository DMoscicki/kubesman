import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'selfsubjectaccessreviewspec_authorization_v1.g.dart';


///SelfSubjectAccessReviewSpec is a description of the access request.  Exactly one of
///ResourceAuthorizationAttributes and NonResourceAuthorizationAttributes must be set
@JsonSerializable()
class SelfsubjectaccessreviewspecAuthorizationV1 {
    
    ///NonResourceAttributes describes information for a non-resource access request
    @JsonKey(name: "nonResourceAttributes")
    IoK8SApiAuthorizationV1NonResourceAttributes? nonResourceAttributes;
    
    ///ResourceAuthorizationAttributes describes information for a resource access request
    @JsonKey(name: "resourceAttributes")
    IoK8SApiAuthorizationV1ResourceAttributes? resourceAttributes;

    SelfsubjectaccessreviewspecAuthorizationV1({
        this.nonResourceAttributes,
        this.resourceAttributes,
    });

    factory SelfsubjectaccessreviewspecAuthorizationV1.fromJson(Map<String, dynamic> json) => _$SelfsubjectaccessreviewspecAuthorizationV1FromJson(json);

    Map<String, dynamic> toJson() => _$SelfsubjectaccessreviewspecAuthorizationV1ToJson(this);
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
