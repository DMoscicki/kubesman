import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'namedresourcesstringslice_resource_v1_alpha2.g.dart';


///NamedResourcesStringSlice contains a slice of strings.
@JsonSerializable()
class NamedresourcesstringsliceResourceV1Alpha2 {
    
    ///Strings is the slice of strings.
    @JsonKey(name: "strings")
    List<String?>? strings;

    NamedresourcesstringsliceResourceV1Alpha2({
        required this.strings,
    });

    factory NamedresourcesstringsliceResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$NamedresourcesstringsliceResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$NamedresourcesstringsliceResourceV1Alpha2ToJson(this);
}
