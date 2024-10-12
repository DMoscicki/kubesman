import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'podresourceclaim_v1.g.dart';


///PodResourceClaim references exactly one ResourceClaim through a ClaimSource. It adds a
///name to it that uniquely identifies the ResourceClaim inside the Pod. Containers that
///need access to the ResourceClaim reference it with this name.
@JsonSerializable()
class PodresourceclaimV1 {
    
    ///Name uniquely identifies this resource claim inside the pod. This must be a DNS_LABEL.
    @JsonKey(name: "name")
    String? name;
    
    ///Source describes where to find the ResourceClaim.
    @JsonKey(name: "source")
    IoK8SApiCoreV1ClaimSource? source;

    PodresourceclaimV1({
        required this.name,
        this.source,
    });

    factory PodresourceclaimV1.fromJson(Map<String, dynamic> json) => _$PodresourceclaimV1FromJson(json);

    Map<String, dynamic> toJson() => _$PodresourceclaimV1ToJson(this);
}


///Source describes where to find the ResourceClaim.
///
///ClaimSource describes a reference to a ResourceClaim.
///
///Exactly one of these fields should be set.  Consumers of this type must treat an empty
///object as if it has an unknown value.
@JsonSerializable()
class IoK8SApiCoreV1ClaimSource {
    
    ///ResourceClaimName is the name of a ResourceClaim object in the same namespace as this pod.
    @JsonKey(name: "resourceClaimName")
    String? resourceClaimName;
    
    ///ResourceClaimTemplateName is the name of a ResourceClaimTemplate object in the same
    ///namespace as this pod.
    ///
    ///The template will be used to create a new ResourceClaim, which will be bound to this pod.
    ///When this pod is deleted, the ResourceClaim will also be deleted. The pod name and
    ///resource name, along with a generated component, will be used to form a unique name for
    ///the ResourceClaim, which will be recorded in pod.status.resourceClaimStatuses.
    ///
    ///This field is immutable and no changes will be made to the corresponding ResourceClaim by
    ///the control plane after creating the ResourceClaim.
    @JsonKey(name: "resourceClaimTemplateName")
    String? resourceClaimTemplateName;

    IoK8SApiCoreV1ClaimSource({
        this.resourceClaimName,
        this.resourceClaimTemplateName,
    });

    factory IoK8SApiCoreV1ClaimSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ClaimSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ClaimSourceToJson(this);
}
