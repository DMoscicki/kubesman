import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podresourceclaimstatus_v1.g.dart';


///PodResourceClaimStatus is stored in the PodStatus for each PodResourceClaim which
///references a ResourceClaimTemplate. It stores the generated name for the corresponding
///ResourceClaim.
@JsonSerializable()
class PodresourceclaimstatusV1 {
    
    ///Name uniquely identifies this resource claim inside the pod. This must match the name of
    ///an entry in pod.spec.resourceClaims, which implies that the string must be a DNS_LABEL.
    @JsonKey(name: "name")
    String? name;
    
    ///ResourceClaimName is the name of the ResourceClaim that was generated for the Pod in the
    ///namespace of the Pod. It this is unset, then generating a ResourceClaim was not
    ///necessary. The pod.spec.resourceClaims entry can be ignored in this case.
    @JsonKey(name: "resourceClaimName")
    String? resourceClaimName;

    PodresourceclaimstatusV1({
        required this.name,
        this.resourceClaimName,
    });

    factory PodresourceclaimstatusV1.fromJson(Map<String, dynamic> json) => _$PodresourceclaimstatusV1FromJson(json);

    Map<String, dynamic> toJson() => _$PodresourceclaimstatusV1ToJson(this);
}
