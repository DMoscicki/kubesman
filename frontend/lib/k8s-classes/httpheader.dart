import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'httpheader.g.dart';


///HTTPHeader describes a custom header to be used in HTTP probes
@JsonSerializable()
class Httpheader {
    
    ///The header field name. This will be canonicalized upon output, so case-variant names will
    ///be understood as the same header.
    @JsonKey(name: "name")
    String? name;
    
    ///The header field value
    @JsonKey(name: "value")
    String? value;

    Httpheader({
        required this.name,
        required this.value,
    });

    factory Httpheader.fromJson(Map<String, dynamic> json) => _$HttpheaderFromJson(json);

    Map<String, dynamic> toJson() => _$HttpheaderToJson(this);
}
