import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaimschedulingstatus.g.dart';


///ResourceClaimSchedulingStatus contains information about one particular ResourceClaim
///with "WaitForFirstConsumer" allocation mode.
@JsonSerializable()
class Resourceclaimschedulingstatus {
    
    ///Name matches the pod.spec.resourceClaims[*].Name field.
    @JsonKey(name: "name")
    String? name;
    
    ///UnsuitableNodes lists nodes that the ResourceClaim cannot be allocated for.
    ///
    ///The size of this field is limited to 128, the same as for
    ///PodSchedulingSpec.PotentialNodes. This may get increased in the future, but not reduced.
    @JsonKey(name: "unsuitableNodes")
    List<String?>? unsuitableNodes;

    Resourceclaimschedulingstatus({
        this.name,
        this.unsuitableNodes,
    });

    factory Resourceclaimschedulingstatus.fromJson(Map<String, dynamic> json) => _$ResourceclaimschedulingstatusFromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimschedulingstatusToJson(this);
}
