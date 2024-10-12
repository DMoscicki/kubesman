import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'tokenreviewstatus_authentication_v1.g.dart';


///TokenReviewStatus is the result of the token authentication request.
@JsonSerializable()
class TokenreviewstatusAuthenticationV1 {
    
    ///Audiences are audience identifiers chosen by the authenticator that are compatible with
    ///both the TokenReview and token. An identifier is any identifier in the intersection of
    ///the TokenReviewSpec audiences and the token's audiences. A client of the TokenReview API
    ///that sets the spec.audiences field should validate that a compatible audience identifier
    ///is returned in the status.audiences field to ensure that the TokenReview server is
    ///audience aware. If a TokenReview returns an empty status.audience field where
    ///status.authenticated is "true", the token is valid against the audience of the Kubernetes
    ///API server.
    @JsonKey(name: "audiences")
    List<String?>? audiences;
    
    ///Authenticated indicates that the token was associated with a known user.
    @JsonKey(name: "authenticated")
    bool? authenticated;
    
    ///Error indicates that the token couldn't be checked
    @JsonKey(name: "error")
    String? error;
    
    ///User is the UserInfo associated with the provided token.
    @JsonKey(name: "user")
    IoK8SApiAuthenticationV1UserInfo? user;

    TokenreviewstatusAuthenticationV1({
        this.audiences,
        this.authenticated,
        this.error,
        this.user,
    });

    factory TokenreviewstatusAuthenticationV1.fromJson(Map<String, dynamic> json) => _$TokenreviewstatusAuthenticationV1FromJson(json);

    Map<String, dynamic> toJson() => _$TokenreviewstatusAuthenticationV1ToJson(this);
}


///User is the UserInfo associated with the provided token.
///
///UserInfo holds the information about the user needed to implement the user.Info interface.
@JsonSerializable()
class IoK8SApiAuthenticationV1UserInfo {
    
    ///Any additional information provided by the authenticator.
    @JsonKey(name: "extra")
    Map<String, List<String>>? extra;
    
    ///The names of groups this user is a part of.
    @JsonKey(name: "groups")
    List<String>? groups;
    
    ///A unique value that identifies this user across time. If this user is deleted and another
    ///user by the same name is added, they will have different UIDs.
    @JsonKey(name: "uid")
    String? uid;
    
    ///The name that uniquely identifies this user among all active users.
    @JsonKey(name: "username")
    String? username;

    IoK8SApiAuthenticationV1UserInfo({
        this.extra,
        this.groups,
        this.uid,
        this.username,
    });

    factory IoK8SApiAuthenticationV1UserInfo.fromJson(Map<String, dynamic> json) => _$IoK8SApiAuthenticationV1UserInfoFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiAuthenticationV1UserInfoToJson(this);
}
