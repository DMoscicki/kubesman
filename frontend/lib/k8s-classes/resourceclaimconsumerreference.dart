import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaimconsumerreference.g.dart';


///ResourceClaimConsumerReference contains enough information to let you locate the consumer
///of a ResourceClaim. The user must be a resource in the same namespace as the
///ResourceClaim.
@JsonSerializable()
class Resourceclaimconsumerreference {
    
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

    Resourceclaimconsumerreference({
        this.apiGroup,
        required this.name,
        required this.resource,
        required this.uid,
    });

    factory Resourceclaimconsumerreference.fromJson(Map<String, dynamic> json) => _$ResourceclaimconsumerreferenceFromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimconsumerreferenceToJson(this);
}
