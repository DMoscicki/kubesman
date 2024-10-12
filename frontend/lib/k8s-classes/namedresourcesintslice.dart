import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesintslice.g.dart';


///NamedResourcesIntSlice contains a slice of 64-bit integers.
@JsonSerializable()
class Namedresourcesintslice {
    
    ///Ints is the slice of 64-bit integers.
    @JsonKey(name: "ints")
    List<int?>? ints;

    Namedresourcesintslice({
        required this.ints,
    });

    factory Namedresourcesintslice.fromJson(Map<String, dynamic> json) => _$NamedresourcesintsliceFromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesintsliceToJson(this);
}
