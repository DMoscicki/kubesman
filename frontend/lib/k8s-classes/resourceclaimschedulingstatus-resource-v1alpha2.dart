import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaimschedulingstatus_resource_v1_alpha2.g.dart';


///ResourceClaimSchedulingStatus contains information about one particular ResourceClaim
///with "WaitForFirstConsumer" allocation mode.
@JsonSerializable()
class ResourceclaimschedulingstatusResourceV1Alpha2 {
    
    ///Name matches the pod.spec.resourceClaims[*].Name field.
    @JsonKey(name: "name")
    String? name;
    
    ///UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
    ///
    ///The size of this field is limited to 128, the same as for
    ///PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
    @JsonKey(name: "unsuitableNodes")
    List<String?>? unsuitableNodes;

    ResourceclaimschedulingstatusResourceV1Alpha2({
        this.name,
        this.unsuitableNodes,
    });

    factory ResourceclaimschedulingstatusResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$ResourceclaimschedulingstatusResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimschedulingstatusResourceV1Alpha2ToJson(this);
}
