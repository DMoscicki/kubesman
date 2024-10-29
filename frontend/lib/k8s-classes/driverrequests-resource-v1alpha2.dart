import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'driverrequests_resource_v1_alpha2.g.dart';


///DriverRequests describes all resources that are needed from one particular driver.
@JsonSerializable()
class DriverrequestsResourceV1Alpha2 {
    
    ///DriverName is the name used by the DRA driver kubelet plugin.
    @JsonKey(name: "driverName")
    String? driverName;
    
    ///Requests describes all resources that are needed from the driver.
    @JsonKey(name: "requests")
    List<IoK8SApiResourceV1Alpha2ResourceRequest>? requests;
    
    ///VendorParameters are arbitrary setup parameters for all requests of the claim. They are
    ///ignored while allocating the claim.
    @JsonKey(name: "vendorParameters")
    Map<String, dynamic>? vendorParameters;

    DriverrequestsResourceV1Alpha2({
        this.driverName,
        this.requests,
        this.vendorParameters,
    });

    factory DriverrequestsResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$DriverrequestsResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$DriverrequestsResourceV1Alpha2ToJson(this);
}


///ResourceRequest is a request for resources from one particular driver.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2ResourceRequest {
    
    ///NamedResources describes a request for resources with the named resources model.
    @JsonKey(name: "namedResources")
    IoK8SApiResourceV1Alpha2NamedResourcesRequest? namedResources;
    
    ///VendorParameters are arbitrary setup parameters for the requested resource. They are
    ///ignored while allocating a claim.
    @JsonKey(name: "vendorParameters")
    Map<String, dynamic>? vendorParameters;

    IoK8SApiResourceV1Alpha2ResourceRequest({
        this.namedResources,
        this.vendorParameters,
    });

    factory IoK8SApiResourceV1Alpha2ResourceRequest.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2ResourceRequestFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2ResourceRequestToJson(this);
}


///NamedResources describes a request for resources with the named resources model.
///
///NamedResourcesRequest is used in ResourceRequestModel.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2NamedResourcesRequest {
    
    ///Selector is a CEL expression which must evaluate to true if a resource instance is
    ///suitable. The language is as defined in
    ///https://kubernetes.io/docs/reference/using-api/cel/
    ///
    ///In addition, for each type NamedResourcesin AttributeValue there is a map that resolves
    ///to the corresponding value of the instance under evaluation. For example:
    ///
    ///attributes.quantity["a"].isGreaterThan(quantity("0")) &&
    ///attributes.stringslice["b"].isSorted()
    @JsonKey(name: "selector")
    String selector;

    IoK8SApiResourceV1Alpha2NamedResourcesRequest({
        required this.selector,
    });

    factory IoK8SApiResourceV1Alpha2NamedResourcesRequest.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2NamedResourcesRequestFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2NamedResourcesRequestToJson(this);
}
