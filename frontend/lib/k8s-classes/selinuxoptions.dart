import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'selinuxoptions.g.dart';


///SELinuxOptions are the labels to be applied to the container
@JsonSerializable()
class Selinuxoptions {
    
    ///Level is SELinux level label that applies to the container.
    @JsonKey(name: "level")
    String? level;
    
    ///Role is a SELinux role label that applies to the container.
    @JsonKey(name: "role")
    String? role;
    
    ///Type is a SELinux type label that applies to the container.
    @JsonKey(name: "type")
    String? type;
    
    ///User is a SELinux user label that applies to the container.
    @JsonKey(name: "user")
    String? user;

    Selinuxoptions({
        this.level,
        this.role,
        this.type,
        this.user,
    });

    factory Selinuxoptions.fromJson(Map<String, dynamic> json) => _$SelinuxoptionsFromJson(json);

    Map<String, dynamic> toJson() => _$SelinuxoptionsToJson(this);
}
