import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcehandle.g.dart';


///ResourceHandle holds opaque resource data for processing by a specific kubelet plugin.
@JsonSerializable()
class Resourcehandle {
    
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

    Resourcehandle({
        this.data,
        this.driverName,
        this.structuredData,
    });

    factory Resourcehandle.fromJson(Map<String, dynamic> json) => _$ResourcehandleFromJson(json);

    Map<String, dynamic> toJson() => _$ResourcehandleToJson(this);
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
