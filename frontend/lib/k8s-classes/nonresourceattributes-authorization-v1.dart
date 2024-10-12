import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nonresourceattributes_authorization_v1.g.dart';


///NonResourceAttributes includes the authorization attributes available for non-resource
///requests to the Authorizer interface
@JsonSerializable()
class NonresourceattributesAuthorizationV1 {
    
    ///Path is the URL path of the request
    @JsonKey(name: "path")
    String? path;
    
    ///Verb is the standard HTTP verb
    @JsonKey(name: "verb")
    String? verb;

    NonresourceattributesAuthorizationV1({
        this.path,
        this.verb,
    });

    factory NonresourceattributesAuthorizationV1.fromJson(Map<String, dynamic> json) => _$NonresourceattributesAuthorizationV1FromJson(json);

    Map<String, dynamic> toJson() => _$NonresourceattributesAuthorizationV1ToJson(this);
}
