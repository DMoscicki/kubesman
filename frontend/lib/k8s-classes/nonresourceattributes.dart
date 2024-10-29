import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nonresourceattributes.g.dart';


///NonResourceAttributes includes the authorization attributes available for non-resource
///requests to the Authorizer interface
@JsonSerializable()
class Nonresourceattributes {
    
    ///Path is the URL path of the request
    @JsonKey(name: "path")
    String? path;
    
    ///Verb is the standard HTTP verb
    @JsonKey(name: "verb")
    String? verb;

    Nonresourceattributes({
        this.path,
        this.verb,
    });

    factory Nonresourceattributes.fromJson(Map<String, dynamic> json) => _$NonresourceattributesFromJson(json);

    Map<String, dynamic> toJson() => _$NonresourceattributesToJson(this);
}
