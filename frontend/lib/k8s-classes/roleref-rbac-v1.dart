import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'roleref_rbac_v1.g.dart';


///RoleRef contains information that points to the role being used
@JsonSerializable()
class RolerefRbacV1 {
    
    ///APIGroup is the group for the resource being referenced
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String? kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String? name;

    RolerefRbacV1({
        required this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory RolerefRbacV1.fromJson(Map<String, dynamic> json) => _$RolerefRbacV1FromJson(json);

    Map<String, dynamic> toJson() => _$RolerefRbacV1ToJson(this);
}
