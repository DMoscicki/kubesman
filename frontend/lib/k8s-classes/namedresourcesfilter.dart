import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesfilter.g.dart';


///NamedResourcesFilter is used in ResourceFilterModel.
@JsonSerializable()
class Namedresourcesfilter {
    
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

    Namedresourcesfilter({
        required this.selector,
    });

    factory Namedresourcesfilter.fromJson(Map<String, dynamic> json) => _$NamedresourcesfilterFromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesfilterToJson(this);
}
