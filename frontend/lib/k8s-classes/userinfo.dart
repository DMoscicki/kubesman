import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'userinfo.g.dart';


///UserInfo holds the information about the user needed to implement the user.Info interface.
@JsonSerializable()
class Userinfo {
    
    ///Any additional information provided by the authenticator.
    @JsonKey(name: "extra")
    Map<String, List<String?>?>? extra;
    
    ///The names of groups this user is a part of.
    @JsonKey(name: "groups")
    List<String?>? groups;
    
    ///A unique value that identifies this user across time. If this user is deleted and another
    ///user by the same name is added, they will have different UIDs.
    @JsonKey(name: "uid")
    String? uid;
    
    ///The name that uniquely identifies this user among all active users.
    @JsonKey(name: "username")
    String? username;

    Userinfo({
        this.extra,
        this.groups,
        this.uid,
        this.username,
    });

    factory Userinfo.fromJson(Map<String, dynamic> json) => _$UserinfoFromJson(json);

    Map<String, dynamic> toJson() => _$UserinfoToJson(this);
}
