import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'httpheader_v1.g.dart';


///HTTPHeader describes a custom header to be used in HTTP probes
@JsonSerializable()
class HttpheaderV1 {
    
    ///The header field name. This will be canonicalized upon output, so case-variant names will
    ///be understood as the same header.
    @JsonKey(name: "name")
    String? name;
    
    ///The header field value
    @JsonKey(name: "value")
    String? value;

    HttpheaderV1({
        required this.name,
        required this.value,
    });

    factory HttpheaderV1.fromJson(Map<String, dynamic> json) => _$HttpheaderV1FromJson(json);

    Map<String, dynamic> toJson() => _$HttpheaderV1ToJson(this);
}
