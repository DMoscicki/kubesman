import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'driverallocationresult.g.dart';


///DriverAllocationResult contains vendor parameters and the allocation result for one
///request.
@JsonSerializable()
class Driverallocationresult {
    
    ///NamedResources describes the allocation result when using the named resources model.
    @JsonKey(name: "namedResources")
    IoK8SApiResourceV1Alpha2NamedResourcesAllocationResult? namedResources;
    
    ///VendorRequestParameters are the per-request configuration parameters from the time that
    ///the claim was allocated.
    @JsonKey(name: "vendorRequestParameters")
    Map<String, dynamic>? vendorRequestParameters;

    Driverallocationresult({
        this.namedResources,
        this.vendorRequestParameters,
    });

    factory Driverallocationresult.fromJson(Map<String, dynamic> json) => _$DriverallocationresultFromJson(json);

    Map<String, dynamic> toJson() => _$DriverallocationresultToJson(this);
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
