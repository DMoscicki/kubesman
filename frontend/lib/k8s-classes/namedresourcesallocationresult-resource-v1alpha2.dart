import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesallocationresult_resource_v1_alpha2.g.dart';


///NamedResourcesAllocationResult is used in AllocationResultModel.
@JsonSerializable()
class NamedresourcesallocationresultResourceV1Alpha2 {
    
    ///Name is the name of the selected resource instance.
    @JsonKey(name: "name")
    String? name;

    NamedresourcesallocationresultResourceV1Alpha2({
        required this.name,
    });

    factory NamedresourcesallocationresultResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$NamedresourcesallocationresultResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesallocationresultResourceV1Alpha2ToJson(this);
}
