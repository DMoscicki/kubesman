import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'driverallocationresult_resource_v1_alpha2.g.dart';


///DriverAllocationResult contains vendor parameters and the allocation result for one
///request.
@JsonSerializable()
class DriverallocationresultResourceV1Alpha2 {
    
    ///NamedResources describes the allocation result when using the named resources model.
    @JsonKey(name: "namedResources")
    IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult? namedResources;
    
    ///VendorRequestParameters are the per-request configuration parameters from the time that
    ///the claim was allocated.
    @JsonKey(name: "vendorRequestParameters")
    Map<String, dynamic>? vendorRequestParameters;

    DriverallocationresultResourceV1Alpha2({
        this.namedResources,
        this.vendorRequestParameters,
    });

    factory DriverallocationresultResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$DriverallocationresultResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$DriverallocationresultResourceV1Alpha2ToJson(this);
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
