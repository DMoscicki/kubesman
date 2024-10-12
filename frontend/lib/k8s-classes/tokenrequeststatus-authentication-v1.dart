import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tokenrequeststatus_authentication_v1.g.dart';


///TokenRequestStatus is the result of a token request.
@JsonSerializable()
class TokenrequeststatusAuthenticationV1 {
    
    ///ExpirationTimestamp is the time of expiration of the returned token.
    @JsonKey(name: "expirationTimestamp")
    DateTime expirationTimestamp;
    
    ///Token is the opaque bearer token.
    @JsonKey(name: "token")
    String? token;

    TokenrequeststatusAuthenticationV1({
        required this.expirationTimestamp,
        required this.token,
    });

    factory TokenrequeststatusAuthenticationV1.fromJson(Map<String, dynamic> json) => _$TokenrequeststatusAuthenticationV1FromJson(json);

    Map<String, dynamic> toJson() => _$TokenrequeststatusAuthenticationV1ToJson(this);
}
