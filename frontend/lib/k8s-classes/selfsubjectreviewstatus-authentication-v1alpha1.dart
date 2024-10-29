import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'selfsubjectreviewstatus_authentication_v1_alpha1.g.dart';


///SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
@JsonSerializable()
class SelfsubjectreviewstatusAuthenticationV1Alpha1 {
    
    ///User attributes of the user making this request.
    @JsonKey(name: "userInfo")
    IoK8SApiAuthenticationV1UserInfo? userInfo;

    SelfsubjectreviewstatusAuthenticationV1Alpha1({
        this.userInfo,
    });

    factory SelfsubjectreviewstatusAuthenticationV1Alpha1.fromJson(Map<String, dynamic> json) => _$SelfsubjectreviewstatusAuthenticationV1Alpha1FromJson(json);

    Map<String, dynamic> toJson() => _$SelfsubjectreviewstatusAuthenticationV1Alpha1ToJson(this);
}


///User attributes of the user making this request.
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
