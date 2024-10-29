import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesintslice_resource_v1_alpha2.g.dart';


///NamedResourcesIntSlice contains a slice of 64-bit integers.
@JsonSerializable()
class NamedresourcesintsliceResourceV1Alpha2 {
    
    ///Ints is the slice of 64-bit integers.
    @JsonKey(name: "ints")
    List<int?>? ints;

    NamedresourcesintsliceResourceV1Alpha2({
        required this.ints,
    });

    factory NamedresourcesintsliceResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$NamedresourcesintsliceResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesintsliceResourceV1Alpha2ToJson(this);
}
