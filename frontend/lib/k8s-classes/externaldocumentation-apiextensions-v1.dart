import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'externaldocumentation_apiextensions_v1.g.dart';


///ExternalDocumentation allows referencing an external resource for extended documentation.
@JsonSerializable()
class ExternaldocumentationApiextensionsV1 {
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "url")
    String? url;

    ExternaldocumentationApiextensionsV1({
        this.description,
        this.url,
    });

    factory ExternaldocumentationApiextensionsV1.fromJson(Map<String, dynamic> json) => _$ExternaldocumentationApiextensionsV1FromJson(json);

    Map<String, dynamic> toJson() => _$ExternaldocumentationApiextensionsV1ToJson(this);
}
