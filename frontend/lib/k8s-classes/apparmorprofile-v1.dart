import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'apparmorprofile_v1.g.dart';


///AppArmorProfile defines a pod or container's AppArmor settings.
@JsonSerializable()
class ApparmorprofileV1 {
    
    ///localhostProfile indicates a profile loaded on the node that should be used. The profile
    ///must be preconfigured on the node to work. Must match the loaded name of the profile.
    ///Must be set if and only if type is "Localhost".
    @JsonKey(name: "localhostProfile")
    String? localhostProfile;
    
    ///type indicates which kind of AppArmor profile will be applied. Valid options are:
    ///Localhost - a profile pre-loaded on the node.
    ///RuntimeDefault - the container runtime's default profile.
    ///Unconfined - no AppArmor enforcement.
    @JsonKey(name: "type")
    String? type;

    ApparmorprofileV1({
        this.localhostProfile,
        required this.type,
    });

    factory ApparmorprofileV1.fromJson(Map<String, dynamic> json) => _$ApparmorprofileV1FromJson(json);

    Map<String, dynamic> toJson() => _$ApparmorprofileV1ToJson(this);
}
