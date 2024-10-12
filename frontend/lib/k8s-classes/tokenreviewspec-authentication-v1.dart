import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tokenreviewspec_authentication_v1.g.dart';


///TokenReviewSpec is a description of the token authentication request.
@JsonSerializable()
class TokenreviewspecAuthenticationV1 {
    
    ///Audiences is a list of the identifiers that the resource server presented with the token
    ///identifies as. Audience-aware token authenticators will verify that the token was
    ///intended for at least one of the audiences in this list. If no audiences are provided,
    ///the audience will default to the audience of the Kubernetes apiserver.
    @JsonKey(name: "audiences")
    List<String?>? audiences;
    
    ///Token is the opaque bearer token.
    @JsonKey(name: "token")
    String? token;

    TokenreviewspecAuthenticationV1({
        this.audiences,
        this.token,
    });

    factory TokenreviewspecAuthenticationV1.fromJson(Map<String, dynamic> json) => _$TokenreviewspecAuthenticationV1FromJson(json);

    Map<String, dynamic> toJson() => _$TokenreviewspecAuthenticationV1ToJson(this);
}
