import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesrequest_resource_v1_alpha2.g.dart';


///NamedResourcesRequest is used in ResourceRequestModel.
@JsonSerializable()
class NamedresourcesrequestResourceV1Alpha2 {
    
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
    String? selector;

    NamedresourcesrequestResourceV1Alpha2({
        required this.selector,
    });

    factory NamedresourcesrequestResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$NamedresourcesrequestResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesrequestResourceV1Alpha2ToJson(this);
}
