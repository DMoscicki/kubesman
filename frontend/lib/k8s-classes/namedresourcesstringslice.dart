import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesstringslice.g.dart';


///NamedResourcesStringSlice contains a slice of strings.
@JsonSerializable()
class Namedresourcesstringslice {
    
    ///Strings is the slice of strings.
    @JsonKey(name: "strings")
    List<String?>? strings;

    Namedresourcesstringslice({
        required this.strings,
    });

    factory Namedresourcesstringslice.fromJson(Map<String, dynamic> json) => _$NamedresourcesstringsliceFromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesstringsliceToJson(this);
}
