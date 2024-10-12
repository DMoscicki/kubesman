import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesallocationresult.g.dart';


///NamedResourcesAllocationResult is used in AllocationResultModel.
@JsonSerializable()
class Namedresourcesallocationresult {
    
    ///Name is the name of the selected resource instance.
    @JsonKey(name: "name")
    String? name;

    Namedresourcesallocationresult({
        required this.name,
    });

    factory Namedresourcesallocationresult.fromJson(Map<String, dynamic> json) => _$NamedresourcesallocationresultFromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesallocationresultToJson(this);
}
