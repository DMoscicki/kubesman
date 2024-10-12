import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'resourcefilter_resource_v1_alpha2.g.dart';


///ResourceFilter is a filter for resources from one particular driver.
@JsonSerializable()
class ResourcefilterResourceV1Alpha2 {
    
    ///DriverName is the name used by the DRA driver kubelet plugin.
    @JsonKey(name: "driverName")
    String? driverName;
    
    ///NamedResources describes a resource filter using the named resources model.
    @JsonKey(name: "namedResources")
    IoK8SApiResourceV1Alpha2NamedResourcesFilter? namedResources;

    ResourcefilterResourceV1Alpha2({
        this.driverName,
        this.namedResources,
    });

    factory ResourcefilterResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$ResourcefilterResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$ResourcefilterResourceV1Alpha2ToJson(this);
}


///NamedResources describes a resource filter using the named resources model.
///
///NamedResourcesFilter is used in ResourceFilterModel.
@JsonSerializable()
class IoK8SApiResourceV1Alpha2NamedResourcesFilter {
    
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

    IoK8SApiResourceV1Alpha2NamedResourcesFilter({
        required this.selector,
    });

    factory IoK8SApiResourceV1Alpha2NamedResourcesFilter.fromJson(Map<String, dynamic> json) => _$IoK8SApiResourceV1Alpha2NamedResourcesFilterFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiResourceV1Alpha2NamedResourcesFilterToJson(this);
}
