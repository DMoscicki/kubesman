import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tokenrequeststatus.g.dart';


///TokenRequestStatus is the result of a token request.
@JsonSerializable()
class Tokenrequeststatus {
    
    ///ExpirationTimestamp is the time of expiration of the returned token.
    @JsonKey(name: "expirationTimestamp")
    DateTime expirationTimestamp;
    
    ///Token is the opaque bearer token.
    @JsonKey(name: "token")
    String? token;

    Tokenrequeststatus({
        required this.expirationTimestamp,
        required this.token,
    });

    factory Tokenrequeststatus.fromJson(Map<String, dynamic> json) => _$TokenrequeststatusFromJson(json);

    Map<String, dynamic> toJson() => _$TokenrequeststatusToJson(this);
}
