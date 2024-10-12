import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tokenrequestspec.g.dart';


///TokenRequestSpec contains client provided parameters of a token request.
@JsonSerializable()
class Tokenrequestspec {
    
    ///Audiences are the intendend audiences of the token. A recipient of a token must identify
    ///themself with an identifier in the list of audiences of the token, and otherwise should
    ///reject the token. A token issued for multiple audiences may be used to authenticate
    ///against any of the audiences listed but implies a high degree of trust between the target
    ///audiences.
    @JsonKey(name: "audiences")
    List<String?>? audiences;
    
    ///BoundObjectRef is a reference to an object that the token will be bound to. The token
    ///will only be valid for as long as the bound object exists. NOTE: The API server's
    ///TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep
    ///ExpirationSeconds small if you want prompt revocation.
    @JsonKey(name: "boundObjectRef")
    IoK8SApiAuthenticationV1BoundObjectReference? boundObjectRef;
    
    ///ExpirationSeconds is the requested duration of validity of the request. The token issuer
    ///may return a token with a different validity duration so a client needs to check the
    ///'expiration' field in a response.
    @JsonKey(name: "expirationSeconds")
    int? expirationSeconds;

    Tokenrequestspec({
        required this.audiences,
        this.boundObjectRef,
        this.expirationSeconds,
    });

    factory Tokenrequestspec.fromJson(Map<String, dynamic> json) => _$TokenrequestspecFromJson(json);

    Map<String, dynamic> toJson() => _$TokenrequestspecToJson(this);
}


///BoundObjectRef is a reference to an object that the token will be bound to. The token
///will only be valid for as long as the bound object exists. NOTE: The API server's
///TokenReview endpoint will validate the BoundObjectRef, but other audiences may not. Keep
///ExpirationSeconds small if you want prompt revocation.
///
///BoundObjectReference is a reference to an object that a token is bound to.
@JsonSerializable()
class IoK8SApiAuthenticationV1BoundObjectReference {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Kind of the referent. Valid kinds are 'Pod' and 'Secret'.
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name of the referent.
    @JsonKey(name: "name")
    String? name;
    
    ///UID of the referent.
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApiAuthenticationV1BoundObjectReference({
        this.apiVersion,
        this.kind,
        this.name,
        this.uid,
    });

    factory IoK8SApiAuthenticationV1BoundObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthenticationV1BoundObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthenticationV1BoundObjectReferenceToJson(this);
}
