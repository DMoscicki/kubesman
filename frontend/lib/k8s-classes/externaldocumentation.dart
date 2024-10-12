import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'externaldocumentation.g.dart';


///ExternalDocumentation allows referencing an external resource for extended documentation.
@JsonSerializable()
class Externaldocumentation {
    @JsonKey(name: "description")
    String? description;
    @JsonKey(name: "url")
    String? url;

    Externaldocumentation({
        this.description,
        this.url,
    });

    factory Externaldocumentation.fromJson(Map<String, dynamic> json) => _$ExternaldocumentationFromJson(json);

    Map<String, dynamic> toJson() => _$ExternaldocumentationToJson(this);
}
