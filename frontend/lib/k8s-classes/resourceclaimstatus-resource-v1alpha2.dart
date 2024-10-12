import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourceclaimstatus_resource_v1_alpha2.g.dart';


///ResourceClaimStatus tracks whether the resource has been allocated and what the resulting
///attributes are.
@JsonSerializable()
class ResourceclaimstatusResourceV1Alpha2 {
    
    ///Allocation is set by the resource driver once a resource or set of resources has been
    ///allocated successfully. If this is not specified, the resources have not been allocated
    ///yet.
    @JsonKey(name: "allocation")
    IoK8SApiResourceV1Alpha2AllocationResult? allocation;
    
    ///DeallocationRequested indicates that a ResourceClaim is to be deallocated.
    ///
    ///The driver then must deallocate this claim and reset the field together with clearing the
    ///Allocation field.
    ///
    ///While DeallocationRequested is set, no new consumers may be added to ReservedFor.
    @JsonKey(name: "deallocationRequested")
    bool? deallocationRequested;
    
    ///DriverName is a copy of the driver name from the ResourceClass at the time when
    ///allocation started.
    @JsonKey(name: "driverName")
    String? driverName;
    
    ///ReservedFor indicates which entities are currently allowed to use the claim. A Pod which
    ///references a ResourceClaim which is not reserved for that Pod will not be started.
    ///
    ///There can be at most 32 such reservations. This may get increased in the future, but not
    ///reduced.
    @JsonKey(name: "reservedFor")
    List<IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference>? reservedFor;

    ResourceclaimstatusResourceV1Alpha2({
        this.allocation,
        this.deallocationRequested,
        this.driverName,
        this.reservedFor,
    });

    factory ResourceclaimstatusResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$ResourceclaimstatusResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$ResourceclaimstatusResourceV1Alpha2ToJson(this);
}


///Allocation is set by the resource driver once a resource or set of resources has been
///allocated successfully. If this is not specified, the resources have not been allocated
///yet.
///
///AllocationResult contains attributes of an allocated resource.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2AllocationResult {
    
    ///This field will get set by the resource driver after it has allocated the resource to
    ///inform the scheduler where it can schedule Pods using the ResourceClaim.
    ///
    ///Setting this field is optional. If null, the resource is available everywhere.
    @JsonKey(name: "availableOnNodes")
    IoK8SApiCoreV1NodeSelector? availableOnNodes;
    
    ///ResourceHandles contain the state associated with an allocation that should be maintained
    ///throughout the lifetime of a claim. Each ResourceHandle contains data that should be
    ///passed to a specific kubelet plugin once it lands on a node. This data is returned by the
    ///driver after a successful allocation and is opaque to Kubernetes. Driver documentation
    ///may explain to users how to interpret this data if needed.
    ///
    ///Setting this field is optional. It has a maximum size of 32 entries. If null (or empty),
    ///it is assumed this allocation will be processed by a single kubelet plugin with no
    ///ResourceHandle data attached. The name of the kubelet plugin invoked will match the
    ///DriverName set in the ResourceClaimStatus this AllocationResult is embedded in.
    @JsonKey(name: "resourceHandles")
    List<IoK8SApiResourceV1Alpha2ResourceHandle>? resourceHandles;
    
    ///Shareable determines whether the resource supports more than one consumer at a time.
    @JsonKey(name: "shareable")
    bool? shareable;

    IoK8SApiResourceV1Alpha2AllocationResult({
        this.availableOnNodes,
        this.resourceHandles,
        this.shareable,
    });

    factory IoK8SApiResourceV1Alpha2AllocationResult.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2AllocationResultFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2AllocationResultToJson(this);
}


///This field will get set by the resource driver after it has allocated the resource to
///inform the scheduler where it can schedule Pods using the ResourceClaim.
///
///Setting this field is optional. If null, the resource is available everywhere.
///
///A node selector represents the union of the results of one or more label queries over a
///set of nodes; that is, it represents the OR of the selectors represented by the node
///selector terms.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelector {
    
    ///Required. A list of node selector terms. The terms are ORed.
    @JsonKey(name: "nodeSelectorTerms")
    List<IoK8SApiCoreV1NodeSelectorTerm> nodeSelectorTerms;

    IoK8SApiCoreV1NodeSelector({
        required this.nodeSelectorTerms,
    });

    factory IoK8SApiCoreV1NodeSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorToJson(this);
}


///A null or empty node selector term matches no objects. The requirements of them are
///ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelectorTerm {
    
    ///A list of node selector requirements by node's labels.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApiCoreV1NodeSelectorRequirement>? matchExpressions;
    
    ///A list of node selector requirements by node's fields.
    @JsonKey(name: "matchFields")
    List<IoK8SApiCoreV1NodeSelectorRequirement>? matchFields;

    IoK8SApiCoreV1NodeSelectorTerm({
        this.matchExpressions,
        this.matchFields,
    });

    factory IoK8SApiCoreV1NodeSelectorTerm.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorTermFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorTermToJson(this);
}


///A node selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class IoK8SApiCoreV1NodeSelectorRequirement {
    
    ///The label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///Represents a key's relationship to a set of values. Valid operators are In, NotIn,
    ///Exists, DoesNotExist. Gt, and Lt.
    @JsonKey(name: "operator")
    String ioK8SApiCoreV1NodeSelectorRequirementOperator;
    
    ///An array of string values. If the operator is In or NotIn, the values array must be
    ///non-empty. If the operator is Exists or DoesNotExist, the values array must be empty. If
    ///the operator is Gt or Lt, the values array must have a single element, which will be
    ///interpreted as an integer. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApiCoreV1NodeSelectorRequirement({
        required this.key,
        required this.ioK8SApiCoreV1NodeSelectorRequirementOperator,
        this.values,
    });

    factory IoK8SApiCoreV1NodeSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NodeSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NodeSelectorRequirementToJson(this);
}


///ResourceHandle holds opaque resource data for processing by a specific kubelet plugin.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceHandle {
    
    ///Data contains the opaque data associated with this ResourceHandle. It is set by the
    ///controller component of the resource driver whose name matches the DriverName set in the
    ///ResourceClaimStatus this ResourceHandle is embedded in. It is set at allocation time and
    ///is intended for processing by the kubelet plugin whose name matches the DriverName set in
    ///this ResourceHandle.
    ///
    ///The maximum size of this field is 16KiB. This may get increased in the future, but not
    ///reduced.
    @JsonKey(name: "data")
    String? data;
    
    ///DriverName specifies the name of the resource driver whose kubelet plugin should be
    ///invoked to process this ResourceHandle's data once it lands on a node. This may differ
    ///from the DriverName set in ResourceClaimStatus this ResourceHandle is embedded in.
    @JsonKey(name: "driverName")
    String? driverName;
    
    ///If StructuredData is set, then it needs to be used instead of Data.
    @JsonKey(name: "structuredData")
    IoK8SApiResourceV1Alpha2StructuredResourceHandle? structuredData;

    IoK8SApiResourceV1Alpha2ResourceHandle({
        this.data,
        this.driverName,
        this.structuredData,
    });

    factory IoK8SApiResourceV1Alpha2ResourceHandle.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceHandleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceHandleToJson(this);
}


///If StructuredData is set, then it needs to be used instead of Data.
///
///StructuredResourceHandle is the in-tree representation of the allocation result.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2StructuredResourceHandle {
    
    ///NodeName is the name of the node providing the necessary resources if the resources are
    ///local to a node.
    @JsonKey(name: "nodeName")
    String? nodeName;
    
    ///Results lists all allocated driver resources.
    @JsonKey(name: "results")
    List<IoK8SApiResourceV1Alpha2DriverAllocationResult> results;
    
    ///VendorClaimParameters are the per-claim configuration parameters from the resource claim
    ///parameters at the time that the claim was allocated.
    @JsonKey(name: "vendorClaimParameters")
    Map<String, dynamic>? vendorClaimParameters;
    
    ///VendorClassParameters are the per-claim configuration parameters from the resource class
    ///at the time that the claim was allocated.
    @JsonKey(name: "vendorClassParameters")
    Map<String, dynamic>? vendorClassParameters;

    IoK8SApiResourceV1Alpha2StructuredResourceHandle({
        this.nodeName,
        required this.results,
        this.vendorClaimParameters,
        this.vendorClassParameters,
    });

    factory IoK8SApiResourceV1Alpha2StructuredResourceHandle.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2StructuredResourceHandleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2StructuredResourceHandleToJson(this);
}


///DriverAllocationResult contains vendor parameters and the allocation result for one
///request.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2DriverAllocationResult {
    
    ///NamedResources describes the allocation result when using the named resources model.
    @JsonKey(name: "namedResources")
    IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult? namedResources;
    
    ///VendorRequestParameters are the per-request configuration parameters from the time that
    ///the claim was allocated.
    @JsonKey(name: "vendorRequestParameters")
    Map<String, dynamic>? vendorRequestParameters;

    IoK8SApiResourceV1Alpha2DriverAllocationResult({
        this.namedResources,
        this.vendorRequestParameters,
    });

    factory IoK8SApiResourceV1Alpha2DriverAllocationResult.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2DriverAllocationResultFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2DriverAllocationResultToJson(this);
}


///NamedResources describes the allocation result when using the named resources model.
///
///NamedResourcesAllocationResult is used in AllocationResultModel.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult {
    
    ///Name is the name of the selected resource instance.
    @JsonKey(name: "name")
    String name;

    IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult({
        required this.name,
    });

    factory IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2NamedResourcesAllocationResultFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2NamedResourcesAllocationResultToJson(this);
}


///ResourceClaimConsumerReference contains enough information to let you locate the consumer
///of a ResourceClaim. The user must be a resource in the same namespace as the
///ResourceClaim.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference {
    
    ///APIGroup is the group for the resource being referenced. It is empty for the core API.
    ///This matches the group in the APIVersion that is used when creating the resources.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Name is the name of resource being referenced.
    @JsonKey(name: "name")
    String name;
    
    ///Resource is the type of resource being referenced, for example "pods".
    @JsonKey(name: "resource")
    String resource;
    
    ///UID identifies exactly one incarnation of the resource.
    @JsonKey(name: "uid")
    String uid;

    IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference({
        this.apiGroup,
        required this.name,
        required this.resource,
        required this.uid,
    });

    factory IoK8SApiResourceV1Alpha2ResourceClaimConsumerReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceClaimConsumerReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceClaimConsumerReferenceToJson(this);
}
