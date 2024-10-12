import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaimparametersreference_resource_v1_alpha2.g.dart';


///ResourceClaimParametersReference contains enough information to let you locate the
///parameters for a ResourceClaim. The object must be in the same namespace as the
///ResourceClaim.
@JsonSerializable()
class ResourceclaimparametersreferenceResourceV1Alpha2 {
    
    ///APIGroup is the group for the resource being referenced. It is empty for the core API.
    ///This matches the group in the APIVersion that is used when creating the resources.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced. This is the same value as in the parameter
    ///object's metadata, for example "ConfigMap".
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name is the name of resource being referenced.
    @JsonKey(name: "name")
    String? name;

    ResourceclaimparametersreferenceResourceV1Alpha2({
        this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory ResourceclaimparametersreferenceResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$ResourceclaimparametersreferenceResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimparametersreferenceResourceV1Alpha2ToJson(this);
}
