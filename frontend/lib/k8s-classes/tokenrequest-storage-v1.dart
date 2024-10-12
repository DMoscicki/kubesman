import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tokenrequest_storage_v1.g.dart';


///TokenRequest contains parameters of a service account token.
@JsonSerializable()
class TokenrequestStorageV1 {
    
    ///audience is the intended audience of the token in "TokenRequestSpec". It will default to
    ///the audiences of kube apiserver.
    @JsonKey(name: "audience")
    String? audience;
    
    ///expirationSeconds is the duration of validity of the token in "TokenRequestSpec". It has
    ///the same default value of "ExpirationSeconds" in "TokenRequestSpec".
    @JsonKey(name: "expirationSeconds")
    int? expirationSeconds;

    TokenrequestStorageV1({
        required this.audience,
        this.expirationSeconds,
    });

    factory TokenrequestStorageV1.fromJson(Map<String, dynamic> json) => _$TokenrequestStorageV1FromJson(json);

    Map<String, dynamic> toJson() => _$TokenrequestStorageV1ToJson(this);
}
