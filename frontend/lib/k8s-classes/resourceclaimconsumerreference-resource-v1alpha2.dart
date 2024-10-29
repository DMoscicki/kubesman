import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaimconsumerreference_resource_v1_alpha2.g.dart';


///ResourceClaimConsumerReference contains enough information to let you locate the consumer
///of a ResourceClaim. The user must be a resource in the same namespace as the
///ResourceClaim.
@JsonSerializable()
class ResourceclaimconsumerreferenceResourceV1Alpha2 {
    
    ///APIGroup is the group for the resource being referenced. It is empty for the core API.
    ///This matches the group in the APIVersion that is used when creating the resources.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Name is the name of resource being referenced.
    @JsonKey(name: "name")
    String? name;
    
    ///Resource is the type of resource being referenced, for example "pods".
    @JsonKey(name: "resource")
    String? resource;
    
    ///UID identifies exactly one incarnation of the resource.
    @JsonKey(name: "uid")
    String? uid;

    ResourceclaimconsumerreferenceResourceV1Alpha2({
        this.apiGroup,
        required this.name,
        required this.resource,
        required this.uid,
    });

    factory ResourceclaimconsumerreferenceResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$ResourceclaimconsumerreferenceResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimconsumerreferenceResourceV1Alpha2ToJson(this);
}
