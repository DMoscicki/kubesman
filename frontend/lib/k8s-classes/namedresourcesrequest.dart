import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesrequest.g.dart';


///NamedResourcesRequest is used in ResourceRequestModel.
@JsonSerializable()
class Namedresourcesrequest {
    
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

    Namedresourcesrequest({
        required this.selector,
    });

    factory Namedresourcesrequest.fromJson(Map<String, dynamic> json) => _$NamedresourcesrequestFromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesrequestToJson(this);
}
