import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podschedulingcontextstatus_resource_v1_alpha2.g.dart';


///PodSchedulingContextStatus describes where resources for the Pod can be allocated.
@JsonSerializable()
class PodschedulingcontextstatusResourceV1Alpha2 {
    
    ///ResourceClaims describes resource availability for each pod.spec.resourceClaim entry
    ///where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
    @JsonKey(name: "resourceClaims")
    List<IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus>? resourceClaims;

    PodschedulingcontextstatusResourceV1Alpha2({
        this.resourceClaims,
    });

    factory PodschedulingcontextstatusResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$PodschedulingcontextstatusResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$PodschedulingcontextstatusResourceV1Alpha2ToJson(this);
}


///ResourceClaimSchedulingStatus contains information about one particular ResourceClaim
///with "WaitForFirstConsumer" allocation mode.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus {
    
    ///Name matches the pod.spec.resourceClaims[*].Name field.
    @JsonKey(name: "name")
    String? name;
    
    ///UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
    ///
    ///The size of this field is limited to 128, the same as for
    ///PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
    @JsonKey(name: "unsuitableNodes")
    List<String>? unsuitableNodes;

    IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus({
        this.name,
        this.unsuitableNodes,
    });

    factory IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatus.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatusFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceClaimSchedulingStatusToJson(this);
}
