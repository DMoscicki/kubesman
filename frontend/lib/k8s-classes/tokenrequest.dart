import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tokenrequest.g.dart';


///TokenRequest contains parameters of a service account token.
@JsonSerializable()
class Tokenrequest {
    
    ///audience is the intended audience of the token in "TokenRequestSpec". It will default to
    ///the audiences of kube apiserver.
    @JsonKey(name: "audience")
    String? audience;
    
    ///expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has
    ///the same default value of "ExpirationSeconds" in "TokenRequestSpec".
    @JsonKey(name: "expirationSeconds")
    int? expirationSeconds;

    Tokenrequest({
        required this.audience,
        this.expirationSeconds,
    });

    factory Tokenrequest.fromJson(Map<String, dynamic> json) => _$TokenrequestFromJson(json);

    Map<String, dynamic> toJson() => _$TokenrequestToJson(this);
}
