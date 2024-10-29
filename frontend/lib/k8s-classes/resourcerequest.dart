import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcerequest.g.dart';


///ResourceRequest is a request for resources from one particular driver.
@JsonSerializable()
class Resourcerequest {
    
    ///NamedResources describes a request for resources with the named resources model.
    @JsonKey(name: "namedResources")
    IoK8SApiResourceV1Alpha2NamedResourcesRequest? namedResources;
    
    ///VendorParameters are arbitrary setup parameters for the requested resource. They are
    ///ignored while allocating a claim.
    @JsonKey(name: "vendorParameters")
    Map<String, dynamic>? vendorParameters;

    Resourcerequest({
        this.namedResources,
        this.vendorParameters,
    });

    factory Resourcerequest.fromJson(Map<String, dynamic> json) => _$ResourcerequestFromJson(json);

    Map<String, dynamic> toJson() => _$ResourcerequestToJson(this);
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
