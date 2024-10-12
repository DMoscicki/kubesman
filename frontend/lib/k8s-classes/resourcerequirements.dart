import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcerequirements.g.dart';


///ResourceRequirements describes the compute resource requirements.
@JsonSerializable()
class Resourcerequirements {
    
    ///Claims lists the names of resources, defined in spec.resourceClaims, that are used by
    ///this container.
    ///
    ///This is an alpha field and requires enabling the DynamicResourceAllocation feature gate.
    ///
    ///This field is immutable. It can only be set for containers.
    @JsonKey(name: "claims")
    List<IoK8SApiCoreV1ResourceClaim>? claims;
    
    ///Limits describes the maximum amount of compute resources allowed. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "limits")
    Map<String, dynamic>? limits;
    
    ///Requests describes the minimum amount of compute resources required. If Requests is
    ///omitted for a container, it defaults to Limits if that is explicitly specified, otherwise
    ///to an implementation-defined value. Requests cannot exceed Limits. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "requests")
    Map<String, dynamic>? requests;

    Resourcerequirements({
        this.claims,
        this.limits,
        this.requests,
    });

    factory Resourcerequirements.fromJson(Map<String, dynamic> json) => _$ResourcerequirementsFromJson(json);

    Map<String, dynamic> toJson() => _$ResourcerequirementsToJson(this);
}


///ResourceClaim references one entry in PodSpec.ResourceClaims.
@JsonSerializable()
class IoK8SApiCoreV1ResourceClaim {
    
    ///Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this
    ///field is used. It makes that resource available inside a container.
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1ResourceClaim({
        required this.name,
    });

    factory IoK8SApiCoreV1ResourceClaim.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceClaimFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceClaimToJson(this);
}
