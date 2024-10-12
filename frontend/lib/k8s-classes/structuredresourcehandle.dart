import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'structuredresourcehandle.g.dart';


///StructuredResourceHandle is the in-tree representation of the allocation result.
@JsonSerializable()
class Structuredresourcehandle {
    
    ///NodeName is the name of the node providing the necessary resources if the resources are
    ///local to a node.
    @JsonKey(name: "nodeName")
    String? nodeName;
    
    ///Results lists all allocated driver resources.
    @JsonKey(name: "results")
    List<IoK8SApiResourceV1Alpha2DriverAllocationResult>? results;
    
    ///VendorClaimParameters are the per-claim configuration parameters from the resource claim
    ///parameters at the time that the claim was allocated.
    @JsonKey(name: "vendorClaimParameters")
    Map<String, dynamic>? vendorClaimParameters;
    
    ///VendorClassParameters are the per-claim configuration parameters from the resource class
    ///at the time that the claim was allocated.
    @JsonKey(name: "vendorClassParameters")
    Map<String, dynamic>? vendorClassParameters;

    Structuredresourcehandle({
        this.nodeName,
        required this.results,
        this.vendorClaimParameters,
        this.vendorClassParameters,
    });

    factory Structuredresourcehandle.fromJson(Map<String, dynamic> json) => _$StructuredresourcehandleFromJson(json);

    Map<String, dynamic> toJson() => _$StructuredresourcehandleToJson(this);
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
