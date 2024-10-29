import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaimspec.g.dart';


///ResourceClaimSpec defines how a resource is to be allocated.
@JsonSerializable()
class Resourceclaimspec {
    
    ///Allocation can start immediately or when a Pod wants to use the resource.
    ///"WaitForFirstConsumer" is the default.
    @JsonKey(name: "allocationMode")
    String? allocationMode;
    
    ///ParametersRef references a separate object with arbitrary parameters that will be used by
    ///the driver when allocating a resource for the claim.
    ///
    ///The object must be in the same namespace as the ResourceClaim.
    @JsonKey(name: "parametersRef")
    IoK8SApiResourceV1Alpha2ResourceClaimParametersReference? parametersRef;
    
    ///ResourceClassName references the driver and additional parameters via the name of a
    ///ResourceClass that was created as part of the driver deployment.
    @JsonKey(name: "resourceClassName")
    String? resourceClassName;

    Resourceclaimspec({
        this.allocationMode,
        this.parametersRef,
        required this.resourceClassName,
    });

    factory Resourceclaimspec.fromJson(Map<String, dynamic> json) => _$ResourceclaimspecFromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimspecToJson(this);
}


///ParametersRef references a separate object with arbitrary parameters that will be used by
///the driver when allocating a resource for the claim.
///
///The object must be in the same namespace as the ResourceClaim.
///
///ResourceClaimParametersReference contains enough information to let you locate the
///parameters for a ResourceClaim. The object must be in the same namespace as the
///ResourceClaim.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceClaimParametersReference {
    
    ///APIGroup is the group for the resource being referenced. It is empty for the core API.
    ///This matches the group in the APIVersion that is used when creating the resources.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced. This is the same value as in the parameter
    ///object's metadata, for example "ConfigMap".
    @JsonKey(name: "kind")
    String kind;
    
    ///Name is the name of resource being referenced.
    @JsonKey(name: "name")
    String name;

    IoK8SApiResourceV1Alpha2ResourceClaimParametersReference({
        this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory IoK8SApiResourceV1Alpha2ResourceClaimParametersReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceClaimParametersReferenceToJson(this);
}
